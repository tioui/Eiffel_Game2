note
	description: "An event that is trigger by a finger on a touch device"
	author: "Louis Marchand"
	date: "Thu, 16 Apr 2015 19:59:10 +0000"
	revision: "2.0"

class
	GAME_FINGER_EVENT_STATE

inherit
	GAME_FINGER_STATE
		rename
			make as make_state
		end

create
	make

feature {NONE} -- Initialization

	make(a_index:INTEGER_64; a_x, a_y, a_relative_x, a_relative_y, a_pressure:REAL_32)
			-- Initialization of `Current' using `a_index' as `index', `a_x' as `x', `a_y' as `y',
			-- `a_relative_x' as `relative_x', `a_relative_y' as `relative_y' and `a_pressure' as `pressure'
		do
			index := a_index
			x := a_x
			y := a_y
			pressure := a_pressure
			relative_x := a_relative_x
			relative_y := a_relative_y
		end

feature -- Access

	relative_x:REAL_32
			-- The difference between the `x' value of the last finger event and this one

	relative_y:REAL_32
			-- The difference between the `y' value of the last finger event and this one

end
