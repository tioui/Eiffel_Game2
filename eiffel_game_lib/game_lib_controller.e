note
	description: "Controller for the library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_LIB_CONTROLLER

inherit
	GAME_SDL_CONTROLLER
	rename
		make as make_sdl,
		make_no_parachute as make_no_parachute_sdl,
		quit_library as sdl_quit_library
	export {NONE}
		sdl_quit_library
	end
	GAME_AL_CONTROLLER
	rename
		make as make_al,
		quit_library as al_quit_library
	export {NONE}
		al_quit_library
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
			make_no_sound
		end

	make_no_parachute
			-- Initialization for `Current'.
			-- Don't clean up library on segfault
			-- No sound enable.
		do
			make_no_parachute_sdl
			make_no_sound
		end

feature -- Access

	quit_library
			-- Close the library. (Must be launch before quitting application)
		do
			al_quit_library
			sdl_quit_library
		end

end
