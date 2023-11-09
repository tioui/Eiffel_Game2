note
	description: "Used to count and print click count."
	author: "Louis Marchand"
	date: "Thu, 26 Oct 2023 12:53:22 +0000"
	revision: "0.1"

class
	CLICK_COUNTER

create
	make

feature {NONE} -- Constants

	Background_image_filename:STRING = "counter_background.png"
			-- The filename of the image file that contain the `background_texture'

	Font_filename:STRING = "font.ttf"
			-- The filename of the true type font file that contain the `font'

	Font_size:INTEGER = 120
			-- The size of the `font' in points.

	Text_color_hex:STRING = "000000"
			-- The color of the text used in `Current'.

	Text_position_x:INTEGER = 315
			-- Position x of where to draw the text over the background

	Text_position_y:INTEGER = 330
			-- Position y of where to draw the text over the background

feature {NONE} -- Initialisation

	make(a_renderer:GAME_RENDERER)
			-- Initialisation of `Current'
		do
			renderer := a_renderer
			count := 0
			create pixel_format
			pixel_format.set_rgba8888
			background_texture := generate_texture(a_renderer, background_image_filename)
			create texture.make (a_renderer, pixel_format, background_texture.width, background_texture.height)
			texture.enable_alpha_blending
			create font.make (Font_filename, Font_size)
			if font.is_openable then
				font.open
			end
			has_error := has_error or not font.is_open
			create text_color.make_rgb_from_hexadecimal (Text_color_hex)
			if not has_error then
				update_texture
			end
		end

feature -- Access

	texture:GAME_TEXTURE_TARGET
			-- {GAME_TEXTURE} used to be drawn in the scene.

	count:INTEGER
			-- The number of count incremented in `Current'

	increment
			-- Add `1' to `count'
		require
			No_Error: not has_error
		do
			increment_number(1)
		end

	increment_number(a_number:INTEGER)
			-- Add `a_number' to `count'
		require
			No_Error: not has_error
		do
			count := count + a_number
			update_texture
		end


	has_error:BOOLEAN
			-- `True' if an error occured at creation. `False' if no error.

feature {NONE} -- Implementation

	renderer:GAME_RENDERER
			-- The {GAME_RENDERER} used to render `texture'

	background_texture:GAME_TEXTURE
			-- The texture to be put in the background of `texture'

	font:TEXT_FONT
			-- The Font used to draw text in `texture'

	text_color:GAME_COLOR
			-- The color of the text in `Current'

	update_texture
			-- Update the `texture' by using `background_texture' as background image
			-- and `count' as foreground text.
		require
			No_Error: not has_error
		local
			l_text_surface:TEXT_SURFACE_BLENDED
			l_text_texture:GAME_TEXTURE
		do
			renderer.set_target (texture)
			renderer.draw_texture (background_texture, 0, 0)
			create l_text_surface.make (count.out, font, text_color)
			create l_text_texture.make_from_surface (renderer, l_text_surface)
			renderer.draw_texture (l_text_texture,
						Text_position_x - (l_text_texture.width // 2),
						Text_position_y - (l_text_texture.height // 2))
			renderer.set_original_target
			
		end

	generate_texture(a_renderer:GAME_RENDERER; a_filename:STRING):GAME_TEXTURE
			-- Return a new {GAME_TEXTURE} for `a_renderer' using the file
			-- `a_filename' as source file.
		local
			l_image: IMG_IMAGE_FILE
		do
			create l_image.make (a_filename)
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					create Result.make_from_image (a_renderer, l_image)
				else
					create Result.make (a_renderer, pixel_format, 1, 1)
					has_error := True
				end
			else
				create Result.make (a_renderer, pixel_format, 1, 1)
				has_error := True
			end
		end

	pixel_format:GAME_PIXEL_FORMAT
			-- The color format of the pixels in `Current'

end
