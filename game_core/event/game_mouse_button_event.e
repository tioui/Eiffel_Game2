note
	description: "The state of a mouse button event"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

deferred class
	GAME_MOUSE_BUTTON_EVENT

inherit

	ANY
		undefine
			default_create
		end

inherit {NONE}

	GAME_MOUSE_MOTION_STATE
		rename
			state as button_id,
			is_left_button_pressed as is_left_button,
			is_right_button_pressed as is_right_button,
			is_middle_button_pressed as is_middle_button,
			is_optionnal_button_1_pressed as is_optional_button_1,
			is_optionnal_button_2_pressed as is_optional_button_2
		redefine
			make,
			is_left_button,
			is_right_button,
			is_middle_button,
			is_optional_button_1,
			is_optional_button_2
		end

feature {NONE} -- Initialization

	make (a_mouse_id, a_button_id: NATURAL_32; a_x, a_y: INTEGER_32)
			-- Initialization for `Current'.
		do
			Precursor {GAME_MOUSE_MOTION_STATE} (a_mouse_id, a_button_id, a_x, a_y)
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
			-- Is the second optional button of the mouse the one represented by `Current'?
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_X1
		end

	is_optional_button_2: BOOLEAN
			-- Is the second optional button of the mouse the one represented by `Current'?
		do
			Result := button_id = {GAME_SDL_EXTERNAL}.SDL_BUTTON_X2
		end

invariant
	Only_One_Button: is_left_button xor is_right_button xor is_middle_button xor is_optional_button_1 xor is_optional_button_2

end
