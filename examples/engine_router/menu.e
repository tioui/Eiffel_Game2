note
	description: "An {ENGINE} used to select option items."
	author: "Louis Marchand"
	date: "Tue, 02 Nov 2021 13:35:13 +0000"
	revision: "0.1"

class
	MENU

inherit
	ENGINE
		redefine
			make, run, on_iteration
		end

create
	make

feature -- Constants

	Between_Item_Gap:INTEGER = 10
			-- The space between each item

	First_Item_x:INTEGER = 200
			-- The vertical position of the first item


	First_Item_y:INTEGER = 200
			-- The horizontal position of the first item

	Quit_index:INTEGER = 2
			-- The index of the Quit item

	Play_index:INTEGER = 1
			-- The index of the Play item

feature {NONE} -- Initialisation

	make(a_window:GAME_WINDOW_RENDERED; a_font:TEXT_FONT)
			-- Initialisation of `Current' using `a_window' as `window'
			-- and `a_font' as `font'.
		do
			Precursor {ENGINE}(a_window, a_font)
			create background.make_from_file(a_window.renderer, "menu.png")
			create cursor.make_from_file(a_window.renderer, "cursor.png")
			create {ARRAYED_LIST[IMAGE]}items.make (2)
			items.extend(create {TEXT}.make (a_window.renderer, a_font, text_color, "Play"))
			items.extend(create {TEXT}.make (a_window.renderer, a_font, text_color, "Quit"))
			selected_item := Play_index
		end

feature -- Access

	run
			-- Launch the game.
		do
			window.key_pressed_actions.extend (agent on_key_pressed)
			game_library.iteration_actions.extend (agent on_iteration)
			Precursor {ENGINE}
			quitting := quitting or selected_item = Quit_index
		end

	background:IMAGE
			--The image in the background of `Current'

	cursor:IMAGE
			-- The cursor used to select item in `Current'

	items:LIST[IMAGE]
			-- The image of the item of `Current'

	selected_item:INTEGER
			-- The item presently selected.

	launch_game:BOOLEAN
			-- The game should be launched
		do
			Result := selected_item = Play_index
		end

feature {NONE} -- Implementation

	selected_item_position(a_index:INTEGER):TUPLE[x, y:INTEGER]
			-- The position of the selected item `a_index'.
		require
			Index_Valid: a_index >= 1 and a_index <= items.count
		local
			l_y:INTEGER
		do
			l_y := First_item_y
			across 1 |..| (a_index - 1) as la_index loop
				l_y := l_y + items.at (la_index.item).texture.height + Between_item_gap
			end
			l_y := l_y + (items.at (a_index.item).texture.height // 2)
			Result := [First_item_x, l_y]
		end

	on_iteration(a_timestamp:NATURAL_32)
			-- Event that is launch at each iteration.
		do
			window.renderer.draw_texture (background.texture, 0, 0)
			from
				items.start
			until
				items.exhausted
			loop
				window.renderer.draw_texture (items.item.texture, selected_item_position(items.index).x,
								selected_item_position(items.index).y - (items.item.texture.height // 2))
				items.forth
			end
			window.renderer.draw_texture (cursor.texture,
								selected_item_position(selected_item).x - cursor.texture.width - Between_item_gap,
								selected_item_position(selected_item).y - (cursor.texture.height // 2)
							)
			Precursor {ENGINE}(a_timestamp)
		end


	on_key_pressed(a_timestamp: NATURAL_32; a_key_event: GAME_KEY_EVENT)
			-- Action when a keyboard key has been pushed
		do
			if a_key_event.is_up then
				selected_item := selected_item - 1
			elseif a_key_event.is_down then
				selected_item := selected_item + 1
			elseif a_key_event.is_return then
				game_library.stop
			end
			if selected_item < 1 then
				selected_item := items.count
			end
			if selected_item > items.count then
				selected_item := 1
			end
		end

invariant
	Selected_Item_Valid: selected_item >= 1 and selected_item <= items.count
end
