note
	description: "Error manager frontend for the MPG123 internal library"
	author: "Louis Marchand"
	date: "Fri, 04 Nov 2016 17:31:01 +0000"
	revision: "0.1"

class
	MPG_ERROR_MANAGER

inherit
	GAME_ERROR_MANAGER

feature {NONE} -- Implementation

	read_mpg_error(a_message:READABLE_STRING_GENERAL; a_code:INTEGER)
			-- Read an error message from the internal library using the error code `a_code'
			-- and using a general error message `a_message'
		local
			l_error_c:C_STRING
		do
			if a_code /= {MPG_EXTERNAL}.mpg123_ok then
				create l_error_c.make_by_pointer ({MPG_EXTERNAL}.mpg123_plain_strerror(a_code))
				put_error(a_message, l_error_c.string)
			else
				clear_error
			end
		end

end
