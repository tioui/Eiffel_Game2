note
	description: "Font manager to use with object of type GAME_SURFACE_TEXT."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

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

	make(a_filename:STRING;a_size:INTEGER)
			-- Initialization for `Current'.
		require
			Make_Font_Text_Enabled: {GAME_TEXT_EXTERNAL}.TTF_WasInit=1
			Make_Font_Filename_Not_Void: a_filename /= Void
		do
			make_with_index(a_filename,a_size,0)
		ensure
			Make_Font_Valid: c_sdl_font_pointer /= void and then not c_sdl_font_pointer.is_default_pointer
		end

	make_with_index(a_filename:STRING;a_size:INTEGER;a_index:INTEGER_32)
			-- Initialization for `Current'.
			-- The index is use if there is more than one font in a ttf file.
		require
			Make_Font_Text_Enabled: {GAME_TEXT_EXTERNAL}.TTF_WasInit=1
			Make_Font_Filename_Not_Void: a_filename /= Void
		local
			l_filename_c:C_STRING
		do
			filename:=a_filename
			size:=a_size
			index:=a_index
			create l_filename_c.make (filename)
			c_sdl_font_pointer:={GAME_TEXT_EXTERNAL}.TTF_OpenFontIndex(l_filename_c.item,size,index)
		ensure
			Make_Font_Valid: c_sdl_font_pointer /= void and then not c_sdl_font_pointer.is_default_pointer
		end

feature -- Access

	filename:STRING
		-- The name of the file containing the current font.
	size:INTEGER assign modify_size
		-- The font height.
	index:INTEGER_32 assign modify_index
		-- The index of the font in the file.

	is_underline:BOOLEAN
		-- Return true if the font is underlined
	do
		result:=({GAME_TEXT_EXTERNAL}.TTF_GetFontStyle(c_sdl_font_pointer).bit_and({GAME_TEXT_EXTERNAL}.TTF_STYLE_UNDERLINE) /= 0)
	end

	enable_underline
		-- Add an underline effect to the font
	do
		{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(c_sdl_font_pointer,{GAME_TEXT_EXTERNAL}.TTF_STYLE_UNDERLINE)
	ensure
		Font_Add_Underline_Is_Underlined: is_underline
	end

	disable_underline
		-- Remove the underline effect from the font
	do
		{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(c_sdl_font_pointer,{GAME_TEXT_EXTERNAL}.TTF_STYLE_NORMAL)
	ensure
		Font_Remove_Underline_Is_Removed: not is_underline
	end

feature {GAME_SURFACE_TEXT} -- Internal

	sdl_font_pointer:POINTER
		do
			Result:=c_sdl_font_pointer
		end

feature {NONE} -- Implementation

	modify_font(l_size:INTEGER;l_index:INTEGER_32)
	local
		old_font_pointer:POINTER
	do
		old_font_pointer:=c_sdl_font_pointer
		make_with_index(filename,l_size,l_index)
		{GAME_TEXT_EXTERNAL}.TTF_CloseFont(old_font_pointer)
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
		if {GAME_TEXT_EXTERNAL}.TTF_WasInit=1 then
			{GAME_TEXT_EXTERNAL}.TTF_CloseFont(c_sdl_font_pointer)
		end

	end

	c_sdl_font_pointer:POINTER

invariant
	Font_Pointer_Valid: c_sdl_font_pointer /= void and then not c_sdl_font_pointer.is_default_pointer
end
