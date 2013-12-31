note
	description: "A 3d object for the 3d audio library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

deferred class
	AUDIO_3D_OBJECT

inherit
	AUDIO_OPENAL_ERROR_MANAGER
	GAME_3D_OBJECT


feature -- Access

	set_position(a_x,a_y,a_z:REAL)
			-- Set the object position in a 3D environment.
		do
			set_params_3_float(Al_position,a_x,a_y,a_z)
		end

	set_velocity(a_x,a_y,a_z:REAL)
			-- Set the object velocity (deplacement) in a 3D environment.
		do
			set_params_3_float(Al_velocity,a_x,a_y,a_z)
		end


	position:TUPLE[x,y,z:REAL]
			-- Get the object position in a 3D environment.
		do
			Result:=params_3_float(Al_position)
		end

	velocity:TUPLE[x,y,z:REAL]
			-- Get the object velocity (deplacement) in a 3D environment.
		do
			Result:=params_3_float(Al_velocity)
		end

feature {NONE} -- Implementation

	set_params_float_pointer_c(a_id:INTEGER;a_ptr:POINTER)
	deferred
	end

	set_params_3_float(a_id:INTEGER;a_x,a_y,a_z:REAL)
		local
			l_params_vector:ARRAY[REAL]
			l_params_c:ANY
		do
			create l_params_vector.make_filled (0.0, 1, 3)
			l_params_vector.at (1):=a_x
			l_params_vector.at (2):=a_y
			l_params_vector.at (3):=a_z
			l_params_c:=l_params_vector.to_c
			read_error
			set_params_float_pointer_c(a_id,$l_params_c)
			read_error
			check not is_error end
		end

	assign_params_float_pointer_c(a_id:INTEGER;a_ptr:POINTER)
	deferred
	end

	params_3_float(a_id:INTEGER):TUPLE[x,y,z:REAL]
		local
			l_params_vector:ARRAY[REAL]
			l_params_c:ANY
		do
			create l_params_vector.make_filled (0.0, 1, 3)
			l_params_c:=l_params_vector.to_c
			read_error
			assign_params_float_pointer_c(a_id,$l_params_c)
			read_error
			check not is_error end
			Result:=[l_params_vector.at (1),l_params_vector.at (2),l_params_vector.at (3)]
		end

end
