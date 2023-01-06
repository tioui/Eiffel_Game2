note
	description: "Manager for the errors of the Audio Video library"
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 03:35:44 +0000"
	revision: "0.1"

class
	AV_ERROR_MANAGER

inherit
	GAME_ERROR_MANAGER


feature -- Access

	read_av_error(a_message:READABLE_STRING_GENERAL; a_error_code:INTEGER)
			-- Read the `a_error_code' and if it is an AV error,
			-- print `a_message' and the internal AV error message.
			-- Also put `has_error' to `True' when `a_error_code' is a error.
		local
			l_error_str:STRING
		do
			if a_error_code >= 0 then
				clear_error
			else
				put_error (a_message, av_error_message(a_error_code))
			end
		end

feature {NONE}

	av_error_message(a_error_id:INTEGER):STRING
			-- The AV error message of `a_error_id'.
		local
			l_err_buf:POINTER
			l_err_c:C_STRING
			l_error_check:INTEGER
		do
			l_err_buf := l_err_buf.memory_alloc (64)
			l_error_check:={AV_EXTERNAL}.av_strerror(a_error_id,l_err_buf,64)
			create l_err_c.make_by_pointer (l_err_buf)
			create Result.make_from_string (l_err_c.string)
			l_err_buf.memory_free
		end

end
