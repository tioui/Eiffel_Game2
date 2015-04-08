note
	description: "Error manager for every class implemented by SDL2."
	author: "Louis Marchand"
	date: "Wed, 01 Apr 2015 22:16:25 +0000"
	revision: "2.0"

deferred class
	GAME_SDL_ANY

inherit
	GAME_ERROR_MANAGER
		rename
			put_error as put_manual_error,
			message as manual_error
		redefine
			clear_error,
			put_manual_error,
			last_error
		end

feature {NONE} -- Implementation


	clear_error
			-- Remove error pending in `Current'
		do
			{GAME_SDL_EXTERNAL}.SDL_ClearError
			Precursor {GAME_ERROR_MANAGER}
			is_manual_error := False
		ensure then
			No_Error: is_manual_error = False
		end

	manage_error_code(a_error_code:INTEGER; a_message:READABLE_STRING_GENERAL)
			-- If needed create an error depending of the error code `a_code'.
			-- If there is an error, append `a_message' to the error message
			-- on the SDL2 library
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
			-- Create an error if `a_pointer' is not valid.
			-- If there is an error, append `a_message' to the error message
			-- on the SDL2 library
		do
			if a_pointer.is_default_pointer then
				if print_on_error_internal.item then
					io.error.put_string (a_message.to_string_8+"%N")
					io.error.put_string (last_error.to_string_8+"%N")
				end
				has_error:=True
			end
		ensure
			a_pointer.is_default_pointer implies has_error
		end

	manage_error_boolean(a_boolean:BOOLEAN; a_message:READABLE_STRING_GENERAL)
			-- Create an error if `a_boolean' is false.
			-- If there is an error, append `a_message' to the error message
			-- on the SDL2 library
		do
			if not a_boolean then
				if print_on_error_internal.item then
					io.error.put_string (a_message.to_string_8+"%N")
					io.error.put_string (last_error.to_string_8+"%N")
				end
				has_error:=True
			end
		ensure
			not a_boolean implies has_error
		end

	put_manual_error(a_general_message, a_specific_error:READABLE_STRING_GENERAL)
			-- Create an error using `a_general_error' for the debug information
			-- and `a_specific_error' for the lasting information
		do
			is_manual_error := True
			Precursor {GAME_ERROR_MANAGER} (a_general_message, a_specific_error)
		end

	is_manual_error:BOOLEAN
			-- Is the current pending error is a manual error (using `manual_error' as message)

feature -- Access

	last_error:READABLE_STRING_GENERAL
			-- The last error generate by the library
		local
			l_string:C_STRING
		do
			if is_manual_error then
				Result := Precursor {GAME_ERROR_MANAGER}
			else
				create l_string.make_by_pointer ({GAME_SDL_EXTERNAL}.SDL_GetError)
				Result:=l_string.string
			end
		end

end
