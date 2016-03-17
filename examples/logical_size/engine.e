note
	description: "[
					Exemple of using logical rendering size.
					When you want the user to be able to change the window
					dimension or to support multiple screen resolution without
					too much modifying the code, you can use the
					{GAME_RENDERER}.`logical_size' feature. To use it, just
					use the {GAME_RENDERER}.`set_logical_size' to assign a
					logical size (for example to 1920x1080) and then, on your
					program, always print as if the window has that resolution.
					The library will do the rest.
				]"
	author: "Louis Marchand"
	date: "Wed, 16 Mar 2016 23:29:16 +0000"
	revision: "1.0"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED		-- To use the `game_library' singleton

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization of `Current'
		local
			l_window_builder: GAME_WINDOW_RENDERED_BUILDER
		do
			create l_window_builder
			l_window_builder.set_title ("Logical size example")
			l_window_builder.set_dimension (256, 256)
			l_window_builder.enable_resizable		-- The Window can be resized
			window := l_window_builder.generate_window
			if not window.has_error then
				window.renderer.set_logical_size (1000, 1000)		-- Set the logical size to 1000x1000. When drawing on the renderer
																	-- we will always psition our elements as if the resolution was 1000x1000	
			end
			has_error := window.has_error
		end

feature -- Access

	run
			-- Execute the game
		local
			l_window_builder: GAME_WINDOW_RENDERED_BUILDER
			l_window:GAME_WINDOW_RENDERED
		do
			game_library.quit_signal_actions.extend (agent on_quit)	-- Stopping the `game_library' main loop when closing the window
			window.expose_actions.extend (agent on_expose)	-- When the window has to be redraw (the window appear,
																					-- is resizing, is restored, etc.)
			game_library.launch			-- Start the main loop.
		end

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene

feature {NONE} -- Implementation

	on_expose(timestamp: NATURAL_32)
			-- Drawing the scene on `a_renderer'
		do
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			window.renderer.clear	-- Clear the renderer
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (255, 255, 255))
			window.renderer.draw_filled_rectangle (0, 0, 1000, 1000)	-- Drawing a white background
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			window.renderer.draw_filled_rectangle (100, 100, 100, 100)	-- Drawing four black squares
			window.renderer.draw_filled_rectangle (800, 100, 100, 100)	-- at each corner
			window.renderer.draw_filled_rectangle (100, 800, 100, 100)	-- Note that we always consider
			window.renderer.draw_filled_rectangle (800, 800, 100, 100)	-- the window size 1000x1000 even
																		-- when it is not the case
			window.renderer.present		-- Update the window. Same effect that {GAME_WINDOW}.`update' has.
		end

	on_quit(timestamp: NATURAL_32)
			-- Terminate the game loop
		do
			game_library.stop
		end

end
