note
	description: "Open a bmp image from a custom package file. It is recommanded to use {GAME_SURFACE_IMG_CPF} of the game images files library instead."
	author: "Louis Marchand"
	date: "Jan 14, 2014"
	revision: "2.0.0.0"

class
	GAME_IMG_IMAGE_SOURCE_CPF

inherit
	GAME_IMG_IMAGE_SOURCE_FILE
		rename
			make as make_file
		redefine
			open, is_cur, is_ico, is_bmp, is_pnm, is_xpm,
			is_xcf, is_pcx, is_gif, is_jpg, is_tif, is_png, is_lbm, is_xv

		end
	CPF_RESSOURCE_MANAGER

create
	make

feature {NONE} -- Initialization

	make(a_cpf:CPF_PACKAGE_FILE;a_cpf_index:INTEGER)
			-- make `Current' from the BMP image in the custom package file `a_cpf' at `a_cpf_index'.
		require
			Img_Cpf_Index_Valid:a_cpf.is_readable and then a_cpf_index>0 and then a_cpf_index<=a_cpf.sub_files_count
		local
			l_rwop:POINTER
		do
			cpf:=a_cpf
			cpf_index:=a_cpf_index
			rwop:={GAME_SDL_EXTERNAL}.SDL_AllocRW
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			{GAME_SDL_EXTERNAL}.setSDLRWops(l_rwop,cpf.get_current_cpf_infos_ptr)
			last_position:=cpf.position
			cpf.unlock_mutex
		end

feature -- Access

	is_cur:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_ico:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_bmp:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_pnm:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_xpm:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_xcf:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_pcx:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_gif:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_jpg:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_tif:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_png:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_lbm:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_xv:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	open
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {GAME_IMG_IMAGE_SOURCE_FILE}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

feature {NONE}

	cpf:CPF_PACKAGE_FILE
	cpf_index:INTEGER
	last_position:INTEGER

end
