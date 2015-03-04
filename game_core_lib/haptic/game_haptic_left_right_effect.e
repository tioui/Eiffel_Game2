note
	description: "[
					A {GAME_HAPTIC_EFFECT} that can use a left and right motor.
					May be use also for Low and High frequency motors.
				]"
	author: "Louis Marchand"
	date: "Tue, 03 Mar 2015 21:22:50 +0000"
	revision: "0.1"

class
	GAME_HAPTIC_LEFT_RIGHT_EFFECT

inherit
	GAME_HAPTIC_EFFECT_INFINITE_LENGTH
		redefine
			make
		end

create
	make

feature {NONE} -- Initialization

	make
		do
			Precursor
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_LEFTRIGHT.as_natural_16)
		end

feature -- Access

	length:NATURAL_32 assign set_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_leftright_length(specific_item)
		end

	set_length(a_length:NATURAL_32)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_leftright_length(specific_item, a_length)
		end

	left_level:NATURAL_16 assign set_left_level
			-- Strength of the left motor of `Current'
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_leftright_large_magnitude(specific_item)
		end

	set_left_level(a_level:NATURAL_16)
			-- Assign `start_level' with the value of `a_level'
		require
			Exists: exists
			Level_Valid: a_level <= 32767
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_leftright_large_magnitude (specific_item, a_level)
		ensure
			Is_Assign: left_level = a_level
		end

	right_level:NATURAL_16 assign set_right_level
			-- Strength of the right motor of `Current'
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_leftright_small_magnitude(specific_item)
		end

	set_right_level(a_level:NATURAL_16)
			-- Assign `right_level' with the value of `a_level'
		require
			Exists: exists
			Level_Valid: a_level <= 32767
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_leftright_small_magnitude (specific_item, a_level)
		ensure
			Is_Assign: right_level = a_level
		end

feature {NONE} -- Implementation

	specific_item:POINTER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_effect_leftright(item)
		end
end
