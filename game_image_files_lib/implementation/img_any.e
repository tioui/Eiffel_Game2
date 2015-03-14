note
	description: "Summary description for {IMG_ANY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	IMG_ANY

inherit
	GAME_SDL_ANY
		redefine
			clear_error,
			last_error
		end

feature {NONE} -- Implementation

	clear_error
		do
			has_error := False
		end

	last_error: READABLE_STRING_GENERAL
		local
			l_string: C_STRING
		do
			if is_manual_error then
				Result := Precursor
			else
				create l_string.make_by_pointer ({IMG_SDL_IMAGE_EXTERNAL}.IMG_GetError)
				Result := l_string.string
			end
		end

end
