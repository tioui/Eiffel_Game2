note
	description: "The state of a mouse in an event context."
	author: "Louis Marchand"
	date: "Wed, 01 Apr 2015 19:04:20 +0000"
	revision: "2.0"

class
	GAME_MOUSE_EVENT_ORIGIN

create
	make

feature {NONE} -- Initialization

	make (a_mouse_id: NATURAL_32)
			-- Initialization of `Current' using `a_mouse_id' as internal `id'
		do
			id := a_mouse_id
		end

feature -- Access

	id: NATURAL_32
			-- Unique identifier of the mouse represented by `Current'

	is_touch_device: BOOLEAN
			-- True if the mouse represented by `Current' is the touch device.
		do
			Result := id = {GAME_SDL_EXTERNAL}.SDL_TOUCH_MOUSEID
		end

end
