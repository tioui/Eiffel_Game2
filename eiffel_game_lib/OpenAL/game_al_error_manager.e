note
	description: "[
		Error manager for the audio library. 
		All OpenAL Class inherit from it to access error in the C library.
		
		TODO: get individual error by name.
			]"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

deferred class
	GAME_AL_ERROR_MANAGER


feature {NONE}

	read_error
		do
			last_error:={GAME_AL_EXTERNAL}.AL_get_error
		end

feature -- Access



	is_error:BOOLEAN
			-- Is there an error in the OpenAL library.
		do
			Result:=last_error/={GAME_AL_EXTERNAL}.AL_NO_ERROR
		end

	last_error:INTEGER -- The last error index return by the OpenAL library.
end
