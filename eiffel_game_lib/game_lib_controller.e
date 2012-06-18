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
		make_no_parachute as make_no_parachute_sdl,
		quit_library as quit_library_sdl
	export
		{NONE} quit_library_sdl
	redefine
		launch
	end
	GAME_AUDIO_CONTROLLER
	rename
		make as make_al,
		last_error as last_sound_error,
		is_error as is_sound_error,
		quit_library as quit_library_al
	export
		{NONE} quit_library_al
	end
	GAME_RANDOM_CONTROLLER
		rename
			make as make_random
		end
	THREAD
		rename
			launch as launch_sound,
			execute as execute_sound
		end

create
	make,
	make_no_parachute

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
			-- No sound enable.
		do
			disable_sound_thread
			make_sdl
			make_no_sound
			make_random
		end

	make_no_parachute
			-- Initialization for `Current'.
			-- Don't clean up library on segfault
			-- No sound enable.
		do
			disable_sound_thread
			make_no_parachute_sdl
			make_no_sound
			make_random
		end


feature -- Access

	update_all
			-- Execute the sound streaming update and the event polling.
		do
			if is_sound_enable then
				update_sound_playing
			end
			update_event
		end

	launch
			-- Start the main loop. Used to get a Event-driven programming only.
			-- Don't forget to execute the method `stop' in an event handeler.
			-- Be carefull, if the sound thread is disabled and `loop_delay' variable is set too high,
			-- the sound may stop unexpectedly.
		do
			if is_sound_thread_enable and then is_sound_enable then
				launch_sound
				launch_event
				join
			else
				from
					must_stop:=false
				until
					must_stop
				loop
					update_all
					delay (loop_delay)
				end
			end

		end

	quit_library
			-- Must be launch before closign the program. Correctly stop the library.
		do
			quit_library_al
			quit_library_sdl
		end

	enable_sound_thread
			-- Put the sound management in a different thread when the `launch' method will be used.
		do
			is_sound_thread_enable:=true
		end

	disable_sound_thread
			-- Do not put the sound management in a different thread when the `launch' method will be used.
		do
			is_sound_thread_enable:=false
		end

	is_sound_thread_enable:BOOLEAN
			-- Return true if the sound management will be put in a different thread when the `launch' method will be used.

feature {NONE} -- Implementation - Routines

	execute_sound
		do
			from
				must_stop:=false
			until
				must_stop
			loop
				update_sound_playing
				delay (100)
			end
		end

	launch_event
		do
			from
				must_stop:=false
			until
				must_stop
			loop
				update_event
				delay (loop_delay)
			end
		end

end
