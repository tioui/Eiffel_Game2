note
	description: "The main manager of the text library."
	author: "Louis Marchand"
	date: "Mon, 30 Mar 2015 01:20:46 +0000"
	revision: "2.0"

class
	TEXT_CONTROLLER

inherit
	GAME_SDL_ANY
	MEMORY
		export
			{NONE} all
		end

create
	default_create


feature -- Access

	is_text_enable:BOOLEAN assign set_is_text_enable
			-- The library is enabled.
		do
			Result:={GAME_TEXT_EXTERNAL}.TTF_WasInit=1
		end

	set_is_text_enable(a_value:BOOLEAN)
			-- Assign to `is_text_enable' the value of `a_value'
		do
			if a_value then
				enable_text
			else
				disable_text
			end
		ensure
			Is_Assign: not has_error implies is_text_enable ~ a_value
		end

	enable_text
			-- Activate the game text library.
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_TEXT_EXTERNAL}.TTF_Init
			manage_error_code(l_error, "Could not enable text library.")
		ensure
			Enable_Text_Is_Enable:not has_error implies is_text_enable
		end

	disable_text
			-- Desactivate the library.
		require
			Disable_Text_Is_Enable:is_text_enable
		do
			full_collect
			{GAME_TEXT_EXTERNAL}.TTF_Quit
		ensure
			Is_Disable: not is_text_enable
		end

	quit_library
			-- Close the library.
		do
			if is_text_enable then
				disable_text
			end
		end

end
