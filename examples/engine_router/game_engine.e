note
	description: "An example of sprite animation and movement using renderer and video card synchronisation"
	author: "Louis Marchand"
	date: "Wed, 16 Mar 2016 23:29:16 +0000"
	revision: "1.0"

class
	GAME_ENGINE

inherit
	ENGINE
		redefine
			make, run, on_iteration
		end

create
	make

feature -- Constants

	Time_left:NATURAL_32 = 5000
			-- The initial time left before game over

feature {NONE} -- Initialization

	make(a_window:GAME_WINDOW_RENDERED; a_font:TEXT_FONT)
			-- Initialisation of `Current' using `a_window' as `window'
			-- and `a_font' as `font'.
		do
			Precursor {ENGINE}(a_window, a_font)
			create desert.make_from_file (window.renderer, "desert.png")
			has_error := desert.has_error
			create maryo.make (window.renderer)
			has_error := has_error or maryo.has_error
		end

feature -- Access

	run
			-- Launch the game.
		do
			maryo.y := 375
			maryo.x := 200
			window.key_pressed_actions.extend (agent on_key_pressed)
			window.key_released_actions.extend (agent on_key_released)
			game_library.iteration_actions.extend (agent on_iteration)
			ending_timer := game_library.time_since_create + Time_left
			Precursor {ENGINE}
		end


	maryo:MARYO
			-- The main character of the game

	desert:IMAGE
			-- The background

	ending_timer:NATURAL_32
			-- When `Current' will stop

feature {NONE} -- Implementation



	on_iteration(a_timestamp:NATURAL_32)
			-- Event that is launch at each iteration.
		local
			l_text:TEXT
		do
			if a_timestamp < ending_timer then
				maryo.update (a_timestamp)	-- Update Maryo animation and coordinate

				if maryo.x < 0 then		-- Be sure that Maryo does not get out of the screen
					maryo.x := 0
				elseif maryo.x + maryo.sub_image_width > desert.texture.width then
					maryo.x := desert.texture.width - maryo.sub_image_width
				end

				create l_text.make (window.renderer, font, text_color,
									"Time: " + (((ending_timer - a_timestamp) // 1000) + 1).out)

				-- Draw the scene
				window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 128, 255))	-- Redraw the blue sky
				window.renderer.clear

				window.renderer.draw_texture (desert.texture, 0, 0)		-- Redraw the desert
				window.renderer.draw_sub_texture_with_mirror (		-- Redraw Maryo
										maryo.texture,  maryo.sub_image_x, maryo.sub_image_y, maryo.sub_image_width, maryo.sub_image_height,
										maryo.x, maryo.y, False, maryo.facing_left
									)
				window.renderer.draw_texture (l_text.texture, 10, 10)
				Precursor {ENGINE}(a_timestamp)
			else
				game_library.stop
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

end
