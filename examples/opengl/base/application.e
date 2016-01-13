note
	description : "Simple OpenGL example"
	author: "Louis Marchand"
	date: "Tue, 29 Dec 2015 19:06:42 +0000"
	revision    : "1.0"

class
	APPLICATION

inherit
	GL
	GLU
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			game_library.enable_video
			game_library.enable_gl
			run
			game_library.clear_all_events
			game_library.quit_library
		end

	run
			-- Run the example
		local
			l_window_builder:GAME_WINDOW_GL_BUILDER
			l_window:GAME_WINDOW_GL
		do
			has_error := False
			l_window_builder.set_gl_version (1, 1)
			l_window_builder.enable_resizable
			if not l_window_builder.has_error then
				l_window := l_window_builder.generate_window
				if not l_window.has_error then
					init_gl
					if not has_error then
						l_window.expose_actions.extend (agent update_screen(?, l_window))
						l_window.size_change_actions.extend (agent on_resize(?, l_window))
						game_library.quit_signal_actions.extend (agent quit)
						game_library.launch
					end
				else
					io.error.put_string ("Cannot generate GL window%N")
					has_error := True
				end
			else
				io.error.put_string ("Cannot generate GL window%N")
				has_error := True
			end
		end

	init_gl
			-- Initialize OpenGL
		local
			l_error_code:NATURAL_32
		do
			glMatrixMode (gl_projection)
			glLoadIdentity
			l_error_code := glGetError
			if l_error_code ~ gl_no_error then
				glMatrixMode (gl_ModelView)
				glLoadIdentity
				l_error_code := glGetError
				if l_error_code ~ gl_no_error then
					glClearColor (0.0, 0.0, 0.0, 0.0)
					l_error_code := glGetError
					if not (l_error_code ~ gl_no_error) then
						io.error.put_string ("Cannot initializing OpenGL: " + glu_error_text (l_error_code) + "%N")
						has_error := True
					end
				else
					io.error.put_string ("Cannot initializing OpenGL: " + glu_error_text (l_error_code) + "%N")
					has_error := True
				end
			else
				io.error.put_string ("Cannot initializing OpenGL: " + glu_error_text (l_error_code) + "%N")
				has_error := True
			end
		end

	update_screen(a_timestamp:NATURAL_32; a_window:GAME_WINDOW)
			-- Redraw the scene
		do
			glClear (gl_color_buffer_bit)
			glBegin (gl_quads)
			glvertex2f (-0.5, -0.5)
			glvertex2f (0.5, -0.5)
			glvertex2f (0.5, 0.5)
			glvertex2f (-0.5, 0.5)
			glEnd
			a_window.update
		end

	on_resize(a_timestamp:NATURAL_32; a_window:GAME_WINDOW_GL)
			-- When `a_window' is resized
		local
			l_size:TUPLE[width, height:INTEGER]
		do
			l_size := a_window.gl_drawable_size
			glviewport (0, 0, l_size.width, l_size.height)
			update_screen(a_timestamp, a_window)
		end

	quit(a_timestamp:NATURAL_32)
			-- When the user quit the application
		do
			game_library.stop
		end

	has_error:BOOLEAN
			-- An error occured

end
