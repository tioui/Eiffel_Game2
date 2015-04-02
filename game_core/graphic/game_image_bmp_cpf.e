note
	description: "A bmp image from a custom package file."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_IMAGE_BMP_CPF

inherit
	GAME_IMAGE
		redefine
			open
		end
	CPF_RESSOURCE_MANAGER
		undefine
			default_create
		end

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
