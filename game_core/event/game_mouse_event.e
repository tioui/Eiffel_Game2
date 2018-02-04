note
	description: "[
		Common interface for various mouse input events
	]"
	author: "Louis Marchand and obnosim"
	date: "Sun Feb 04, 2018"
	revision: "$Revision$"

deferred class
	GAME_MOUSE_EVENT

inherit

	GAME_MOUSE_EVENT_ORIGIN
		rename
			make as set_id
		end

feature {NONE} -- Initialization

	make (a_mouse_id, a_state: NATURAL_32; a_x, a_y: INTEGER_32)
			-- Initialization for `Current'.
		do
			set_id (a_mouse_id)
			state := a_state
			x := a_x
			y := a_y
		end

feature -- Access

	x: INTEGER_32
			-- Horizontal position of the mouse represented by `Current' relative to the focussed window

	y: INTEGER_32
			-- Vertical position of the mouse represented by `Current' relative to the focussed window

	has_left_button: BOOLEAN
			-- Is the left button of the mouse that emitted `Current' involved with `Current'?
		deferred
		end

	has_right_button: BOOLEAN
			-- Is the right button of the mouse that emitted `Current' involved with `Current'?
		deferred
		end

	has_middle_button: BOOLEAN
			-- Is the middle button of the mouse that emitted `Current' involved with `Current'?
		deferred
		end

	has_optional_button_1: BOOLEAN
			-- Is the first optional button of the mouse that emitted `Current' involved with `Current'?
		deferred
		end

	has_optional_button_2: BOOLEAN
			-- Is the second optional button of the mouse that emitted `Current' involved with `Current'?
		deferred
		end

feature {GAME_SDL_ANY} -- Implementation

	state: NATURAL_32
			-- The internal state code.

end
