note
	description: "The mecanics of the game"
	author: "Louis Marchand"
	date: "Tue, 22 Mar 2016 13:41:42 +0000"
	revision: "0.2"

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
			l_window_builder:GAME_WINDOW_RENDERED_BUILDER
			l_sorter:QUICK_SORTER[IMAGE]
			l_comparator:IMAGE_COMPARATOR
		do
			has_error := False
			create l_window_builder
			l_window_builder.set_dimension (600, 600)
			window := l_window_builder.generate_window
			create car.make (window.renderer)
			create background.make (window.renderer)
			create {ARRAYED_LIST[IMAGE]} images.make (2)
			has_error := window.has_error or car.has_error or background.has_error
			if not has_error then
				car.x := window.renderer.output_size.width//2 - car.width//2
				car.y := window.renderer.output_size.height//2 - car.height//2
				background.depth := 0
				car.depth := 1
				images.extend (background)
				images.extend (car)
				create l_comparator
				create l_sorter.make (l_comparator)
				l_sorter.sort (images)				-- Used to sort images depending on there `depth' attribute
			end
		end

feature -- Access

	run
			-- Execute the game
		require
			No_Error: not has_error
		do
			game_library.iteration_actions.extend (agent on_iteration)
			window.key_pressed_actions.extend (agent on_key_down)
			window.key_released_actions.extend (agent on_key_up)
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.launch
		end

	has_error:BOOLEAN
			-- An error occured while creating `Current'

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene

	car:CAR
			-- The main character of the game

	background:BACKGROUND
			-- The image to draw in the back of the `window'

feature {NONE} -- Implementation

	images:CHAIN[IMAGE]
			-- Every images to draw in the `window'

	on_iteration(a_timestamp:NATURAL)
			-- Launched at every game loop iteration
		do
			if car.is_moving then
				if car.going_down and can_go_down then
					background.move_up
				elseif car.going_up and can_go_up then
					background.move_down
				elseif car.going_left and can_go_left then
					background.move_right
				elseif car.going_right and can_go_right then
					background.move_left
				end
			end
			draw_images
		end

	can_go_up:BOOLEAN
			-- The `car' can go in the up direction
		do
			Result := background.sub_texture_y - background.velocity >= 0
		end

	can_go_down:BOOLEAN
			-- The `car' can go in the down direction
		do
			Result := background.sub_texture_y + window.renderer.output_size.height + background.velocity < background.texture.height
		end

	can_go_left:BOOLEAN
			-- The `car' can go in the left direction
		do
			Result := background.sub_texture_x - background.velocity >= 0
		end

	can_go_right:BOOLEAN
			-- The `car' can go in the right direction
		do
			Result := background.sub_texture_x + window.renderer.output_size.width + background.velocity < background.texture.width
		end

	draw_images
			-- Draw every `images' on the `window'
		do
			across images as la_image loop
				window.renderer.draw_sub_texture (
										la_image.item.texture, la_image.item.sub_texture_x,
										la_image.item.sub_texture_y, la_image.item.width,
										la_image.item.height, la_image.item.x, la_image.item.y
									)
			end
			window.update
		end

	on_key_down(a_timestamp:NATURAL_32; a_key_state:GAME_KEY_STATE)
			-- Manage the keyboard's key pressed
		do
			if not a_key_state.is_repeat then
				if a_key_state.is_left then
					car.go_left
				elseif a_key_state.is_right then
					car.go_right
				elseif a_key_state.is_up then
					car.go_up
				elseif a_key_state.is_down then
					car.go_down
				end
			end
		end

	on_key_up(a_timestamp:NATURAL_32; a_key_state:GAME_KEY_STATE)
			-- Manage the keyboard's key released
		do
			if not a_key_state.is_repeat then
				if
					(a_key_state.is_left and car.going_left) or
					(a_key_state.is_right and car.going_right) or
					(a_key_state.is_down and car.going_down) or
					(a_key_state.is_up and car.going_up)
				then
					car.stop
				end
			end
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user closes the window
		do
			game_library.stop
		end

end
