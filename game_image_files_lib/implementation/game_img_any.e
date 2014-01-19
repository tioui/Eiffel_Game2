note
	description: "Summary description for {GAME_IMG_ANY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_IMG_ANY

inherit
	GAME_SDL_ANY
		redefine
			clear_error,
			get_error
		end

feature {NONE} -- Implementation

	clear_error
		do
			has_error := False
		end

	get_error: READABLE_STRING_GENERAL
		local
			l_string: C_STRING
		do
			create l_string.make_by_pointer ({GAME_SDL_IMAGE_EXTERNAL}.IMG_GetError)
			Result := l_string.string
		end

end
