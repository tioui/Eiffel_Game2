note
	description: "Game engine used to show the usage of the wheel."
	author: "Louis Marchand"
	date: "2018-02-05 12:52:32.183 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization of `Current'
		local
			l_window_builder:GAME_WINDOW_RENDERED_BUILDER
			l_image:IMG_IMAGE_FILE
		do
			has_error := False
			create l_window_builder
			l_window_builder.set_dimension (600, 600)
			window := l_window_builder.generate_window
			create l_image.make ("image.jpg")
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					create image.make_from_image (window.renderer, l_image)
				else
					create {GAME_TEXTURE_STREAMING} image.make (window.renderer, create {GAME_PIXEL_FORMAT}, 1, 1)
					has_error := True
				end
			else
				create {GAME_TEXTURE_STREAMING} image.make (window.renderer, create {GAME_PIXEL_FORMAT}, 1, 1)
				has_error := True
			end

		end

feature -- Access

	Scale_multiplier:INTEGER = 3
			-- The multiplier of the zoom scale. Upper value means quicker zoom.

	has_error:BOOLEAN
			-- There has been an error.

	run
			-- Execute `Current'
		require
			No_Error: not has_error
		do
			game_library.quit_signal_actions.extend (agent on_quit)
			window.expose_actions.extend (agent on_expose)
			window.mouse_wheel_move_actions.extend (agent on_mouse_wheel)
			image_x := 0
			image_y := 0
			image_width := image.width
			image_height := image.height
			game_library.launch
		end

	window:GAME_WINDOW_RENDERED
			-- Where to draw the scene.

	image:GAME_TEXTURE
			-- The scene to draw on the `window'

	image_x:INTEGER
			-- The horizontal position of the starting point in `image' when drawing

	image_y:INTEGER
			-- The vertical position of the starting point in `image' when drawing

	image_width:INTEGER
			-- The horizontal dimension inside `image' to draw

	image_height:INTEGER
			-- The vertical dimension inside `image' to draw

feature {NONE} -- Implementation

	on_expose(a_timestamp:NATURAL)
			-- When the scene has to be draw.
		do
			window.renderer.clear
			window.renderer.draw_sub_texture_with_scale (image, image_x, image_y, image_width, image_height, 0, 0, window.width, window.height)
			window.renderer.present
		end

	on_mouse_wheel(a_timestamp:NATURAL; a_mouse_state:GAME_MOUSE_EVENT; a_delta_x, a_delta_y:INTEGER_32)
			-- When the user mouve the mouse wheel
		local
			l_delta:INTEGER
		do
			l_delta := a_delta_y * Scale_multiplier
			image_x := image_y + l_delta
			image_width := image_width - (l_delta * 2)
			image_y := image_y + l_delta
			image_height := image_height - (l_delta * 2)
			on_expose(a_timestamp)
		end

	on_quit(a_timestamp:NATURAL)
			-- When the quit signat is received
		do
			game_library.stop
		end

end
