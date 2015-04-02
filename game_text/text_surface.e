note
	description: "Create a new surface with a text drawed in it."
	author: "Louis Marchand"
	date: "Mon, 30 Mar 2015 01:20:46 +0000"
	revision: "2.0"

deferred class
	TEXT_SURFACE

inherit
	GAME_SURFACE
		rename
			make as make_surface
		end
	TEXT_LIBRARY_SHARED
feature {NONE} -- Initialization

	make(a_text:READABLE_STRING_GENERAL;a_font:TEXT_FONT;a_color:GAME_COLOR_READABLE)
			-- Initialization for `Current' from the text `l_text'
			-- using the font `l_font' and color `l_color'.
		require
			Text_Is_Enabled: text_library.is_text_enable
			Font_Is_Open: a_font.is_open
		local
			l_text_c:C_STRING
			l_sdl_color:GAME_SDL_COLOR
			l_text : READABLE_STRING_GENERAL
			l_image: GAME_IMAGE
			l_utf_converter:UTF_CONVERTER
			l_font_pointer:POINTER
		do
			text := a_text
			font := a_font
			color := a_color
			l_text := text
			if text.is_empty then
				l_text := " "
			end
			create l_sdl_color.make_from_other (a_color)
			l_font_pointer := a_font.item
			if attached {TEXT_FONT_CPF} a_font as la_font then
				la_font.lock_cpf_mutex
			end
			if text.is_string_8 then
				create l_text_c.make (a_text)
				create l_image.own_from_pointer (c_render_text(a_font.item,l_text_c.item,l_sdl_color.item))
			else
				create l_utf_converter
				create l_text_c.make (l_utf_converter.string_32_to_utf_8_string_8 (l_text.to_string_32))
				create l_image.own_from_pointer (c_render_UTF8(a_font.item,l_text_c.item,l_sdl_color.item))
			end
			if attached {TEXT_FONT_CPF} a_font as la_font then
				la_font.unlock_cpf_mutex
			end
			if attached l_image and then l_image.is_openable then
				l_image.open
				if l_image.is_open then
					share_from_image (l_image)
				else
					manage_error_pointer (create {POINTER}, "Cannot create text surface.")
					create image.make_from_pointer (create {POINTER})
				end
			else
				manage_error_pointer (create {POINTER}, "Cannot create text surface.")
				create image.make_from_pointer (create {POINTER})
			end
		end
feature -- Access

	text:READABLE_STRING_GENERAL		-- The text use to create the surface.
	font:TEXT_FONT			-- The font use to create the surface.
	color:GAME_COLOR_READABLE		-- The color used to write the text on the surface.

feature {NONE} -- Implementation

	c_render_text(a_font, a_text, a_color:POINTER):POINTER
			-- The internal C function to render the latin `a_text'
		deferred
		end

	c_render_UTF8(a_font, a_text, a_color:POINTER):POINTER
			-- The internal C function to render the UTF8 `a_text'
		deferred
		end

end
