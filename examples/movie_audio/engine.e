note
	description: "Game engine to show how to play the sound of a movie."
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 05:08:09 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED
	AUDIO_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialisation

	make
			-- Initialisation of `Current'
		local
			l_builder:GAME_WINDOW_RENDERED_BUILDER
		do
			create l_builder
			l_builder.set_dimension (800, 600)
			window := l_builder.generate_window
			audio_library.sources_add
			audio_source := audio_library.last_source_added
			create video.make ("../movie/movie.mp4")
			if video.is_openable then
				video.open
				has_error := not video.is_open
			else
				has_error := true
			end
			load_background
			has_error := has_error or window.has_error
		end

	load_background
			-- Initialisation of `background`
		local
			l_image:IMG_IMAGE_FILE
			l_pixel_format:GAME_PIXEL_FORMAT
		do
			create l_image.make ("background.png")
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					create background.make_from_image (window.renderer, l_image)
					has_error := has_error or background.has_error
				else
					has_error := True
					create l_pixel_format
					create background.make (window.renderer, l_pixel_format, 1, 1)
				end
			else
				has_error := True
				create l_pixel_format
				create background.make (window.renderer, l_pixel_format, 1, 1)
			end
		end

feature -- Access

	run
			-- Launch the game
		require
			No_Error: not has_error
		do
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.iteration_actions.extend (agent on_iteration)
			audio_source.queue_sound (video)    -- For the video images to be played, the video must be queued to an audio source
			audio_source.play
			game_library.launch
		end

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene.

	has_error:BOOLEAN
			-- an error occured while making `Current'

	video:AV_SOUND_FILE
			-- The Movie to playthe audio

	background:GAME_TEXTURE
			-- the background image

	audio_source:AUDIO_SOURCE

feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL)
			-- At each loop iteration of the game
		do
			if not audio_source.is_playing then
				on_quit (a_timestamp)
			end
			window.renderer.clear
			audio_library.update
			window.renderer.draw_texture (background,
						window.width//2 - background.width//2,
						window.height//2 - background.height//2)
			window.update
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user quit the game
		do
			game_library.stop
		end

end
