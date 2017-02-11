note
	description: "A class taht has errors to manage"
	author: "Louis Marchand"
	date: "Mon, 06 Apr 2015 01:38:04 +0000"
	revision: "2.0"

deferred class
	GAME_ERROR_MANAGER

feature {NONE} -- Implementation

	clear_error
			-- Remove error pending in `Current'
		do
			has_error:=False
		ensure
			No_Error: not has_error
		end


	put_error(a_general_message, a_specific_error:READABLE_STRING_GENERAL)
			-- Create an error using `a_general_error' for the debug information
			-- and `a_specific_error' for the lasting information
		local
			l_converter:UTF_CONVERTER
		do
			message := a_specific_error
			has_error:=True
			if print_on_error_internal.item then
				if a_general_message.is_valid_as_string_8 then
					io.error.put_string (a_general_message.to_string_8+"%N")
				else
					create l_converter
					io.error.put_string (l_converter.string_32_to_utf_8_string_8 (a_general_message.to_string_32)+"%N")
				end

				if a_specific_error.is_valid_as_string_8 then
					io.error.put_string (a_specific_error.to_string_8+"%N")
				else
					create l_converter
					io.error.put_string (l_converter.string_32_to_utf_8_string_8 (a_specific_error.to_string_32)+"%N")
				end
			end
		ensure
			has_error
		end

	message:detachable READABLE_STRING_GENERAL
			-- The specific message for the last error

	print_on_error_internal:CELL[BOOLEAN]
			-- True when an error occured,
			-- The library will print it right away.
		once ("PROCESS")
			create Result.put (True)
		end

	print_on_error:BOOLEAN
			-- When an error occured, the library will print
			-- informations about the error on the error console
			-- output (default is True).
		do
			Result := print_on_error_internal.item
		end

	set_print_on_error(a_value:BOOLEAN)
			-- Assign to `print_on_error' the value of `a_value'
		do
			if a_value then
				enable_print_on_error
			else
				disable_print_on_error
			end
		ensure
			Is_Assign: print_on_error~ a_value
		end

	enable_print_on_error
			-- Active the `print_on_error' functionnality.
		do
			print_on_error_internal.put(True)
		end

	disable_print_on_error
			-- Desactive the `print_on_error' functionnality.
		do
			print_on_error_internal.put(False)
		end


feature -- Access

	has_error:BOOLEAN
			-- Is the library has generate an error

	last_error:READABLE_STRING_GENERAL
			-- The last error generate by the library
		do
			if attached message as la_message then
				Result := la_message
			else
				Result := ""
			end
		end



end
