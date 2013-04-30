note
	description: "The 3d object that receive the sound emit by sound sources."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	AUDIO_LISTENER

inherit
	AUDIO_3D_OBJECT

create {AUDIO_CONTROLLER}
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


	set_orientation(a_x_at,a_y_at,a_z_at,a_x_up,a_y_up,a_z_up:REAL)
			-- Set the listener orientation (UP and AT).
			-- If you visualize the listener as a head, the UP is a vector representing the top of the head.
			-- The AT is the vector representing where the head is looking.
		require
			Listener_Orientation_At_And_Up_Orthogonal: a_x_at*a_x_up+a_y_at*a_y_up+a_z_at*a_z_up=0
		do
			set_params_6_float({AUDIO_EXTERNAL}.AL_ORIENTATION,a_x_at,a_y_at,a_z_at,a_x_up,a_y_up,a_z_up)
		end

	orientation:TUPLE[a_x_at,a_y_at,a_z_at,a_x_up,a_y_up,a_z_up:REAL]
			-- Get the listener orientation (UP and AT).
		do
			Result:=params_6_float({AUDIO_EXTERNAL}.AL_ORIENTATION)
		end

feature {NONE} -- Implementation

	set_params_6_float(id:INTEGER;x_at,y_at,z_at,x_up,y_up,z_up:REAL)
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
			set_params_float_pointer_c(id,$c_params)
			read_error
			check not is_error end
		end


	params_6_float(a_id:INTEGER):TUPLE[x_at,y_at,z_at,x_up,y_up,z_up:REAL]
		local
			l_params_vector:ARRAY[REAL]
			l_params_c:ANY
		do
			create l_params_vector.make_filled (0.0, 1, 6)
			l_params_c:=l_params_vector.to_c
			read_error
			assign_params_float_pointer_c(a_id,$l_params_c)
			read_error
			check not is_error end
			Result:=[l_params_vector.at (1),l_params_vector.at (2),l_params_vector.at (3),l_params_vector.at (4),l_params_vector.at (5),l_params_vector.at (6)]
		end

	set_params_float_pointer_c(a_id:INTEGER;a_ptr:POINTER)
		do
			{AUDIO_EXTERNAL}.AL_set_listener_fv(a_id,a_ptr)
		end

	assign_params_float_pointer_c(a_id:INTEGER;a_ptr:POINTER)
		do
			{AUDIO_EXTERNAL}.AL_get_listener_fv(a_id,a_ptr)
		end

end
