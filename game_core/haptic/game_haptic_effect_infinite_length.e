note
	description: "A {GAME_HAPTIC_EFFECT} that can have an infinte length."
	author: "Louis Marchand"
	date: "Mon, 02 Mar 2015 16:23:11 +0000"
	revision: "2.0"

deferred class
	GAME_HAPTIC_EFFECT_INFINITE_LENGTH

inherit
	GAME_HAPTIC_EFFECT

feature -- Access

	set_infinite
			-- When played, `Current' will never stop by itself
		require
			Exists: exists
		do
			set_length({GAME_SDL_EXTERNAL}.SDL_HAPTIC_INFINITY)
		ensure
			Infinite_Is_Set: is_infinite
		end

	is_infinite:BOOLEAN
			-- It True, `Current' will never stop by itself when started
		require
			Exists: exists
		do
			Result := length = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_INFINITY
		end

	set_length(a_length:NATURAL_32)
			-- Assign `length' with the value of `a_length'
		require else
			Exists: exists
			Length_Valid: a_length <= 32767 or a_length = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_INFINITY
		deferred
		end

end
