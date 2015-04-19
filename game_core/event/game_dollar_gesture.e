note
	description: "A complexe gesture similar to a template"
	author: "Louis Marchand"
	date: "Fri, 17 Apr 2015 17:55:32 +0000"
	revision: "2.0"

class
	GAME_DOLLAR_GESTURE

inherit
	GAME_GESTURE
		rename
			make as make_gesture
		end

create
	make

feature {NONE} -- Initialization

	make(a_template_hash:INTEGER_64;a_x, a_y, a_difference:REAL_32; a_fingers_count:NATURAL_32)
			-- Initialization of `Current' compare to the template identified by `a_template_hash',
			-- using `a_x' as `x', `a_y' as `y', `a_fingers_count' as `fingers_count' and
			-- `a_difference' as `difference'
		do
			make_gesture(a_x, a_y, a_fingers_count)
			template_hash := a_template_hash
			difference := a_difference
		end

feature -- Access

	template_hash:INTEGER_64
			-- The quasi-unique hash of the dollar gesture template that is the closest to `Current'

	difference:REAL_32
			-- The distance (error) between `Current' and the dollar gesture template (The lower the closest)

end
