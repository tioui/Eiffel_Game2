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
		make
	end
	GAME_RANDOM_CONTROLLER
		redefine
			make
		end

create {GAME_LIBRARY_SHARED}
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
			-- No sound enable.
		do
			Precursor {GAME_RANDOM_CONTROLLER}
			Precursor {GAME_SDL_CONTROLLER}
		end


end
