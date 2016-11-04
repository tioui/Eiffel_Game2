note
	description: "An {AUDIO_SOUND} that has been loaded from an MPG file"
	author: "Louis Marchand"
	date: "Fri, 04 Nov 2016 17:31:01 +0000"
	revision: "0.1"

class
	MPG_SOUND_FILE

inherit
	AUDIO_SOUND
	MPG_LIBRARY_SHARED
		undefine
			default_create
		end
	MPG_ERROR_MANAGER
		undefine
			default_create,
			read_mpg_error
		end
	DISPOSABLE
		undefine
			default_create
		end

create
	make

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL)
			-- Initialization for `Current' using `a_filename' as `filename'
		require
			Is_MPG_enabled: mpg_library.is_mpg_enabled
		local
			l_pointer:POINTER
		do
			file_ptr := {MPG_EXTERNAL}.mpg123_new(l_pointer, l_pointer)
			default_create
			filename:=a_filename
		ensure
			Handler_Valid: not file_ptr.is_default_pointer
		end

feature {AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
			-- <Precursor>
		local
			l_size, l_error:INTEGER
		do
			l_error := {MPG_EXTERNAL}.mpg123_read(file_ptr,a_buffer,a_max_length, $l_size)
			read_mpg_error("Cannot read stream", l_error)
			last_buffer_size := l_size
		end

	byte_per_buffer_sample:INTEGER
			-- <Precursor>
		do
			if resolution_index = {MPG_EXTERNAL}.mpg123_enc_ulaw_8 then
				Result := 1
			elseif resolution_index = {MPG_EXTERNAL}.mpg123_enc_signed_16 then
				Result := 2
			end
		end

feature --Access

	is_openable:BOOLEAN
			-- <Precursor>
		local
			l_file:RAW_FILE
		do
			create l_file.make_with_name (filename)
			Result:= l_file.exists and l_file.is_readable
		end

	open
			-- <Precursor>
		do
			open_from_file(filename)
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
			Result := byte_per_buffer_sample * 8
		end

	is_signed:BOOLEAN
			-- <Precursor>
		do
			Result := resolution_index = {MPG_EXTERNAL}.mpg123_enc_signed_16
		end

	is_seekable:BOOLEAN
			-- <Precursor>
		do
			Result:=True
		end

	restart
			-- <Precursor>
		local
			l_error:INTEGER
		do
			l_error := {MPG_EXTERNAL}.mpg123_seek(file_ptr, 0, {MPG_EXTERNAL}.seek_set)
			read_mpg_error ("Cannot restart playback", l_error)
		end

feature {NONE} -- Implementation

	read_mpg_error(a_message:READABLE_STRING_GENERAL; a_code:INTEGER)
			-- <Precursor>
		do
			Precursor(a_message, a_code)
			has_ressource_error := has_error
		end

	open_from_file(a_filename:READABLE_STRING_GENERAL)
			-- `open' `Current' using `a_filename'
		local
			l_filename_c:C_STRING
			l_error:INTEGER
		do
			create l_filename_c.make (filename)
			l_error := {MPG_EXTERNAL}.mpg123_open(file_ptr, l_filename_c.item)
			if l_error /= {MPG_EXTERNAL}.mpg123_ok then
				read_mpg_error ("Cannot open file " + a_filename, l_error)
			else
				l_error := {MPG_EXTERNAL}.mpg123_getformat (file_ptr, $frequency_internal, $channel_count_internal, $resolution_index)
				if l_error /= {MPG_EXTERNAL}.mpg123_ok then
					read_mpg_error ("Cannot get audio format from " + a_filename, l_error)
				else
					l_error := {MPG_EXTERNAL}.mpg123_format_none(file_ptr)
					if l_error /= {MPG_EXTERNAL}.mpg123_ok then
						read_mpg_error ("Cannot get audio format from " + a_filename, l_error)
					else
						l_error := {MPG_EXTERNAL}.mpg123_format(file_ptr, frequency_internal, channel_count_internal, resolution_index)
						read_mpg_error ("Cannot get audio format from " + a_filename, l_error)
					end
				end

			end
		end

	dispose
			-- <Precursor>
		local
			error:INTEGER
		do
			if is_open then
				error:={MPG_EXTERNAL}.mpg123_close(file_ptr)
			end
			{MPG_EXTERNAL}.mpg123_delete(file_ptr)
		end

feature {NONE} -- Implementation - Variables

	file_ptr:POINTER
			-- C pointer to the sound file handle

	frequency_internal:INTEGER
			-- The value of the `frequency' attributes

	channel_count_internal:INTEGER
			-- The value of the `channel_count' attributes

	resolution_index:INTEGER
			-- Index to differenciate between signed 16 bits samples and unsigned 8 bits samples.

	filename:READABLE_STRING_GENERAL
			-- The name of the file containing the audio data


end
