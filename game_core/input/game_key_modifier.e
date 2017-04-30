note
	description: "Common status report methods for types that hold a modifier value"
	author: "Louis Marchand"

deferred class
	GAME_KEY_MODIFIER

feature -- Access

	has_none: BOOLEAN
			-- No modifier has been use with the key
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_NONE
		end

	has_left_shift: BOOLEAN
			-- The key has the left shift modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_LSHIFT) /= 0
		end

	has_right_shift: BOOLEAN
			-- The key has the right shift modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_RSHIFT) /= 0
		end

	has_left_ctrl: BOOLEAN
			-- The key has the left ctrl modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_LCTRL) /= 0
		end

	has_right_ctrl: BOOLEAN
			-- The key has the right ctrl modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_RCTRL) /= 0
		end

	has_left_alt: BOOLEAN
			-- The key has the left alt modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_LALT) /= 0
		end

	has_right_alt: BOOLEAN
			-- The key has the right alt modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_RALT) /= 0
		end

	has_left_gui: BOOLEAN
			-- The key has the left GUI (Windows key) modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_LGUI) /= 0
		end

	has_right_gui: BOOLEAN
			-- The key has the right GUI (Windows key) modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_RGUI) /= 0
		end

	has_num_lock: BOOLEAN
			-- The key has the num luck modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_NUM) /= 0
		end

	has_caps_lock: BOOLEAN
			-- The key has the caps luck modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_CAPS) /= 0
		end

	has_alt_gr: BOOLEAN
			-- The key has the AltGr modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_MODE) /= 0
		end

	has_ctrl: BOOLEAN
			-- The key has the ctrl modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_CTRL) /= 0
		end

	has_shift: BOOLEAN
			-- The key has the shift modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_SHIFT) /= 0
		end

	has_alt: BOOLEAN
			-- The key has the alt modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_ALT) /= 0
		end

	has_gui: BOOLEAN
			-- The key has the gui (Windows key) modifier
		do
			Result := modifier.bit_and ({GAME_SDL_EXTERNAL}.KMOD_GUI) /= 0
		end

feature -- Implementation

	modifier: NATURAL_16
			-- The internal identificator of the modifiers pressed
		deferred
		end

end
