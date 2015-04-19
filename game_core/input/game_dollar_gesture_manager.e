note
	description: "Common ancestor to object that can manage touch device dollar gesture template."
	author: "Louis Marchand"
	date: "Sun, 19 Apr 2015 18:20:39 +0000"
	revision: "2.0"

deferred class
	GAME_DOLLAR_GESTURE_MANAGER

inherit
	GAME_SDL_ANY

feature -- Access

	index:INTEGER_64
			-- The internal index of the managed touch device
		deferred
		end

	load_dollar_gesture_template(a_filename:READABLE_STRING_GENERAL)
			-- Load in `Current' every dollar gesture templates
			-- inside the file located at `a_filename'
			-- Note: The unique hash returned by the `record_dollar_gesture'
			-- feature has to be saved on the client side.
		require
			File_Is_Readable: attached (create {RAW_FILE}.make_with_name (a_filename)) as la_file implies
								(la_file.exists and then la_file.is_access_readable)
		local
			l_rwops:POINTER
			l_error:INTEGER
			l_filename_c, l_mode_c:C_STRING
			l_utf_converter:UTF_CONVERTER
		do
			create l_utf_converter
			create l_filename_c.make (l_utf_converter.string_32_to_utf_8_string_8 (a_filename.to_string_32))
			create l_mode_c.make ("rb")
			clear_error
			l_rwops := {GAME_SDL_EXTERNAL}.SDL_RWFromFile(l_filename_c.item,l_mode_c.item)
			if l_rwops.is_default_pointer then
				manage_error_pointer (l_rwops, "Cannot open the dollar template file.")
			else
				l_error := {GAME_SDL_EXTERNAL}.SDL_LoadDollarTemplates(index, l_rwops)
				if l_error < 0 then
					manage_error_code (l_error, "Cannot load the dollar template")
				elseif l_error = 0 then
					last_loaded_dollar_gesture_template := l_error
					put_manual_error ("The file does not seems to have a dollar template.", "Cannot load the dollar template")
				else
					last_loaded_dollar_gesture_template := l_error
				end
				l_error := {GAME_SDL_EXTERNAL}.SDL_RWClose(l_rwops)
				if not has_error and l_error < 0 then
					manage_error_code (l_error, "Cannot close the dollar template file")
				end
			end
		end

	save_dollar_gesture_template(a_hash:INTEGER_64; a_filename:READABLE_STRING_GENERAL)
			-- Save the dollar gesture templates identified by `a_hash'
			-- inside the file located at `a_filename'. If it exists, the file will be
			-- overwrited.
			-- Note: The `a_hash' is not saved in the file. You have to save it
			-- yourself for future utilisation
		require
			Is_File_Creatable: (create {RAW_FILE}.make_with_name (a_filename)).is_creatable
		local
			l_rwops:POINTER
			l_error:INTEGER
			l_filename_c, l_mode_c:C_STRING
			l_utf_converter:UTF_CONVERTER
		do
			create l_utf_converter
			create l_filename_c.make (l_utf_converter.string_32_to_utf_8_string_8 (a_filename.to_string_32))
			create l_mode_c.make ("wb")
			clear_error
			l_rwops := {GAME_SDL_EXTERNAL}.SDL_RWFromFile(l_filename_c.item,l_mode_c.item)
			if l_rwops.is_default_pointer then
				manage_error_pointer (l_rwops, "Cannot create the dollar template file.")
			else
				l_error := {GAME_SDL_EXTERNAL}.SDL_SaveDollarTemplate(a_hash, l_rwops)
				manage_error_code (l_error - 1, "Cannot save the dollar template")
				last_saved_dollar_gesture_template := l_error
				l_error := {GAME_SDL_EXTERNAL}.SDL_RWClose(l_rwops)
				if not has_error and l_error < 0 then
					manage_error_code (l_error, "Cannot close the dollar template file")
				end
			end
		end

	save_all_dollar_gesture_template(a_filename:READABLE_STRING_GENERAL)
			-- Save every dollar gesture templates loaded in the library
			-- inside the file located at `a_filename'. If it exists, the file will be
			-- overwrited.
			-- Note: The templates hashes are not saved in the file. You have to save
			-- them yourself for future utilisation
		require
			Is_File_Creatable: (create {RAW_FILE}.make_with_name (a_filename)).is_creatable
		local
			l_rwops:POINTER
			l_error:INTEGER
			l_filename_c, l_mode_c:C_STRING
			l_utf_converter:UTF_CONVERTER
		do
			create l_utf_converter
			create l_filename_c.make (l_utf_converter.string_32_to_utf_8_string_8 (a_filename.to_string_32))
			create l_mode_c.make ("wb")
			clear_error
			l_rwops := {GAME_SDL_EXTERNAL}.SDL_RWFromFile(l_filename_c.item,l_mode_c.item)
			if l_rwops.is_default_pointer then
				manage_error_pointer (l_rwops, "Cannot create the dollar template file.")
			else
				l_error := {GAME_SDL_EXTERNAL}.SDL_SaveAllDollarTemplates(l_rwops)
				manage_error_code (l_error - 1, "Cannot save the dollar templates")
				last_saved_dollar_gesture_template := l_error
				l_error := {GAME_SDL_EXTERNAL}.SDL_RWClose(l_rwops)
				if not has_error and l_error < 0 then
					manage_error_code (l_error, "Cannot close the dollar template file")
				end
			end
		end

	append_dollar_gesture_template(a_hash:INTEGER_64; a_filename:READABLE_STRING_GENERAL)
			-- Save the dollar gesture templates identified by `a_hash'
			-- inside the file located at `a_filename'. If it exists, the data will
			-- be added to the end. If it does not, it will be created.
			-- Note: The `a_hash' is not saved in the file. You have to save it
			-- yourself for future utilisation
		require
			Is_File_Valid: attached (create {RAW_FILE}.make_with_name (a_filename)) as la_file implies
							((la_file.exists implies la_file.is_access_writable) and
							(not la_file.exists implies la_file.is_creatable))
		local
			l_rwops:POINTER
			l_error:INTEGER
			l_filename_c, l_mode_c:C_STRING
			l_utf_converter:UTF_CONVERTER
		do
			create l_utf_converter
			create l_filename_c.make (l_utf_converter.string_32_to_utf_8_string_8 (a_filename.to_string_32))
			create l_mode_c.make ("ab")
			clear_error
			l_rwops := {GAME_SDL_EXTERNAL}.SDL_RWFromFile(l_filename_c.item,l_mode_c.item)
			if l_rwops.is_default_pointer then
				manage_error_pointer (l_rwops, "Cannot create the dollar template file.")
			else
				l_error := {GAME_SDL_EXTERNAL}.SDL_SaveDollarTemplate(a_hash, l_rwops)
				manage_error_code (l_error - 1, "Cannot save the dollar template")
				last_saved_dollar_gesture_template := l_error
				l_error := {GAME_SDL_EXTERNAL}.SDL_RWClose(l_rwops)
				if not has_error and l_error < 0 then
					manage_error_code (l_error, "Cannot close the dollar template file")
				end
			end
		end

	append_all_dollar_gesture_template(a_filename:READABLE_STRING_GENERAL)
			-- Save every dollar gesture templates loaded in the library
			-- inside the file located at `a_filename'. If it exists, the data will
			-- be added to the end. If it does not, it will be created.
			-- Note: The templates hashes are not saved in the file. You have to save
			-- them yourself for future utilisation
		require
			Is_File_Valid: attached (create {RAW_FILE}.make_with_name (a_filename)) as la_file implies
							((la_file.exists implies la_file.is_access_writable) and
							(not la_file.exists implies la_file.is_creatable))
		local
			l_rwops:POINTER
			l_error:INTEGER
			l_filename_c, l_mode_c:C_STRING
			l_utf_converter:UTF_CONVERTER
		do
			create l_utf_converter
			create l_filename_c.make (l_utf_converter.string_32_to_utf_8_string_8 (a_filename.to_string_32))
			create l_mode_c.make ("ab")
			clear_error
			l_rwops := {GAME_SDL_EXTERNAL}.SDL_RWFromFile(l_filename_c.item,l_mode_c.item)
			if l_rwops.is_default_pointer then
				manage_error_pointer (l_rwops, "Cannot create the dollar template file.")
			else
				l_error := {GAME_SDL_EXTERNAL}.SDL_SaveAllDollarTemplates(l_rwops)
				manage_error_code (l_error - 1, "Cannot save the dollar templates")
				last_saved_dollar_gesture_template := l_error
				l_error := {GAME_SDL_EXTERNAL}.SDL_RWClose(l_rwops)
				if not has_error and l_error < 0 then
					manage_error_code (l_error, "Cannot close the dollar template file")
				end
			end
		end

	last_loaded_dollar_gesture_template:INTEGER
			-- How many dollar gesture template has been load on the last
			-- call of the `load_dollar_gesture_template' feature

	last_saved_dollar_gesture_template:INTEGER
			-- How many dollar gesture template has been save on the last
			-- call of the `save_dollar_gesture_template',
			-- `save_all_dollar_gesture_template', `append_dollar_gesture_template'
			-- or `append_all_dollar_gesture_template' feature

end
