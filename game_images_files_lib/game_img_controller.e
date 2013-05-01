note
	description: "The controller of the game images files library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_IMG_CONTROLLER

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do

		end

feature -- Access


	enable_image(a_enable_png,a_enable_jpg,a_enable_tif:BOOLEAN)
			-- Active the game_images_files_lib library.
			-- Pass a true value to `a_enable_png', `a_enable_jpg' and `a_enable_tif' if you want the library to
			-- be able to open respectively PNG, JPG and TIF files. The dynamic library (DLL, SO, etc.) must be
			-- found to activate the functionnality.
		local
			l_flags:INTEGER
			l_error:C_STRING
		do
			l_flags:=0
			if a_enable_png then
				l_flags:=l_flags.bit_or ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_PNG)
			end
			if a_enable_jpg then
				l_flags:=l_flags.bit_or ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_JPG)
			end
			if a_enable_tif then
				l_flags:=l_flags.bit_or ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_TIF)
			end
			l_flags:={GAME_SDL_IMAGE_EXTERNAL}.IMG_Init(l_flags)
			if a_enable_png and l_flags.bit_and ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_PNG)=0 then
				create l_error.make_by_pointer ({GAME_SDL_IMAGE_EXTERNAL}.IMG_GetError)
				io.error.put_string ("Error while loading PNG library: "+l_error.string+"%N")
				io.error.flush
				check false end
			end
			if a_enable_jpg and l_flags.bit_and ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_JPG)=0 then
				create l_error.make_by_pointer ({GAME_SDL_IMAGE_EXTERNAL}.IMG_GetError)
				io.error.put_string ("Error while loading JPG library: "+l_error.string+"%N")
				io.error.flush
				check false end
			end
			if a_enable_tif and l_flags.bit_and ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_TIF)=0 then
				create l_error.make_by_pointer ({GAME_SDL_IMAGE_EXTERNAL}.IMG_GetError)
				io.error.put_string ("Error while loading TIF library: "+l_error.string+"%N")
				io.error.flush
				check false end
			end
		end

	disable_image
			-- Close the images files library.
		do
			{GAME_SDL_IMAGE_EXTERNAL}.IMG_Quit
		end

	quit_library
			-- Close the images files library.
		do
			disable_image
		end

end
