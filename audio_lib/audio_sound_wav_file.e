note
	description: "Summary description for {AUDIO_SOUND_WAV_FILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AUDIO_SOUND_WAV_FILE

inherit
	AUDIO_SOUND

create
	make

feature {NONE} -- Initialization

	make(filename:READABLE_STRING_GENERAL)
		do
			make_ressource
			create file.make (filename)
		end

	process_header
		do
			if file.can_read_32 then
				file.read_natural_32_big_endian
				if file.last_natural_32/=0x52494646 then		-- RIFF
					io.error.put_string ("Not a valid WAV file!%N")
					has_error:=True
				else
					if file.can_read_64 then
						file.read_natural_32_big_endian
						file.read_natural_32_big_endian
						if file.last_natural_32/=0x57415645 then		-- WAVE
							io.error.put_string ("Not a valid WAV file!%N")
							has_error:=True
						else
							process_chunks
						end
					else
						io.error.put_string ("The file has stop before the end of the WAV header.%N")
						has_error:=True
					end
				end
			else
				io.error.put_string ("The file has stop before the end of the WAV header.%N")
				has_error:=True
			end

		end

	process_chunks
		local
			chunk_id,chunk_data_size:NATURAL_32
			cur_offset:INTEGER
			fmt_found,data_found:BOOLEAN
		do
			from
				fmt_found:=false
				data_found:=false
				has_error:=false
			until
				data_found or has_error
			loop
				if file.can_read_64 then
					file.read_natural_32_big_endian
					chunk_id:=file.last_natural_32
					file.read_natural_32_little_endian
					chunk_data_size:=file.last_natural_32
					cur_offset:=file.position
					if chunk_id=0x64617461 then		-- Data
						data_starting_offset:=file.position
						if file.can_read_32 then
							file.read_natural_32_little_endian
							data_size:=file.last_natural_32
							data_found:=true
							has_error:=not fmt_found		-- Data deteted but not the fmt (impossible)	
						end
					else
						if chunk_id=0x666D7420 then		-- fmt
							process_fmt
							fmt_found:=true
						end
						file.go (cur_offset+chunk_data_size.to_integer_32)
					end
				else
					io.error.put_string ("The file has stop before the end of a WAV chunk.%N")
					has_error:=True
				end
			end
			check not has_error end
		end

	process_fmt
		do
			if file.can_read_64 then
				file.read_natural_16_little_endian		-- Audio Format (1=PCM)
				if file.last_natural_16/=1 then
					io.error.put_string ("WAV file not supported!%N")
					has_error:=True
				else
					file.read_natural_16_little_endian	-- Number of channels
					channel_count_internal:=file.last_natural_16.as_integer_32
					file.read_natural_32_little_endian	-- Sample Rate (frequency)
					frequency_internal:=file.last_natural_32.as_integer_32
					if file.can_read_64 then
						file.read_natural_32_little_endian	-- Byte Rate
						file.read_natural_16_little_endian	-- Block Align
						bytes_per_sample:=file.last_natural_16
						file.read_natural_16_little_endian	-- Bits per sample
						bits_per_sample_internal:=file.last_natural_16.as_integer_32
					else
						io.error.put_string ("The file has stop before the end of a WAV fmt.%N")
						has_error:=True
					end
				end
			else
				io.error.put_string ("The file has stop before the end of a WAV fmt.%N")
				has_error:=True
			end

		end

feature {AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
		do
			if file.readable then
				file.read_to_pointer (a_buffer,0,a_max_length)
				last_buffer_size:=file.bytes_read
			else
				last_buffer_size:=0
			end
		end

	byte_per_buffer_sample:INTEGER
		do
			Result:=bytes_per_sample.to_integer_32
		end

feature -- Access

	is_openable:BOOLEAN
		do
			Result:=file.exists and then file.is_readable
		end

	open
		do
			file.open_read
			process_header
			is_open:=not has_error
		end

	channel_count:INTEGER
		do
			Result:=channel_count_internal
		end

	frequency:INTEGER
		do
			Result:=frequency_internal
		end

	bits_per_sample:INTEGER
			-- Get the bit resolution of one frame of the sound.
		do
			Result:=bits_per_sample_internal
		end

	is_signed:BOOLEAN
			-- Return true if the frames in the buffer are signed.
		do
			Result:= not (bits_per_sample_internal=8)	-- Only 8 bits per sample is unsigned
		end

	is_seekable:BOOLEAN
			-- Return true if the sound support the seek functionnality.
		do
			Result:=true
		end

	restart
			-- Restart the sound to the beginning.
		do
			file.go (data_starting_offset)
		end

feature {NONE} -- Implementation - Variable

	file:GAME_FILE

	channel_count_internal:INTEGER
	frequency_internal:INTEGER
	bits_per_sample_internal:INTEGER
	data_starting_offset:INTEGER
	data_size:NATURAL_32
	bytes_per_sample:INTEGER_32

end
