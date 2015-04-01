note
	description : "Example showing how to use mouse event and text surface."
	author		: "Louis Marchand"
	date        : "Wed, 01 Apr 2015 17:56:21 +0000"
	revision    : "2.0"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	TEXT_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run the application
		do
			game_library.enable_video	-- Make it possible to use video sub system (surface, window, etc.)
			text_library.enable_text	-- Make it possible to draw text
			run_game
			text_library.quit_library	-- Close the library. Be sure that he garbage collector car reclaim all {TEXT_*} objects
			game_library.quit_library	-- Close the library. Be sure that he garbage collector car reclaim all {GAME_*} objects
		end

	run_game
			-- Prepare and launch the game system
		local
			l_window:GAME_WINDOW_SURFACED
			l_font:TEXT_FONT
			bleh:TEXT_FONT_CPF
		do
			-- Creating used object
			create l_window.make_default ("Example - Text and mouse move", 320, 240)
			create l_font.make ("font.ttf", 20)
			if l_font.is_openable then
				l_font.open
			end

			-- Setting events
			game_library.quit_signal_actions.extend (agent on_quit)		-- When the user close the window
			l_window.mouse_button_pressed_actions.extend (agent on_mouse_down)	-- When a mouse button is pressed
			l_window.mouse_button_released_actions.extend (agent on_mouse_up)	-- When a mouse button is released
			l_window.expose_actions.extend (agent redraw(?, l_font, l_window))	-- When the window have to be redraw
			l_window.mouse_motion_actions.extend (agent on_mouse_move(?, ?, ?, ?, l_font, l_window))	-- When the user move the mouse on the window

			-- Initialize coordinate
			rectangle_start_x := -1
			rectangle_start_y := -1
			last_x := 0
			last_y := 0

			redraw(0,l_font, l_window)		-- First drawing of the scene in the window

			game_library.launch		-- Start the event loop
		end

	redraw(a_timestamp:NATURAL; a_font:TEXT_FONT; a_window:GAME_WINDOW_SURFACED)
			-- Draw the scene on `a_window' using `a_font' to write informations.
		local
			l_text:TEXT_SURFACE_BLENDED
			from_x, from_y, l_width, l_height:INTEGER
			l_corners:ARRAYED_LIST[TUPLE[x,y,width,height:INTEGER]]
		do
			-- Draw the background
			a_window.surface.draw_rectangle (create {GAME_COLOR}.make_rgb (200, 200, 0), 0, 0, a_window.width, a_window.height)

			-- Draw the blue rectangle on mouse pressed
			if rectangle_start_x >=0 and rectangle_start_y >= 0 then
				a_window.surface.draw_rectangle (
								create {GAME_COLOR}.make_rgb (0, 0, 200),
								rectangle_start_x, rectangle_start_y,
								last_x - rectangle_start_x, last_y - rectangle_start_y
							)
			end

			-- Draw the 4 green corners
			create l_corners.make_from_array (<<
													[10,10,10,10], [a_window.width - 20, 10, 10, 10],
													[10,a_window.height - 20,10,10], [a_window.width - 20,a_window.height - 20,10,10]
												>>)
			a_window.surface.draw_rectangles (create {GAME_COLOR}.make_rgb (0, 200, 0), l_corners)

			-- Draw the text representing the position of the mouse inside the window
			if a_font.is_open then
				create l_text.make ("(" + last_x.out + "," + last_y.out + ")", a_font, create {GAME_COLOR}.make_rgb (0, 0, 0))
				if not l_text.has_error then
					print("l_text: (" + l_text.width.out + "," + l_text.height.out + ")%N")
					a_window.surface.draw_surface (l_text, 20, 20)
				end
			end

			-- Show the last modifications to the window
			a_window.update
		end

	on_mouse_move(a_timestamp: NATURAL_32; a_mouse_state: GAME_MOUSE_MOTION_STATE; a_delta_x, a_delta_y: INTEGER_32; a_font:TEXT_FONT; a_window:GAME_WINDOW_SURFACED)
			-- When the mouse is moving, update the mouse information (from `a_mouse_state') on the `a_window' using
			-- `a_font' to draw text.
		do
			last_x := a_mouse_state.x
			last_y := a_mouse_state.y
			redraw (a_timestamp, a_font, a_window)
		end

	on_mouse_down(a_timestamp: NATURAL_32; a_mouse_state: GAME_MOUSE_BUTTON_PRESSED_STATE; a_nb_clicks: NATURAL_8)
			-- When the user pressed the left mouse button (from `a_mouse_state'), start to draw a blue rectangle using mouse coordinate
		do
			if a_mouse_state.is_left_button_pressed then
				rectangle_start_x := a_mouse_state.x
				rectangle_start_y := a_mouse_state.y
			end
		end

	on_mouse_up(a_timestamp: NATURAL_32; a_mouse_state: GAME_MOUSE_BUTTON_RELEASED_STATE; a_nb_clicks: NATURAL_8)
			-- When the user released the left button, stop drawing the blue rectangle
		do
			if a_mouse_state.is_left_button_released then
				rectangle_start_x := -1
				rectangle_start_y := -1
			end
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user close the window, stop the game loop.
		do
			game_library.stop
		end

	rectangle_start_x, rectangle_start_y:INTEGER
			-- Coordinate when the user pressed the mouse button

	last_x, last_y:INTEGER
			-- Last known coordinate of the mouse pointer inside the window

end
