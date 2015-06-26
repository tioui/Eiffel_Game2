note
	description: "[
					A {GAME_SURFACE} that represent a text.
					Rendering from this class does not use
					alpha blending. You have to specify the
					background color.
				]"
	author: "Louis Marchand"
	date: "Mon, 30 Mar 2015 01:20:46 +0000"
	revision: "2.0"

class
	TEXT_SURFACE_SHADED

inherit
	TEXT_SURFACE
		rename
			make as make_text_surface,
			color as foreground_color
		end

create
	make

feature {NONE} -- Initialization

	make(a_text:READABLE_STRING_GENERAL;a_font:TEXT_FONT;
		a_forground_color, a_background_color:GAME_COLOR_READABLE)
			-- Initialization for `Current' from the text `l_text'
			-- using the font `l_font' and color `a_forground_color'
			-- with a background color `a_background_color'.
		require
			Text_Is_Enabled: text_library.is_text_enable
			Font_Is_Open: a_font.is_open
		do
			background_color := a_background_color
			make_text_surface (a_text, a_font, a_forground_color)
		end

feature -- Access

	background_color:GAME_COLOR_READABLE
			-- The color to draw in the background of the text

feature {NONE} -- Implementation

	c_render_text(a_font, a_text, a_foreground_color:POINTER):POINTER
			-- <Precursor>
		local
			l_background_color:GAME_SDL_COLOR
		do
			create l_background_color.make_from_other (background_color)
			Result := {GAME_TEXT_EXTERNAL}.TTF_RenderText_Shaded(a_font,a_text,a_foreground_color, l_background_color.item)
		end

	c_render_UTF8(a_font, a_text, a_foreground_color:POINTER):POINTER
			-- <Precursor>
		local
			l_background_color:GAME_SDL_COLOR
		do
			create l_background_color.make_from_other (background_color)
			Result := {GAME_TEXT_EXTERNAL}.TTF_RenderUTF8_Shaded(a_font,a_text,a_foreground_color, l_background_color.item)
		end

end
