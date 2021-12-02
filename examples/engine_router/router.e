note
	description: "Used to switch between multiple {ENGINE}s."
	author: "Louis Marchand"
	date: "Tue, 02 Nov 2021 13:35:13 +0000"
	revision: "0.1"

class
	ROUTER

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
			l_window_builder.set_title ("Example Router")
			window := l_window_builder.generate_window
			has_error := window.has_error
			create font.make ("font.ttf", 30)
			if font.is_openable then
				font.open
				if not font.is_open then
					has_error := True
				end
			else
				has_error := True
			end
		end

feature -- Access

	run
			-- Launch the game.
		require
			No_Error: not has_error
		do
			must_launch_game_engine := False
			from
				must_quit := False
			until
				must_quit
			loop
				if must_launch_game_engine then
					launch_game_engine
				else
					launch_menu
				end
			end
		end

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene

	must_quit:BOOLEAN
			-- The application should close

	must_launch_game_engine:BOOLEAN
			-- `Current' should run a {GAME_ENGINE}

	font:TEXT_FONT
			-- {TEXT_FONT} used in the application.

feature {NONE} -- Implementation

	launch_menu
			-- Launch the {MENU} engine
		local
			l_menu:MENU
		do
			create l_menu.make (window, font)
			if not l_menu.has_error then
				l_menu.run
				must_quit := l_menu.quitting
				must_launch_game_engine := l_menu.launch_game
			else
				must_quit := True
            	io.error.put_string ("An error occured. Quitting...%N")
			end
		end

	launch_game_engine
			-- Launch the {GAME_ENGINE}
		local
			l_game_engine:GAME_ENGINE
		do
			create l_game_engine.make (window, font)
			if not l_game_engine.has_error then
				l_game_engine.run
				must_quit := l_game_engine.quitting
				must_launch_game_engine := False
			else
				must_quit := True
            	io.error.put_string ("An error occured. Quitting...%N")
			end
		end
end
