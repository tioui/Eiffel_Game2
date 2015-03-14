note
	description: "Controller for the library."
	author: "Louis Marchand"
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_LIBRARY_CONTROLLER

inherit
	GAME_SDL_CONTROLLER
		redefine
			default_create
		end
	GAME_RANDOM_CONTROLLER
		redefine
			default_create
		end

create {GAME_LIBRARY_SHARED}
	default_create

feature {NONE} -- Initialization

	default_create
			-- Initialization for `Current'.
			-- No sound enable.
		do
			Precursor {GAME_RANDOM_CONTROLLER}
			Precursor {GAME_SDL_CONTROLLER}
		end


end
