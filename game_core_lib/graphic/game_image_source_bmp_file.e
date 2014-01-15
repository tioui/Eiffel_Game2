note
	description: "Open a bmp image."
	author: "Louis Marchand"
	date: "Jan 14, 2014"
	revision: "2.0.0.0"

class
	GAME_IMAGE_SOURCE_BMP_FILE

inherit
	GAME_IMAGE_SOURCE
		rename
			has_error as has_ressource_error
		redefine
			is_openable,
			open
		end
	GAME_SDL_ANY

create
	make

feature {NONE} -- Implementation

	make(a_filename:READABLE_STRING_GENERAL)
			-- make `Current' from the BMP image file `filename'.
		do
			make_ressource
			filename:=a_filename
		end

feature -- Access

	is_openable:BOOLEAN
			-- <Precursor>
		local
			l_file:RAW_FILE
		do
			create l_file.make_with_name (filename)
			Result:= l_file.exists and l_file.is_readable
		end

	open
			-- <Precursor>
		local
			l_image_pointer:POINTER
			l_filename_c:C_STRING
		do
			create l_filename_c.make (filename)
			clear_error
			l_image_pointer:={GAME_SDL_EXTERNAL}.SDL_LoadBMP(l_filename_c.item )
			if l_image_pointer.is_default_pointer then
				has_error:=True
				has_ressource_error:=True
			else
				own_from_pointer (l_image_pointer)
			end
			has_ressource_error:=has_error
			is_open:=not has_error
		end

feature {NONE} -- Implementation - Variable

	filename:READABLE_STRING_GENERAL

end
