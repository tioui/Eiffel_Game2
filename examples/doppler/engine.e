note
	description: "An example of the Audio library simulating a doppler effect"
	author: "Louis Marchand"
	date: "Tue, 05 Apr 2016 01:14:02 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	AUDIO_LIBRARY_SHARED
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			has_error := False
			create_window
			player := create_texture("player.png")
			bike := create_texture("bike.png")
			create_bike_source
		end

	create_window
			-- Initialize `window'
		local
			l_builder:GAME_WINDOW_RENDERED_BUILDER
		do
			create l_builder
			l_builder.set_dimension (600, 200)
			window := l_builder.generate_window
			if not window.has_error then
				window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (200, 200, 200))
			else
				io.error.put_string ("Cannot generate the window%N")
				has_error := True
			end
		end

	create_texture(a_filename:STRING):GAME_TEXTURE
			-- Initialize a {GAME_TEXTURE} from a `a_filename'
			-- Note: On error, has a side effect on `has_error'
		local
			l_image:IMG_IMAGE_FILE
		do
			create l_image.make (a_filename)
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					create Result.make_from_image (window.renderer, l_image)
				else
					create Result.make(window.renderer, create {GAME_PIXEL_FORMAT}, 1, 1)
					io.error.put_string ("Cannot load image file " + a_filename + "%N")
					has_error := True
				end
			else
				create Result.make(window.renderer, create {GAME_PIXEL_FORMAT}, 1, 1)
				io.error.put_string ("Cannot load image file " + a_filename + "%N")
				has_error := True
			end
		end

	create_bike_source
			-- Initialization of `bike_source'
		local
			l_sound:AUDIO_SOUND_FILE
		do
			audio_library.sources_add
			bike_source := audio_library.last_source_added
			create l_sound.make ("motor.ogg")
			if l_sound.is_openable then
				l_sound.open
				if l_sound.is_open then
					bike_source.queue_sound_infinite_loop (l_sound)		-- Play the motor sound forever
				else
					io.error.put_string ("Cannot load sound file motor.ogg%N")
					has_error := True
				end
			else
				io.error.put_string ("Cannot load sound file motor.ogg%N")
				has_error := True
			end
		end

feature -- Access

	run
			-- Execute the work of `Current'
		require
			No_Error: not has_error
		do
			game_library.iteration_actions.extend (agent on_iteration)
			game_library.quit_signal_actions.extend (agent on_quit)

			-- Set the position of the listener (the `player'). The division by 600 is because the Audio library
			-- does not manage position in pixel like the game library.Everything is evaluate in a universe between -1 and 1
			audio_library.listener.set_position ((284/600).truncated_to_real, (120/600).truncated_to_real, 0)

			-- Set the position, direction and velocity of the bike sound source (bottom of the bike)
			bike_source.set_position ((50/600).truncated_to_real, (110/600).truncated_to_real, 0)
			bike_source.set_direction ((600/600).truncated_to_real, (110/600).truncated_to_real, 0)
			bike_source.set_velocity (120, 0, 0)

			process_percent := 0

			bike_source.play

			game_library.launch
		end

	has_error:BOOLEAN
			-- An error occured when initialising `Current'

	player:GAME_TEXTURE
			-- The main character of the game (visual position of the listener)

	bike:GAME_TEXTURE
			-- An object passing through (visual position of the sound source)

	bike_source:AUDIO_SOURCE
			-- The audible representation of the `bike'

	window:GAME_WINDOW_RENDERED
			-- The {GAME_WINDOW} to draw the scene

feature {NONE} -- Initialization

	on_iteration(a_timestamp:NATURAL)
			-- Call at each game loop iteration
		do
			process_percent := process_percent + 1
			audio_library.update
			draw_scene
			bike_source.set_position (((process_percent*5+50)/600).truncated_to_real, (100/600).truncated_to_real, 0) -- Move the bike motor sound source
			if process_percent >= 100 then
				game_library.stop
			end
		end

	draw_scene
			-- Draw the scene to the `window'
		do
			window.renderer.clear
			window.renderer.draw_texture (player, 284, 120)
			window.renderer.draw_texture (bike, process_percent*5, 70)
			window.update
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user quit the application
		do
			game_library.stop
		end

	process_percent:INTEGER
			--  percentage of the scene action process (start at 0 and finish at 100)

end
