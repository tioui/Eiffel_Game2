note
	description: "An example of sprite animation and movement using renderer and video card synchronisation"
	author: "Louis Marchand"
	date: "Wed, 16 Mar 2016 23:29:16 +0000"
	revision: "1.0"

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
		do
			create l_window_builder
			l_window_builder.set_dimension (1024, 512)
			l_window_builder.set_title ("Example Animation")
			l_window_builder.enable_must_renderer_synchronize_update	-- Ask to the video card to manage the frame synchronisation (FPS)
			window := l_window_builder.generate_window
			create desert.make (window.renderer)
			create maryo.make (window.renderer)
			has_error := desert.has_error
		end

feature -- Access

	run
			-- Launch the game
		require
			No_Error: not has_error
		do
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			window.renderer.clear
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 128, 255))
			maryo.y := 375
			maryo.x := 200
			game_library.quit_signal_actions.extend (agent on_quit)
			window.key_pressed_actions.extend (agent on_key_pressed)
			window.key_released_actions.extend (agent on_key_released)
			game_library.iteration_actions.extend (agent on_iteration)
			if window.renderer.driver.is_present_synchronized_supported then	-- If the Video card acceptd the frame synchronisation (FPS)
				game_library.launch_no_delay									-- Don't let the library managed the frame synchronisation
			else
				game_library.launch
			end

		end

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene

	maryo:MARYO
			-- The main character of the game

	desert:DESERT
			-- The background

feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL_32)
			-- Event that is launch at each iteration.
		do
			maryo.update (a_timestamp)	-- Update Maryo animation and coordinate

			if maryo.x < 0 then		-- Be sure that Maryo does not get out of the screen
				maryo.x := 0
			elseif maryo.x + maryo.sub_image_width > desert.width then
				maryo.x := desert.width - maryo.sub_image_width
			end

			-- Draw the scene
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 128, 255))	-- Redraw the blue sky
			window.renderer.draw_filled_rectangle (0, 0, desert.width, desert.height)

			window.renderer.draw_texture (desert, 0, 0)		-- Redraw the desert
			window.renderer.draw_sub_texture_with_mirror (		-- Redraw Maryo
									maryo,  maryo.sub_image_x, maryo.sub_image_y, maryo.sub_image_width, maryo.sub_image_height,
									maryo.x, maryo.y, False, maryo.facing_left
								)

			window.renderer.present		-- Update modification in the screen
		end


	on_key_pressed(a_timestamp: NATURAL_32; a_key_state: GAME_KEY_STATE)
			-- Action when a keyboard key has been pushed
		do
			if not a_key_state.is_repeat then		-- Be sure that the event is not only an automatic repetition of the key
				if a_key_state.is_right then
					maryo.go_right(a_timestamp)
				elseif a_key_state.is_left then
					maryo.go_left(a_timestamp)
				end
			end
		end

	on_key_released(a_timestamp: NATURAL_32; a_key_state: GAME_KEY_STATE)
			-- Action when a keyboard key has been released
		do
			if not a_key_state.is_repeat then		-- I don't know if a key release can repeat, but you never know...
				if a_key_state.is_right then
					maryo.stop_right
				elseif a_key_state.is_left then
					maryo.stop_left
				end
			end
		end

	on_quit(a_timestamp: NATURAL_32)
			-- This method is called when the quit signal is send to the application (ex: window X button pressed).
		do
			game_library.stop  -- Stop the controller loop (allow game_library.launch to return)
		end

end
