note
	description: "A {TEXT} that can be clicked."
	author: "Louis Marchand"
	date: "Wed, 22 Dec 2021 19:48:09 +0000"
	revision: "0.1"

class
	BUTTON

inherit
	TEXT
		rename
			make as make_text,
			color as text_color,
			set_color as set_text_color
		redefine
			update_texture
		end
	CLICKABLE
		rename
			make as make_clickable
		end

create
	make

feature {NONE} -- Initialisation

	make (a_x, a_y, a_width, a_height:INTEGER; a_text:STRING; a_font:TEXT_FONT;
			a_text_color, a_background_color: GAME_COLOR; a_renderer:GAME_RENDERER)
			-- Initialisation of `Current' at position (`a_x',`a_y') and
			-- dimension (`a_width'x`a_height') with `a_text' as `text',
			-- `a_font' as `font', `a_text_color' as `text_color' and
			-- `a_background_color' as `background_color'. `a_renderer' is used
			-- to generate `texture'.
		do
			width := a_width
			height := a_height
			background_color := a_background_color
			make_clickable
			make_text(a_x, a_y, a_text, a_font, a_text_color, a_renderer)
		ensure
			Is_Text_Assign: text ~ a_text
			Is_Font_Assign: font = a_font
			Is_Text_Color_Assign: text_color ~ a_text_color
			Is_Background_Color_Assign: background_color ~ a_background_color
			Is_Renderer_Assign: renderer = a_renderer
		end

feature -- Access

	width:INTEGER assign set_width
			-- Precursor<CLICKABLE>

	set_width(a_width:INTEGER)
			-- Assign `width' with the value of `a_width'
		do
			width := a_width
			update_texture
		ensure
			Is_Assign: width ~ a_width
			Is_Texure_Updated: texture /= old texture
		end

	height:INTEGER assign set_height
			-- Precursor<CLICKABLE>

	set_height(a_height:INTEGER)
			-- Assign `height' with the value of `a_height'
		do
			height := a_height
			update_texture
		ensure
			Is_Assign: height ~ a_height
			Is_Texure_Updated: texture /= old texture
		end

	background_color:GAME_COLOR assign set_background_color
			-- The color of the back of the `text' in `texture'

	set_background_color(a_background_color:GAME_COLOR)
			-- Assign `background_color' with the value of `a_background_color'
		do
			background_color := create {GAME_COLOR}.make_from_other (a_background_color)
			update_texture
		ensure
			Is_Assign: background_color ~ a_background_color
			Is_Texure_Updated: texture /= old texture
		end


feature {NONE} -- Implementation

	update_texture
			-- <Precursor{TEXT}>
		local
			l_text_surface:TEXT_SURFACE_SHADED
			l_text_texture:GAME_TEXTURE
			l_target:GAME_TEXTURE_TARGET
		do
			create l_text_surface.make (text, font, text_color, background_color)
			create l_text_texture.make_from_surface (renderer, l_text_surface)
			create l_target.make (renderer, pixel_format, width, height)
			renderer.set_target (l_target)
			renderer.set_drawing_color (background_color)
			renderer.clear
			renderer.draw_texture (l_text_texture,
									(width // 2) - (l_text_texture.width // 2),
									(height // 2) - (l_text_texture.height // 2)
								)
			renderer.set_original_target
			texture := l_target
		end

invariant
	Texture_Width_Valid: texture.width ~ width
	Texture_Height_Valid: texture.height ~ height
end
