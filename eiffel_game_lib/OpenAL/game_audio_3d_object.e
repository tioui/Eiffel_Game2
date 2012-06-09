note
	description: "A 3d object for the 3d audio library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

deferred class
	GAME_AUDIO_3D_OBJECT

inherit
	GAME_OPENAL_ERROR_MANAGER


feature -- Access

	set_position(x,y,z:REAL)
			-- Set the object position in a 3D environment.
		do
			set_3_float_params({GAME_AUDIO_EXTERNAL}.AL_POSITION,x,y,z)
		end

	set_velocity(x,y,z:REAL)
			-- Set the object velocity (deplacement) in a 3D environment.
		do
			set_3_float_params({GAME_AUDIO_EXTERNAL}.AL_VELOCITY,x,y,z)
		end


	get_position:TUPLE[x,y,z:REAL]
			-- Get the object position in a 3D environment.
		do
			Result:=get_3_float_parms({GAME_AUDIO_EXTERNAL}.AL_POSITION)
		end

	get_velocity:TUPLE[x,y,z:REAL]
			-- Get the object velocity (deplacement) in a 3D environment.
		do
			Result:=get_3_float_parms({GAME_AUDIO_EXTERNAL}.AL_VELOCITY)
		end

feature {NONE} -- Implementation

	set_float_params_c(id:INTEGER;ptr:POINTER)
	deferred
	end

	set_3_float_params(id:INTEGER;x,y,z:REAL)
		local
			params_vector:ARRAY[REAL]
			c_params:ANY
		do
			create params_vector.make_filled (0.0, 1, 3)
			params_vector.at (1):=x
			params_vector.at (2):=y
			params_vector.at (3):=z
			c_params:=params_vector.to_c
			read_error
			set_float_params_c(id,$c_params)
			read_error
			check not is_error end
		end

	get_float_params_c(id:INTEGER;ptr:POINTER)
	deferred
	end

	get_3_float_parms(id:INTEGER):TUPLE[x,y,z:REAL]
		local
			params_vector:ARRAY[REAL]
			c_params:ANY
		do
			create params_vector.make_filled (0.0, 1, 3)
			c_params:=params_vector.to_c
			read_error
			get_float_params_c(id,$c_params)
			read_error
			check not is_error end
			Result:=[params_vector.at (1),params_vector.at (2),params_vector.at (3)]
		end

end
