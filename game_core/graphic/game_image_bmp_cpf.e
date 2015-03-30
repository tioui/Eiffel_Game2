note
	description: "Open a bmp image from a custom package file. It is recommanded to use {GAME_SURFACE_IMG_CPF} of the game images files library instead."
	author: "Louis Marchand"
	date: "Jan 14, 2014"
	revision: "2.0.0.0"

class
	GAME_IMAGE_BMP_CPF

inherit
	GAME_IMAGE
		redefine
			open
		end
	CPF_RESSOURCE_MANAGER

create
	make

feature -- Access

	open
			-- <Precursor>
		local
			l_rwop:POINTER
		do
			l_rwop:={GAME_SDL_EXTERNAL}.SDL_AllocRW
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			{GAME_SDL_EXTERNAL}.setSDLRWops(l_rwop,cpf.internal_pointer)
			own_from_pointer ({GAME_SDL_EXTERNAL}.SDL_LoadBMP_RW(l_rwop,0))
			cpf.unlock_mutex
			{GAME_SDL_EXTERNAL}.SDL_FreeRW(l_rwop)
		end


end
