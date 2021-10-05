note
	description: "A visual element."
	author: "Louis Marchand"
	date: "Wed, 14 Oct 2020 20:42:09 +0000"
	revision: "0.1"

deferred class
	IMAGE

feature {NONE} -- Initialisation

	make_from_file(a_renderer:GAME_RENDERER; a_filename:STRING)
			-- Initialization of `Current' for used with `a_renderer' opening
			-- `a_filename' as source file
		local
			l_image: IMG_IMAGE_FILE
		do
			create l_image.make (a_filename)
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					create texture.make_from_image (a_renderer, l_image)
				else
					default_texture(a_renderer)
					has_error := True
				end
			else
				default_texture(a_renderer)
				has_error := True
			end
		end

	default_texture(a_renderer:GAME_RENDERER)
			-- Assign a default empty {GAME_TEXTURE} to `texture'.
		local
			l_pixel_format:GAME_PIXEL_FORMAT
		do
			create l_pixel_format
			l_pixel_format.set_argb8888
			create texture.make (a_renderer, l_pixel_format, 1, 1)
		end

feature -- Access

	texture:GAME_TEXTURE
			-- The visual representation of `Current'

	has_error:BOOLEAN
			-- An error occured when initializing `Current'

end
