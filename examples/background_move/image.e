note
	description: "[
					Any image that can be shown in the game must inherit from this class.
				]"
	author		: "Louis Marchand"
	date        : "Tue, 22 Mar 2016 13:41:42 +0000"
	revision    : "0.1"

deferred class
	IMAGE


feature {NONE} -- Initialisation

	make(a_renderer:GAME_RENDERER)
			-- Initialisation of `Current'.
		local
			l_image:IMG_IMAGE_FILE
		do
			has_error := False
			create l_image.make (image_file_name)
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					create texture.make_from_image (a_renderer, l_image)
				else
					create texture.make (a_renderer, default_pixel_format, 1, 1)
					has_error := True
				end
			else
				create texture.make (a_renderer, default_pixel_format, 1, 1)
				has_error := True
			end
			set_x (0)
			set_y (0)
			sub_texture_x := 0
			sub_texture_y := 0
			height := texture.height
			width := texture.width
			depth:=0
		end

	image_file_name:STRING
			-- The path of the image file
		deferred
		end

feature -- Access

	depth:INTEGER assign set_depth
			-- The order of superposition of images. An {IMAGE} with upper `depth' will appear over the others.

	set_depth(a_depth:INTEGER)
			-- Change the order of superposition of image by modifying the value of `depth' to `a_depth'.
		do
			depth:=a_depth
		end

	x:INTEGER assign set_x
			-- The horizontal coordinate of `Current' on the screen

	y:INTEGER assign set_y
			-- The vertical coordinate of `Current' on the screen

	width:INTEGER
			-- The `width' of `Current' (not necessary of the `texture')

	height:INTEGER
			-- The `height' of `Current' (not necessary of the `texture')

	set_x(a_x:INTEGER)
			-- Assign `x' with the value of `a_x'.
		do
			x:=a_x
		end

	set_y(a_y:INTEGER)
			-- Assign `y' with the value of `a_y'.
		do
			y:=a_y
		end

	sub_texture_x:INTEGER
			-- The horizontal coordinate of the part of `texture' to draw

	sub_texture_y:INTEGER
			-- The vertical coordinate of the part of `texture' to draw

	has_error:BOOLEAN
			-- There was an error in the creation of `Current'

feature {ENGINE}

	texture:GAME_TEXTURE
			-- Internal {IMAGE} `surface'.

feature {NONE} -- Implementation

	default_pixel_format:GAME_PIXEL_FORMAT
			-- A default {GAME_PIXEL_FORMAT} in case there had any error in `Current'
		do
			create Result
			Result.set_bgra8888
		end

end
