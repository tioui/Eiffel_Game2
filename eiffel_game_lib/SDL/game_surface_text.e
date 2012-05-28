note
	description: "Create a new surface with a text drawed in it."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SURFACE_TEXT

inherit
	GAME_SURFACE

create
	make_solid,
	make_shaded,
	make_blended

feature {NONE} -- Initialization

	make_solid(l_text:STRING_8;l_font:GAME_FONT;l_color:GAME_COLOR)
			-- Initialization for `Current'.
			-- Make a new surface from the text `l_text' using the font `l_font' of color `l_color'.
			-- No smmoth effect on the surface (the text can look a little odd). Fast render.
		require
			Make_Surface_Text_Text_Enabled: {GAME_SDL_EXTERNAL}.TTF_WasInit=1
			SDL_Surface_Text_Text_Not_Void:l_text/=Void
			SDL_Surface_Text_Font_Not_Void:l_font/=Void
			SDL_Surface_Text_Color_Not_Void:l_color/=Void
		local
			text_c:C_STRING
			l_sdl_color:GAME_SDL_COLOR
		do
			init_var(l_text,l_font,l_color)
			create text_c.make (l_text)
			create l_sdl_color.make_from_rgba_color (l_color)
			make_from_pointer ({GAME_SDL_EXTERNAL}.TTF_RenderText_Solid(l_font.sdl_font_pointer,text_c.item,l_sdl_color.sdl_color_pointer))
		ensure
			SDL_Surface_Text_Surface_Imp_Ok: surface_imp = Void or surface_imp.is_surface_ok
		end

	make_shaded(l_text:STRING_8;l_font:GAME_FONT;l_color,l_color_bg:GAME_COLOR)
			-- Initialization for `Current'.
			-- Make a new surface from the text `l_text' using the font `l_font' of color `l_color' with the background color `l_color_bg'.
			-- Smmoth effect on the surface but no transparency. Fast render.
		require
			Make_Surface_Text_Text_Enabled: {GAME_SDL_EXTERNAL}.TTF_WasInit=1
			SDL_Surface_Text_Text_Not_Void:l_text/=Void
			SDL_Surface_Text_Font_Not_Void:l_font/=Void
			SDL_Surface_Text_Color_Not_Void:l_color/=Void
		local
			text_c:C_STRING
			l_sdl_color:GAME_SDL_COLOR
			l_sdl_color_bg:GAME_SDL_COLOR
		do
			init_var(l_text,l_font,l_color)
			color_bg:=l_color_bg
			create text_c.make (l_text)
			create l_sdl_color.make_from_rgba_color (l_color)
			create l_sdl_color_bg.make_from_rgba_color (l_color_bg)
			make_from_pointer ({GAME_SDL_EXTERNAL}.TTF_RenderText_Shaded(l_font.sdl_font_pointer,text_c.item,l_sdl_color.sdl_color_pointer,l_sdl_color_bg.sdl_color_pointer))
		ensure
			SDL_Surface_Text_Surface_Imp_Ok: surface_imp = Void or surface_imp.is_surface_ok
		end

	make_blended(l_text:STRING_8;l_font:GAME_FONT;l_color:GAME_COLOR)
			-- Initialization for `Current'.
			-- Make a new surface from the text `l_text' using the font `l_font' of color `l_color'.
			-- Smmoth effect on the surface. Relatively slow render.
		require
			Make_Surface_Text_Text_Enabled: {GAME_SDL_EXTERNAL}.TTF_WasInit=1
			SDL_Surface_Text_Text_Not_Void:l_text/=Void
			SDL_Surface_Text_Font_Not_Void:l_font/=Void
			SDL_Surface_Text_Color_Not_Void:l_color/=Void
		local
			text_c:C_STRING
			l_sdl_color:GAME_SDL_COLOR
		do
			init_var(l_text,l_font,l_color)
			create text_c.make (l_text)
			create l_sdl_color.make_from_rgba_color (l_color)
			make_from_pointer ({GAME_SDL_EXTERNAL}.TTF_RenderText_Blended(l_font.sdl_font_pointer,text_c.item,l_sdl_color.sdl_color_pointer))
		ensure
			SDL_Surface_Text_Surface_Imp_Ok: surface_imp = Void or surface_imp.is_surface_ok
		end

	init_var(l_text:STRING_GENERAL;l_font:GAME_FONT;l_color:GAME_COLOR)
		do
			text:=l_text
			font:=l_font
			color:=l_color
			color_bg:=Void
		end

feature -- Access

	text:STRING_GENERAL		-- The text use to create the surface.
	font:GAME_FONT			-- The font use to create the surface.
	color:GAME_COLOR		-- The color used to write the text on the surface.
	color_bg:GAME_COLOR		-- The background color. If the object was not created with make_shadded, color_bg will be Void.

end
