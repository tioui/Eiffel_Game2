note
	description: "Game engine that manage mouse click and draw on a texture."
	author: "Louis Marchand"
	date: "Thu, 26 Oct 2023 12:53:22 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Implementation

	make
			-- Initialisation of `Current'
		local
			l_builder:GAME_WINDOW_RENDERED_BUILDER
		do
			create l_builder
			l_builder.enable_resizable
			window := l_builder.generate_window
			window.renderer.set_logical_size (1000, 1000)
			has_error := window.has_error
			create click_counter.make (window.renderer)
			has_error := has_error or click_counter.has_error
		end

feature

	run
			-- Launch `Current'
		require
			No_Error: not has_error
		do
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.iteration_actions.extend (agent on_iteration)
			window.mouse_button_pressed_actions.extend (agent on_click)
			if window.renderer.driver.is_present_synchronized_supported then	-- If the Video card accepted the frame synchronisation (FPS)
				game_library.launch_no_delay									-- Don't let the library managed the frame synchronisation
			else
				game_library.launch
			end


		end

	window:GAME_WINDOW_RENDERED
			-- Where to draw the scene

	has_error:BOOLEAN
			-- `True' if an error occured at creation. `False' if no error.

	click_counter:CLICK_COUNTER
			-- Used to count and print click count.

feature {NONE} -- Implmentation

	on_iteration(a_timestamp: NATURAL_32)
			-- Launched at each game loop
		do
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 128))
			window.renderer.clear
			window.renderer.draw_texture (click_counter.texture,
								(window.renderer.logical_size.width // 2) - (click_counter.texture.width // 2),
								(window.renderer.logical_size.height // 2) - (click_counter.texture.height // 2))
			window.renderer.present
		end

	on_click(a_timestamp:NATURAL_32; a_mouse_state:GAME_MOUSE_BUTTON_PRESS_EVENT; a_click_count:NATURAL_8)
			-- When the user click on the `window' using `a_mouse_state'
			-- to know witch button has been pressed.
			-- `a_timestamp' and `a_click_count' is unused.
		do
			if a_mouse_state.is_left_button then
				click_counter.increment
			end
			if a_mouse_state.is_right_button then
				click_counter.increment_number (10)
			end
		end

	on_quit(a_timestamp: NATURAL_32)
			-- This method is called when the quit signal is send to the application (ex: window X button pressed).
		do
			game_library.stop  -- Stop the controller loop (allow game_library.launch to return)
		end


end
