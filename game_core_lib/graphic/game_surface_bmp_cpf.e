note
	description: "Summary description for {GAME_SURFACE_BMP_CPF}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_SURFACE_BMP_CPF

inherit
	GAME_SURFACE
	rename make as make_surface end
	CPF_RESSOURCE

create
	make

feature {NONE} -- Initialization

	make(cpf:CPF_PACKAGE_FILE;index:INTEGER)
			-- Initialization for `Current'.
		require
			Img_Cpf_Index_Valid:index>0 and then index<=cpf.sub_files_count
		local
			rwop:POINTER
		do
			rwop:={GAME_SDL_EXTERNAL}.SDL_AllocRW
			cpf.mutex_lock
			cpf.select_sub_file (index)
			{GAME_SDL_EXTERNAL}.setSDLRWops(rwop,cpf.get_current_cpf_infos_ptr)
			make_from_pointer ({GAME_SDL_EXTERNAL}.SDL_LoadBMP_RW(rwop,0))
			cpf.mutex_unlock
			{GAME_SDL_EXTERNAL}.SDL_FreeRW(rwop)
		end

end
