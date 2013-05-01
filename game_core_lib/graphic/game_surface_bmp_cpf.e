note
	description: "Open a bmp image from a custom package file. It is recommanded to use {GAME_SURFACE_IMG_CPF} of the game images files library instead."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_SURFACE_BMP_CPF

inherit
	GAME_SURFACE
	rename make as make_surface end
	CPF_RESSOURCE

create
	make

feature {NONE} -- Initialization

	make(a_cpf:CPF_PACKAGE_FILE;a_cpf_index:INTEGER)
			-- Initialization for `Current'.
		require
			Img_Cpf_Index_Valid:a_cpf_index>0 and then a_cpf_index<=a_cpf.sub_files_count
		local
			l_rwop:POINTER
		do
			l_rwop:={GAME_SDL_EXTERNAL}.SDL_AllocRW
			a_cpf.mutex_lock
			a_cpf.select_sub_file (a_cpf_index)
			{GAME_SDL_EXTERNAL}.setSDLRWops(l_rwop,a_cpf.get_current_cpf_infos_ptr)
			make_from_pointer ({GAME_SDL_EXTERNAL}.SDL_LoadBMP_RW(l_rwop,0))
			a_cpf.mutex_unlock
			{GAME_SDL_EXTERNAL}.SDL_FreeRW(l_rwop)
		end

end
