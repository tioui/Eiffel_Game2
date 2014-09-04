note
	description: "Summary description for {GAME_MOUSE_BUTTON_RELEASED_STATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_MOUSE_BUTTON_RELEASED_STATE

inherit
	GAME_MOUSE_BUTTON_PRESSED_STATE
		rename
			is_left_button_pressed as is_left_button_released,
			is_right_button_pressed as is_right_button_released,
			is_middle_button_pressed as is_middle_button_released,
			is_optionnal_button_1_pressed as is_optionnal_button_1_released,
			is_optionnal_button_2_pressed as is_optionnal_button_2_released
		redefine
			is_left_button_released,
			is_right_button_released,
			is_middle_button_released,
			is_optionnal_button_1_released,
			is_optionnal_button_2_released
		end

create
	make

feature -- Access

	is_left_button_released:BOOLEAN
			-- Is the left button of the mouse represented
			-- by `Current' is the one that has been released
		do
			Result := Precursor {GAME_MOUSE_BUTTON_PRESSED_STATE}
		end

	is_right_button_released:BOOLEAN
			-- Is the right button of the mouse represented
			-- by `Current' is the one that has been released
		do
			Result := Precursor {GAME_MOUSE_BUTTON_PRESSED_STATE}
		end

	is_middle_button_released:BOOLEAN
			-- Is the middle button of the mouse represented
			-- by `Current' is the one that has been released
		do
			Result := Precursor {GAME_MOUSE_BUTTON_PRESSED_STATE}
		end

	is_optionnal_button_1_released:BOOLEAN
			-- Is the first optionnal button of the mouse represented
			-- by `Current' is the one that has been released
		do
			Result := Precursor {GAME_MOUSE_BUTTON_PRESSED_STATE}
		end

	is_optionnal_button_2_released:BOOLEAN
			-- Is the second optionnal button of the mouse represented
			-- by `Current' is the one that has been released
		do
			Result := Precursor {GAME_MOUSE_BUTTON_PRESSED_STATE}
		end
end
