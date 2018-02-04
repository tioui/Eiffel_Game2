note
	description: "[
		Encapsulates the release of a mouse button
	]"
	author: "Louis Marchand and obnosim"
	date: "Sun Feb 04, 2018"
	revision: "2.0"
	todo: "Drop GAME_MOUSE_BUTTON_RELEASED_STATE entirely and inherit GAME_MOUSE_BUTTON_EVENT directly"

class
	GAME_MOUSE_BUTTON_RELEASE_EVENT

inherit
	GAME_MOUSE_BUTTON_EVENT

create
	make

feature -- Access

	is_left_button_released: BOOLEAN
			-- Is the left button of the mouse represented
			-- by `Current' is the one that has been released
		obsolete
			"Use `is_left_button' instead [2018-01-31]"
		do
			Result := is_left_button
		end

	is_right_button_released: BOOLEAN
			-- Is the right button of the mouse represented
			-- by `Current' is the one that has been released
		obsolete
			"Use `is_right_button' instead [2018-01-31]"
		do
			Result := is_right_button
		end

	is_middle_button_released: BOOLEAN
			-- Is the middle button of the mouse represented
			-- by `Current' is the one that has been released
		obsolete
			"Use `is_middle_button' instead [2018-01-31]"
		do
			Result := is_middle_button
		end

	is_optionnal_button_1_released: BOOLEAN
			-- Is the first optionnal button of the mouse represented
			-- by `Current' is the one that has been released
		obsolete
			"Use `is_optional_button_1' instead [2018-01-31]"
		do
			Result := is_optional_button_1
		end

	is_optionnal_button_2_released: BOOLEAN
			-- Is the second optionnal button of the mouse represented
			-- by `Current' is the one that has been released
		obsolete
			"Use `is_optional_button_2' instead [2018-01-31]"
		do
			Result := is_optional_button_2
		end

end
