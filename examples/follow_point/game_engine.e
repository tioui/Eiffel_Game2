note
	description: "A game engine used to show how an object can follow a point in space"
	author: "Louis Marchand"
	date: "Tue, 17 Oct 2023 18:35:19 +0000"
	revision: "0.1"

class
	GAME_ENGINE

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Implementation

	make
			-- Initialisation of `Current'
		local
			l_window_builder:GAME_WINDOW_RENDERED_BUILDER
		do
			create l_window_builder
			window := l_window_builder.generate_window
			mouse_x := window.width // 2
			mouse_y := window.height // 2
			create follower.make (0, mouse_x, mouse_y, 100)
		end

feature -- Access

	run
			-- Launch `Current'
		do
			game_library.iteration_actions.extend (agent on_iteration)
			window.mouse_motion_actions.extend (agent on_mouse_move)
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.launch
		end

	window:GAME_WINDOW_RENDERED
			-- Where to draw the scene.

	follower:FOLLOWER
			-- Used to follow the mouse.

	mouse_x:INTEGER
			-- Last known value of the mouse horizontal position

	mouse_y:INTEGER
			-- Last known value of the mouse vertical position

feature {NONE} -- Implementation	

	on_iteration(a_timestamp:NATURAL)
			-- Launched at each game loop. `a_timestamp' is used to update delta timed objects.
		do
			follower.update (a_timestamp, mouse_x, mouse_y)
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			window.renderer.clear
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (255, 0, 0))
			window.renderer.draw_rectangle (mouse_x - 5, mouse_y - 5, 10, 10)
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (255, 255, 255))
			window.renderer.draw_rectangle (follower.x.rounded - 5, follower.y.rounded - 5, 10, 10)
			window.renderer.present
		end

	on_mouse_move(a_timestamp:NATURAL; a_mouse_state:GAME_MOUSE_MOTION_EVENT;
					a_delta_x, a_delta_y:INTEGER_32)
			-- When the user move the mouse, update `mouse_x' and `mouse_y' using
			-- the values in `a_mouse_state'. `a_timestamp', `a_delta_x' and `a_delta_y'
			-- are not used.
		do
			mouse_x := a_mouse_state.x
			mouse_y := a_mouse_state.y
		end

	on_quit(a_timestamp:NATURAL)
			-- Stop the execution of `Current'. `a_timestamp' is not used.
		do
			game_library.stop
		end

end
