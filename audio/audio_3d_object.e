note
	description: "A 3d object for the 3d audio library."
	author: "Louis Marchand"
	date: "Tue, 07 Apr 2015 01:15:20 +0000"
	revision: "2.0"

deferred class
	AUDIO_3D_OBJECT

inherit
	AUDIO_OPENAL_ERROR_MANAGER
	GAME_3D_OBJECT


feature -- Access

	set_position(a_x,a_y,a_z:REAL)
			-- Set the object position in a 3D environment.
		do
			set_params_3_float({AUDIO_EXTERNAL}.Al_position,a_x,a_y,a_z)
		ensure then
			Is_Assign: not has_error implies(
						attached position as la_position implies (
								la_position.x ~ a_x and
								la_position.y ~ a_y and
								la_position.z ~ a_z
						)
					)
		end

	set_velocity(a_x,a_y,a_z:REAL)
			-- Set the object velocity (deplacement) in a 3D environment.
		do
			set_params_3_float({AUDIO_EXTERNAL}.Al_velocity,a_x,a_y,a_z)
		ensure then
			Is_Assign: not has_error implies (
						attached velocity as la_velocity implies (
							la_velocity.x ~ a_x and
							la_velocity.y ~ a_y and
							la_velocity.z ~ a_z
						)
					)
		end


	position:TUPLE[x,y,z:REAL]
			-- Get the object position in a 3D environment.
		do
			Result:=params_3_float({AUDIO_EXTERNAL}.Al_position)
		end

	velocity:TUPLE[x,y,z:REAL]
			-- Get the object velocity (deplacement) in a 3D environment.
		do
			Result:=params_3_float({AUDIO_EXTERNAL}.Al_velocity)
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
			clear_error
			set_params_float_pointer_c(a_id,$l_params_c)
			read_al_error("Cannot set audio float parameters (3).")
		ensure
			Is_Assign: not has_error implies (
						attached params_3_float(a_id) as la_params implies (
							la_params.x ~ a_x and
							la_params.y ~ a_y and
							la_params.z ~ a_z
						)
					)
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
			clear_error
			assign_params_float_pointer_c(a_id,$l_params_c)
			read_al_error("Cannot get audio floats parameters (3)")
			Result:=[l_params_vector.at (1),l_params_vector.at (2),l_params_vector.at (3)]
		end

end
