note
	description: "Main engine of the grid exemple."
	author: "Louis Marchand"
	date: "Sat, 25 Dec 2021 15:08:18 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialisation

	make
			-- Initialisation of `Current'
		local
			l_builder:GAME_WINDOW_RENDERED_BUILDER
			l_pieces:ARRAYED_LIST[detachable PIECE]
		do
			create l_builder
			l_builder.set_dimension (750, 750)
			window := l_builder.generate_window
			has_error :=window.has_error
			create {ARRAYED_LIST[LIST[detachable PIECE]]}grid.make (3)
			across 1 |..| 3 as la_index_1 loop
				create l_pieces.make (3)
				across 1 |..| 3 as la_index_2 loop
					l_pieces.extend (Void)
				end
				grid.extend(l_pieces)
			end
			create background.make (window.renderer, "grid.png")
			has_error := has_error or background.has_error
		end

feature -- Access

	run
			-- Launch `Current'
		require
			No_Error: not has_error
		do
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.iteration_actions.extend (agent on_iteration)
			window.mouse_button_pressed_actions.extend (agent on_mouse_pressed)
			game_library.launch
		end

	has_error:BOOLEAN
			-- An error occured while initialising `Current'

	window:GAME_WINDOW_RENDERED
			-- Where to draw the scene

	background:IMAGE
			-- The image to show in the back of the scene.

	grid:LIST[LIST[detachable PIECE]]
			-- The grid of the {PIECE}


feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL)
			-- Launch at each game loop.
		do
			window.renderer.draw_texture (background.texture, 0, 0)
			across 1 |..| grid.count as la_index_line loop
				across 1 |..| grid.at (la_index_line.item).count as la_index_column loop
					if attached grid.at (la_index_line.item).at (la_index_column.item) as la_cell then
						window.renderer.draw_texture (
								la_cell.texture,
								(la_index_line.item - 1) * {PIECE}.Width,
								(la_index_column.item - 1) * {PIECE}.Height
							)
					end

				end
			end
			window.renderer.present
		end

	on_mouse_pressed(a_timestamp:NATURAL; a_mouse_state:GAME_MOUSE_BUTTON_PRESS_EVENT;
					nb_clicks:NATURAL_8)
			-- When the user press the mouse button on `window'
		local
			l_line, l_column:INTEGER
		do
			if a_mouse_state.is_left_button then
				l_line := (a_mouse_state.x // {PIECE}.Width) + 1
				l_column := (a_mouse_state.y // {PIECE}.Height) + 1
				if attached {PIECE_O} grid.at (l_line).at(l_column) then
					grid.at (l_line).at(l_column) := create {PIECE_X}.make(window.renderer)
				elseif attached {PIECE_X} grid.at (l_line).at(l_column) then
					grid.at (l_line).at(l_column) := Void
				else
					grid.at (l_line).at(l_column) := create {PIECE_O}.make(window.renderer)
				end
			end
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user quit the program
		do
			game_library.stop
		end
end
