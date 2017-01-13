note
	description: "Battery management example"
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
			l_builder:GAME_WINDOW_SURFACED_BUILDER
		do
			create l_builder
			l_builder.set_dimension (200, 200)
			window := l_builder.generate_window
			create font.make ("font.ttf", 10)
			if font.is_openable then
				font.open
				has_error := font.has_error or window.has_error
			else
				has_error := True
			end

		end

feature -- Access

	run
			-- Execute the game
		do
			game_library.iteration_actions.extend (agent on_iteration)
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.launch
		end

	window:GAME_WINDOW_SURFACED
			-- The window to draw the scene

	font:TEXT_FONT
			-- Used to generate text

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL)
			-- At each game loop
		local
			l_text:TEXT_SURFACE_BLENDED
			l_battery:GAME_BATTERY
			l_font_color:GAME_COLOR
		do
			create l_font_color.make_rgb (0, 0, 0)
			window.surface.draw_rectangle (create {GAME_COLOR}.make_rgb (255, 255, 255), 0, 0, window.width, window.height)
			create l_battery
			if l_battery.is_state_charged then
				create l_text.make ("The battery is pluged-in and charged.", font, l_font_color)
			elseif l_battery.is_state_charging then
				create l_text.make ("The battery is pluged-in and is charging.", font, l_font_color)
			elseif l_battery.is_state_no_battery then
				create l_text.make ("There is no battery detected.", font, l_font_color)
			elseif l_battery.is_state_on_battery then
				create l_text.make ("The system is running on battery.", font, l_font_color)
			elseif l_battery.is_state_unknown then
				create l_text.make ("The battery system does not seems to work.", font, l_font_color)
			else
				create l_text.make ("A strange error occured.", font, l_font_color)
			end
			window.surface.draw_surface (l_text, 10, 10)
			if l_battery.is_life_left_valid then
				create l_text.make ("Battery life left: " + l_battery.seconds_left.out + " second (" + l_battery.percentage_left.out + "%).", font, l_font_color)
			else
				create l_text.make ("Cannot get battery life information.", font, l_font_color)
			end
			window.surface.draw_surface (l_text, 10, 30)
			window.update
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user quit the application
		do
			game_library.stop
		end

end
