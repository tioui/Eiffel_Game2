note
	description: "The state of a mouse button pressed event"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_MOUSE_BUTTON_PRESSED_STATE

inherit
	GAME_MOUSE_MOTION_STATE
		rename
			state as button_id
		redefine
			make,
			is_left_button_pressed,
			is_right_button_pressed,
			is_middle_button_pressed,
			is_optionnal_button_1_pressed,
			is_optionnal_button_2_pressed
		end


create
	make

feature {NONE} -- Initialization

	make(a_mouse_id, a_button_id:NATURAL_32; a_x,a_y:INTEGER_32)
			-- Initialization for `Current'.
		do
			Precursor {GAME_MOUSE_MOTION_STATE}(a_mouse_id, a_button_id, a_x, a_y)
		end

feature -- Access

	is_left_button_pressed:BOOLEAN
			-- Is the left button of the mouse represented
			-- by `Current' is the one that has been pressed
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_LEFT
		end

	is_right_button_pressed:BOOLEAN
			-- Is the right button of the mouse represented
			-- by `Current' is the one that has been pressed
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_RIGHT
		end

	is_middle_button_pressed:BOOLEAN
			-- Is the middle button of the mouse represented
			-- by `Current' is the one that has been pressed
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_MIDDLE
		end

	is_optionnal_button_1_pressed:BOOLEAN
			-- Is the first optionnal button of the mouse represented
			-- by `Current' is the one that has been pressed
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_X1
		end

	is_optionnal_button_2_pressed:BOOLEAN
			-- Is the second optionnal button of the mouse represented
			-- by `Current' is the one that has been pressed
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_X2
		end

invariant
-- This invariant has a wierd error on Linux with touch pad !
--	Only_One_Button:
--					(is_left_button_pressed and not (
--							is_right_button_pressed or
--							is_middle_button_pressed or
--							is_optionnal_button_1_pressed or
--							is_optionnal_button_2_pressed
--						)
--					) or
--					(is_right_button_pressed and not (
--							is_left_button_pressed or
--							is_middle_button_pressed or
--							is_optionnal_button_1_pressed or
--							is_optionnal_button_2_pressed
--						)
--					) or
--					(is_middle_button_pressed and not (
--							is_left_button_pressed or
--							is_right_button_pressed or
--							is_optionnal_button_1_pressed or
--							is_optionnal_button_2_pressed
--						)
--					) or
--					(is_optionnal_button_1_pressed and not (
--							is_right_button_pressed or
--							is_middle_button_pressed or
--							is_left_button_pressed or
--							is_optionnal_button_2_pressed
--						)
--					) or
--					(is_optionnal_button_2_pressed and not (
--							is_right_button_pressed or
--							is_middle_button_pressed or
--							is_left_button_pressed or
--							is_optionnal_button_1_pressed
--						)
--					)
end
