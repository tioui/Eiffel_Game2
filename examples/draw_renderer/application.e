note
	description : "Exemple of drawing on a window using renderers."
	date        : "2015, Febuary 19"
	revision    : "0.1"

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
			l_window:GAME_WINDOW_RENDERED
		do
			game_library.enable_video
			create l_window.make_default ("Test", 300, 300)
			game_library.quit_signal_actions.extend (agent (a_timestamp:NATURAL_32) do game_library.stop end)
			l_window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (0, 0, 0))
			l_window.renderer.clear
			l_window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (255, 255, 255))
			l_window.renderer.draw_filled_rectangle (10, 20, 30, 40)
			l_window.renderer.present
			l_window.expose_actions.extend (agent window_expose(l_window, ?))
			game_library.launch
			game_library.quit_library
		end

	window_expose(a_window:GAME_WINDOW; a_timestamp:NATURAL_32)
		do
			a_window.update
		end

end
