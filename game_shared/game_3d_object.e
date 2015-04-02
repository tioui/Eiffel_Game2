note
	description: "A 3d object."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 04:11:03 +0000"
	revision: "2.0"

deferred class
	GAME_3D_OBJECT



feature -- Access

	set_position(a_x,a_y,a_z:REAL)
			-- Set the object `position' in a 3D environment.
		deferred
		end

	position:TUPLE[x,y,z:REAL]
			-- Object position in a 3D environment.
		deferred
		end

	x:REAL assign set_x
			-- X coordinate of the `position'
		do
			Result:=position.x
		end

	set_x(a_x:REAL)
			-- Assign the `x' coordinate of the `position'
		do
			set_position(a_x,y,z)
		end

	y:REAL assign set_y
			-- Y coordinate of the `position'
		do
			Result:=position.y
		end

	set_y(a_y:REAL)
			-- Assign the `y' coordinate of the `position'
		do
			set_position(x,a_y,z)
		end

	z:REAL assign set_z
			-- Z coordinate of the `position'
		do
			Result:=position.z
		end

	set_z(a_z:REAL)
			-- Assign the `z' coordinate of the `position'
		do
			set_position(x,y,a_z)
		end

end
