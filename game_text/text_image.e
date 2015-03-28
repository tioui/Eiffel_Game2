note
	description: "Create a new surface with a text drawed in it."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.1.2.1"

class
	TEXT_IMAGE

inherit
	GAME_IMAGE

create
	make_solid,
	make_shaded,
	make_blended

feature {NONE} -- Initialization

	make_solid(a_text:STRING_GENERAL;a_font:GAME_FONT;a_color:GAME_COLOR)
			-- Initialization for `Current'.
			-- Make a new surface from the text `l_text' using the font `l_font' of color `l_color'.
			-- No smmoth effect on the surface (the text can look a little odd). Fast render.
		require
			Make_Surface_Text_Text_Enabled: {GAME_TEXT_EXTERNAL}.TTF_WasInit=1
			SDL_Surface_Text_Text_Not_Void:a_text/=Void
			SDL_Surface_Text_Font_Not_Void:a_font/=Void
			SDL_Surface_Text_Color_Not_Void:a_color/=Void
		local
			l_text_c:C_STRING
			l_sdl_color:GAME_SDL_COLOR
			l_color:GAME_COLOR
			l_utf_converter:UTF_CONVERTER
		do
			init_var(a_text,a_font,a_color)
			if l_text_c.string.is_empty then
				make (100, 100)
				create l_color.make (0, 0, 0, 255)
				put_pixel_color (0, 0, l_color)
				set_transparent_color (l_color)
			else
				create l_sdl_color.make_from_rgba_color (a_color)
				if a_text.is_string_32 then
					create l_utf_converter
					create l_text_c.make (l_utf_converter.string_32_to_utf_8_string_8 (a_text))
					make_from_pointer ({GAME_TEXT_EXTERNAL}.TTF_RenderUTF8_Solid(a_font.sdl_font_pointer,l_text_c.item,l_sdl_color.sdl_color_pointer))
				else
					create l_text_c.make (a_text)
					make_from_pointer ({GAME_TEXT_EXTERNAL}.TTF_RenderText_Solid(a_font.sdl_font_pointer,l_text_c.item,l_sdl_color.sdl_color_pointer))
				end
				enable_alpha
			end
		ensure
			SDL_Surface_Text_Surface_Imp_Ok: surface_imp = Void or surface_imp.is_surface_ok
		end

	make_shaded(a_text:STRING_GENERAL;a_font:GAME_FONT;a_color,a_color_bg:GAME_COLOR)
			-- Initialization for `Current'.
			-- Make a new surface from the text `l_text' using the font `l_font' of color `l_color' with the background color `l_color_bg'.
			-- Smmoth effect on the surface but no transparency. Fast render.
		require
			Make_Surface_Text_Text_Enabled: {GAME_TEXT_EXTERNAL}.TTF_WasInit=1
			SDL_Surface_Text_Text_Not_Void:a_text/=Void
			SDL_Surface_Text_Font_Not_Void:a_font/=Void
			SDL_Surface_Text_Color_Not_Void:a_color/=Void
		local
			l_text_c:C_STRING
			l_sdl_color:GAME_SDL_COLOR
			l_sdl_color_bg:GAME_SDL_COLOR
			l_utf_converter:UTF_CONVERTER
		do
			init_var(a_text,a_font,a_color)
			color_bg:=a_color_bg
			if l_text_c.string.is_empty then
				make (100, 100)
				put_pixel_color (0, 0, color_bg)
			else
				create l_sdl_color.make_from_rgba_color (a_color)
				create l_sdl_color_bg.make_from_rgba_color (a_color_bg)
				if a_text.is_string_32 then
					create l_utf_converter
					create l_text_c.make (l_utf_converter.string_32_to_utf_8_string_8 (a_text))
					make_from_pointer ({GAME_TEXT_EXTERNAL}.TTF_RenderUTF8_Shaded(a_font.sdl_font_pointer,l_text_c.item,l_sdl_color.sdl_color_pointer,l_sdl_color_bg.sdl_color_pointer))
				else
					create l_text_c.make (a_text)
					make_from_pointer ({GAME_TEXT_EXTERNAL}.TTF_RenderText_Shaded(a_font.sdl_font_pointer,l_text_c.item,l_sdl_color.sdl_color_pointer,l_sdl_color_bg.sdl_color_pointer))
				end

			end
		ensure
			SDL_Surface_Text_Surface_Imp_Ok: surface_imp = Void or surface_imp.is_surface_ok
		end

	make_blended(a_text:STRING_GENERAL;a_font:GAME_FONT;a_color:GAME_COLOR)
			-- Initialization for `Current'.
			-- Make a new surface from the text `a_text' using the font `a_font' of color `a_color'.
			-- Smmoth effect on the surface. Relatively slow render.
		require
			Make_Surface_Text_Text_Enabled: {GAME_TEXT_EXTERNAL}.TTF_WasInit=1
			SDL_Surface_Text_Text_Not_Void:a_text/=Void
			SDL_Surface_Text_Font_Not_Void:a_font/=Void
			SDL_Surface_Text_Color_Not_Void:a_color/=Void
		local
			l_text_c:C_STRING
			l_sdl_color:GAME_SDL_COLOR
			l_color:GAME_COLOR
			l_utf_converter:UTF_CONVERTER
		do
			init_var(a_text,a_font,a_color)
			if a_text.is_empty then
				make (100, 100)
				create l_color.make (0, 0, 0, 255)
				put_pixel_color (0, 0, l_color)
				set_transparent_color (l_color)
			else
				create l_sdl_color.make_from_rgba_color (a_color)
				if a_text.is_string_32 then
					create l_utf_converter
					create l_text_c.make (l_utf_converter.string_32_to_utf_8_string_8 (a_text))
					make_from_pointer ({GAME_TEXT_EXTERNAL}.TTF_RenderUTF8_Blended(a_font.sdl_font_pointer,l_text_c.item,l_sdl_color.sdl_color_pointer))
				else
					create l_text_c.make (a_text)
					make_from_pointer ({GAME_TEXT_EXTERNAL}.TTF_RenderText_Blended(a_font.sdl_font_pointer,l_text_c.item,l_sdl_color.sdl_color_pointer))
				end
				enable_alpha
			end

		ensure
			SDL_Surface_Text_Surface_Imp_Ok: surface_imp = Void or surface_imp.is_surface_ok
		end

	init_var(a_text:STRING_GENERAL;a_font:GAME_FONT;a_color:GAME_COLOR)
		do
			text:=a_text
			font:=a_font
			color:=a_color
			color_bg:=Void
		end

feature -- Access

	text:STRING_GENERAL		-- The text use to create the surface.
	font:GAME_FONT			-- The font use to create the surface.
	color:GAME_COLOR		-- The color used to write the text on the surface.
	color_bg:GAME_COLOR		-- The background color. If the object was not created with make_shadded, color_bg will be Void.

end
