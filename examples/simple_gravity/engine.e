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

feature -- Constants

	Launcher_x:INTEGER = 400

	Launcher_y:INTEGER = 300

feature {NONE} -- Initialization

	make
			-- Initialization of `Current'
		local
			l_window_builder:GAME_WINDOW_RENDERED_BUILDER
		do
			create l_window_builder
			l_window_builder.set_dimension (1024, 512)
			l_window_builder.set_title ("Example Gravity")
			window := l_window_builder.generate_window
			create {LINKED_LIST[BALL]}balls.make
			create angle_helper.make (0, 10)
		end

feature -- Access

	run
			-- Launch the game.
		require
			No_Error: not has_error
		do
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			game_library.quit_signal_actions.extend (agent on_quit)
			window.key_pressed_actions.extend (agent on_key_pressed)
			game_library.iteration_actions.extend (agent on_iteration)
			game_library.launch
		end


	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene

	balls:LIST[BALL]
			-- The object of the world manage by `Current'

	angle_helper:ANGLE_HELPER
			-- Used to show the angle and force of the `ball'

feature {NONE} -- Implementation



	on_iteration(a_timestamp:NATURAL_32)
			-- Event that is launch at each iteration.
		local
			l_line:TUPLE[x, y:INTEGER]
		do
			update_balls(a_timestamp)
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			window.renderer.clear
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (255, 255, 255))
			l_line := angle_helper.line_coordinates
			window.renderer.draw_filled_rectangle (Launcher_x - 5, Launcher_y - 5, 10, 10)
			window.renderer.draw_line (Launcher_x, Launcher_y, l_line.x + Launcher_x, l_line.y + Launcher_y)
			across balls as la_balls loop
				window.renderer.draw_texture (la_balls.item.texture, la_balls.item.x.rounded, la_balls.item.y.rounded)
			end
			window.renderer.present
		end

	update_balls(a_timestamp:NATURAL_32)
		do
			from
				balls.start
			until
				balls.exhausted
			loop
				balls.item.update (a_timestamp)
				if balls.item.y.rounded > window.width then
					balls.remove
				else
					balls.forth
				end
			end
		end


	on_key_pressed(a_timestamp: NATURAL_32; a_key_event: GAME_KEY_EVENT)
			-- Action when a keyboard key has been pushed
		do
			if a_key_event.is_space then
				balls.extend (create {BALL}.make (window.renderer, Launcher_x, Launcher_y, angle_helper.angle, angle_helper.force, a_timestamp))
			elseif a_key_event.is_left then
				angle_helper.set_angle (angle_helper.angle + 0.1)
			elseif a_key_event.is_right then
				angle_helper.set_angle (angle_helper.angle - 0.1)
			elseif a_key_event.is_up then
				angle_helper.set_force (angle_helper.force + 0.5)
			elseif a_key_event.is_down then
				angle_helper.set_force (angle_helper.force - 0.5)
			end
		end

	on_quit(a_timestamp: NATURAL_32)
			-- This method is called when the quit signal is send to the application (ex: window X button pressed).
		do
			game_library.stop
		end

end
