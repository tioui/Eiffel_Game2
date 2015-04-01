note
	description: "[
					The game {ENGINE}.
				]"
	author		: "Louis Marchand"
	date        : "May 18, 2013"
	revision    : "0.1.1.1"

class
	ENGINE

create
	make

feature {NONE} -- Initialisation

	make(a_lib_controller:GAME_LIB_CONTROLLER)
			-- Initialisation of the game.
		local
			l_sorter:QUICK_SORTER[IMAGE]
			l_cmp:IMAGE_COMPARATOR
		do
			-- Creating the screen
			lib_controller:=a_lib_controller
			lib_controller.create_screen_surface (600, 600, 16, true, true, false, true, false)

			-- Creating the images (car and background).
			create {ARRAYED_LIST[IMAGE]} draw_list.make(2)

			create background.make_with_dimension (lib_controller.screen_surface.width, lib_controller.screen_surface.height)
			background.depth:=0
			draw_list.extend (background)

			create car.make
			draw_list.extend (car)
			car.depth:=1
			car.x:=lib_controller.screen_surface.width//2 - car.width//2
			car.y:=lib_controller.screen_surface.height//2 - car.height//2

			-- Sort the images by depth.
			create l_cmp
			create l_sorter.make(l_cmp)
			l_sorter.sort(draw_list)

			-- Initialise the event management.
			lib_controller.event_controller.on_quit_signal.extend (agent on_quit)
			lib_controller.event_controller.on_key_down.extend (agent on_key_down)
			lib_controller.event_controller.on_key_up.extend (agent on_key_up)
			lib_controller.event_controller.on_iteration.extend (agent on_iteration)
		end

feature -- Access

	main_loop
			-- Start the game main loop.
		do
			draw_window
			lib_controller.launch
		end

feature {NONE} -- Implementation

	on_key_down(a_key:GAME_KEYBOARD_EVENT)
			-- When a keyboard key has been pressed.
		do
			if a_key.is_up_key then
				car.go_up
			elseif a_key.is_down_key then
				car.go_down
			elseif a_key.is_left_key then
				car.go_left
			elseif a_key.is_right_key then
				car.go_right
			end
		end

	on_key_up(a_key:GAME_KEYBOARD_EVENT)
			-- When a keyboard key has been released.			
		do
			if a_key.is_up_key and car.going_up then
				car.stop
			elseif a_key.is_down_key and car.going_down then
				car.stop
			elseif a_key.is_left_key and car.going_left then
				car.stop
			elseif a_key.is_right_key and car.going_right then
				car.stop
			end
		end

	on_iteration
			-- On each event iteration.
		do
			if car.is_moving then
				if car.going_down then
					background.move_up
				elseif car.going_up then
					background.move_down
				elseif car.going_left then
					background.move_right
				elseif car.going_right then
					background.move_left
				end
				draw_window
			end

		end

	draw_window
			-- Draw all {IMAGE} on the screen.
		local
			l_image:IMAGE
		do
			from draw_list.start
			until draw_list.exhausted
			loop
				l_image:=draw_list.item
				lib_controller.screen_surface.draw_surface (l_image.surface, l_image.x, l_image.y)
				draw_list.forth
			end
			lib_controller.flip_screen
		end

	on_quit
			-- When the user quit the game.
		do
			lib_controller.stop
		end

	draw_list: LIST[IMAGE]
			-- Sorted list of all {IMAGE} to draw.

	car:CAR
			-- The player {CAR}.

	background:BACKGROUND
			-- The {BACKGROUND} of the game.

	lib_controller:GAME_LIB_CONTROLLER
			-- Controller of the game library.


end
