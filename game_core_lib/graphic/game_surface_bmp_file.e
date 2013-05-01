note
	description: "Open a bmp image. It is recommanded to use GAME_SURFACE_IMG instead."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_SURFACE_BMP_FILE

inherit
	GAME_SURFACE
		rename
			make as make_surface
		end
	GAME_MEDIA_FILE

create
	make

feature {NONE} -- Implementation

	open_from_file(a_filename:STRING)
			-- Open the surface from the BMP image file `filename'.
		local
			l_filename_c:C_STRING
		do
			create l_filename_c.make (a_filename)
			make_from_pointer ({GAME_SDL_EXTERNAL}.SDL_LoadBMP(l_filename_c.item ))
		end


end
