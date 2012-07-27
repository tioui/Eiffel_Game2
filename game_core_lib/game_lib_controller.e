note
	description: "Controller for the library."
	author: "Louis Marchand"
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_LIB_CONTROLLER

inherit
	GAME_SDL_CONTROLLER
	rename
		make as make_sdl,
		make_no_parachute as make_no_parachute_sdl
	end
	GAME_RANDOM_CONTROLLER
		rename
			make as make_random
		end

create
	make,
	make_no_parachute

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
			-- No sound enable.
		do
			make_sdl
			make_random
		end

	make_no_parachute
			-- Initialization for `Current'.
			-- Don't clean up library on segfault
			-- No sound enable.
		do
			make_no_parachute_sdl
			make_random
		end


feature -- Access


feature {NONE} -- Implementation - Routines


end
