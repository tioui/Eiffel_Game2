note
	description: "[
		Common interface for various mouse input events
	]"
	author: "Louis Marchand and obnosim"
	date: "Sun Feb 04, 2018"
	revision: "0.2"

deferred class
	GAME_MOUSE_EVENT_COMMON

inherit
	GAME_MOUSE_COMMON
	GAME_MOUSE_EVENT
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

end
