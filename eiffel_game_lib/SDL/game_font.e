note
	description: "Font manager to use with object of type GAME_SURFACE_TEXT."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_FONT

inherit
	DISPOSABLE
	export
		{NONE} all
	end

create
	make,
	make_with_index

feature {NONE} -- Initialization

	make(l_filename:STRING;l_size:INTEGER)
			-- Initialization for `Current'.
		require
			Make_Font_Text_Enabled: {GAME_SDL_EXTERNAL}.TTF_WasInit=1
			Make_Font_Filename_Not_Void: l_filename /= Void
		local
			filename_c:C_STRING
		do
			make_with_index(l_filename,l_size,0)
		ensure
			Make_Font_Valid: sdl_font_pointer /= void and then not sdl_font_pointer.is_default_pointer
		end

	make_with_index(l_filename:STRING;l_size:INTEGER;l_index:INTEGER_32)
			-- Initialization for `Current'.
			-- The index is use if there is more than one font in a ttf file.
		require
			Make_Font_Text_Enabled: {GAME_SDL_EXTERNAL}.TTF_WasInit=1
			Make_Font_Filename_Not_Void: l_filename /= Void
		local
			filename_c:C_STRING
		do
			filename:=l_filename
			size:=l_size
			index:=l_index
			create filename_c.make (filename)
			sdl_font_pointer:={GAME_SDL_EXTERNAL}.TTF_OpenFontIndex(filename_c.item,size,index)
			check sdl_font_pointer /= void and then not sdl_font_pointer.is_default_pointer end
		ensure
			Make_Font_Valid: sdl_font_pointer /= void and then not sdl_font_pointer.is_default_pointer
		end

feature -- Access

	filename:STRING
	size:INTEGER assign modify_size
	index:INTEGER_32 assign modify_index

	is_underline:BOOLEAN
		-- Return true if the font is underlined
	do
		result:=({GAME_SDL_EXTERNAL}.TTF_GetFontStyle(sdl_font_pointer).bit_and({GAME_SDL_EXTERNAL}.TTF_STYLE_UNDERLINE) /= 0)
	end

	add_underline
		-- Add an underline effect to the font
	do
		{GAME_SDL_EXTERNAL}.TTF_SetFontStyle(sdl_font_pointer,{GAME_SDL_EXTERNAL}.TTF_STYLE_UNDERLINE)
	ensure
		Font_Add_Underline_Is_Underlined: is_underline
	end

	remove_underline
		-- Remove the underline effect from the font
	do
		{GAME_SDL_EXTERNAL}.TTF_SetFontStyle(sdl_font_pointer,{GAME_SDL_EXTERNAL}.TTF_STYLE_NORMAL)
	ensure
		Font_Remove_Underline_Is_Removed: not is_underline
	end

feature {GAME_SURFACE_TEXT} -- Internal

	sdl_font_pointer:POINTER

feature {NONE} -- Implementation

	modify_font(l_size:INTEGER;l_index:INTEGER_32)
	local
		old_font_pointer:POINTER
	do
		old_font_pointer:=sdl_font_pointer
		make_with_index(filename,l_size,l_index)
		{GAME_SDL_EXTERNAL}.TTF_CloseFont(old_font_pointer)
	end

	modify_size(l_size:INTEGER)
	local
	do
		modify_font(l_size,index)

	end

	modify_index(l_index:INTEGER_32)
	do
		modify_font(size,l_index)
	end

	dispose
	do
		{GAME_SDL_EXTERNAL}.TTF_CloseFont(sdl_font_pointer)
	end


invariant
	Font_Pointer_Valid: sdl_font_pointer /= void and then not sdl_font_pointer.is_default_pointer
end
