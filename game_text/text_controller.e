note
	description: "Summary description for {GAME_TEXT_CONTROLLER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEXT_CONTROLLER

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do

		end

feature -- Access

	enable_text
			-- Activate the game text library.
		local
			l_error_chk:INTEGER
			l_error_str:C_STRING
		do
			l_error_chk:={GAME_TEXT_EXTERNAL}.TTF_Init
			if l_error_chk/=0 then
				create l_error_str.make_by_pointer ({GAME_TEXT_EXTERNAL}.TTF_GetError)
				io.error.put_string ("Error while loading the text library: "+l_error_str.string+"%N")
				io.error.flush
				check false end
			end
		ensure
			Enable_Text_Is_Enable:is_text_enable
		end

	is_text_enable:BOOLEAN
			-- The library is enabled.
		do
			Result:={GAME_TEXT_EXTERNAL}.TTF_WasInit=1
		end

	disable_text
			-- Desactivate the library.
		require
			Disable_Text_Is_Enable:is_text_enable
		do
			{GAME_TEXT_EXTERNAL}.TTF_Quit
		end

	quit_library
			-- Close the library.
		local
			mem:MEMORY
		do
			create mem
			mem.full_collect
			if is_text_enable then
				disable_text
			end
		end

end
