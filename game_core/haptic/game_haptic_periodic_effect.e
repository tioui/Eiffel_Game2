note
	description: "[
					A {GAME_HAPTIC_EFFECT} that play on a periodic strength.
					A periodic effect consists of a wave-shaped effect that
					repeats itself over time. Example:

					button         period
					press          |     |
					  ||      __    __    __    __    __    _
					  ||     |  |  |  |  |  |  |  |  |  |   magnitude   __ Offset
					  \/     |  |__|  |__|  |__|  |__|  |   _
					    -----
					      |
					    delay          phase >>
					
					-------------------------------------
					              length
					===================================================
					                      interval
				]"
	author: "Louis Marchand"
	date: "Tue, 03 Mar 2015 14:16:22 +0000"
	revision: "2.0"

class
	GAME_HAPTIC_PERIODIC_EFFECT

inherit
	GAME_HAPTIC_EFFECT_INFINITE_LENGTH
	GAME_HAPTIC_EFFECT_ENVELOPE

create
	make_sine,
	make_square,
	make_triangle,
	make_sawtooth_up,
	make_sawtooth_down

feature {NONE} -- Initialization

	make_sine
			-- Initialization of `Current' using a sine periodic effect
			--   __      __      __      __
			--  /  \    /  \    /  \    /
			-- /    \__/    \__/    \__/
		do
			make
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_SINE.as_natural_16)
		end

	make_square
			-- Initialization of `Current' using a square periodic effect
			--  __    __    __    __    __
			-- |  |  |  |  |  |  |  |  |  |
			-- |  |__|  |__|  |__|  |__|  |
		do
			make
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_LEFTRIGHT.as_natural_16)
		end

	make_triangle
			-- Initialization of `Current' using a triangle periodic effect
			--   /\    /\    /\    /\    /\
			--  /  \  /  \  /  \  /  \  /
			-- /    \/    \/    \/    \/
		do
			make
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_TRIANGLE.as_natural_16)
		end

	make_sawtooth_up
			-- Initialization of `Current' using a sawtooth periodic effect opened at the bottom
			--   /|  /|  /|  /|  /|  /|  /|
			--  / | / | / | / | / | / | / |
			-- /  |/  |/  |/  |/  |/  |/  |
		do
			make
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_SAWTOOTHUP.as_natural_16)
		end

	make_sawtooth_down
			-- Initialization of `Current' using a sawtooth periodic effect opened at the bottom
			-- \  |\  |\  |\  |\  |\  |\  |
			--  \ | \ | \ | \ | \ | \ | \ |
			--   \|  \|  \|  \|  \|  \|  \|
		do
			make
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_SAWTOOTHDOWN.as_natural_16)
		end

feature -- Access

	direction:GAME_HAPTIC_DIRECTION assign set_direction
			-- The orientation that the force of `Current' come from
		require
			Exists: exists
		do
			create Result.make_by_pointer({GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_direction(specific_item))
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
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_length(specific_item)
		end

	set_length(a_length:NATURAL_32)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_length(specific_item, a_length)
		end

	delay:NATURAL_16 assign set_delay
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_delay(specific_item)
		end

	set_delay(a_delay:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_delay(specific_item, a_delay)
		end

	interval:NATURAL_16 assign set_interval
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_interval(specific_item)
		end

	set_interval(a_interval:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_interval(specific_item, a_interval)
		end

	period:NATURAL_16 assign set_period
			-- Time (in millisecond) between two wave.
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_period(specific_item)
		end

	set_period(a_period:NATURAL_16)
			-- Assign `period' with the value of `a_period'
		require
			Exists: exists
			Period_Valid: a_period <= 32767
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_period (specific_item, a_period)
		ensure
			Is_Assign: period = a_period
		end

	magnitude:INTEGER_16 assign set_magnitude
			-- peak value; if negative, equivalent to 180 degrees extra phase shift
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_magnitude(specific_item)
		end

	set_magnitude(a_magnitude:INTEGER_16)
			-- Assign `magnitude' with the value of `a_magnitude'
		require
			Exists: exists
			Magnitude_Valid: a_magnitude <= 32767
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_magnitude(specific_item, a_magnitude)
		ensure
			Is_Assign: magnitude = a_magnitude
		end

	offset:INTEGER_16 assign set_offset
			-- Mean value of the wave
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_offset(specific_item)
		end

	set_offset(a_offset:INTEGER_16)
			-- Assign `offset' with the value of `a_offset'
		require
			Exists: exists
			Offset_Valid: a_offset <= 32767
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_offset(specific_item, a_offset)
		ensure
			Is_Assign: offset = a_offset
		end

	phase:NATURAL_16 assign set_phase
			-- Time (in millisecond) between two wave.
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_phase(specific_item)
		end

	set_phase(a_phase:NATURAL_16)
			-- Assign `phase' with the value of `a_phase'
		require
			Exists: exists
			Phase_Valid: a_phase <= 32767
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_phase (specific_item, a_phase)
		ensure
			Is_Assign: phase = a_phase
		end

	fade_in_level:NATURAL_16 assign set_fade_in_level
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_attack_level(specific_item)
		end

	set_fade_in_level(a_fade_in_level:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_attack_level(specific_item, a_fade_in_level)
		end

	fade_in_length:NATURAL_16 assign set_fade_in_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_attack_length(specific_item)
		end

	set_fade_in_length(a_fade_in_length:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_attack_length(specific_item, a_fade_in_length)
		end

	fade_out_level:NATURAL_16 assign set_fade_out_level
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_fade_level(specific_item)
		end

	set_fade_out_level(a_fade_out_level:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_fade_level(specific_item, a_fade_out_level)
		end

	fade_out_length:NATURAL_16 assign set_fade_out_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_periodic_fade_length(specific_item)
		end

	set_fade_out_length(a_fade_out_length:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_periodic_fade_length(specific_item, a_fade_out_length)
		end

feature {NONE} -- Implementation

	specific_item:POINTER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_effect_periodic(item)
		end
end
