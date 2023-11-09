note
	description: "Used to test mouse position by using {GAME_RENDERER}.`logical_size`."
	author: "Louis Marchand"
	date: "Thu, 26 Oct 2023 18:04:41 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialisation

	make
			-- Initialisation of `Current'
		local
			l_builder:GAME_WINDOW_RENDERED_BUILDER
			l_pixel_format:GAME_PIXEL_FORMAT
		do
			create l_builder
			l_builder.enable_resizable
			window := l_builder.generate_window
			has_error := window.has_error
			window.renderer.set_logical_size (500, 500)
			create font.make ("font.ttf", 30)
			if font.is_openable then
				font.open
			end
			if font.is_open then
				update_mouse_position_texture(0, 0)
			else
				has_error := True
				create l_pixel_format
				l_pixel_format.set_argb8888
				create mouse_position_texture.make (window.renderer, l_pixel_format, 1, 1)
			end
		end

feature -- Access

	window:GAME_WINDOW_RENDERED
			-- Where to draw the scene.

	has_error:BOOLEAN
			-- An error occured when initializing `Current'

	mouse_position_texture:GAME_TEXTURE
			-- The texture that contain mouse position

	font:TEXT_FONT
			-- The {TEXT_FONT} used to draw text in `window'

	run
			-- Launch `Current'
		require
			No_Error: not has_error
		do
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.iteration_actions.extend (agent on_iteration)
			window.mouse_motion_actions.extend (agent on_mouse_move)
			game_library.launch

		end

feature {NONE} -- Implementation

	update_mouse_position_texture(a_x, a_y:INTEGER)
			-- Update `mouse_position_texture' using position (`a_x',`a_y').
		local
			l_text_surface:TEXT_SURFACE_BLENDED
		do
			create l_text_surface.make ("(" + a_x.out + "," + a_y.out + ")", font, create {GAME_COLOR}.make_rgb (0, 0, 0))
			create mouse_position_texture.make_from_surface (window.renderer, l_text_surface)
		end

	on_iteration(a_timestamp: NATURAL_32)
			-- Launched at each game loop iteration.
			-- `a_timestamp' is unused.
		do
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			window.renderer.clear
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 128))
			window.renderer.draw_filled_rectangle (0, 0,
							window.renderer.logical_size.width,
							window.renderer.logical_size.height)
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (128, 128, 0))
			window.renderer.draw_filled_rectangle (10, 10, 50, 50)
			window.renderer.draw_filled_rectangle (window.renderer.logical_size.width - 60, 10, 50, 50)
			window.renderer.draw_filled_rectangle (10, window.renderer.logical_size.height - 60, 50, 50)
			window.renderer.draw_filled_rectangle (window.renderer.logical_size.width - 60,
							window.renderer.logical_size.height - 60, 50, 50)
			window.renderer.draw_texture (mouse_position_texture,
								(window.renderer.logical_size.width // 2) - (mouse_position_texture.width // 2),
								(window.renderer.logical_size.height // 2) - (mouse_position_texture.height // 2))
			window.renderer.present
		end

	on_mouse_move(a_timestamp: NATURAL_32; a_mouse_event: GAME_MOUSE_MOTION_EVENT; a_delta_x, a_delta_y: INTEGER_32)
			-- When the mouse is moving, update the mouse information (from `a_mouse_event')
			-- `a_timestamp', `a_delta_x' and `a_delta_y' are unused.
		do
			update_mouse_position_texture(a_mouse_event.x, a_mouse_event.y)
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user close the window, stop the game loop.
			-- `a_timestamp' is unused.
		do
			game_library.stop
		end

end
