note
	description: "Summary description for {AV_ANY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	AV_ANY

inherit
	ANY

feature -- Access

	Get_Error_Message(error_id:INTEGER):STRING
		local
			err_buf:POINTER
			err_c:C_STRING
			error_check:INTEGER
		do
			err_buf := err_buf.memory_alloc (64)
			error_check:={AV_EXTERNAL}.av_strerror(error_id,err_buf,64)
			create err_c.make_by_pointer (err_buf)
			create Result.make_from_string (err_c.string)
			err_buf.memory_free
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
