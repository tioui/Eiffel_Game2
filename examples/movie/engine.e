note
	description: "Game engine to show how to play a video."
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
			l_pixel_format:GAME_PIXEL_FORMAT
		do
			create l_builder
			l_builder.set_dimension (1280, 720)
			window := l_builder.generate_window
			create l_pixel_format
			l_pixel_format.set_iyuv
			-- It is recommanded to create the texture the same size of the video.
			create video_texture.make (window.renderer, l_pixel_format, 1280, 720)
			audio_library.sources_add
			create video_reader.make (video_texture, audio_library.last_source_added)
			create video.make ("movie.mp4")
			if video.is_openable then
				video.open
				has_error := not video.is_open
			else
				has_error := true
			end
			has_error := has_error or window.has_error
		end

feature -- Access

	run
			-- Launchthe game
		require
			No_Error: not has_error
		do
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.iteration_actions.extend (agent on_iteration)
			video_reader.queue_video_loop (video, 1)    -- For the video images to be played, the video must be queued to an audio source
			video_reader.play (game_library.time_since_create)
			game_library.launch
		end

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene.

	has_error:BOOLEAN
			-- an error occured while making `Current'

	video:AV_AUDIO_VIDEO_FILE
			-- The Movie to play

	video_texture:GAME_TEXTURE_STREAMING
			-- A texture used to draw the `video' on the `window'

	video_reader:AV_AUDIO_VIDEO_READER
			-- Used to control the visual playback of the `video'

feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL)
			-- At each loop iteration of the game
		do
			if not video_reader.is_playing then
				on_quit (a_timestamp)
			end
			window.renderer.clear
			video_reader.update_texture (a_timestamp) -- The images of the movie must be draw to a texture
			window.renderer.draw_texture (video_texture, 0, 0)
			window.update
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user quit the game
		do
			game_library.stop
		end

end
