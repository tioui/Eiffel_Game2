note
	description: "The 3d object that receive the sound emit by sound sources."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_AL_LISTENER

inherit
	GAME_AL_OBJECT_3D

create {GAME_AL_CONTROLLER}
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			set_position (0.0, 0.0, 0.0)
			set_velocity (0.0, 0.0, 0.0)
			set_orientation (0.0, 0.0, -1.0, 0.0, 1.0, 0.0)
		end

feature -- Access


	set_orientation(x_at,y_at,z_at,x_up,y_up,z_up:REAL)
			-- Set the listener orientation (UP and AT).
			-- If you visualize the listener as a head, the UP is a vector representing the top of the head.
			-- The AT is the vector representing where the head is looking.
		require
			Listener_Orientation_At_And_Up_Orthogonal: x_at*x_up+y_at*y_up+z_at*z_up=0
		do
			set_6_float_params({GAME_AL_EXTERNAL}.AL_ORIENTATION,x_at,y_at,z_at,x_up,y_up,z_up)
		end

	get_orientation:TUPLE[x_at,y_at,z_at,x_up,y_up,z_up:REAL]
			-- Get the listener orientation (UP and AT).
		do
			Result:=get_6_float_parms({GAME_AL_EXTERNAL}.AL_ORIENTATION)
		end

feature {NONE} -- Implementation

	set_6_float_params(id:INTEGER;x_at,y_at,z_at,x_up,y_up,z_up:REAL)
		local
			params_vector:ARRAY[REAL]
			c_params:ANY
		do
			create params_vector.make_filled (0.0, 1, 6)
			params_vector.at (1):=x_at
			params_vector.at (2):=y_at
			params_vector.at (3):=z_at
			params_vector.at (4):=x_up
			params_vector.at (5):=y_up
			params_vector.at (6):=z_up
			c_params:=params_vector.to_c
			read_error
			set_float_params_c(id,$c_params)
			read_error
			check not is_error end
		end


	get_6_float_parms(id:INTEGER):TUPLE[x_at,y_at,z_at,x_up,y_up,z_up:REAL]
		local
			params_vector:ARRAY[REAL]
			c_params:ANY
		do
			create params_vector.make_filled (0.0, 1, 6)
			c_params:=params_vector.to_c
			read_error
			get_float_params_c(id,$c_params)
			read_error
			check not is_error end
			Result:=[params_vector.at (1),params_vector.at (2),params_vector.at (3),params_vector.at (4),params_vector.at (5),params_vector.at (6)]
		end

	set_float_params_c(id:INTEGER;ptr:POINTER)
		do
			{GAME_AL_EXTERNAL}.AL_set_listener_fv(id,ptr)
		end

	get_float_params_c(id:INTEGER;ptr:POINTER)
		do
			{GAME_AL_EXTERNAL}.AL_get_listener_fv(id,ptr)
		end

end
