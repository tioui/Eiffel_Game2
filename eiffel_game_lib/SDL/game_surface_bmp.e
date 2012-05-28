note
	description: "Open a bmp image. It is recommanded to use GAME_SURFACE_IMG instead."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SURFACE_BMP

inherit
	GAME_SURFACE
	GAME_MEDIA_FILE

create
	make

feature {NONE} -- Implementation

	open_from_file(filename:STRING)
			-- Open the surface from the BMP image file `filename'.
		local
			filename_c:C_STRING
			pointeur:POINTER
		do
			create filename_c.make (filename)
			make_from_pointer ({GAME_SDL_EXTERNAL}.SDL_LoadBMP(filename_c.item ))

		end


end
