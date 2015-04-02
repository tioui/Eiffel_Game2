note
	description: "A {GAME_HAPTIC_EFFECT} that has been compiled for a {GAME_HAPTIC}"
	author: "Louis Marchand"
	date: "Tue, 03 Mar 2015 15:22:37 +0000"
	revision: "2.0"

class
	GAME_HAPTIC_EFFECT_COMPILED

inherit
	GAME_SDL_ANY

create
	make

feature {NONE} -- Initialiation

	make(a_haptic:GAME_HAPTIC;a_effect:GAME_HAPTIC_EFFECT)
			-- Initialization of `Current' using `a_effect' compiled for
			-- `a_haptic'
		do
			clear_error
			index := {GAME_SDL_EXTERNAL}.SDL_HapticNewEffect(a_haptic.item, a_effect.item)
			haptic := a_haptic
			effect := a_effect
			if index < 0 then
				manage_error_code(index, "Cannot compile haptic effect.")
			end
		ensure
			Index_Is_Valid: not has_error implies index >= 0
		end

feature -- Access

	index:INTEGER
			-- Unique identifier of `Current'

	haptic:GAME_HAPTIC
			-- The {GAME_HAPTIC} that `Current' is compiled with

	effect:GAME_HAPTIC_EFFECT
			-- The {GAME_HAPTIC_EFFECT} that is compiled into `Current'

	is_open:BOOLEAN
			-- Is `Current' presently usable
		do
			Result := index >= 0
		end

	close
			-- Remove `Current' from the compiled effect of `haptic'
		require
			is_open
		do
			haptic.remove_compiled_effect(Current)
			{GAME_SDL_EXTERNAL}.SDL_HapticDestroyEffect(haptic.item, index)
			index := -1
		end

	play
			-- Launch a single iteration of `Current' into the `haptic'
		require
			is_open
		do
			play_with_loop(0)
		end

	play_with_loop(a_loop:NATURAL_32)
			-- Launch `Current' on the `haptic' and restart it (including the envelope)
			-- `a_loop' time.
		require
			is_open
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticRunEffect(haptic.item, index, a_loop)
			if l_error < 0 then
				manage_error_code(l_error, "Cannot play the effect on the haptic.")
			end
		end

	play_infinite_loop
			-- Launch `Current' on the `haptic' and restart it forever
			-- (including the envelope). You can use `stop' to kill the effect.
		require
			is_open
		do
			play_with_loop({GAME_SDL_EXTERNAL}.SDL_HAPTIC_INFINITY)
		end

	stop
			-- Kill a playing effect
		require
			is_open
			-- is_playing
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticStopEffect(haptic.item, index)
			if l_error < 0 then
				manage_error_code(l_error, "Cannot stop the effect on the haptic.")
			end
		end

	is_playing:BOOLEAN
			-- Is `Current' being played on the `haptic'
		require
			is_open
			haptic.is_status_query_supported
		local
			l_value:INTEGER
		do
			l_value := {GAME_SDL_EXTERNAL}.SDL_HapticGetEffectStatus(haptic.item, index)
			Result := False
			if l_value < 0 then
				manage_error_code(l_value, "Cannoe get the haptic effect status.")
			else
				Result := l_value > 0
			end
		end

end
