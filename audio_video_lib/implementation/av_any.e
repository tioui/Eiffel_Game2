note
	description: "Summary description for {AV_ANY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	AV_ANY

inherit
	AV_CONSTANTS

feature -- Access

	get_error_message(a_error_id:INTEGER):STRING_8
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

feature {NONE}

	init_library
		once ("PROCESS")
			{AV_EXTERNAL}.av_register_all
		end

	void_ptr:POINTER
		once ("PROCESS")
			Result:=create {POINTER}
		end


end
