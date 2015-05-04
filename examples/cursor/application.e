note
	description : "An exemple to show how to manage cursors"
	author		: "Louis Marchand"
	date        : "Mon, 04 May 2015 19:45:19 +0000"
	revision    : "1.0"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	TEXT_LIBRARY_SHARED
	IMG_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			game_library.enable_video
			text_library.enable_text
			image_file_library.enable_image (True, False, False)
			run_game
			game_library.clear_all_events
			image_file_library.quit_library
			text_library.quit_library
			game_library.quit_library
		end

	run_game
			-- Initialized the game and launch it
		local
			l_cursors:LIST[TUPLE[cursor:GAME_CURSOR; text:STRING]]
			l_font:TEXT_FONT
			l_window_builder: GAME_WINDOW_SURFACED_BUILDER
			l_window:GAME_WINDOW_SURFACED
		do
			cursor_index := 1
			l_cursors := cursors
			cursor_count := l_cursors.count
			create l_font.make ("font.ttf", 20)
			if l_font.is_openable then
				l_font.open
				create l_window_builder
				l_window := l_window_builder.generate_window
				if not l_window.has_error and l_font.is_open then
					game_library.quit_signal_actions.extend (agent on_quit)
					game_library.iteration_actions.extend (agent change_cursor(?, l_cursors, l_font, l_window))
					l_window.mouse_button_pressed_actions.extend (agent on_mouse_down)
					change_cursor(0, l_cursors, l_font, l_window)
					game_library.launch
				end
			end
		end

	cursors:LIST[TUPLE[cursor:GAME_CURSOR; text:STRING]]
			-- The list of cursors to used on `Current'
		local
			l_custom_image:IMG_IMAGE_FILE
		do
			create {ARRAYED_LIST[TUPLE[cursor:GAME_CURSOR; text:STRING]]}Result.make (12)
			Result.extend (create {GAME_CURSOR}.make_arrow, "Arrow")
			Result.extend (create {GAME_CURSOR}.make_i_beam, "I-Beam")
			Result.extend (create {GAME_CURSOR}.make_wait, "Wait")
			Result.extend (create {GAME_CURSOR}.make_crosshair, "Crosshair")
			Result.extend (create {GAME_CURSOR}.make_wait_arrow, "Wait Arrow")
			Result.extend (create {GAME_CURSOR}.make_resize_north_east_south_west, "Resize North-East to South-West")
			Result.extend (create {GAME_CURSOR}.make_resize_north_west_south_east, "Resize North-West to South-East")
			Result.extend (create {GAME_CURSOR}.make_resize_north_south, "Resize North-South")
			Result.extend (create {GAME_CURSOR}.make_resize_west_east, "Resize West-East")
			Result.extend (create {GAME_CURSOR}.make_unavailable, "Unavailable")
			Result.extend (create {GAME_CURSOR}.make_hand, "Hand")
			create l_custom_image.make ("custom.png")
			if l_custom_image.is_openable then
				l_custom_image.open
				if l_custom_image.is_open then
					Result.extend (create {GAME_CURSOR}.make_from_image (l_custom_image, 0, 28), "Custom")
				end
			end
		end

	change_cursor(a_timestamp:NATURAL_32; a_cursors:LIST[TUPLE[cursor:GAME_CURSOR; text:STRING]]; a_font:TEXT_FONT; a_window:GAME_WINDOW_SURFACED)
			-- Redraw the scene drawing the {GAME_CURSOR} at index `cursor_index' in `a_cursors' and the name of it using `a_font' on `a_window'
		local
			l_text:TEXT_SURFACE_BLENDED
		do
			create l_text.make (a_cursors.at (cursor_index).text, a_font, create {GAME_COLOR}.make_rgb (0, 0, 0))
			game_library.set_cursor (a_cursors.at (cursor_index).cursor)
			a_window.surface.draw_rectangle (create {GAME_COLOR}.make_rgb (255, 255, 255), 0, 0, a_window.surface.width, a_window.surface.height)
			a_window.surface.draw_surface (l_text, 100, 100)
			a_window.update
		end

	on_mouse_down(a_timestamp: NATURAL_32; a_mouse_state: GAME_MOUSE_BUTTON_PRESSED_STATE; a_nb_clicks: NATURAL_8)
			-- The user has click on the window
		do
			cursor_index := (cursor_index \\ cursor_count) + 1
		end

	on_quit(a_timestamp:NATURAL_32)
			-- When the user close the game
		do
			game_library.stop
		end

	cursor_index:INTEGER
			-- The index of the cursor to draw in `cursors'

	cursor_count:INTEGER
			-- The number of element in `cursors'


end
