note
	description: "External of the SDL_image library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_SDL_IMAGE_EXTERNAL

feature -- Fonction SDL_image

	frozen IMG_Load(filename:POINTER):POINTER
		external
			"C (char *):SDL_Surface * | %"SDL_image.h%""
		alias
			"IMG_Load"
		end

	frozen IMG_Load_RW(rwop:POINTER;free:INTEGER):POINTER
		external
			"C (SDL_RWops *,int):SDL_Surface * | %"SDL_image.h%""
		alias
			"IMG_Load_RW"
		end

	frozen IMG_GetError:POINTER
		external
			"C :char * | %"SDL_image.h%""
		alias
			"IMG_GetError"
		end

	frozen IMG_Init(flags:INTEGER):INTEGER
		external
			"C (int):int | %"SDL_image.h%""
		alias
			"IMG_Init"
		end

	frozen IMG_Quit
		external
			"C | %"SDL_image.h%""
		alias
			"IMG_Quit"
		end

feature -- Constants SDL_Image

	frozen IMG_INIT_JPG:INTEGER
		external
			"C inline use <SDL_image.h>"
		alias
			"IMG_INIT_JPG"
		end

	frozen IMG_INIT_PNG:INTEGER
		external
			"C inline use <SDL_image.h>"
		alias
			"IMG_INIT_PNG"
		end

	frozen IMG_INIT_TIF:INTEGER
		external
			"C inline use <SDL_image.h>"
		alias
			"IMG_INIT_TIF"
		end

end
