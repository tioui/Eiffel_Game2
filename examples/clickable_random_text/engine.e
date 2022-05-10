note
	description: "Engine that manage the random exemple."
	author: "Louis Marchand"
	date: "Wed, 22 Dec 2021 19:48:09 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED
	GAME_RANDOM_SHARED

create
	make

feature -- Initialisation

	make
			-- Initialisation of `Current'
		local
			l_window_builer:GAME_WINDOW_RENDERED_BUILDER
			l_font:TEXT_FONT
		do
			create l_window_builer
			l_window_builer.set_dimension (800, 260)
			window := l_window_builer.generate_window
			has_error := window.has_error
			create {ARRAYED_LIST[TEXT]}drawables.make (8)
			create {ARRAYED_LIST[CLICKABLE]}clickables.make (4)
			create l_font.make ("font.ttf", 30)
			if l_font.is_openable then
				l_font.open
				if l_font.is_open then
					initialize_texts(l_font)
				else
					has_error := True
				end
			else
				has_error := True
			end
		end

	initialize_texts(a_font:TEXT_FONT)
			-- Initialising every {TEXT} and {BUTTON} in `Current'
		require
			Font_Open: a_font.is_open
		local
			l_text:TEXT
			l_button:BUTTON
			l_background_color, l_text_color:GAME_COLOR
		do
			create l_background_color.make_rgb (0, 0, 255)
			create l_text_color.make_rgb (0, 0, 0)
			create l_text.make (600, 10, "0", a_font, l_text_color, window.renderer)
			random_integer(l_text)
			create l_button.make (10, 10, 500, 50, "Random Integer", a_font, l_text_color, l_background_color, window.renderer)
			l_button.on_click.extend (agent random_integer(l_text))
			add_to_lists (l_text, l_button)
			create l_text.make (600, 70, "0", a_font, l_text_color, window.renderer)
			random_integer_between(1, 100, l_text)
			create l_button.make (10, 70, 500, 50, "Random Integer Between 1 and 100", a_font, l_text_color, l_background_color, window.renderer)
			l_button.on_click.extend (agent random_integer_between(1, 100, l_text))
			add_to_lists (l_text, l_button)
			create l_text.make (600, 130, "0", a_font, l_text_color, window.renderer)
			random_real(l_text)
			create l_button.make (10, 130, 500, 50, "Random Real", a_font, l_text_color, l_background_color, window.renderer)
			l_button.on_click.extend (agent random_real(l_text))
			add_to_lists (l_text, l_button)
			create l_text.make (600, 190, "0", a_font, l_text_color, window.renderer)
			random_real_between(0.0, 1.0, l_text)
			create l_button.make (10, 190, 500, 50, "Random Real Between 0 and 10", a_font, l_text_color, l_background_color, window.renderer)
			l_button.on_click.extend (agent random_real_between(0.0, 10.0, l_text))
			add_to_lists (l_text, l_button)
		end

	add_to_lists(a_text:TEXT; a_button:BUTTON)
			-- Add `a_text' and `a_button' to the corresonding attribut lists
			-- (see: drawables and `buttons')
		do
			drawables.extend (a_text)
			drawables.extend (a_button)
			clickables.extend (a_button)
		end

feature -- Access

	run
			-- Launch `Current'
		require
			No_Error: not has_error
		do
			game_library.iteration_actions.extend (agent on_iteration)
			window.mouse_button_pressed_actions.extend (agent on_mouse_pressed)
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.launch
		end

	has_error:BOOLEAN
			-- An error occured while initializing `Current'

	window:GAME_WINDOW_RENDERED
			-- Where to draw the scene.

	drawables: LIST[TEXT]
			-- The texts to draw on the `window'

	clickables: LIST[CLICKABLE]
			-- Every clickale item in `Current'

	on_iteration(a_timestamp:NATURAL_32)
			-- Launched at each loop iteration
		do
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (128, 128, 128))
			window.renderer.clear
			across drawables as la_drawables loop
				window.renderer.draw_texture (la_drawables.item.texture, la_drawables.item.x, la_drawables.item.y)
			end
			window.renderer.present
		end

feature {NONE} -- Implementation

	on_mouse_pressed(a_timestamp:NATURAL_32; a_mouse_state:GAME_MOUSE_BUTTON_PRESS_EVENT;
																	a_nb_clicks:NATURAL_8)
			-- Launched when the user has pressed the mouse button. `a_mouse_state' is
			-- used to get what button has been pressed.
		do
			if a_mouse_state.is_left_button then
				across clickables as la_clickables loop
					la_clickables.item.manage_click(a_mouse_state.x, a_mouse_state.y)
				end
			end
		end

	random_integer(a_text:TEXT)
			-- Generate a random {INTEGER} value and put it as `a_text' text
		do
			random.generate_new_random
			a_text.set_text (random.last_random_integer.out)
		end

	random_integer_between(a_minimum, a_maximum:INTEGER; a_text:TEXT)
			-- Generate a random {INTEGER} value between `a_minimum' and `a_maximum'
			-- and put it as `a_text' text
		do
			random.generate_new_random
			a_text.set_text (random.last_random_integer_between (a_minimum, a_maximum).out)
		end

	random_real(a_text:TEXT)
			-- Generate a random {REAL} value and put it as `a_text' text
		do
			random.generate_new_random
			a_text.set_text (random.last_random_real.out)
		end

	random_real_between(a_minimum, a_maximum:REAL; a_text:TEXT)
			-- Generate a random {REAL} value between `a_minimum' and `a_maximum'
			-- and put it as `a_text' text
		do
			random.generate_new_random
			a_text.set_text (random.last_random_real_between (a_minimum, a_maximum).out)
		end

	on_quit(a_timestamp:NATURAL_32)
			-- When the user close de program
		do
			game_library.stop
		end

end
