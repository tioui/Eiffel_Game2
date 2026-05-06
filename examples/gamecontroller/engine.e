note
	description: "Summary description for {ENGINE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

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
		do
			create l_window_builder
			l_window_builder.set_dimension (1024, 512)
			l_window_builder.set_title ("Example Controller")
			l_window_builder.enable_must_renderer_synchronize_update	-- Ask to the video card to manage the frame synchronisation (FPS)
			window := l_window_builder.generate_window
			create rectangle.make (window.renderer)
			create controllers.make (1)
		end

feature -- Access

	run
			-- Launch the game.

		require
			No_Error: not has_error
		do
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			window.renderer.clear
			rectangle.y := 300
			rectangle.x := 200
			red := 0
			green := 0
			blue := 0
			game_library.quit_signal_actions.extend (agent on_quit)

			game_library.controller_found_actions.extend (agent on_controller_found)
			game_library.controller_remove_actions.extend (agent on_controller_removed)
			game_library.iteration_actions.extend (agent on_iteration)
			if window.renderer.driver.is_present_synchronized_supported then	-- If the Video card accepted the frame synchronisation (FPS)
				game_library.launch_no_delay									-- Don't let the library managed the frame synchronisation
			else
				game_library.launch
			end

		end


	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene

	rectangle:RECTANGLE
			-- The main rectangle of the game
	controllers: ARRAYED_LIST[GAME_CONTROLLER]

feature {NONE} -- Implementation

	on_controller_found(timestamp:NATURAL_32; controller:GAME_CONTROLLER)
			-- Event that is launch at each controller found
		do
			controller.open
			controller.button_pressed_actions.extend (agent on_button_pressed)
		--	controller.button_released_actions.extend (agent on_button_released)
			controller.axis_motion_actions.extend (agent on_axis_motion)
			controllers.extend (controller)
		end

	on_controller_removed(timestamp:NATURAL_32; controller:GAME_CONTROLLER)
				-- Event that is launch at each controller removed
		do
			controllers.remove
		end

	on_iteration(a_timestamp:NATURAL_32)
			-- Event that is launch at each iteration.
			local
				points:ARRAYED_LIST[TUPLE[x,y:INTEGER]]
		do
			rectangle.update (a_timestamp)
			-- Draw the scene
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (255, 255, 255))	-- Redraw the white background
			window.renderer.clear
			draw_square

			{GAME_SDL_EXTERNAL}.sdl_gamecontrollerupdate
			window.renderer.present		-- Update modification in the screen
		end

	draw_square
		do
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (red, green, blue))	-- Redraw the black thing
			window.renderer.draw_sub_texture_with_rotation (rectangle.texture, rectangle.sub_image_x, rectangle.sub_image_y, rectangle.sub_image_width, rectangle.sub_image_height, rectangle.x, rectangle.y, rectangle.x_rotation_center, rectangle.y_rotation_center, rectangle.angle)
			window.renderer.draw_filled_rectangle (rectangle.x + rectangle.texture.width//4, rectangle.y + rectangle.texture.height//3 + 7, rectangle.texture.width//2, rectangle.texture.width//2)
		end

	on_axis_motion(a_timestamp:NATURAL_32;a_axis_id:NATURAL_8;a_value:INTEGER_16)
			-- Event that is launch at each motion of an axis
		do
			across controllers as controller loop
				if (controller.item.axis.left_x = a_axis_id) then
					handle_left_joystick_x_motion(a_timestamp,a_value)
				end

				if (controller.item.axis.left_y = a_axis_id) then
					handle_left_joystick_y_motion(a_timestamp,a_value)
				end

				if a_axis_id = controller.item.axis.trigger_left or a_axis_id = controller.item.axis.trigger_right then
					handle_rotation(a_timestamp,a_axis_id,a_value,controller.item)
				end
			end
		end

		handle_left_joystick_x_motion(a_timestamp:NATURAL_32;a_value:INTEGER_16)
			do
				if a_value < 0 or a_value > 0 then
					rectangle.go_horizontal (a_timestamp,a_value)
				elseif a_value = 0 then
					rectangle.stop_left_x_axis
				end
			end

		handle_left_joystick_y_motion(a_timestamp:NATURAL_32;a_value:INTEGER_16)
		do
			if a_value < 0 or a_value > 0 then
				rectangle.go_vertical (a_timestamp,a_value)
			elseif a_value = 0 then
				rectangle.stop_left_y_axis
			end
		end

		handle_rotation(a_timestamp:NATURAL_32;a_axis_id:NATURAL_8;a_value:INTEGER_16;a_controller:GAME_CONTROLLER)
			do
				if a_controller.axis.trigger_left = a_axis_id then
					rectangle.rotate_left (a_timestamp)
				end

				if a_controller.axis.trigger_right = a_axis_id then
					rectangle.rotate_right (a_timestamp)
				end
				if a_value < 20 then
					rectangle.stop_rotation
				end
			end


	on_button_pressed(a_timestamp:NATURAL_32; a_button_id:NATURAL_8)
				-- Event that is launch at each button press
		do
		across controllers as controller loop

			if controller.item.buttons.north = a_button_id then
				--orange
				red := 255
				green:=165
				blue:=50
			elseif controller.item.buttons.west = a_button_id then
				red := 0
				green:=0
				blue:=255
			elseif controller.item.buttons.east = a_button_id then
				red :=255
				green:=0
				blue:=0
			elseif controller.item.buttons.south = a_button_id then
				--vert
				red := 35
				green:=170
				blue:=35
			end
		end
		end

	on_quit(a_timestamp: NATURAL_32)
			-- This method is called when the quit signal is send to the application (ex: window X button pressed).
		do
			game_library.stop  -- Stop the controller loop (allow game_library.launch to return)
		end

	red:NATURAL_8
	green:NATURAL_8
	blue:NATURAL_8
end
