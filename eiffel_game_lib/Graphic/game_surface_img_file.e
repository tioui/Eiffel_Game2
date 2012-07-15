note
	description: "Load an image file into a GAME_SURFACE."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SURFACE_IMG_FILE

inherit
	GAME_SURFACE
	rename make as make_surface end
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
			filename_c,error_c:C_STRING
			l_pointer:POINTER
		do
			create filename_c.make (filename)
			l_pointer:={GAME_SDL_EXTERNAL}.IMG_Load(filename_c.item )
			if l_pointer.is_default_pointer then
				create error_c.make_by_pointer ({GAME_SDL_EXTERNAL}.IMG_GetError)
				io.error.put_string ("Error when loading file: "+filename+"%N"+error_c.string+"%N")
				io.error.flush
				check false end
			else
				make_from_pointer (l_pointer)
			end

		end

end
