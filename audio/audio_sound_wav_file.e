note
	description: "An {AUDIO_SOUND} witch data came from a WAV file."
	author: "Louis Marchand"
	date: "Tue, 07 Apr 2015 01:15:20 +0000"
	revision: "2.0"

class
	AUDIO_SOUND_WAV_FILE

inherit
	AUDIO_SOUND

create
	make

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL)
			-- Initialization of `Current' using `a_filename' to load data.
		do
			default_create
			create file.make_with_name (a_filename)
		end

	process_header
			-- Look inside the file to see if it is a valid
			-- WAV file and retreive attrbutes
		do
			if file.can_read_32 then
				file.read_natural_32_big_endian
				if file.last_natural_32 /= 0x52494646 then		-- RIFF
					put_error ("Cannot open WAV file.", "The RIFF header is not found")
				else
					if file.can_read_64 then
						file.read_natural_32_big_endian
						file.read_natural_32_big_endian
						if file.last_natural_32/=0x57415645 then		-- WAVE
							put_error ("Cannot open WAV file.", "The WAVE header is not found")
						else
							process_chunks
						end
					else
						put_error ("Cannot open WAV file.", "The file has stop before the end of the WAV header.")
					end
				end
			else
				put_error ("Cannot open WAV file.", "The file has stop before the end of the WAV header.")
			end
			has_ressource_error := has_error
		end

	process_chunks
			-- Read every WAV chunks information and store them inside attributes.
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
							if not fmt_found then
								put_error ("Cannot read WAV data chunks.", "Data deteted but not the fmt")
							end
						end
					else
						if chunk_id=0x666D7420 then		-- fmt
							process_fmt
							fmt_found:=true
						end
						file.go (cur_offset+chunk_data_size.to_integer_32)
					end
				else
					put_error ("Cannot read WAV data chunks.", "The file has stop before the end of a WAV chunk.")
				end
			end
			has_ressource_error := has_error
		end

	process_fmt
			-- Read and store chunk's format informations (fmt tag)
		do
			if file.can_read_64 then
				file.read_natural_16_little_endian		-- Audio Format (1=PCM)
				if file.last_natural_16 /= 1 then
					put_error ("WAV format not supported.", "Audio format is not PCM.")
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
						put_error ("WAV format not supported.", "The file has stop before the end of a WAV fmt.")
					end
				end
			else
				put_error ("WAV format not supported.", "The file has stop before the end of a WAV fmt.")
			end
			has_ressource_error := has_error
		end

feature {AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
			-- <Precursor>
		local
			l_managed_pointer:MANAGED_POINTER
		do
			if file.readable then
				create l_managed_pointer.share_from_pointer (a_buffer, a_max_length)
				file.read_to_managed_pointer (l_managed_pointer,0,a_max_length)
				last_buffer_size:=file.bytes_read
			else
				last_buffer_size:=0
			end
		end

	byte_per_buffer_sample:INTEGER
			-- <Precursor>
		do
			Result:=bytes_per_sample.to_integer_32
		end

feature -- Access

	is_openable:BOOLEAN
			-- <Precursor>
		do
			Result:=file.exists and then file.is_readable
		end

	open
			-- <Precursor>
		do
			file.open_read
			process_header
			is_open:=not has_error
			has_ressource_error := has_error
		end

	channel_count:INTEGER
			-- <Precursor>
		do
			Result:=channel_count_internal
		end

	frequency:INTEGER
			-- <Precursor>
		do
			Result:=frequency_internal
		end

	bits_per_sample:INTEGER
			-- <Precursor>
		do
			Result:=bits_per_sample_internal
		end

	is_signed:BOOLEAN
			-- <Precursor>
		do
			Result:= not (bits_per_sample_internal=8)	-- Only 8 bits per sample is unsigned
		end

	is_seekable:BOOLEAN
			-- <Precursor>
		do
			Result:=true
		end

	restart
			-- <Precursor>
		do
			file.go (data_starting_offset)
		end

feature {NONE} -- Implementation - Variable

	file:GAME_FILE
			-- The file used to read `Current's data

	channel_count_internal:INTEGER
			-- The number of channel of `Current'

	frequency_internal:INTEGER
			-- The frequency (sample rate) of `Current'.

	bits_per_sample_internal:INTEGER
			-- The bit resolution of one frame of `Current'.

	data_starting_offset:INTEGER
			-- Where in the `file' start the data

	data_size:NATURAL_32
			-- The size of a data in the `file'

	bytes_per_sample:INTEGER_32
			-- The number of byte for one frame of `Current'.

end
