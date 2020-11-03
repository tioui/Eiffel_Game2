note
	description: "Example showing how to use mouse event and text surface."
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
			l_window_builder:GAME_WINDOW_SURFACED_BUILDER
		do
			create l_window_builder
			l_window_builder.set_dimension (320, 240)
			l_window_builder.set_title ("Example - Text and mouse move")
			window := l_window_builder.generate_window
			create font.make ("font.ttf", 20)
			if font.is_openable then
				font.open
				has_error := font.has_error or window.has_error
			else
				has_error := False
			end
		end

feature -- Access

	run
			-- Launch the game system
		require
			No_Error: not has_error
		do

			-- Setting events
			game_library.quit_signal_actions.extend (agent on_quit)		-- When the user close the window
			window.mouse_button_pressed_actions.extend (agent on_mouse_down)	-- When a mouse button is pressed
			window.mouse_button_released_actions.extend (agent on_mouse_up)	-- When a mouse button is released
			window.expose_actions.extend (agent redraw)	-- When the window have to be redraw
			window.mouse_motion_actions.extend (agent on_mouse_move)	-- When the user move the mouse on the window

			-- Initialize coordinate
			rectangle_start_x := -1
			rectangle_start_y := -1
			last_x := 0
			last_y := 0

			redraw(0)		-- First drawing of the scene in the window

			game_library.launch		-- Start the event loop
		end

	rectangle_start_x, rectangle_start_y:INTEGER
			-- Coordinate when the user pressed the mouse button

	last_x, last_y:INTEGER
			-- Last known coordinate of the mouse pointer inside the window

	window:GAME_WINDOW_SURFACED
			-- The window to draw the scene

	font:TEXT_FONT
			-- Used to draw text

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

feature {NONE} -- Implementation

	redraw(a_timestamp:NATURAL)
			-- Draw the scene
		local
			l_text:TEXT_SURFACE_BLENDED
			l_corners:ARRAYED_LIST[TUPLE[x,y,width,height:INTEGER]]
		do
			-- Draw the background
			window.surface.draw_rectangle (create {GAME_COLOR}.make_rgb (200, 200, 0), 0, 0, window.width, window.height)

			-- Draw the blue rectangle on mouse pressed
			if rectangle_start_x >=0 and rectangle_start_y >= 0 then
				window.surface.draw_rectangle (
								create {GAME_COLOR}.make_rgb (0, 0, 200),
								rectangle_start_x, rectangle_start_y,
								last_x - rectangle_start_x, last_y - rectangle_start_y
							)
			end

			-- Draw the 4 green corners
			create l_corners.make_from_array (<<
													[10,10,10,10], [window.width - 20, 10, 10, 10],
													[10,window.height - 20,10,10], [window.width - 20,window.height - 20,10,10]
												>>)
			window.surface.draw_rectangles (create {GAME_COLOR}.make_rgb (0, 200, 0), l_corners)

			-- Draw the text representing the position of the mouse inside the window
			if font.is_open then
				create l_text.make ("(" + last_x.out + "," + last_y.out + ")", font, create {GAME_COLOR}.make_rgb (0, 0, 0))
				if not l_text.has_error then
					window.surface.draw_surface (l_text, 20, 20)
				end
			end

			-- Show the last modifications to the window
			window.update
		end

	on_mouse_move(a_timestamp: NATURAL_32; a_mouse_event: GAME_MOUSE_MOTION_EVENT; a_delta_x, a_delta_y: INTEGER_32)
			-- When the mouse is moving, update the mouse information (from `a_mouse_event')
		do
			last_x := a_mouse_event.x
			last_y := a_mouse_event.y
			redraw (a_timestamp)
		end

	on_mouse_down(a_timestamp: NATURAL_32; a_mouse_event: GAME_MOUSE_BUTTON_PRESS_EVENT; a_nb_clicks: NATURAL_8)
			-- When the user pressed the left mouse button (from `a_mouse_event'), start to draw a blue rectangle using mouse coordinate
		do
			if a_mouse_event.is_left_button then
				rectangle_start_x := a_mouse_event.x
				rectangle_start_y := a_mouse_event.y
			end
		end

	on_mouse_up(a_timestamp: NATURAL_32; a_mouse_event: GAME_MOUSE_BUTTON_RELEASE_EVENT; a_nb_clicks: NATURAL_8)
			-- When the user released the left button, stop drawing the blue rectangle
		do
			if a_mouse_event.is_left_button then
				rectangle_start_x := -1
				rectangle_start_y := -1
			end
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user close the window, stop the game loop.
		do
			game_library.stop
		end

end
