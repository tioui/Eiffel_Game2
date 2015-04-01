note
	description : "[
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
	date        : "Fri, 27 Mar 2015 19:41:13 +0000"
	revision    : "1.0"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED		-- To use the `game_library' singleton

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			run_game					-- Using a feature with only local variable
										-- Make it certain that when using the
			game_library.quit_library	-- quit_library, every {GAME_*} will be disposable
										-- by the garbage collector
		end

	run_game
			-- Execute the game
		local
			l_window:GAME_WINDOW_RENDERED
		do
			game_library.enable_video	-- You need to enable video sub system to create a window
			create l_window.make ("Logical size example", 256, 256, False, False, False, False, False, True) -- Creating a resizble window
			l_window.renderer.set_logical_size (1000, 1000)		-- Set the logical size to 1000x1000. When drawing on the renderer
																-- we will always psition our elements as if the resolution was 1000x1000
			game_library.quit_signal_actions.extend (agent on_quit)	-- Stopping the `game_library' main loop when closing the window
			l_window.expose_actions.extend (agent on_expose(?, l_window.renderer))	-- When the window has to be redraw (the window appear,
																					-- is resizing, is restored, etc.)
			game_library.launch			-- Start the main loop.
		end

feature {NONE} -- Implementation

	on_expose(timestamp: NATURAL_32; a_renderer:GAME_RENDERER)
			-- Drawing the scene on `a_renderer'
		do
			a_renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (255, 255, 255))
			a_renderer.draw_filled_rectangle (0, 0, 1000, 1000)	-- Drawing a white background
			a_renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			a_renderer.draw_filled_rectangle (100, 100, 100, 100)	-- Drawing four black squares
			a_renderer.draw_filled_rectangle (800, 100, 100, 100)	-- at each corner
			a_renderer.draw_filled_rectangle (100, 800, 100, 100)	-- Note that we always consider
			a_renderer.draw_filled_rectangle (800, 800, 100, 100)	-- the window size 1000x1000 even
																	-- when it is not the case
			a_renderer.present		-- Update the window. Same effect that {GAME_WINDOW}.`update' has.
		end

	on_quit(timestamp: NATURAL_32)
			-- Terminate the game loop
		do
			game_library.stop
		end

end
