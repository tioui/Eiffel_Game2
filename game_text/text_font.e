note
	description: "A font that can be use to draw text with a {TEXT_IMAGE}."
	author: "Louis Marchand"
	date: "Mon, 30 Mar 2015 01:06:37 +0000"
	revision: "2.0"

class
	TEXT_FONT

inherit
	GAME_RESSOURCE
		rename
			has_error as has_ressource_error
		end
	DISPOSABLE
		undefine
			default_create
		end
	TEXT_LIBRARY_SHARED
		undefine
			default_create
		end
	GAME_SDL_ANY
		undefine
			default_create
		end

create
	make,
	make_with_index

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL;a_size:INTEGER)
			-- Initialization for `Current'.
		require
			Is_Text_Enable: text_library.is_text_enable
			Filename_Not_Empty: not a_filename.is_empty
			Size_Stricly_Positive: a_size > 1
		do
			make_with_index(a_filename,a_size,0)
		end

	make_with_index(a_filename:READABLE_STRING_GENERAL;a_size:INTEGER;a_index:INTEGER_32)
			-- Initialization for `Current'.
			-- The index is use if there is more than one font in a ttf file.
		require
			Is_Text_Enable: text_library.is_text_enable
			Filename_Not_Empty: not a_filename.is_empty
			Size_Stricly_Positive: a_size > 1
			Index_Positive: a_index >= 0
		local
			l_filename_c, l_mode_c:C_STRING
		do
			default_create
			size := a_size
			index := a_index
			create l_filename_c.make (a_filename)
			create l_mode_c.make ("rb")
			rwop:={GAME_SDL_EXTERNAL}.SDL_RWFromFile(l_filename_c.item, l_mode_c.item)
		end

