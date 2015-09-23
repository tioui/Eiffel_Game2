note
	description : "Example of text input management"
	date        : "Wed, 23 Sep 2015 23:38:17 +0000"
	revision    : "0.1"

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
			run_game
			game_library.clear_all_events
			text_library.quit_library
			game_library.quit_library
		end

	run_game
			-- Prepare and execute the main loop
		local
			l_builder:GAME_WINDOW_SURFACED_BUILDER
			l_window:GAME_WINDOW_SURFACED
			l_font:TEXT_FONT
		do
			create texts.make
			l_window := l_builder.generate_window
			create l_font.make ("font.ttf", 16)
			l_font.open
			game_library.iteration_actions.extend (agent on_iteration(?, l_window, l_font))
			l_window.mouse_button_pressed_actions.extend (agent on_mouse_pressed(?, ?, ?, l_window))
			l_window.key_pressed_actions.extend (agent on_key_pressed(?, ?, l_window))
			l_window.text_input_actions.extend (agent on_text_input)
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.launch
			texts.wipe_out
		end

	on_iteration(a_timestamp:NATURAL_32; a_window:GAME_WINDOW_SURFACED; a_font:TEXT_FONT)
			-- At each game loop iteration, redraw the window
		local
			l_text_surface:TEXT_SURFACE_BLENDED
			l_color:GAME_COLOR
		do
			a_window.surface.draw_rectangle (create {GAME_COLOR}.make_rgb (255, 255, 0), 0, 0, a_window.width, a_window.height)
			create l_color.make_rgb (0, 0, 0)
			across
				texts as la_texts
			loop
				if not la_texts.item.text.is_empty then
					create l_text_surface.make (la_texts.item.text, a_font, l_color)
					a_window.surface.draw_surface (l_text_surface, la_texts.item.x, la_texts.item.y)
				end

			end
			a_window.update
		end

	on_mouse_pressed(a_timestamp: NATURAL_32; a_mouse_state: GAME_MOUSE_BUTTON_PRESSED_STATE; a_nb_clicks: NATURAL_8; a_window:GAME_WINDOW)
			-- When the user pressed on a mouse button on `a_window'
		do
			if a_nb_clicks = 1 and a_mouse_state.is_left_button_pressed then
				a_window.start_text_input	-- On some OS, it show the onscreen keyboard
				texts.extend ([a_mouse_state.x, a_mouse_state.y, {STRING_32}""])
			end
		end

	on_text_input(a_timestamp:NATURAL_32; a_text:STRING_32)
			-- When the user write a character on the keyboard (does not handle special key like backspace, return, etc.
		do
			if not texts.is_empty then
				texts.last.text := texts.last.text + a_text
			end
		end

	on_key_pressed(a_timestamp: NATURAL_32; a_key_state: GAME_KEY_STATE; a_window:GAME_WINDOW)
			-- When the user pressed any key on the keyboard
		do
			if a_key_state.is_backspace and not texts.last.text.is_empty then
				texts.last.text := texts.last.text.substring (1, texts.last.text.count - 1)
			elseif a_key_state.is_return or a_key_state.is_escape then
				a_window.stop_text_input
			end
		end

	on_quit(a_timestamp:NATURAL_32)
			-- When the operating system ask the game to close
		do
			game_library.stop
		end

	texts:LINKED_LIST[TUPLE[x, y:INTEGER; text:STRING_32]]
			-- Each `text' written to the window at coordinate `x',`y'

end
