note
	description: "Engine used to draw rotated texture"
	author: "Louis Marchand"
	date: "Wed, 06 Dec 2023 02:47:50 +0000"
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
		do
			create l_builder
			window := l_builder.generate_window
			create arrow.make (window.renderer)
			arrow.set_x (window.width//2)
			arrow.set_y (window.height//2)
			has_error := arrow.has_error
		end

feature -- Access

	run
			-- Execution of `Current'
		require
			No_Error: not has_error
		do
			game_library.iteration_actions.extend (agent on_iteration)
			window.mouse_motion_actions.extend (agent on_mouse_move)
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.launch
		end

	has_error:BOOLEAN
			-- An error occured at creation.

	window:GAME_WINDOW_RENDERED
			-- Where to draw the scene

	arrow:ARROW
			-- The arrow to draw rotated

feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL)
			-- Main game loop iteration.
			-- `a_timestamp' unused.
		do
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (128, 128, 128))
			window.renderer.clear

			window.renderer.draw_texture_with_rotation (arrow.texture, arrow.middle_x, arrow.middle_y, arrow.half_width, arrow.half_height, arrow.angle)
			window.renderer.present
		end

	on_mouse_move(a_timestamp:NATURAL_32; a_mouse_state:GAME_MOUSE_MOTION_EVENT; a_delta_x, a_delta_y:INTEGER_32)
			-- When the user move the mouse using `a_mouse_state' to get `x' and `y' mouse position.
			-- `a_timestamp', `a_delta_x' and `a_delta_y' unused.
		do
			arrow.target (a_mouse_state.x, a_mouse_state.y)
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user quit the application.
			-- `a_timestamp' unused.
		do
			game_library.stop
		end
end
