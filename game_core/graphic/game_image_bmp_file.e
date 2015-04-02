note
	description: "A image from a bmp image."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_IMAGE_BMP_FILE

inherit
	GAME_IMAGE
		redefine
			is_openable,
			open
		end

create
	make

feature {NONE} -- Implementation

	make(a_filename:READABLE_STRING_GENERAL)
			-- make `Current' from the BMP image file `filename'.
		do
			default_create
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
				manage_error_pointer(l_image_pointer, "Error while loading BMP file.")
				has_ressource_error:=True
			else
				own_from_pointer (l_image_pointer)
			end
			has_ressource_error:=has_error
			is_open:=not has_error
		end

	filename:READABLE_STRING_GENERAL
			-- The name of the file to open

end
