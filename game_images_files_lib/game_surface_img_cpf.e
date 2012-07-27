note
	description: "Summary description for {GAME_SURFACE_IMG_CPF}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_SURFACE_IMG_CPF

inherit
	GAME_SURFACE
	rename make as make_surface end
	CPF_RESSOURCE

create
	make,
	make_with_alpha

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
			make_from_pointer ({GAME_SDL_IMAGE_EXTERNAL}.IMG_Load_RW(rwop,0))
			cpf.mutex_unlock
			{GAME_SDL_EXTERNAL}.SDL_FreeRW(rwop)
		end

	make_with_alpha(cpf:CPF_PACKAGE_FILE;index:INTEGER)
		require
			Sound_Cpf_Index_Valid:index>0 and then index<=cpf.sub_files_count
		do
			make(cpf,index)
			enable_alpha
		end

end
