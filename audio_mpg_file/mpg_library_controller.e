note
	description: "Singleton controller for the MPG library"
	author: "Louis Marchand"
	date: "Fri, 04 Nov 2016 17:31:01 +0000"
	revision: "0.1"

class
	MPG_LIBRARY_CONTROLLER

inherit
	MPG_ERROR_MANAGER


feature -- Access

	enable_mpg
			-- Enable the MPG library (must be called one per process)
		require
			Not_Enabled: not is_mpg_enabled
		local
			l_error:INTEGER
		do
			l_error := {MPG_EXTERNAL}.mpg123_init
			if l_error /= {MPG_EXTERNAL}.mpg123_ok then
				read_mpg_error ("Cannot enable the MPG library.", l_error)
			else
				is_mpg_enabled := True
			end

		end

	quit_library
			-- Quit the MPG library (must be called one per process)
		local
			l_memory:MEMORY
		do
			if is_mpg_enabled then
				create l_memory
				l_memory.full_collect
				{MPG_EXTERNAL}.mpg123_exit
				is_mpg_enabled := False
			end
		end

	is_mpg_enabled:BOOLEAN
			-- The MPG library has been enabled
end
