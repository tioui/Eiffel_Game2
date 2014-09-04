note
	description: "Summary description for {GAME_MOUSE_MOTION_STATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_MOUSE_MOTION_STATE

inherit
	GAME_MOUSE_STATE
		rename
			x as x_in_desktop,
			y as y_in_desktop,
			x_in_window as x,
			y_in_window as y
		export
			{NONE} x_in_desktop, y_in_desktop
		end
	GAME_MOUSE_EVENTS_STATE
		rename
			make as make_events_state
		undefine
			default_create
		end

create
	make

feature {NONE} -- Initialization

	make(a_mouse_id, a_state:NATURAL_32; a_x,a_y:INTEGER_32)
			-- Initialization for `Current'.
		local
			l_error:NATURAL_32
		do
			make_events_state(a_mouse_id)
			state := a_state
			x := a_x
			y := a_y
			l_error := {GAME_SDL_EXTERNAL}.SDL_GetGlobalMouseState($x_in_desktop,$y_in_desktop)
		end


end
