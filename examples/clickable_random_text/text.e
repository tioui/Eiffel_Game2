note
	description: "A visual text that can be draw in a Window Renderer."
	author: "Louis Marchand"
	date: "Wed, 22 Dec 2021 19:48:09 +0000"
	revision: "0.1"

class
	TEXT

create
	make

feature {NONE} -- Initialisation

	make (a_x, a_y:INTEGER; a_text:STRING; a_font:TEXT_FONT; a_color: GAME_COLOR;
			a_renderer:GAME_RENDERER)
			-- Initialisation of `Current' at position (`a_x',`a_y') with `a_text' as `text',
			-- `a_font' as `font' and `a_color' as `color'. `a_renderer' is used
			-- to generate `texture'.
		require
			Text_Not_Empty: not a_text.is_empty
			Is_Font_Open: a_font.is_open
		do
			x := a_x
			y := a_y
			text := a_text.twin
			font := a_font
			color := create {GAME_COLOR}.make_from_other (a_color)
			renderer := a_renderer
			create pixel_format
			pixel_format.set_argb8888
			update_texture
		ensure
			Is_Text_Assign: text ~ a_text
			Is_Font_Assign: font = a_font
			Is_Color_Assign: color ~ a_color
			Is_Renderer_Assign: renderer = a_renderer
		end

feature -- Access

	texture:GAME_TEXTURE
			-- The drawable image of `Current'

	x:INTEGER assign set_x
			-- The top-left horizontal position of `Current'

	set_x(a_x:INTEGER)
			-- Assign `x' with the value of `a_x'
		do
			x := a_x
		ensure
			Is_Assign: x ~ a_x
		end

	y:INTEGER assign set_y
			-- The top-left vertical position of `Current'

	set_y(a_y:INTEGER)
			-- Assign `y' with the value of `a_y'
		do
			y := a_y
		ensure
			Is_Assign: y ~ a_y
		end

	text:STRING assign set_text
			-- The text value represented in `Current'

	set_text(a_text:STRING)
			-- Assign `text' with the value of `a_text'
		require
			Text_Not_Empty: not a_text.is_empty
		do
			text := a_text.twin
			update_texture
		ensure
			Is_Assign: text ~ a_text
			Is_Texure_Updated: texture /= old texture
		end

	font:TEXT_FONT assign set_font
			-- The font used to generate `texture' from `text'

	set_font(a_font:TEXT_FONT)
			-- Assign `font' with the value of `a_font'
		require
			Is_Font_Open: a_font.is_open
		do
			font := a_font
			update_texture
		ensure
			Is_Assign: font = a_font
			Is_Texure_Updated: texture /= old texture
		end

	color:GAME_COLOR assign set_color
			-- The color of the forground of `texture'

	set_color(a_color:GAME_COLOR)
			-- Assign `color' with the value of `a_color'
		do
			color := create {GAME_COLOR}.make_from_other (a_color)
			update_texture
		ensure
			Is_Assign: color ~ a_color
			Is_Texure_Updated: texture /= old texture
		end

	renderer:GAME_RENDERER
			-- The {GAME_RENDERER} used to generate `texture'

feature {NONE} -- Implementation

	update_texture
			-- Change the `texture' using values of `text', `color' and `font'
		local
			l_text_surface:TEXT_SURFACE_BLENDED
		do
			create l_text_surface.make (text, font, color)
			create texture.make_from_surface (renderer, l_text_surface)
		ensure
			Is_Texure_Updated: texture /= old texture
		end

	pixel_format:GAME_PIXEL_FORMAT
			-- Pixel format used to generate `texture'.

invariant

	Text_Not_Empty: not text.is_empty
	Font_Open: font.is_open

end
