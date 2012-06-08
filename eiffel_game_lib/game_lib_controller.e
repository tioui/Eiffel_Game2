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
		quit_library as quit_library_sdl
	export
		{NONE} quit_library_sdl
	redefine
		launch
	end
	GAME_AL_CONTROLLER
	rename
		make as make_al,
		last_error as last_sound_error,
		is_error as is_sound_error,
		quit_library as quit_library_al
	export
		{NONE} quit_library_al
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
			init_random
		end

	make_no_parachute
			-- Initialization for `Current'.
			-- Don't clean up library on segfault
			-- No sound enable.
		do
			make_no_parachute_sdl
			make_no_sound
			init_random
		end

	init_random
		local
			l_time: TIME
			l_seed: INTEGER
		do
			create l_time.make_now
			l_seed := l_time.hour
			l_seed := l_seed * 60 + l_time.minute
			l_seed := l_seed * 60 + l_time.second
			l_seed := l_seed * 1000 + l_time.milli_second
			create random_sequence.set_seed (l_seed)
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
		do
			from
				must_stop:=false
			until
				must_stop
			loop
				update_all
				delay (1)
			end
		end

	quit_library
		do
			quit_library_al
			quit_library_sdl
		end

	get_random_integer:INTEGER_32
		do
			random_sequence.forth
			Result:=random_sequence.item
		end

	get_random_integer_between(min,max:INTEGER):INTEGER
		require
			Get_Random_Between_Max_and_Min_Valid: max>min
		do
			Result:= (get_random_integer\\(max-min+1))+min
		end

	get_random_real:REAL
		do
			random_sequence.forth
			Result:=random_sequence.real_item
		end

	get_random_real_between(min,max:REAL):REAL
		require
			Get_Random_Between_Max_and_Min_Valid: max>min
		do
			Result:= (get_random_real*(max-min))+min
		end


feature {NONE}  -- Implementation methods

feature {NONE}  -- Implementation variables

	random_sequence:RANDOM

end
