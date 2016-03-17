note
	description: "[
					Example of sound playing with background music (containing intro and loop body).
					The sound is trigger with a key press event from a window.
				]"
	author: "Louis Marchand"
	date: "Thu, 17 Mar 2016 13:26:06 +0000"
	revision: "1.0"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED		-- To use `game_library'
	AUDIO_LIBRARY_SHARED	-- To use `audio_library'

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization of `Current'
		do
			has_error := False
			create_window
			create_sound
		end


feature -- Access

	run
			-- Preparing and launching the game
		require
			No_Error: not has_error
		do
			game_library.quit_signal_actions.extend (agent on_quit)		-- When the X of the window is pressed, execute the on_quit method.
			window.key_pressed_actions.extend (agent on_key_down_sound)
			game_library.iteration_actions.extend (agent on_iteration)	-- To be sure that the sound will auto update sources buffers. You can use the launch_in_thread
																		-- feature of the AUDIO_CONTROLLER instead, but your application must be multi-thread enable to do so.
			window.key_pressed_actions.extend (agent on_key_down_quit)
			music_source.play
			game_library.launch	-- The controller will loop until the stop controller.method is called (in method on_quit).
		end

	window:GAME_WINDOW_SURFACED
			-- The window to draw the scene

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	sound_source:AUDIO_SOURCE
			-- The source to play the `sound'

	music_source:AUDIO_SOURCE
			-- The source to play the music

	sound:AUDIO_SOUND
			-- To play when the user interact with the program

feature {NONE} -- Implementation

	create_window
			-- Create the window that will be show. The window have an icon and a title
		local
			l_icon_image:GAME_IMAGE_BMP_FILE
			l_icon:GAME_SURFACE
			l_window_builder:GAME_WINDOW_SURFACED_BUILDER
		do
			create l_icon_image.make ("icon.bmp")
			create l_window_builder
			l_window_builder.set_title ("Sound exemple (space to play sound)")
			window := l_window_builder.generate_window
			window.surface.draw_rectangle (create {GAME_COLOR}.make_rgb (0, 0, 0), 0, 0, window.width, window.height)
			if l_icon_image.is_openable then
				l_icon_image.open
				if l_icon_image.is_open then
					create l_icon.share_from_image (l_icon_image)
					l_icon.set_transparent_color (create {GAME_COLOR}.make_rgb (255, 0, 255))
					window.set_icon (l_icon)
				else
					print("Cannot set the window icon.")
				end
			end
			has_error := window.has_error
		end

	create_sound
			-- Prepare sounds and sound sources
		local
			l_music_intro,l_music_loop:AUDIO_SOUND_FILE
		do
			create {AUDIO_SOUND_FILE}sound.make ("sound.aif")			-- This sound will be played when the user press the space bar.
			create l_music_intro.make ("intro.ogg")		-- This sound will be played once at the begining of the music
			create l_music_loop.make ("loop.flac")		-- This sound will be loop until the application stop.
														-- The library can use every sound file format that the libsndfile library can use (see: http://www.mega-nerd.com/libsndfile)
			audio_library.sources_add
			music_source:=audio_library.last_source_added	-- The first source will be use for playing the music
			audio_library.sources_add
			sound_source:=audio_library.last_source_added	-- The second source will be use for playing the space sound
			if sound.is_openable and l_music_intro.is_openable and l_music_loop.is_openable then
				sound.open
				l_music_intro.open
				l_music_loop.open
				if sound.is_open and l_music_intro.is_open and l_music_loop.is_open then
					music_source.queue_sound (l_music_intro)				-- Playing the intro first
					music_source.queue_sound_infinite_loop (l_music_loop)	-- After the intro end, loop the music loop
				else
					print("Cannot open sound files.")
					has_error := True
				end
			else
				print("Sound files not valid.")
				has_error := True
			end

		end

	on_iteration(a_timestamp:NATURAL)
			-- Each game loop iteration, update the audio buffers and the `window' surface
		do
			audio_library.update	-- Update every {SOUND_SOURCE} of the system
			window.update		-- Be sure that the window always has a body (try to remove it to see what I mean)
		end

	on_key_down_quit(a_timestamp: NATURAL_32; a_key_state: GAME_KEY_STATE)
			-- When the escape button is pressed (in `a_key_state') exit the application
		do
			if a_key_state.is_escape then			-- If the escape key as been pressed,
				game_library.stop					-- quit the application
			end
		end

	on_key_down_sound(a_timestamp: NATURAL_32; a_key_state: GAME_KEY_STATE)
			-- When the space button is pressed (in `a_key_state'), play `sount' in `sound_source'
		do
			if a_key_state.is_space and sound.is_open then			-- If the space key as been pressed, play the space sound
				sound_source.stop					-- Be sure that the queue buffer is empty on the sound_source object (when stop, the source queue is clear)
				sound.restart						-- Be sure that the sound is at the beginning
				sound_source.queue_sound (sound)	-- Queud the sound into the source queue
				sound_source.play
			end
		end

	on_quit(a_timestamp:NATURAL)
			-- This method is called when the quit signal is send to the application (ex: window X button pressed).
		do
			game_library.stop  -- Stop the controller loop (allow controller.launch to return)
		end

end
