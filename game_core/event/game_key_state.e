note
	description: "Keyboard Events. To retreive the state of the keyboard. Must be return by an object of GAME_EVENT_CONTROLLER type."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.1.2.1"

class
	GAME_KEY_STATE

inherit
	GAME_KEY

create {GAME_SDL_ANY}
	make

feature {NONE} -- Initialization

	make(a_physical_code, a_virtual_code:INTEGER_32; a_modifier: NATURAL_16; a_repeat: NATURAL_8)
			-- Initialization for `Current'.
		do
			physical_code := a_physical_code
			virtual_code := a_virtual_code
			repeat := a_repeat
			modifier := a_modifier
		end

feature -- Access

	is_repeat:BOOLEAN
			-- The key is a repetition
		do
			Result := repeat /= 0
		end

	has_no_modifier:BOOLEAN
			-- No modifier has been use with the key
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_NONE
		end

	has_left_shift_modifier:BOOLEAN
			-- The key has the left shift modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_LSHIFT
		end

	has_right_shift_modifier:BOOLEAN
			-- The key has the right shift modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_RSHIFT
		end

	has_left_ctrl_modifier:BOOLEAN
			-- The key has the left ctrl modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_LCTRL
		end

	has_right_ctrl_modifier:BOOLEAN
			-- The key has the right ctrl modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_RCTRL
		end

	has_left_alt_modifier:BOOLEAN
			-- The key has the left alt modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_LALT
		end

	has_right_alt_modifier:BOOLEAN
			-- The key has the right alt modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_RALT
		end

	has_left_gui_modifier:BOOLEAN
			-- The key has the left GUI (Windows key) modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_LGUI
		end

	has_right_gui_modifier:BOOLEAN
			-- The key has the right GUI (Windows key) modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_RGUI
		end

	has_num_lock_modifier:BOOLEAN
			-- The key has the num luck modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_NUM
		end

	has_caps_lock_modifier:BOOLEAN
			-- The key has the caps luck modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_CAPS
		end

	has_alt_gr_modifier:BOOLEAN
			-- The key has the AltGr modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_MODE
		end

	has_ctrl_modifier:BOOLEAN
			-- The key has the ctrl modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_CTRL
		end

	has_shift_modifier:BOOLEAN
			-- The key has the shift modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_SHIFT
		end

	has_alt_modifier:BOOLEAN
			-- The key has the alt modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_ALT
		end

	has_gui_modifier:BOOLEAN
			-- The key has the gui (Windows key) modifier
		do
			Result := modifier = {GAME_SDL_EXTERNAL}.KMOD_GUI
		end

feature {NONE} -- Implementation

	repeat:NATURAL_8

	modifier: NATURAL_16


end
