note
	description: "An example of sprite animation and movement using surface optimized."
	author: "Louis Marchand"
	date: "Wed, 16 Mar 2016 23:29:16 +0000"
	revision: "1.0"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED		-- To use `game_library'

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		local
			l_window_builder:GAME_WINDOW_SURFACED_BUILDER
		do
			create desert
			create maryo
			create l_window_builder
			if not desert.has_error then
				l_window_builder.set_dimension (desert.width, desert.height)
			end
			l_window_builder.set_title ("Example Animation with optimization")
			window := l_window_builder.generate_window
		end

feature -- Access

	run
			-- Launch the game
		do
			maryo.y := 375
			maryo.x := 200
			game_library.quit_signal_actions.extend (agent on_quit)
			window.key_pressed_actions.extend (agent on_key_pressed)
			window.key_released_actions.extend (agent on_key_released)
			game_library.iteration_actions.extend (agent on_iteration(?, False))
			on_iteration(0, True)
			last_redraw_time := game_library.time_since_create
			game_library.launch
		end

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	desert:DESERT
			-- The background

	maryo:MARYO
			-- The main character of the game

	window:GAME_WINDOW_SURFACED
			-- The window to draw the scene

feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL_32; a_must_redraw:BOOLEAN)
			-- Event that is launch at each iteration.
		local
			l_area_dirty:ARRAYED_LIST[TUPLE[x,y,width,height:INTEGER]]
			l_must_redraw:BOOLEAN
		do
			l_must_redraw := a_must_redraw
			if (game_library.time_since_create - last_redraw_time) > 1000 then	-- Once each second, redraw the entire screen
				l_must_redraw := True
				last_redraw_time := game_library.time_since_create
			end
			create l_area_dirty.make(2)
			if l_must_redraw then
				-- Force the redrawing of all the window
				l_area_dirty.extend ([0, 0, window.width, window.height])
			else
				-- Only redraw the place maryo was
				l_area_dirty.extend ([maryo.x, maryo.y, maryo.sub_image_width, maryo.sub_image_height])
			end

			maryo.update (a_timestamp)	-- Update Maryo animation and coordinate

			if maryo.is_dirty or l_must_redraw then	-- Only draw if there was some modification on Maryo
				maryo.unset_dirty
				-- Be sure that Maryo does not get out of the screen
				if maryo.x < 0 then
					maryo.x := 0
				elseif maryo.x + maryo.sub_image_width > desert.width then
					maryo.x := desert.width - maryo.sub_image_width
				end

				-- Draw the scene (does not redraw what we don't have to redraw)
				window.surface.draw_rectangle (
									create {GAME_COLOR}.make_rgb (0, 128, 255),
									l_area_dirty.first.x, l_area_dirty.first.y,
									l_area_dirty.first.width, l_area_dirty.first.height
								)
				window.surface.draw_sub_surface (
									desert,
									l_area_dirty.first.x, l_area_dirty.first.y,
									l_area_dirty.first.width, l_area_dirty.first.height,
									l_area_dirty.first.x, l_area_dirty.first.y
								)
				window.surface.draw_sub_surface (
										maryo.surface, maryo.sub_image_x, maryo.sub_image_y,
										maryo.sub_image_width, maryo.sub_image_height, maryo.x, maryo.y
									)

				-- Update modification in the screen
				l_area_dirty.extend ([maryo.x, maryo.y, maryo.sub_image_width, maryo.sub_image_height])
				window.update_rectangles (l_area_dirty)
			end


		end


	on_key_pressed(a_timestamp: NATURAL_32; a_key_event: GAME_KEY_EVENT)
			-- Action when a keyboard key has been pushed
		do
			if not a_key_event.is_repeat then		-- Be sure that the event is not only an automatic repetition of the key
				if a_key_event.is_right then
					maryo.go_right(a_timestamp)
				elseif a_key_event.is_left then
					maryo.go_left(a_timestamp)
				end
			end

		end

	on_key_released(a_timestamp: NATURAL_32; a_key_event: GAME_KEY_EVENT)
			-- Action when a keyboard key has been released
		do
			if not a_key_event.is_repeat then		-- I don't know if a key release can repeat, but you never know...
				if a_key_event.is_right then
					maryo.stop_right
				elseif a_key_event.is_left then
					maryo.stop_left
				end
			end
		end

	on_quit(a_timestamp: NATURAL_32)
			-- This method is called when the quit signal is send to the application (ex: window X button pressed).
		do
			game_library.stop  -- Stop the controller loop (allow game_library.launch to return)
		end

	last_redraw_time:NATURAL_32
			-- The last time that the entire screen has been redraw

end
