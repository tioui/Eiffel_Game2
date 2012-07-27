note
	description: "Summary description for {GAME_IMG_CONTROLLER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

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


	enable_image(png,jpg,tif:BOOLEAN)
		local
			flags:INTEGER
			error:C_STRING
		do
			flags:=0
			if png then
				flags:=flags.bit_or ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_PNG)
			end
			if jpg then
				flags:=flags.bit_or ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_JPG)
			end
			if tif then
				flags:=flags.bit_or ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_TIF)
			end
			flags:={GAME_SDL_IMAGE_EXTERNAL}.IMG_Init(flags)
			if png and flags.bit_and ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_PNG)=0 then
				create error.make_by_pointer ({GAME_SDL_IMAGE_EXTERNAL}.IMG_GetError)
				io.error.put_string ("Error while loading PNG library: "+error.string+"%N")
				io.error.flush
				check false end
			end
			if jpg and flags.bit_and ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_JPG)=0 then
				create error.make_by_pointer ({GAME_SDL_IMAGE_EXTERNAL}.IMG_GetError)
				io.error.put_string ("Error while loading JPG library: "+error.string+"%N")
				io.error.flush
				check false end
			end
			if tif and flags.bit_and ({GAME_SDL_IMAGE_EXTERNAL}.IMG_INIT_TIF)=0 then
				create error.make_by_pointer ({GAME_SDL_IMAGE_EXTERNAL}.IMG_GetError)
				io.error.put_string ("Error while loading TIF library: "+error.string+"%N")
				io.error.flush
				check false end
			end
		end

	disable_image
		do
			{GAME_SDL_IMAGE_EXTERNAL}.IMG_Quit
		end

	quit_library
		do
			disable_image
		end

end
