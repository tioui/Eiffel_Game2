note
	description: "A {GAME_SOUND} loaded from a sound file."
	author: "Louis Marchand"
	date: "Wed, 08 Apr 2015 01:04:08 +0000"
	revision: "2.0"

class
	AUDIO_SOUND_FILE

inherit
	AUDIO_SOUND_FILE_IMP


create
	make

feature {NONE} -- Implementation - Methodes

	open_from_file(a_filename:READABLE_STRING_GENERAL)
			-- `open' `Current' using `a_filename'
		local
			l_converter:UTF_CONVERTER
			l_filename_c,l_error_c:C_STRING
		do
			create l_converter
			file_info:=file_info.memory_alloc (Sf_info_size)
			create l_filename_c.make(l_converter.string_32_to_utf_8_string_8 (a_filename.to_string_32))
			snd_file_ptr:={AUDIO_SND_FILES_EXTERNAL}.SF_open(l_filename_c.item,{AUDIO_SND_FILES_EXTERNAL}.Sfm_read,file_info)
			if snd_file_ptr.is_default_pointer then
				create l_error_c.make_by_pointer ({AUDIO_SND_FILES_EXTERNAL}.sf_strerror(snd_file_ptr))
				io.error.put_string (l_error_c.string+"%N")
				has_error:=True
			end
		end

end
