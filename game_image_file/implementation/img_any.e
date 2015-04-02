note
	description: "A common ancestor for any image library classes"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 03:46:04 +0000"
	revision: "2.0"

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
			-- <Precursor>
		do
			has_error := False
		end

	last_error: READABLE_STRING_GENERAL
			-- <Precursor>
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
