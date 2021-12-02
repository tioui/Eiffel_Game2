note
	description: "Summary description for {ANGLE_HELPER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ANGLE_HELPER

create
	make


feature {NONE} -- Initialisation

	make(a_angle, a_force:REAL_64)
			-- Initialisation of `Current' using `a_angle' as `angle'
			-- and `a_force' as `force'
		do
			set_angle(a_angle)
			set_force(a_force)
		ensure
			Angle_Is_Assign: angle ~ a_angle
		end

feature -- Access

	angle:REAL_64
			-- Reprensent the orientation of `Current', in radian

	set_angle(a_angle:REAL_64)
			-- Assing `angle' with the value of `a_angle'
		do
			angle := a_angle
		ensure
			Is_Assign: angle ~ a_angle
		end

	force:REAL_64
			-- The force apply to an object in `Current'

	set_force(a_force:REAL_64)
			-- Assing `force' with the value of `a_force'
		do
			force := a_force
		ensure
			Is_Assign: force ~ a_force
		end

	line_coordinates:TUPLE[x, y:INTEGER]
			-- The coordinate of one extremity of a line of lenght `force` and oriented
			-- with `angle'. The other extremity is at (0,0).
		local
			l_x, l_y:INTEGER
		do
			l_x := ({DOUBLE_MATH}.sine (angle) * (force * 5)).rounded
			l_y := -({DOUBLE_MATH}.cosine (angle) * (force * 5)).rounded
			Result := [l_x, l_y]
		end

end
