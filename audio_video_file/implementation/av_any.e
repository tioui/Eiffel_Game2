note
	description: "Common ancestor of every Audio Video library classes."
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 03:35:44 +0000"
	revision: "0.2"

deferred class
	AV_ANY


feature {NONE}

	void_ptr:POINTER
			-- A C NULL pointer
		once ("PROCESS")
			Result:=create {POINTER}
		end


end
