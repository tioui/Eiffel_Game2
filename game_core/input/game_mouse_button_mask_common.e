note
	description: "Common ancestor for mouse state and event with multiple mouse button recongnition"
	author: "Louis Marchand and obnosim"
	date: "Sun Feb 04, 2018"
	revision: "0.1"

deferred class
	GAME_MOUSE_BUTTON_MASK_COMMON

inherit
	GAME_MOUSE_COMMON
		rename
			is_left_button as is_left_button_pressed,
			is_right_button as is_right_button_pressed,
			is_middle_button as is_middle_button_pressed,
			is_optional_button_1 as is_optional_button_1_pressed,
			is_optional_button_2 as is_optional_button_2_pressed
		end


feature -- Access

	is_left_button_pressed:BOOLEAN
			-- Is the left button of the mouse represented
			-- by `Current' is currently pressed
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_LMASK) /= 0)
		end

	is_right_button_pressed:BOOLEAN
			-- Is the right button of the mouse represented
			-- by `Current' is currently pressed
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_RMASK) /= 0)
		end

	is_middle_button_pressed:BOOLEAN
			-- Is the middle button of the mouse represented
			-- by `Current' is currently pressed
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_MMASK) /= 0)
		end

	is_optional_button_1_pressed:BOOLEAN
			-- Is the first optionnal button of the mouse represented
			-- by `Current' is currently pressed
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X1MASK) /= 0)
		end

	is_optional_button_2_pressed:BOOLEAN
			-- Is the second optionnal button of the mouse represented
			-- by `Current' is currently pressed
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X2MASK) /= 0)
		end

	is_optionnal_button_1_pressed:BOOLEAN
			-- Is the first optionnal button of the mouse represented
			-- by `Current' is currently pressed
		obsolete
			"Use is_optional_button_1_pressed instead [2018-02-04]"
		do
			result := is_optional_button_1_pressed
		end

	is_optionnal_button_2_pressed:BOOLEAN
			-- Is the second optionnal button of the mouse represented
			-- by `Current' is currently pressed
		obsolete
			"Use is_optional_button_2_pressed instead [2018-02-04]"
		do
			result := is_optional_button_2_pressed
		end
end
