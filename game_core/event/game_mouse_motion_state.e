note
	description: "[
		Encapsulates the state of a mouse during a movement
	]"
	author: "Louis Marchand and obnosim"
	date: "Sun Feb 04, 2018"
	revision: "2.0"

class
	GAME_MOUSE_MOTION_STATE

inherit

	GAME_MOUSE_EVENT
		rename
			has_left_button as is_left_button_pressed,
			has_right_button as is_right_button_pressed,
			has_middle_button as is_middle_button_pressed,
			has_optional_button_1 as is_optional_button_1_pressed,
			has_optional_button_2 as is_optional_button_2_pressed
		end

create
	make

feature -- Access

	is_left_button_pressed: BOOLEAN
			-- Was the left button pressed when `Current' was emitted?
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_LMASK) /= 0)
		end

	is_right_button_pressed: BOOLEAN
			-- Was the right button pressed when `Current' was emitted?
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_RMASK) /= 0)
		end

	is_middle_button_pressed: BOOLEAN
			-- Was the middle button pressed when `Current' was emitted?
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_MMASK) /= 0)
		end

	is_optional_button_1_pressed: BOOLEAN
			-- Was the first optional button pressed when `Current' was emitted?
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X1MASK) /= 0)
		end

	is_optionnal_button_1_pressed: BOOLEAN
			-- Was the first optional button pressed when `Current' was emitted?
		obsolete
			"Use is_optional_button_1_pressed instead [2018-02-04]"
		do
			result := is_optional_button_1_pressed
		end

	is_optional_button_2_pressed: BOOLEAN
			-- Was the second optional button pressed when `Current' was emitted?
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X2MASK) /= 0)
		end

	is_optionnal_button_2_pressed: BOOLEAN
			-- Was the second optional button pressed when `Current' was emitted?
		obsolete
			"Use is_optional_button_2_pressed instead [2018-02-04]"
		do
			result := is_optional_button_2_pressed
		end

end
