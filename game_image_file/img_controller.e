note
	description: "The controller of the game images files library."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 03:46:04 +0000"
	revision: "2.0"

class
	IMG_CONTROLLER

inherit
	IMG_ANY
		redefine
			default_create
		end

create
	default_create

feature {NONE} -- Initialization

	default_create
			-- Initialization of `Current'
		do
			instance_count.put (instance_count.item + 1)
		end

feature -- Access


	enable_image(a_enable_png,a_enable_jpg,a_enable_tif:BOOLEAN)
			-- Active the game_images_files_lib library.
			-- Pass a true value to `a_enable_png', `a_enable_jpg' and `a_enable_tif' if you want the library to
			-- be able to open respectively PNG, JPG and TIF files. The dynamic library (DLL, SO, etc.) must be
			-- found to activate the functionnality.
			-- Using this is not actually needed, but loading the needed dynamic library before your program
			-- get buzy is a good idea.
		local
			l_flags:INTEGER
		do
			l_flags:=0
			if a_enable_png then
				l_flags:=l_flags.bit_or ({IMG_SDL_IMAGE_EXTERNAL}.Img_init_png)
			end
			if a_enable_jpg then
				l_flags:=l_flags.bit_or ({IMG_SDL_IMAGE_EXTERNAL}.Img_init_jpg)
			end
			if a_enable_tif then
				l_flags:=l_flags.bit_or ({IMG_SDL_IMAGE_EXTERNAL}.Img_init_tif)
			end
			clear_error
			l_flags:={IMG_SDL_IMAGE_EXTERNAL}.IMG_Init(l_flags)
			manage_error_boolean (a_enable_png implies is_png_enabled, "Error while loading PNG library")
			manage_error_boolean (a_enable_jpg implies is_jpg_enabled, "Error while loading JPG library")
			manage_error_boolean (a_enable_tif implies is_tif_enabled, "Error while loading TIF library")
		ensure
			PNG_Is_Enabled: (not has_error and a_enable_png) implies is_png_enabled
			JPG_Is_Enabled: (not has_error and a_enable_jpg) implies is_jpg_enabled
			TIF_Is_Enabled: (not has_error and a_enable_tif) implies is_tif_enabled
		end

	enable_png
			-- Load the PNG dynamic library
		do
			enable_image(True, False, False)
		ensure
			PNG_Is_Enabled: not has_error implies is_png_enabled
		end

	enable_jpg
			-- Load the JPG dynamic library
		do
			enable_image(False, True, False)
		ensure
			JPG_Is_Enabled: not has_error implies is_jpg_enabled
		end

	enable_tif
			-- Load the TIF dynamic library
		do
			enable_image(False, False, True)
		ensure
			TIF_Is_Enabled: not has_error implies is_tif_enabled
		end

	is_png_enabled:BOOLEAN
			-- True if the PNG dynamic library is currently loaded
		local
			l_flags:INTEGER
		do
			l_flags:={IMG_SDL_IMAGE_EXTERNAL}.IMG_Init(0)
			Result := l_flags.bit_and ({IMG_SDL_IMAGE_EXTERNAL}.Img_init_png) /= 0
		end

	is_jpg_enabled:BOOLEAN
			-- True if the JPG dynamic library is currently loaded
		local
			l_flags:INTEGER
		do
			l_flags:={IMG_SDL_IMAGE_EXTERNAL}.IMG_Init(0)
			Result := l_flags.bit_and ({IMG_SDL_IMAGE_EXTERNAL}.Img_init_jpg) /= 0
		end

	is_tif_enabled:BOOLEAN
			-- True if the tif dynamic library is currently loaded
		local
			l_flags:INTEGER
		do
			l_flags:={IMG_SDL_IMAGE_EXTERNAL}.IMG_Init(0)
			Result := l_flags.bit_and ({IMG_SDL_IMAGE_EXTERNAL}.Img_init_tif) /= 0
		end

	quit_library
			-- Close the images files library.
		do
			{IMG_SDL_IMAGE_EXTERNAL}.IMG_Quit
		end

feature {NONE} -- Implementation

	instance_count:CELL[INTEGER]
			-- The number of times this class has been created
			-- It is a singleton, so it should always be 0 or 1
		once
			create Result.put(0)
		end

invariant
	Is_Singleton: instance_count.item = 1

end
