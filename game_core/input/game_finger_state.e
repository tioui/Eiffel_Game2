note
	description: "Snapshot of a finger state on a touch device"
	author: "Louis Marchand"
	date: "Thu, 16 Apr 2015 19:26:57 +0000"
	revision: "2.0"

class
	GAME_FINGER_STATE

inherit
	GAME_SDL_ANY

create
	make

feature {NONE}

	make(a_device:GAME_TOUCH_DEVICE; a_number:INTEGER)
			-- Initialization of `Current' as the `a_number'nd finger applied on `a_device'
		require
			Index_Valid: a_number > 0  and a_number <= a_device.finger_count
		local
			l_pointer:POINTER
		do
			clear_error
			l_pointer := {GAME_SDL_EXTERNAL}.SDL_GetTouchFinger(a_device.index, a_number - 1)
			if l_pointer.is_default_pointer then
				manage_error_pointer (l_pointer, "Cannot get the touch finger state.")
			else
				index := {GAME_SDL_EXTERNAL}.get_sdl_finger_struct_id(l_pointer)
				x := {GAME_SDL_EXTERNAL}.get_sdl_finger_struct_x(l_pointer)
				y := {GAME_SDL_EXTERNAL}.get_sdl_finger_struct_y(l_pointer)
				pressure := {GAME_SDL_EXTERNAL}.get_sdl_finger_struct_pressure(l_pointer)
			end

		end

feature --Access

	index:INTEGER_64
			-- The unique internal identifier of `Current'

	x:REAL_32
			-- The horizontal coordinate of `Current' in `device' (normalized between 0 and 1)

	y:REAL_32
			-- The vertical coordinate of `Current' in `device' (normalized between 0 and 1)

	pressure:REAL_32
			-- The quantity of pressure that `Current' applied on the touch `device' (normalized between 0 and 1)

end