feature -- Access

	size:INTEGER
		-- The font height.

	index:INTEGER_32
		-- The index of the font in the file.

	is_openable:BOOLEAN
			-- <Precursor>
		do
			Result := not rwop.is_default_pointer
		end

	open
			-- <Precursor>
		do
			clear_error
			internal_pointer:={GAME_TEXT_EXTERNAL}.TTF_OpenFontIndexRW(rwop, 0, size, index)
			manage_error_pointer (internal_pointer, "Cannot open the font")
			has_ressource_error := has_error
			is_open := not has_error
		ensure then
			Exists: not has_error implies exists
			Is_Open: not has_error implies is_open
		end


	exists:BOOLEAN
			-- Is allocated memory still allocated?
		do
			Result := not item.is_default_pointer
		end

	has_style_modifier:BOOLEAN
			-- Is `Current' has a style modifier (underline, bold, italic or strike through)
		require
			exists
		do
			Result := is_underline or is_bold or is_italic or is_strike_through
		end

	disable_style_modifier
			-- Disable all style modifier (underline, bold, italic and strike through)
		require
			exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(item, {GAME_TEXT_EXTERNAL}.TTF_STYLE_NORMAL)
		end

	is_underline:BOOLEAN assign set_is_underline
			-- Is `Current' has an underline style modifier
		require
			exists
		do
			Result := {GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_and ({GAME_TEXT_EXTERNAL}.TTF_STYLE_UNDERLINE) /= 0
		end

	set_is_underline(a_value:BOOLEAN)
			-- Assign to `is_underline' the value of `a_value'
		do
			if a_value then
				enable_underline
			else
				disable_underline
			end
		ensure
			Is_Assign: is_underline ~ a_value
		end

	enable_underline
			-- Add an underline style modifier to `Current'
		require
			exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(item,
						{GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_or ({GAME_TEXT_EXTERNAL}.TTF_STYLE_UNDERLINE)
					)
		ensure
			Is_Enabled: is_underline
		end

	disable_underline
			-- remove an underline style modifier to `Current'
		require
			exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(item,
						{GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_and ({GAME_TEXT_EXTERNAL}.TTF_STYLE_UNDERLINE.bit_not)
					)
		ensure
			Is_Disabled: not is_underline
		end

	is_bold:BOOLEAN assign set_is_bold
			-- Is `Current' has a bold style modifier
		require
			exists
		do
			Result := {GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_and ({GAME_TEXT_EXTERNAL}.TTF_STYLE_BOLD) /= 0
		end

	set_is_bold(a_value:BOOLEAN)
			-- Assign to `is_bold' the value of `a_value'
		do
			if a_value then
				enable_bold
			else
				disable_bold
			end
		ensure
			Is_Assign: is_bold ~ a_value
		end

	enable_bold
			-- Add a bold style modifier to `Current'
		require
			exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(item,
						{GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_or ({GAME_TEXT_EXTERNAL}.TTF_STYLE_BOLD)
					)
		ensure
			Is_Enabled: is_bold
		end

	disable_bold
			-- remove a bold style modifier to `Current'
		require
			exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(item,
						{GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_and ({GAME_TEXT_EXTERNAL}.TTF_STYLE_BOLD.bit_not)
					)
		ensure
			Is_Disabled: not is_bold
		end

	is_italic:BOOLEAN assign set_is_italic
			-- Is `Current' has an italic style modifier
		require
			exists
		do
			Result := {GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_and ({GAME_TEXT_EXTERNAL}.TTF_STYLE_ITALIC) /= 0
		end

	set_is_italic(a_value:BOOLEAN)
			-- Assign to `is_italic' the value of `a_value'
		do
			if a_value then
				enable_italic
			else
				disable_italic
			end
		ensure
			Is_Assign: is_italic ~ a_value
		end

	enable_italic
			-- Add an italic style modifier to `Current'
		require
			exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(item,
						{GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_or ({GAME_TEXT_EXTERNAL}.TTF_STYLE_ITALIC)
					)
		ensure
			Is_Enabled: is_italic
		end

	disable_italic
			-- remove an italic style modifier to `Current'
		require
			exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(item,
						{GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_and ({GAME_TEXT_EXTERNAL}.TTF_STYLE_ITALIC.bit_not)
					)
		ensure
			Is_Disabled: not is_italic
		end

	is_strike_through:BOOLEAN assign set_is_strike_through
			-- Is `Current' has a strike through style modifier
		require
			exists
		do
			Result := {GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_and ({GAME_TEXT_EXTERNAL}.TTF_STYLE_STRIKETHROUGH) /= 0
		end

	set_is_strike_through(a_value:BOOLEAN)
			-- Assign to `is_strike_through' the value of `a_value'
		do
			if a_value then
				enable_strike_through
			else
				disable_strike_through
			end
		ensure
			Is_Assign: is_strike_through ~ a_value
		end

	enable_strike_through
			-- Add a strike through style modifier to `Current'
		require
			exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(item,
						{GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_or ({GAME_TEXT_EXTERNAL}.TTF_STYLE_STRIKETHROUGH)
					)
		ensure
			Is_Enabled: is_strike_through
		end

	disable_strike_through
			-- remove a strike through style modifier to `Current'
		require
			exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontStyle(item,
						{GAME_TEXT_EXTERNAL}.ttf_getfontstyle (item).bit_and ({GAME_TEXT_EXTERNAL}.TTF_STYLE_STRIKETHROUGH.bit_not)
					)
		ensure
			Is_Disabled: not is_strike_through
		end

	has_outline:BOOLEAN
			-- Is `Current' has an outline size.
		require
			exists
		do
			Result := outline_size > 0
		end

	outline_size:INTEGER assign set_outline_size
			-- The ouline width of `Current' (0 for disabled)
		require
			exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_GetFontOutline(item)
		end

	set_outline_size(a_outline_size:INTEGER)
			-- Assign `outline_size' with the value of `outline_size'
		require
			Exists: exists
			Outline_Size_Valid: a_outline_size >= 0
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontOutline(item, a_outline_size)
		ensure
			Is_Assign: outline_size = a_outline_size
		end

	disable_outline
			-- Disable the outline size in `Current'
		require
			Exists
		do
			set_outline_size(0)
		ensure
			Is_Disabled: not has_outline
		end

	has_hinting:BOOLEAN
			-- Has the library a hint about how to draw `Current'
		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_GetFontHinting(item) /= {GAME_TEXT_EXTERNAL}.TTF_HINTING_NONE
		end

	disable_hinting
			-- Disable the draw hinting of `Current'
		require
			Exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontHinting(item, {GAME_TEXT_EXTERNAL}.TTF_HINTING_NONE)
		end

	has_normal_hinting:BOOLEAN
			-- The library has the normal hinting to draw `Current
		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_GetFontHinting(item) /= {GAME_TEXT_EXTERNAL}.TTF_HINTING_NORMAL
		end

	enable_normal_hinting
			-- Use the normal hinting to draw `Current'
		require
			Exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontHinting(item, {GAME_TEXT_EXTERNAL}.TTF_HINTING_NORMAL)
		ensure
			Is_Enable: has_normal_hinting
		end

	has_light_hinting:BOOLEAN
			-- The library has the light hinting to draw `Current'

		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_GetFontHinting(item) /= {GAME_TEXT_EXTERNAL}.TTF_HINTING_LIGHT
		end

	enable_light_hinting
			-- Use the light hinting to draw `Current'
		require
			Exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontHinting(item, {GAME_TEXT_EXTERNAL}.TTF_HINTING_LIGHT)
		ensure
			Is_Enable: has_light_hinting
		end

	has_monochrome_hinting:BOOLEAN
			-- The library has the monochrome hinting to draw `Current'.
		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_GetFontHinting(item) /= {GAME_TEXT_EXTERNAL}.TTF_HINTING_MONO
		end

	enable_monochrome_hinting
			-- Use the monochrome hinting to draw `Current'.
			-- Must only be use with monochrome display
		require
			Exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontHinting(item, {GAME_TEXT_EXTERNAL}.TTF_HINTING_MONO)
		ensure
			Is_Enable: has_monochrome_hinting
		end

	is_kerning_enabled:BOOLEAN assign set_is_kerning_enabled
			-- If True, the library can use kerning when drawing a text with `Current'
		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_GetFontKerning(item) /= 0
		end

	set_is_kerning_enabled(a_value:BOOLEAN)
			-- Assign to `is_kerning_enabled' the value of `a_value'
		do
			if a_value then
				enable_kerning
			else
				disable_kerning
			end
		ensure
			Is_Assign: is_kerning_enabled ~ a_value
		end

	enable_kerning
			-- Allow the library to use kerning when drawing a text with `Current'
		require
			Exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontKerning(item, 1)
		ensure
			Is_Enabled: is_kerning_enabled
		end

	disable_kerning
			-- Does not allow the library to use kerning when drawing a text with `Current'
		require
			Exists
		do
			{GAME_TEXT_EXTERNAL}.TTF_SetFontKerning(item, 0)
		ensure
			Is_Disabled: not is_kerning_enabled
		end

	maximum_height:INTEGER
			-- The maximum height that a gliph can take in pixel using `Current'
		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_FontHeight(item)
		end

	ascent:INTEGER
			-- distance from the top of the drawing area to the baseline in pixel.
		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_FontAscent (item)
		end

	descent:INTEGER
			-- distance from the baseline to the bottom of the drawing area in pixel.
		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_FontDescent (item)
		end

	line_skip_height:INTEGER
			-- the recommended pixel height of a rendered line of text using `Current'
		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_FontLineSkip (item)
		end

	is_monospace:BOOLEAN
			-- True if every character that exists in `Current' is the same width
		require
			Exists
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_FontFaceIsFixedWidth (item) > 0
		end

	face_family_name:READABLE_STRING_GENERAL
			-- The name of the face family of `Curent'
		require
			Exists
		local
			l_name_ptr:POINTER
			l_name_c:C_STRING
		do
			l_name_ptr := {GAME_TEXT_EXTERNAL}.TTF_FontFaceFamilyName(item)
			if l_name_ptr.is_default_pointer then
				Result := ""
			else
				create l_name_c.make_by_pointer (l_name_ptr)
				Result := l_name_c.string
			end
		end

	face_style_name:READABLE_STRING_GENERAL
			-- The name of the face style of `Curent'
		require
			Exists
		local
			l_name_ptr:POINTER
			l_name_c:C_STRING
		do
			l_name_ptr := {GAME_TEXT_EXTERNAL}.TTF_FontFaceStyleName(item)
			if l_name_ptr.is_default_pointer then
				Result := ""
			else
				create l_name_c.make_by_pointer (l_name_ptr)
				Result := l_name_c.string
			end
		end

	is_glyph_provided(a_character:CHARACTER_32):BOOLEAN
			-- Is `Current' can draw a glyph representing `a_character'
		require
			Exists
		local
			l_prototype:NATURAL_32
		do
			if a_character.natural_32_code > l_prototype.max_value then
				Result := False
			else
				Result := {GAME_TEXT_EXTERNAL}.TTF_GlyphIsProvided(item, a_character.natural_32_code.as_natural_16) /= 0
			end
		end

	glyph_metrics(a_character:CHARACTER_32):TUPLE[minimal_x, maximal_x, minimal_y, maximal_y, advance:INTEGER]
			-- The informations about the glyph representing `a_character' generated with `Current'.
			-- Set `has_error' on error.
		require
			Exists
			Is_Character_Valid: is_glyph_provided(a_character)
		local
			l_error, l_minimal_x, l_maximal_x, l_minimal_y, l_maximal_y, l_advance: INTEGER
		do
			clear_error
			l_error := {GAME_TEXT_EXTERNAL}.TTF_GlyphMetrics(item, a_character.natural_32_code.as_natural_16,
						$l_minimal_x, $l_maximal_x, $l_minimal_y, $l_maximal_y, $l_advance)
			if l_error < 0 then
				manage_error_code (l_error, "Cannot get the glyph information.")
				Result := [0,0,0,0,0]
			else
				Result := [l_minimal_x, l_maximal_x, l_minimal_y, l_maximal_y, l_advance]
			end
		end

	text_dimension(a_text:READABLE_STRING_GENERAL):TUPLE[width, height:INTEGER]
			-- The dimension of the `a_text' drawed with `Current'
		require
			Exists
		local
			l_error, l_width, l_height:INTEGER
			l_text_c:C_STRING
			l_utf_converter: UTF_CONVERTER
		do
			clear_error
			if a_text.is_string_8 then
				create l_text_c.make (a_text)
				l_error := {GAME_TEXT_EXTERNAL}.TTF_SizeText(item, l_text_c.item, $l_width, $l_height)
			else
				create l_utf_converter
				create l_text_c.make (l_utf_converter.string_32_to_utf_8_string_8 (a_text.as_string_32))
				l_error := {GAME_TEXT_EXTERNAL}.TTF_SizeUTF8(item, l_text_c.item, $l_width, $l_height)
			end
			if l_error < 0 then
				manage_error_code (l_error, "Cannot get the text size once drawed.")
				Result := [0,0]
			else
				Result := [l_width, l_height]
			end
		end

feature {GAME_SDL_ANY} -- Implementation

	item:POINTER
			-- Access to memory area.
		do
			Result := internal_pointer
		end

feature {NONE} -- Implementation

	internal_pointer:POINTER
			-- The pointer to the C structure representing `Current'

	rwop:POINTER
			-- The pointer to the SDL Read/Write handle

	dispose
			-- <Precursor>
	do
		if not rwop.is_default_pointer then
			{GAME_SDL_EXTERNAL}.SDL_FreeRW(rwop)
		end
		if exists then
			{GAME_TEXT_EXTERNAL}.ttf_closefont (item)
			is_open := False
			create internal_pointer
		end
	end

invariant
	Is_Open_Exists: is_open implies exists

end
