note
	description: "[
		Encapsulates the state of a mouse during a movement
	]"
	author: "Louis Marchand"
	date: "Sun Feb 04, 2018"
	revision: "2.0"

class
	GAME_MOUSE_MOTION_EVENT

inherit
	GAME_MOUSE_BUTTON_MASK_COMMON
	GAME_MOUSE_EVENT_COMMON
		rename
			is_left_button as is_left_button_pressed,
			is_right_button as is_right_button_pressed,
			is_middle_button as is_middle_button_pressed,
			is_optional_button_1 as is_optional_button_1_pressed,
			is_optional_button_2 as is_optional_button_2_pressed
		end


create
	make

end
