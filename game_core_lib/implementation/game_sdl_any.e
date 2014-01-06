note
	description: "Summary description for {GAME_SDL_ANY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_SDL_ANY

inherit
	ANY

feature {NONE} -- Implementation


	clear_error
		do
			{GAME_SDL_EXTERNAL}.SDL_ClearError
			has_error:=False
		end

	get_error:READABLE_STRING_GENERAL
		local
			l_string:C_STRING
		do
			create l_string.make_by_pointer ({GAME_SDL_EXTERNAL}.SDL_GetError)
			Result:=l_string.string
		end

feature -- Access

	has_error:BOOLEAN
end
