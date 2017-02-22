note
	description: "A {GAME_SOUND} loaded from a sound file."
	author: "Louis Marchand"
	date: "Tue, 21 Feb 2017 00:15:23 +0000"
	revision: "2.1"

deferred class
	AUDIO_SOUND_FILE_IMP

inherit
	METADATA_AUDIO_SOUND
	DISPOSABLE
		undefine
			default_create
		end

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL)
			-- Initialization for `Current'.
			-- Will use 16 bits signed frames in the buffer.
		do
			default_create
			bits_per_sample_internal:=16
			is_signed_internal:=true
			filename:=a_filename
		end

feature {AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
			-- <Precursor>
		local
			l_items:INTEGER
		do
			from
				l_items:=a_max_length//2
			until
				(l_items\\byte_per_buffer_sample)=0
			loop
				l_items:=l_items-1
			end
			last_buffer_size:={AUDIO_SND_FILES_EXTERNAL}.sf_read_short(snd_file_ptr,a_buffer,l_items).to_integer*2
		end

	byte_per_buffer_sample:INTEGER
			-- <Precursor>
		do
			Result:=2
		end

feature --Access

	title: detachable READABLE_STRING_GENERAL
			-- <Precursor>
		do
			Result := get_metadata_value ({AUDIO_SND_FILES_EXTERNAL}.SF_STR_TITLE)
		end

	artist: detachable READABLE_STRING_GENERAL
			-- <Precursor>
		do
			Result := get_metadata_value ({AUDIO_SND_FILES_EXTERNAL}.SF_STR_ARTIST)
		end

	album: detachable READABLE_STRING_GENERAL
			-- <Precursor>
		do
			Result := get_metadata_value ({AUDIO_SND_FILES_EXTERNAL}.SF_STR_ALBUM)
		end

	date: detachable READABLE_STRING_GENERAL
			-- <Precursor>
		do
			Result := get_metadata_value ({AUDIO_SND_FILES_EXTERNAL}.SF_STR_DATE)
		end

	genre: detachable READABLE_STRING_GENERAL
			-- <Precursor>
		do
			Result := get_metadata_value ({AUDIO_SND_FILES_EXTERNAL}.SF_STR_GENRE)
		end

	comment: detachable READABLE_STRING_GENERAL
			-- <Precursor>
		do
			Result := get_metadata_value ({AUDIO_SND_FILES_EXTERNAL}.SF_STR_COMMENT)
		end

	track_number: INTEGER_32
			-- <Precursor>
		local
			l_string:READABLE_STRING_GENERAL
		do
			if attached get_metadata_value ({AUDIO_SND_FILES_EXTERNAL}.SF_STR_TRACKNUMBER) as la_string and then la_string.is_integer_32 then
				Result := la_string.to_integer_32
			else
				Result := 0
			end
		end

	open
			-- <Precursor>
		do
			open_from_file(filename)
			is_open:=not has_error
			has_ressource_error := has_error
		end

	is_openable:BOOLEAN
			-- <Precursor>
		local
			l_file:RAW_FILE
		do
			create l_file.make_with_name (filename)
			Result:= l_file.exists and l_file.is_readable
		end

	channel_count:INTEGER
			-- Get the channel number of the sound (1=mono, 2=stereo, etc.).
		do
			Result:={AUDIO_SND_FILES_EXTERNAL}.get_sf_info_struct_channels(file_info)
		end

	frequency:INTEGER
			-- Get the frequency (sample rate) of the sound.
		do
			Result:={AUDIO_SND_FILES_EXTERNAL}.get_sf_info_struct_samplerate(file_info)
		end

	bits_per_sample:INTEGER
			-- Get the bit resolution of one frame of the sound.
		do
			Result:=bits_per_sample_internal
		end

	is_signed:BOOLEAN
			-- Return true if the frames in the buffer are signed.
		do
			Result:=is_signed_internal
		end

	is_seekable:BOOLEAN
			-- Return true if the sound support the seek functionnality.
		do
			Result:=({AUDIO_SND_FILES_EXTERNAL}.get_sf_info_struct_seekable(file_info)/=0)
		end

	restart
			-- Restart the sound to the beginning.
		local
			l_error:INTEGER_64
		do
			if is_seekable then
				l_error:={AUDIO_SND_FILES_EXTERNAL}.SF_seek(snd_file_ptr,0,{AUDIO_SND_FILES_EXTERNAL}.Seek_set)
				if l_error = -1 then
					put_error (
								"Cannot seek in the audio file.",
								"The system tried to seek at the beginning of file " + filename + "but it failed."
							)
				end
			else
				dispose
				open_from_file(filename)
			end
		end

	sample_seek(a_frame_number:INTEGER_64)
			-- <Precursor>
		local
			l_error:INTEGER_64
		do
			l_error:={AUDIO_SND_FILES_EXTERNAL}.SF_seek(snd_file_ptr, a_frame_number - 1, {AUDIO_SND_FILES_EXTERNAL}.Seek_set)
			if l_error = -1 then
				put_error (
							"Cannot seek in the audio file.",
							"The system tried to seek at the frame " + a_frame_number.out + " of file " + filename + "but it failed."
						)
			end
		end

	sample_position:INTEGER_64
			-- <Precursor>
		do
			Result := {AUDIO_SND_FILES_EXTERNAL}.SF_seek(snd_file_ptr, 0, {AUDIO_SND_FILES_EXTERNAL}.Seek_cur) + 1
		end

	sample_count:INTEGER_64
			-- <Precursor>
		do
			Result:={AUDIO_SND_FILES_EXTERNAL}.get_sf_info_struct_frames(file_info)
		end

feature {NONE} -- Implementation - Methodes

	get_metadata_value(a_flag:INTEGER):detachable READABLE_STRING_GENERAL
			-- Get the text of a Metadata in `Current' using `a_flag' to know which metadata to retreive.
		local
			l_pointer:POINTER
			l_c_string:C_STRING
			l_utf_converter:UTF_CONVERTER
		do
			l_pointer := {AUDIO_SND_FILES_EXTERNAL}.sf_get_string(snd_file_ptr, a_flag)
			if not l_pointer.is_default_pointer then
				create l_c_string.make_shared_from_pointer (l_pointer)
				Result := l_utf_converter.utf_8_string_8_to_string_32 (l_c_string.string)
			end
		end

	open_from_file(a_filename:READABLE_STRING_GENERAL)
			-- `open' `Current' using `a_filename'
		deferred
		end

	dispose
			-- <Precursor>
		local
			error:INTEGER
		do
			file_info.memory_free
			error:={AUDIO_SND_FILES_EXTERNAL}.sf_close(snd_file_ptr)
			check error=0 end
		end

	Sf_info_size:INTEGER
			-- The number of byte of a C sf_info structure
		once
			Result := {AUDIO_SND_FILES_EXTERNAL}.c_sizeof_sf_info
		end

feature {NONE} -- Implementation - Variables

	snd_file_ptr:POINTER
			-- C pointer to the sound file handle

	file_info:POINTER
			-- C pointer to the sound file information

	bits_per_sample_internal:INTEGER
			-- The value of the `bits_per_sample' attributes

	is_signed_internal:BOOLEAN
			-- The value of the `is_signed' attributes

	filename:READABLE_STRING_GENERAL
			-- The name of the file containing the audio data


end
