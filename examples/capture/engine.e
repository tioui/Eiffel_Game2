note
	description: "An engine that show the output of a sound capture device."
	author: "Louis Marchand"
	date: "Thu, 15 Jun 2017 20:41:08 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED
	AUDIO_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization of `Current'
		local
			l_window_builder:GAME_WINDOW_RENDERED_BUILDER
		do
			game_library.enable_video
			print("Capture devices:%N")
			across audio_library.capture_devices as la_devices loop
				io.standard_default.put_string("    " + la_devices.item.name.to_string_8 + "%N")
			end
			audio_library.enable_capture (44100, 1, 8, 1024)
			audio_capture := audio_library.capture_controller
			io.standard_default.put_string("Capture device used: " + audio_library.capture_device.name.to_string_8 + "%N")
			create l_window_builder
			l_window_builder.set_dimension (500, 350)
			window := l_window_builder.generate_window
			create background_color.make_rgb (0, 0, 0)
			create foreground_color.make_rgb (255, 255, 255)
		end

feature -- Access

	has_error:BOOLEAN
			-- An error occured while initializing `Current'

	run
			-- Execute the game loop
		require
			No_Error: not has_error
		do
			game_library.iteration_actions.extend (agent on_iteration)
			game_library.quit_signal_actions.extend (agent on_quit)
			window.renderer.set_drawing_color (background_color)
			window.renderer.clear
			window.update
			audio_capture.start_capture
			game_library.launch
			audio_capture.stop_capture
		end

	window:GAME_WINDOW_RENDERED
			-- Where to draw the scene

	audio_capture:AUDIO_CAPTURE_CONTROLLER
			-- The controller used to capture audio samples

	background_color:GAME_COLOR
			-- The color behind the scene

	foreground_color:GAME_COLOR
			-- The color on top of the scene

feature {NONE} -- Implementaton

	on_iteration(a_timestamp:NATURAL)
			-- Launched at each game loop iteration
		local
			l_renderer:GAME_RENDERER
			l_old_x, l_old_y, l_new_x, l_new_y:INTEGER
		do
			l_renderer := window.renderer
			audio_capture.update
			if audio_capture.has_samples then
				l_renderer.set_drawing_color (background_color)
				l_renderer.clear
				l_renderer.set_drawing_color (foreground_color)
				l_old_x := 10
				l_old_y := 128 + 50
				across
					1 |..| (audio_capture.buffer_sample_count) as la_index
				loop
					l_new_x := l_old_x + 1
					l_new_y := audio_capture.get_sample (la_index.item)[1] + 50
					l_renderer.draw_line (l_old_x, l_old_y, l_new_x, l_new_y)
					l_old_x := l_new_x
					l_old_y := l_new_y
				end
				from until not audio_capture.has_samples loop
					audio_capture.update		-- To be sure that the application does not bust the audio system buffer
				end
			end
			l_renderer.present
		end

	on_quit(a_timestamp:NATURAL)
			-- Launched when the user quit the application
		do
			game_library.stop
		end

end
