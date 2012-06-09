note
	description: "Load an image file into a GAME_SURFACE."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SURFACE_IMG

inherit
	GAME_SURFACE
	GAME_MEDIA_FILE

create
	make,
	make_with_alpha

feature {NONE} -- Implemetation

	make_with_alpha(filename:STRING)
		do
			make(filename)
			enable_alpha
		end

	open_from_file(filename:STRING)
			-- Open the surface from the image file `filename'.
		local
			filename_c:C_STRING
			pointeur:POINTER
		do
			create filename_c.make (filename)
			make_from_pointer ({GAME_SDL_EXTERNAL}.IMG_Load(filename_c.item ))
		end

end
