note
	description: "A {GAME_HAPTIC_EFFECT} that play on a constant strength."
	author: "Louis Marchand"
	date: "Mon, 02 Mar 2015 20:24:45 +0000"
	revision: "0.1"

class
	GAME_HAPTIC_CONSTANT_EFFECT

inherit
	GAME_HAPTIC_EFFECT_INFINITE_LENGTH
		redefine
			make
		end
	GAME_HAPTIC_EFFECT_ENVELOPE
		redefine
			make
		end

create
	make

feature {NONE} -- Initialization

	make
		do
			Precursor
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_CONSTANT.as_natural_16)
		end

feature -- Access

	direction:GAME_HAPTIC_DIRECTION assign set_direction
			-- The orientation that the force of `Current' come from
		require
			Exists: exists
		do
			create Result.make_by_pointer({GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_direction(specific_item))
		end

	set_direction(a_direction:GAME_HAPTIC_DIRECTION)
			-- assign `direction' with the values of `a_direction'
		require
			Exists: exists
		do
			direction.copy(a_direction)
		ensure
			Is_Assign: direction ~ a_direction
		end

	length:NATURAL_32 assign set_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_length(specific_item)
		end

	set_length(a_length:NATURAL_32)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_length(specific_item, a_length)
		end

	delay:NATURAL_16 assign set_delay
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_delay(specific_item)
		end

	set_delay(a_delay:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_delay(specific_item, a_delay)
		end

	interval:NATURAL_16 assign set_interval
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_interval(specific_item)
		end

	set_interval(a_interval:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_interval(specific_item, a_interval)
		end

	level:INTEGER_16 assign set_level
			-- Strength of `Current'
		require
			Exists: exists	
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_level(specific_item)
		end

	set_level(a_level:INTEGER_16)
			-- Assign `level' with the value of `a_level'
		require
			Exists: exists
			Level_Valid: a_level <= 32767
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_level (specific_item, a_level)
		ensure
			Is_Assign: level = a_level
		end

	fade_in_level:NATURAL_16 assign set_fade_in_level
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_attack_level(specific_item)
		end

	set_fade_in_level(a_fade_in_level:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_attack_level(specific_item, a_fade_in_level)
		end

	fade_in_length:NATURAL_16 assign set_fade_in_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_attack_length(specific_item)
		end

	set_fade_in_length(a_fade_in_length:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_attack_length(specific_item, a_fade_in_length)
		end

	fade_out_level:NATURAL_16 assign set_fade_out_level
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_fade_level(specific_item)
		end

	set_fade_out_level(a_fade_out_level:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_fade_level(specific_item, a_fade_out_level)
		end

	fade_out_length:NATURAL_16 assign set_fade_out_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_fade_length(specific_item)
		end

	set_fade_out_length(a_fade_out_length:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_fade_length(specific_item, a_fade_out_length)
		end

feature {NONE} -- Implementation

	specific_item:POINTER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_effect_constant(item)
		end
end
