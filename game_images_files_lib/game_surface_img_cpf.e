note
	description: "Create a {GAME_SURFACE} from an image in a custom package file."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

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

	make(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER)
			-- Initialization for `Current' from the sub file `a_index' in the custom package file `a_cpf'.
		require
			Img_Cpf_Index_Valid:a_index>0 and then a_index<=a_cpf.sub_files_count
		local
			l_rwop:POINTER
		do
			l_rwop:={GAME_SDL_EXTERNAL}.SDL_AllocRW
			a_cpf.mutex_lock
			a_cpf.select_sub_file (a_index)
			{GAME_SDL_EXTERNAL}.setSDLRWops(l_rwop,a_cpf.get_current_cpf_infos_ptr)
			make_from_pointer ({GAME_SDL_IMAGE_EXTERNAL}.IMG_Load_RW(l_rwop,0))
			a_cpf.mutex_unlock
			{GAME_SDL_EXTERNAL}.SDL_FreeRW(l_rwop)
		end

	make_with_alpha(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER)
			-- Initialization for `Current' from the sub file `a_index' in the custom package file `a_cpf'.
			-- Enable the alpha channel in the surface.
		require
			Sound_Cpf_Index_Valid:a_index>0 and then a_index<=a_cpf.sub_files_count
		do
			make(a_cpf,a_index)
			enable_alpha
		end

end
