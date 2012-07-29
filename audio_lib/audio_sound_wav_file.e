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

	make(filename:STRING)
		do
			create file.make (filename)
			file.seek_from_begining (0)
			has_error:=false
			process_header
		end

	process_header
		do
			file.read_natural_32_big_endian
			if file.last_natural_32/=0x52494646 then		-- RIFF
				has_error:=true
				io.error.put_string ("Not a WAV file!")
				check false end
			else
				file.read_natural_32_big_endian
				file.read_natural_32_big_endian
				if file.last_natural_32/=0x57415645 then		-- WAVE
					has_error:=true
					io.error.put_string ("Not a WAV file!")
					check false end
				else
					process_chunks
				end
			end
		end

	process_chunks
		local
			chunk_id,chunk_data_size:NATURAL_32
			cur_offset:INTEGER
			fmt_found,data_found,error:BOOLEAN
		do
			from
				fmt_found:=false
				data_found:=false
				error:=false
			until
				data_found or error
			loop
				file.read_natural_32_big_endian
				chunk_id:=file.last_natural_32
				file.read_natural_32_little_endian
				chunk_data_size:=file.last_natural_32
				cur_offset:=file.current_offset
				if chunk_id=0x64617461 then		-- Data
					data_starting_offset:=file.current_offset
					file.read_natural_32_little_endian
					data_size:=file.last_natural_32
					data_found:=true
					has_error:=not fmt_found		-- Data deteted but not the fmt (impossible)
				else
					if chunk_id=0x666D7420 then		-- fmt
						process_fmt
						error:=has_error
						fmt_found:=true
					end
					file.seek_from_begining (cur_offset+chunk_data_size.to_integer_32)
				end

			end
			check not has_error end
		end

	process_fmt
		do
			file.read_natural_16_little_endian		-- Audio Format (1=PCM)
			if file.last_natural_16/=1 then
				io.error.put_string ("WAV file not supported!")
				has_error:=true
			else
				file.read_natural_16_little_endian	-- Number of channels
				channels:=file.last_natural_16.as_integer_32
				file.read_natural_32_little_endian	-- Sample Rate (frequency)
				frequency:=file.last_natural_32.as_integer_32
				file.read_natural_32_little_endian	-- Byte Rate
				file.read_natural_16_little_endian	-- Block Align
				bytes_per_sample:=file.last_natural_16
				file.read_natural_16_little_endian	-- Bits per sample
				bits_per_sample:=file.last_natural_16.as_integer_32
			end
		end

feature {GAME_AUDIO_SOURCE}

	fill_buffer(buffer:POINTER;max_length:INTEGER)
		do
			file.read (buffer,bytes_per_sample, max_length.to_natural_32//bytes_per_sample)
			last_buffer_size:=file.last_read_size.to_integer_32
		end

	byte_per_buffer_sample:INTEGER
		do
			Result:=bytes_per_sample.to_integer_32
		end

feature -- Access

	has_error:BOOLEAN

	get_channels:INTEGER
		do
			Result:=channels
		end

	get_frequency:INTEGER
		do
			Result:=frequency
		end

	get_bit_resolution:INTEGER
			-- Get the bit resolution of one frame of the sound.
		do
			Result:=bits_per_sample
		end

	is_signed:BOOLEAN
			-- Return true if the frames in the buffer are signed.
		do
			Result:= not (bits_per_sample=8)	-- Only 8 bits per sample is unsigned
		end

	is_seekable:BOOLEAN
			-- Return true if the sound support the seek functionnality.
		do
			Result:=true
		end

	restart
			-- Restart the sound to the beginning.
		do
			file.seek_from_begining (data_starting_offset)
		end

feature {NONE} -- Implementation - Variable

	file:CPF_FILE

	channels:INTEGER
	frequency:INTEGER
	bits_per_sample:INTEGER
	data_starting_offset:INTEGER
	data_size:NATURAL_32
	bytes_per_sample:NATURAL_32

end
