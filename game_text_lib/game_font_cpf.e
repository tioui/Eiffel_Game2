note
	description: "Summary description for {GAME_FONT_CPF}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_FONT_CPF

inherit
	CPF_RESSOURCE
	GAME_FONT
	rename
		make as make_from_file,
		make_with_index as make_with_index_from_file
	undefine
		modify_font
	redefine
		dispose,
		sdl_font_pointer
	end

create
	make,
	make_with_index

feature -- Initialisation

	make (l_cpf:CPF_PACKAGE_FILE;l_cpf_index:INTEGER; l_size: INTEGER_32)
			-- Initialization for `Current'.
		require
			make_font_text_enabled: {GAME_TEXT_EXTERNAL}.ttf_wasinit = 1
			Make_Font_CPF_Index_Valid:l_cpf_index>0 and then l_cpf_index<=l_cpf.sub_files_count
		do
			make_with_index (l_cpf,l_cpf_index, l_size, 0)
		ensure
			make_font_valid: c_sdl_font_pointer /= Void and then not c_sdl_font_pointer.is_default_pointer
		end

	make_with_index (l_cpf:CPF_PACKAGE_FILE;l_cpf_index:INTEGER; l_size: INTEGER_32; l_index: INTEGER_32)
			-- Initialization for `Current'.
			-- The index is use if there is more than one font in a ttf file.
		require
			make_font_text_enabled: {GAME_TEXT_EXTERNAL}.ttf_wasinit = 1
			Make_Font_CPF_Index_Valid:l_cpf_index>0 and then l_cpf_index<=l_cpf.sub_files_count
		local

		do
			cpf:=l_cpf
			cpf_index:=l_cpf_index
			rwop:={GAME_SDL_EXTERNAL}.SDL_AllocRW
			cpf.mutex_lock
			cpf.select_sub_file (cpf_index)
			{GAME_SDL_EXTERNAL}.setSDLRWops(rwop,cpf.get_current_cpf_infos_ptr)
			cpf.mutex_unlock
			reload_font(l_size, l_index)
		ensure
			make_font_valid: c_sdl_font_pointer /= Void and then not c_sdl_font_pointer.is_default_pointer
		end

feature {GAME_SURFACE_TEXT} -- Internal

	sdl_font_pointer:POINTER
		do
			cpf.mutex_lock
			cpf.select_sub_file (cpf_index)
			cpf.seek_from_begining (0)
			Result:=c_sdl_font_pointer
			cpf.mutex_unlock
		end

feature {NONE} -- Implementation Routines

	reload_font(l_size:INTEGER;l_index:INTEGER_32)
		do
			size := l_size
			index := l_index
			cpf.mutex_lock
			cpf.select_sub_file (cpf_index)
			cpf.seek_from_begining (0)
			c_sdl_font_pointer:={GAME_TEXT_EXTERNAL}.TTF_OpenFontIndexRW(rwop,0,size,index)
			cpf.mutex_unlock
		end

	modify_font(l_size:INTEGER;l_index:INTEGER_32)
		local
			old_font_pointer:POINTER
		do
			old_font_pointer:=c_sdl_font_pointer
			reload_font(l_size,l_index)
			{GAME_TEXT_EXTERNAL}.TTF_CloseFont(old_font_pointer)
		end

	dispose
		do
			precursor {GAME_FONT}
			{GAME_SDL_EXTERNAL}.SDL_FreeRW(rwop)
		end

feature {NONE} -- Implementation - Variables

	cpf:CPF_PACKAGE_FILE
	cpf_index:INTEGER
	rwop:POINTER


end
