note
	description : "Exemple of drawing on a window using renderers."
	authors		: "Louis Marchand"
	date        : "Fri, 13 Jan 2017 16:38:24 +0000"
	revision    : "1.0"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_window_builder: GAME_WINDOW_RENDERED_BUILDER
			l_window:GAME_WINDOW_RENDERED
		do
			game_library.enable_video
			create l_window_builder
			l_window_builder.set_dimension (70, 70)
			l_window := l_window_builder.generate_window
			draw_scene(l_window.renderer)
			game_library.quit_signal_actions.extend (agent (a_timestamp:NATURAL_32) do game_library.stop end)
			l_window.expose_actions.extend (agent window_expose(l_window, ?))
			l_window.update
			game_library.launch
		end

	draw_scene(a_renderer:GAME_RENDERER)
			-- Draw the scene on `a_renderer'
		do
			a_renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			a_renderer.clear
			a_renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (255, 255, 255))
			a_renderer.draw_filled_rectangle (10, 10, 10, 10)
			a_renderer.draw_filled_rectangle (50, 10, 10, 10)
			a_renderer.draw_filled_rectangle (30, 30, 10, 10)
			a_renderer.draw_filled_rectangle (10, 40, 10, 10)
			a_renderer.draw_filled_rectangle (50, 40, 10, 10)
			a_renderer.draw_filled_rectangle (20, 50, 30, 10)
		end

	window_expose(a_window:GAME_WINDOW; a_timestamp:NATURAL_32)
			-- When needed, redraw `a_window'
		do
			a_window.update
		end

end
