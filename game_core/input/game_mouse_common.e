note
	description: "Common ancestor to mouse state and events"
	author: "Louis MArchand"
	date: "Sun, 04 Feb 2018 15:17:55 +0000"
	revision: "0.1"

deferred class
	GAME_MOUSE_COMMON

feature -- Access

	x:INTEGER_32
			-- Horizontal position of `Current' (relative to the focussed window)

	y:INTEGER_32
			-- Vertical position of `Current' (relative to the focussed window)

	is_left_button:BOOLEAN
			-- Is the left button of `Current' being managed
		deferred
		end

	is_right_button:BOOLEAN
			-- Is the right button of `Current' being managed
		deferred
		end

	is_middle_button:BOOLEAN
			-- Is the middle button of `Current' being managed
		deferred
		end

	is_optional_button_1:BOOLEAN
			-- Is the first optionnal button of `Current' being managed
		deferred
		end

	is_optional_button_2:BOOLEAN
			-- Is the second optionnal button of `Current' being managed
		deferred
		end


feature {GAME_SDL_ANY} -- Implementation

	state:NATURAL_32
			-- The internal state code.

end
