note
	description: "[
				A snapshot of the state of a {GAME_MOUSE} at a certain time.
				Note that this information is not updated overtime.
					]"
	author: "Louis Marchand"
	date: "Wed Sep 03, 2014"
	revision: "0.1"

class
	GAME_MOUSE_STATE

inherit
	GAME_MOUSE_BUTTON_MASK_COMMON
		redefine
			default_create
		end

create
	default_create

feature {NONE} -- Implementation

	default_create
			-- Initialization of `Current'
		do
			state := {GAME_SDL_EXTERNAL}.SDL_GetMouseState($x,$y)
		end

end
