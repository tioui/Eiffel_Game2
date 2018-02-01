note
	description: "The state of a mouse button pressed event"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_MOUSE_BUTTON_PRESSED_STATE

inherit

	GAME_MOUSE_BUTTON_EVENT

create
	make

feature -- Access

	is_left_button_pressed: BOOLEAN
			-- Is the left button of the mouse represented
			-- by `Current' is the one that has been pressed
		obsolete
			"Use `is_left_button' instead [2018-01-31]"
		do
			Result := is_left_button
		end

	is_right_button_pressed: BOOLEAN
			-- Is the right button of the mouse represented
			-- by `Current' is the one that has been pressed
		obsolete
			"Use `is_right_button' instead [2018-01-31]"
		do
			Result := is_right_button
		end

	is_middle_button_pressed: BOOLEAN
			-- Is the middle button of the mouse represented
			-- by `Current' is the one that has been pressed
		obsolete
			"Use `is_middle_button' instead [2018-01-31]"
		do
			Result := is_middle_button
		end

	is_optionnal_button_1_pressed: BOOLEAN
			-- Is the first optionnal button of the mouse represented
			-- by `Current' is the one that has been pressed
		obsolete
			"Use `is_optional_button_1' instead [2018-01-31]"
		do
			Result := is_optional_button_1
		end

	is_optionnal_button_2_pressed: BOOLEAN
			-- Is the second optionnal button of the mouse represented
			-- by `Current' is the one that has been pressed
		obsolete
			"Use `is_optional_button_2' instead [2018-01-31]"
		do
			Result := is_optional_button_2
		end

end
