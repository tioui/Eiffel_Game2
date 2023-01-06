note
	description: "Game engine to show how to play a video (no sound)."
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 05:08:09 +0000"
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
			l_pixel_format:GAME_PIXEL_FORMAT
		do
			create l_builder
			l_builder.set_dimension (1500, 938)
			window := l_builder.generate_window
			create l_pixel_format
			l_pixel_format.set_iyuv
			create video_texture.make (window.renderer, l_pixel_format, 1280, 720)
			create video.make ("../movie/movie.mp4")
			if video.is_openable then
				video.open
				has_error := not video.is_open
			else
				has_error := true
			end
			create video_reader.make(video_texture)
			load_background
			has_error := has_error or window.has_error
		end

	load_background
			-- Initialisation of `background'
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
			video_reader.queue_video_infinite_loop (video)    -- For the video images to be played, the video must be queued to an audio source
			video_reader.play (game_library.time_since_create)
			game_library.launch
		end

	window:GAME_WINDOW_RENDERED
			-- The window to draw the scene.

	has_error:BOOLEAN
			-- an error occured while making `Current'

	video:AV_VIDEO_FILE
			-- The Movie to play

	video_texture:GAME_TEXTURE_STREAMING
			-- A texture used to draw the `video' on the `window'

	background:GAME_TEXTURE
			-- the background image

	video_reader:AV_VIDEO_READER
			-- Used to control the visual playback of the `video'

feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL)
			-- At each loop iteration of the game
		do
			window.renderer.clear
			video_reader.update_texture (a_timestamp) -- The images of the movie must be draw to a texture

			window.renderer.draw_sub_texture_with_scale (video_texture, 0, 0, video_texture.width, video_texture.height,
							67, 83, 294, 227)
			window.renderer.draw_texture (background, 0, 0)
			window.update
		end

	on_quit(a_timestamp:NATURAL)
			-- When the user quit the game
		do
			game_library.stop
		end

end
