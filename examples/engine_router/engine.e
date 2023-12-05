note
	description: "A common ancestor for evrey engine of the games"
	author: "Louis Marchand"
	date: "Tue, 02 Nov 2021 13:35:13 +0000"
	revision: "0.1"

deferred class
	ENGINE

inherit
	GAME_LIBRARY_SHARED

feature {NONE} -- Initialisation

	make(a_window:GAME_WINDOW_RENDERED; a_font:TEXT_FONT)
			-- Initialisation of `Current' using `a_window' as `window'
			-- and `a_font' as `font'.
		do
			window := a_window
			font := a_font
			create text_color.make_rgb(0, 0, 0)
			quitting := False
		end

feature -- Access

	run
			-- Launch `Current'
		require
			No_Error: not has_error
		do

			game_library.quit_signal_actions.extend (agent on_quit)
			if window.renderer.driver.is_present_synchronized_supported then	-- If the Video card accepted the frame synchronisation (FPS)
				game_library.launch_no_delay									-- Don't let the library managed the frame synchronisation
			else
				game_library.launch
			end
			game_library.clear_all_events -- Remove every events that has been created before

		end




	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene

	quitting:BOOLEAN
			-- The user has asked to quit the game.

	font:TEXT_FONT
			-- {TEXT_FONT} used to draw text in `Current'

	text_color:GAME_COLOR
			-- The color used for text in `Current'

feature {NONE} -- Implementation



	on_iteration(a_timestamp:NATURAL_32)
			-- Event that is launch at each iteration.
		do
			window.renderer.present		-- Update modification in the screen
		end

	on_quit(a_timestamp: NATURAL_32)
			-- This method is called when the quit signal is send to the
			-- application (ex: window X button pressed).
		do
			quitting := True
			game_library.stop  -- Stop the controller loop (allow game_library.launch to return)
		end

end
