note
	description: "[
				A snapshot of the state of a {GAME_MOUSE} at a certain time.
				Note that those informations are not updated overtime.
					]"
	author: "Louis Marchand"
	date: "Wed Sep 03, 2014"
	revision: "$Revision$"

class
	GAME_MOUSE_STATE

inherit
	ANY
		redefine
			default_create
		end

create
	default_create

feature {NONE} -- Implementation

	default_create
			-- Initialization of `Current'
		local
			l_error:NATURAL_32
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_GetGlobalMouseState($x,$y)
			state := {GAME_SDL_EXTERNAL}.SDL_GetMouseState($x_in_window,$y_in_window)
		end

feature -- Access

	x:INTEGER_32
			-- Horizontal position of the mouse represented by `Current'

	y:INTEGER_32
			-- Vertical position of the mouse represented by `Current'

	x_in_window:INTEGER_32
			-- Horizontal position of the mouse represented
			-- by `Current' relative to the focussed window

	y_in_window:INTEGER_32
			-- Vertical position of the mouse represented
			-- by `Current' relative to the focussed window

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

	is_optionnal_button_1_pressed:BOOLEAN
			-- Is the first optionnal button of the mouse represented
			-- by `Current' is currently pressed
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X1MASK) /= 0)
		end

	is_optionnal_button_2_pressed:BOOLEAN
			-- Is the second optionnal button of the mouse represented
			-- by `Current' is currently pressed
		do
			result := (state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X2MASK) /= 0)
		end


feature {NONE} -- Implementation

	state:NATURAL_32
end
