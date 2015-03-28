note
	description: "External of the SDL_image library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	IMG_SDL_IMAGE_EXTERNAL

feature -- Fonction SDL_image

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

	frozen IMG_isCUR(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isCUR"
		end

	frozen IMG_isICO(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isICO"
		end

	frozen IMG_isBMP(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isBMP"
		end

	frozen IMG_isPNM(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isPNM"
		end

	frozen IMG_isXPM(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isXPM"
		end

	frozen IMG_isXCF(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isXCF"
		end

	frozen IMG_isPCX(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isPCX"
		end

	frozen IMG_isGIF(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isGIF"
		end

	frozen IMG_isJPG(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isJPG"
		end

	frozen IMG_isTIF(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isTIF"
		end

	frozen IMG_isPNG(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isPNG"
		end

	frozen IMG_isLBM(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isLBM"
		end

	frozen IMG_isXV(src:POINTER):INTEGER
		external
			"C (SDL_RWops *):int | %"SDL_image.h%""
		alias
			"IMG_isXV"
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
