note
	description: "Input management exemple"
	author: "Louis Marchand"
	date: "Thu, 17 Mar 2016 14:24:10 +0000"
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
			create texts.make
			create l_builder
			window := l_builder.generate_window
			create font.make ("font.ttf", 16)
			if font.is_openable then
				font.open
				has_error := not font.is_open
			else
				has_error := True
			end
		end

feature -- Access


	run
			-- Prepare and execute the main loop
		do
			texts.extend ([100, 100, {STRING_32}"Click somewhere and start typing"])
			game_library.iteration_actions.extend (agent on_iteration)
			window.mouse_button_pressed_actions.extend (agent on_mouse_pressed)
			window.key_pressed_actions.extend (agent on_key_pressed)
			window.text_input_actions.extend (agent on_text_input)
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.launch
		end

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	window:GAME_WINDOW_SURFACED
			-- The window to draw the scene

	font:TEXT_FONT
			-- Used to draw `texts'

	texts:LINKED_LIST[TUPLE[x, y:INTEGER; text:STRING_32]]
			-- Each `text' written to the window at coordinate `x',`y'

feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL_32)
			-- At each game loop iteration, redraw the window
		local
			l_text_surface:TEXT_SURFACE_BLENDED
			l_color:GAME_COLOR
		do
			window.surface.draw_rectangle (create {GAME_COLOR}.make_rgb (255, 255, 0), 0, 0, window.width, window.height)
			create l_color.make_rgb (0, 0, 0)
			across
				texts as la_texts
			loop
				if not la_texts.item.text.is_empty then
					create l_text_surface.make (la_texts.item.text, font, l_color)
					window.surface.draw_surface (l_text_surface, la_texts.item.x, la_texts.item.y)
				end

			end
			window.update
		end

	on_mouse_pressed(a_timestamp: NATURAL_32; a_mouse_event: GAME_MOUSE_BUTTON_PRESS_EVENT; a_nb_clicks: NATURAL_8)
			-- When the user pressed on a mouse button on `a_window'
		do
			if a_nb_clicks = 1 and a_mouse_event.is_left_button then
				window.start_text_input	-- On some OS, it show the onscreen keyboard
				texts.extend ([a_mouse_event.x, a_mouse_event.y, {STRING_32}""])
			end
		end

	on_text_input(a_timestamp:NATURAL_32; a_text:STRING_32)
			-- When the user write a character on the keyboard (does not handle special key like backspace, return, etc.
		do
			if not texts.is_empty then
				texts.last.text := texts.last.text + a_text
			end
		end

	on_key_pressed(a_timestamp: NATURAL_32; a_key_event: GAME_KEY_EVENT)
			-- When the user pressed any key on the keyboard
		do
			if a_key_event.is_backspace and not texts.last.text.is_empty then
				texts.last.text := texts.last.text.substring (1, texts.last.text.count - 1)
			elseif a_key_event.is_return or a_key_event.is_escape then
				window.stop_text_input
			end
		end

	on_quit(a_timestamp:NATURAL_32)
			-- When the operating system ask the game to close
		do
			game_library.stop
		end


end
