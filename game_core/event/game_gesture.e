note
	description: "Common ancestor for every touch device gesture"
	author: "Louis Marchand"
	date: "Fri, 17 Apr 2015 17:55:32 +0000"
	revision: "2.0"

deferred class
	GAME_GESTURE

feature {NONE} -- Initialization

	make(a_x, a_y:REAL_32; a_fingers_count:NATURAL_32)
			-- Initialization of `Current' using `a_x' as `x', `a_y' as `y' and `a_fingers_count' as `fingers_count'
		do
			x := a_x
			y := a_y
			fingers_count := a_fingers_count
		end

feature -- Access

	x:REAL_32
			-- horizontal coordinate of the center of `Current'

	y:REAL_32
			-- vertical coordinate of the center of `Current'

	fingers_count:NATURAL_32
			-- The number of fingers used to perform `Current'


end
