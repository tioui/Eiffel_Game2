note
	description: "Keyboard Events. To retreive the state of the keyboard. Must be return by an object of GAME_EVENT_CONTROLLER type."
	author: "Louis Marchand"
	date: "Sun, 04 Feb 2018 16:14:25 +0000"
	revision: "2.0"

class
	GAME_KEY_EVENT

inherit
	GAME_KEY

	GAME_KEY_MODIFIER
		rename
			has_none as has_no_modifier,
			has_left_shift as has_left_shift_modifier,
			has_right_shift as has_right_shift_modifier,
			has_left_ctrl as has_left_ctrl_modifier,
			has_right_ctrl as has_right_ctrl_modifier,
			has_left_alt as has_left_alt_modifier,
			has_right_alt as has_right_alt_modifier,
			has_left_gui as has_left_gui_modifier,
			has_right_gui as has_right_gui_modifier,
			has_num_lock as has_num_lock_modifier,
			has_caps_lock as has_caps_lock_modifier,
			has_alt_gr as has_alt_gr_modifier,
			has_ctrl as has_ctrl_modifier,
			has_shift as has_shift_modifier,
			has_alt as has_alt_modifier,
			has_gui as has_gui_modifier
		undefine
			out
		end

create {GAME_SDL_ANY}
	make

feature {NONE} -- Initialization

	make(a_physical_code, a_virtual_code:NATURAL_32; a_modifier: NATURAL_16; a_repeat: NATURAL_8)
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

feature -- Implementation

	repeat:NATURAL_8
			-- Not 0 when the key event is an automatic repeted event

	modifier: NATURAL_16
			-- The internal identificator of the modifiers pressed

end
