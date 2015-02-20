note
	description: "Summary description for {GAME_MOUSE_EVENTS_STATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_MOUSE_EVENTS_STATE

create
	make

feature {NONE} -- Initialization

	make(a_mouse_id:NATURAL_32)
		do
			id := a_mouse_id
		end

feature -- Access

	id:NATURAL_32
			-- Unique identifier of the mouse represented by `Current'

	is_touch_device:BOOLEAN
			-- True if the mouse represented by `Current' is the touch device.
		do
			Result := id = {GAME_SDL_EXTERNAL}.SDL_TOUCH_MOUSEID
		end

end
