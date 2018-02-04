note
	description: "An exemple to show how to manage cursors"
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
			l_window_builder: GAME_WINDOW_SURFACED_BUILDER
		do
			has_error := False
			cursor_index := 0
			create l_window_builder
			window := l_window_builder.generate_window
			generate_cursors
			cursor_count := cursors.count
			create font.make ("font.ttf", 20)
			if font.is_openable then
				font.open
				if font.is_open then
					change_cursor
					has_error := window.has_error or not text.is_open
				else
					create text.make (1, 1)
					has_error := True
				end
			else
				create text.make (1, 1)
				has_error := True
			end
		end

feature

	run
			-- Launch the game
		require
			No_Error: not has_error
		do
			update_scene(0)
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.iteration_actions.extend (agent update_scene(?))
			window.mouse_button_pressed_actions.extend (agent on_mouse_down)
			game_library.launch
		end

	generate_cursors
			-- The list of cursors to used on `Current'
		local
			l_custom_image:IMG_IMAGE_FILE
		do
			create {ARRAYED_LIST[TUPLE[cursor:GAME_CURSOR; text:STRING]]}cursors.make (13)
			cursors.extend (game_library.default_cursor, "Default")
			cursors.extend (create {GAME_CURSOR}.make_arrow, "Arrow")				-- Standard system cursor can be
			cursors.extend (create {GAME_CURSOR}.make_i_beam, "I-Beam")				-- created using the corresponding
			cursors.extend (create {GAME_CURSOR}.make_wait, "Wait")					-- creator of {GAME_CURSOR}
			cursors.extend (create {GAME_CURSOR}.make_crosshair, "Crosshair")
			cursors.extend (create {GAME_CURSOR}.make_wait_arrow, "Wait Arrow")
			cursors.extend (create {GAME_CURSOR}.make_resize_north_east_south_west, "Resize North-East to South-West")
			cursors.extend (create {GAME_CURSOR}.make_resize_north_west_south_east, "Resize North-West to South-East")
			cursors.extend (create {GAME_CURSOR}.make_resize_north_south, "Resize North-South")
			cursors.extend (create {GAME_CURSOR}.make_resize_west_east, "Resize West-East")
			cursors.extend (create {GAME_CURSOR}.make_unavailable, "Unavailable")
			cursors.extend (create {GAME_CURSOR}.make_hand, "Hand")
			create l_custom_image.make ("custom.png")
			if l_custom_image.is_openable then
				l_custom_image.open
				if l_custom_image.is_open then
					cursors.extend (create {GAME_CURSOR}.make_from_image (l_custom_image, 0, 28), "Custom")		-- Custom cursor can be created using a {GAME_IMAGE} or {GAME_SURFACE}
				end
			end
		end

	change_cursor
			-- Alternate the {GAME_CURSOR} to show
		do
			cursor_index := (cursor_index \\ cursor_count) + 1
			create {TEXT_SURFACE_BLENDED}text.make (cursors.at (cursor_index).text, font, create {GAME_COLOR}.make_rgb (0, 0, 0))
			game_library.set_cursor (cursors.at (cursor_index).cursor)		-- Change the cursor
		end

	cursor_index:INTEGER
			-- The index of the cursor to draw in `cursors'

	cursor_count:INTEGER
			-- The number of element in `cursors'

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	window:GAME_WINDOW_SURFACED
			-- The window to draw the scene

	font:TEXT_FONT
			-- used to create the `text'

	cursors:LIST[TUPLE[cursor:GAME_CURSOR; text:STRING]]
			-- Every {GAME_CURSOR} that must alternate

	text:GAME_SURFACE
			-- An image representing the name of the presently used cursor

feature {NONE} -- Implementation

	update_scene(a_timestamp:NATURAL_32)
			-- Redraw the scene
		do
			window.surface.draw_rectangle (create {GAME_COLOR}.make_rgb (255, 255, 255), 0, 0, window.surface.width, window.surface.height)
			window.surface.draw_surface (text, 100, 100)
			window.update
		end

	on_mouse_down(a_timestamp: NATURAL_32; a_mouse_event: GAME_MOUSE_BUTTON_PRESS_EVENT; a_nb_clicks: NATURAL_8)
			-- The user has click on the window
		do
			change_cursor
		end

	on_quit(a_timestamp:NATURAL_32)
			-- When the user close the game
		do
			game_library.stop
		end

end
