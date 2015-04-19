note
	description: "A simple multi-touch fingers gesture (pinch, rotation, etc.)"
	author: "Louis Marchand"
	date: "Fri, 17 Apr 2015 17:55:32 +0000"
	revision: "2.0"

class
	GAME_FINGERS_GESTURE

inherit
	GAME_GESTURE
		rename
			make as make_gesture
		end

create
	make

feature {NONE} -- Initialization

	make(a_x, a_y, a_pinch_distance, a_rotation_angle:REAL_32; a_fingers_count:NATURAL_32)
			-- Initialization of `Current' using `a_x' as `x', `a_y' as `y',
			-- `a_fingers_count' as `fingers_count', `a_pinch_distance' as `distance'
			-- and `a_rotation_angle' as `angle'
		do
			make_gesture(a_x, a_y, a_fingers_count)
			distance := a_pinch_distance
			angle := a_rotation_angle
		end

feature -- Access

	distance:REAL_32
			-- amount that the fingers pinched during the performing of `Current'

	angle:REAL_32
			-- amount that the fingers rotated during the performing of `Current'

end
