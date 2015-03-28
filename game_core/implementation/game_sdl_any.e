note
	description: "Summary description for {GAME_SDL_ANY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_SDL_ANY

inherit
	ANY

feature {NONE} -- Implementation


	clear_error
		do
			{GAME_SDL_EXTERNAL}.SDL_ClearError
			has_error:=False
			is_manual_error := False
		end

	manage_error_code(a_error_code:INTEGER; a_message:READABLE_STRING_GENERAL)
		do
			if a_error_code < 0 then
				if print_on_error_internal.item then
					io.error.put_string (a_message.to_string_8+"%N")
					io.error.put_string (last_error.to_string_8+"%N")
				end
				has_error:=True
			end
		end

	manage_error_pointer(a_pointer:POINTER; a_message:READABLE_STRING_GENERAL)
		do
			if a_pointer.is_default_pointer then
				if print_on_error_internal.item then
					io.error.put_string (a_message.to_string_8+"%N")
					io.error.put_string (last_error.to_string_8+"%N")
				end
				has_error:=True
			end
		end

	manage_error_boolean(a_boolean:BOOLEAN; a_message:READABLE_STRING_GENERAL)
		do
			if not a_boolean then
				if print_on_error_internal.item then
					io.error.put_string (a_message.to_string_8+"%N")
					io.error.put_string (last_error.to_string_8+"%N")
				end
				has_error:=True
			end
		end

	put_manual_error(a_general_message, a_specific_error:READABLE_STRING_GENERAL)
		do
			is_manual_error := True
			manual_error := a_specific_error
			has_error:=True
			if print_on_error_internal.item then
				io.error.put_string (a_general_message.to_string_8+"%N")
				io.error.put_string (a_specific_error.to_string_8+"%N")
			end
		end

	is_manual_error:BOOLEAN

	manual_error:detachable READABLE_STRING_GENERAL

	print_on_error_internal:CELL[BOOLEAN]
		once
			create Result.put (True)
		end

feature -- Access

	has_error:BOOLEAN
			-- Is the library has generate an error

	last_error:READABLE_STRING_GENERAL
			-- The last error generate by the library
		local
			l_string:C_STRING
		do
			if is_manual_error then
				if attached manual_error as la_message then
					Result := la_message
				else
					Result := "" -- Should never happend
				end
			else
				create l_string.make_by_pointer ({GAME_SDL_EXTERNAL}.SDL_GetError)
				Result:=l_string.string
			end
		end

end
