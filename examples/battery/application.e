note
	description: "Battery management example"
	author: "Louis Marchand"
	date: "Thu, 28 Jan 2016 02:47:52 +0000"
	revision: "1.0"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	TEXT_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			game_library.enable_video
			text_library.enable_text
			run
			game_library.clear_all_events
			text_library.quit_library
			game_library.quit_library
		end

	run
			-- Execute the game
		local
			l_builder:GAME_WINDOW_SURFACED_BUILDER
			l_window:GAME_WINDOW_SURFACED
			l_font:TEXT_FONT
		do
			create l_font.make ("font.ttf", 10)
			l_font.open
			l_builder.set_dimension (200, 200)
			l_window := l_builder.generate_window
			game_library.iteration_actions.extend (agent on_iteration(?, l_window, l_font))
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.launch
		end

	on_iteration(a_timestamp:NATURAL; a_window:GAME_WINDOW_SURFACED; a_font:TEXT_FONT)
			-- At each game loop
		local
			l_text:TEXT_SURFACE_BLENDED
			l_battery:GAME_BATTERY
			l_font_color:GAME_COLOR
		do
			create l_font_color.make_rgb (0, 0, 0)
			a_window.surface.draw_rectangle (create {GAME_COLOR}.make_rgb (255, 255, 255), 0, 0, a_window.width, a_window.height)
			create l_battery
			if l_battery.is_state_charged then
				create l_text.make ("The battery is pluged-in and charged.", a_font, l_font_color)
			elseif l_battery.is_state_charging then
				create l_text.make ("The battery is pluged-in and is charging.", a_font, l_font_color)
			elseif l_battery.is_state_no_battery then
				create l_text.make ("There is no battery detected.", a_font, l_font_color)
			elseif l_battery.is_state_on_battery then
				create l_text.make ("The battery is running on battery.", a_font, l_font_color)
			elseif l_battery.is_state_unknown then
				create l_text.make ("The battery system does not seems to work.", a_font, l_font_color)
			else
				create l_text.make ("A strange error occured.", a_font, l_font_color)
			end
			a_window.surface.draw_surface (l_text, 10, 10)
			if l_battery.is_life_left_valid then
				create l_text.make ("Battery life left: " + l_battery.seconds_left.out + " second (" + l_battery.percentage_left.out + "%).", a_font, l_font_color)
			else
				create l_text.make ("Cannot get battery life information.", a_font, l_font_color)
			end
			a_window.surface.draw_surface (l_text, 10, 30)
			a_window.update
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user quit the application
		do
			game_library.stop
		end

end
