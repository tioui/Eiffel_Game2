note
	description: "[
		Encapsulates a mouse button event.
		Any instance represents one button only.
	]"
	author: "Louis Marchand and obnosim"
	date: "Sun Feb 04, 2018"
	revision: "2.0"

deferred class
	GAME_MOUSE_BUTTON_EVENT

inherit

	GAME_MOUSE_EVENT_COMMON
		rename
			state as button_id,
			is_left_button as is_left_button,
			is_right_button as is_right_button,
			is_middle_button as is_middle_button,
			is_optional_button_1 as is_optional_button_1,
			is_optional_button_2 as is_optional_button_2
		redefine
			is_left_button,
			is_right_button,
			is_middle_button,
			is_optional_button_1,
			is_optional_button_2
		end

feature -- Access

	is_left_button: BOOLEAN
			-- Is the left button of the mouse the one represented by `Current'?
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_LEFT
		end

	is_right_button: BOOLEAN
			-- Is the right button of the mouse the one represented by `Current'?
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_RIGHT
		end

	is_middle_button: BOOLEAN
			-- Is the middle button of the mouse the one represented by `Current'?
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_MIDDLE
		end

	is_optional_button_1: BOOLEAN
			-- Is the first optional button of the mouse the one represented by `Current'?
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_X1
		end

	is_optional_button_2: BOOLEAN
			-- Is the second optional button of the mouse the one represented by `Current'?
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_X2
		end

invariant
	Only_One_Button: is_left_button.to_integer + is_right_button.to_integer + is_middle_button.to_integer + is_optional_button_1.to_integer + is_optional_button_2.to_integer = 1

end
