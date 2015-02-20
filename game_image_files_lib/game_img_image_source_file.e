note
	description: "Open a bmp image."
	author: "Louis Marchand"
	date: "Jan 14, 2014"
	revision: "2.0.0.0"

class
	GAME_IMG_IMAGE_SOURCE_FILE

inherit
	GAME_IMAGE_SOURCE
		rename
			clear_error as clear_sdl_error,
			last_error as last_sdl_error
		redefine
			is_openable,
			open,
			dispose
		end
	GAME_IMG_ANY
		select
			clear_error,
			last_error
		end

create
	make

feature {NONE} -- Implementation

	make(a_filename:READABLE_STRING_GENERAL)
			-- make `Current' from the BMP image file `filename'.
		local
			l_filename_c, l_mode_c:C_STRING
		do
			make_ressource
			create l_filename_c.make (a_filename)
			create l_mode_c.make ("rb")
			rwop:={GAME_SDL_EXTERNAL}.SDL_RWFromFile(l_filename_c.item, l_mode_c.item)
		end

feature -- Access

	is_cur:BOOLEAN
			-- The internal library support BMP format and the file is a valid CUR file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isCUR(rwop)=1)
		end

	is_ico:BOOLEAN
			-- The internal library support BMP format and the file is a valid ICO file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isICO(rwop)=1)
		end

	is_bmp:BOOLEAN
			-- The internal library support BMP format and the file is a valid BMP file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isBMP(rwop)=1)
		end

	is_pnm:BOOLEAN
			-- The internal library support PNM format and the file is a valid PNM file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isPNM(rwop)=1)
		end

	is_xpm:BOOLEAN
			-- The internal library support XPM format and the file is a valid XPM file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isXPM(rwop)=1)
		end

	is_xcf:BOOLEAN
			-- The internal library support XCF format and the file is a valid XCF file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isXCF(rwop)=1)
		end

	is_pcx:BOOLEAN
			-- The internal library support PCX format and the file is a valid PCX file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isPCX(rwop)=1)
		end

	is_gif:BOOLEAN
			-- The internal library support GIF format and the file is a valid GIF file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isGIF(rwop)=1)
		end

	is_jpg:BOOLEAN
			-- The internal library support JPG format and the file is a valid JPG file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isJPG(rwop)=1)
			Result:=True
		end

	is_tif:BOOLEAN
			-- The internal library support TIF format and the file is a valid TIF file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isTIF(rwop)=1)
		end

	is_png:BOOLEAN
			-- The internal library support PNG format and the file is a valid PNG file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isPNG(rwop)=1)
		end

	is_lbm:BOOLEAN
			-- The internal library support LBM format and the file is a valid LBM file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isLBM(rwop)=1)
		end

	is_xv:BOOLEAN
			-- The internal library support XV format and the file is a valid XV file.
		do
			Result:=({GAME_SDL_IMAGE_EXTERNAL}.IMG_isXV(rwop)=1)
		end

	is_openable:BOOLEAN
			-- <Precursor>
		local
			l_file:RAW_FILE
		do
			Result:=(not rwop.is_default_pointer) and then (
								is_cur or is_ico or is_bmp or is_pnm or
								is_xpm or is_xcf or is_pcx or is_gif or
								is_jpg or is_tif or is_png or is_lbm or is_xv
							)
		end

	open
			-- <Precursor>
		local
			l_internal_pointer:POINTER
		do
			clear_error
			l_internal_pointer:={GAME_SDL_IMAGE_EXTERNAL}.IMG_Load_RW(rwop, 0)
			if l_internal_pointer.is_default_pointer then
				io.error.put_string ("An error occured while opening the image.%N")
				io.error.put_string (last_error.to_string_8+"%N")
				has_error:=True
			end
			own_from_pointer (l_internal_pointer)
			has_ressource_error:=has_error
			is_open:=not has_error
		end

feature {NONE} -- Implementation - Variable

	rwop:POINTER

	dispose
		do
			if not rwop.is_default_pointer then
				{GAME_SDL_EXTERNAL}.SDL_FreeRW(rwop)
			end
			Precursor {GAME_IMAGE_SOURCE}
		end

end
