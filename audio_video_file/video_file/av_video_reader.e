note
	description: "Used to play a {AV_VIDEO_MEDIA}"
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 03:35:44 +0000"
	revision: "0.1"

class
	AV_VIDEO_READER

inherit

	AV_ANY

	AV_ERROR_MANAGER
		select
			clear_error,
			put_error,
			message,
			last_error
		end

	GAME_SDL_ANY
		rename
			clear_error as clear_sdl_error,
			last_error as last_sdl_error
		end

create
	make

feature {NONE} -- Initialization

	make (a_texture: GAME_TEXTURE_STREAMING)
			-- Initialization for `Current' using `a_texture' as `texture'.
		require
			Is_iyuv_format: a_texture.pixel_format.is_iyuv
			Texture_Valid: not a_texture.has_error
		do
			texture := a_texture
			create video_queued.make
			is_auto_resize := true
			has_error := False
		ensure
			Texture_Assign: texture = a_texture
		end

feature -- Access

	texture: GAME_TEXTURE_STREAMING
			-- Used to draw images to screen

	play (a_timestamp: NATURAL_32)
			-- Start the playback
		require
			Play_Has_Video_Queud: video_queued_count > 0
		do
			is_playing := true
			is_on_pause := false
			next_frame_ticks := a_timestamp
		end

	pause
			-- Put the playback on hold.
		require
			Pause_Is_Playing: is_playing
		do
			is_playing := false
			is_on_pause := true
		end

	stop
			-- Completely stop the playback.
		do
			is_playing := false
			is_on_pause := false
			video_queued.wipe_out
		end

	is_playing: BOOLEAN
			-- `Current' is presently playing a video

	is_on_pause: BOOLEAN
			-- The playback of `Current' is presently on hold

	is_stop: BOOLEAN
			-- `Current' is not playing anymore.
		do
			Result := not is_playing and not is_on_pause
		end

	is_auto_resize: BOOLEAN
			-- The video will automatically take the dimension of the texture that received
			-- the pixels

	enable_auto_resize
			-- Activate `is_auto_resize'
		do
			is_auto_resize := true
		end

	disable_auto_resize
			-- Desactivate `is_auto_resize'
		do
			is_auto_resize := true
		end

	queue_video_loop (a_video: AV_VIDEO_MEDIA; a_loop_count: INTEGER)
			-- Queue `a_video` to play for `a_loop_count'
		do
			video_queued.put ([a_video, a_loop_count])
		end

	queue_video_infinite_loop (a_video: AV_VIDEO_MEDIA)
			-- Queue `a_video` to loop indefinitely
		do
			queue_video_loop (a_video, -1)
		end

	queue_video (a_video: AV_VIDEO_MEDIA)
			-- Queue `a_video` to play for a single loop
		do
			queue_video_loop (a_video, 0)
		end

	video_queued_count: INTEGER
			-- The number of video on the playing queue
		do
			Result := video_queued.count
		end

	update_texture (a_timestamp: NATURAL_32)
			-- Update `a_texture' to get the last picture of the video if a new
			-- image is ready.
			-- Note that `a_timestamp' is used to synchronise the picture rate.
		require
			No_Error: not has_error
		do
			if is_playing then
				if not video_queued.item.video.end_of_file then
					from
					until
						not is_playing or else
						video_queued.item.video.end_of_file or else
						a_timestamp < next_frame_ticks.floor.to_natural_32
					loop
						video_queued.item.video.decode_frame
						if not video_queued.item.video.end_of_file then
							frame_to_texture
						else
							manage_end_of_file (a_timestamp)
						end
					end
				else
					manage_end_of_file (a_timestamp)
				end
			end
		end

feature {NONE} -- Implementation - Routines

	manage_end_of_file (a_timestamp: NATURAL_32)
			-- Launched when the media end_of_file has been found.
		require
			Video_Is_End_Of_File: video_queued.item.video.end_of_file
		do
			video_queued.item.video.restart
			if video_queued.item.nb_loop > 0 then
				video_queued.item.nb_loop := video_queued.item.nb_loop - 1
			elseif video_queued.item.nb_loop = 0 then
				video_queued.remove
				if video_queued.is_empty then
					stop
				end
			end
			next_frame_ticks := a_timestamp
		end

	frame_to_texture
			-- Copy the current frame in `a_texture'
		require
			No_Error: not has_error
		local
			l_error: INTEGER
			l_output_frame: POINTER
			l_must_free_frame: BOOLEAN
		do
			l_must_free_frame := False
			if video_queued.item.video.height ~ texture.height and video_queued.item.video.width ~ texture.width then
				l_output_frame := video_queued.item.video.last_decoded_frame
			else
				if is_auto_resize then
					l_output_frame := rescale_current_frame (texture.width, texture.height)
					l_must_free_frame := True
				else
					l_output_frame := video_queued.item.video.last_decoded_frame
				end
			end
			l_error := {GAME_SDL_EXTERNAL}.sdl_updateyuvtexture (texture.item, void_ptr, {AV_EXTERNAL}.get_av_frame_struct_data_i (l_output_frame, 0), {AV_EXTERNAL}.get_av_frame_struct_linesize_i (l_output_frame, 0), {AV_EXTERNAL}.get_av_frame_struct_data_i (l_output_frame, 1), {AV_EXTERNAL}.get_av_frame_struct_linesize_i (l_output_frame, 1), {AV_EXTERNAL}.get_av_frame_struct_data_i (l_output_frame, 2), {AV_EXTERNAL}.get_av_frame_struct_linesize_i (l_output_frame, 2))
			if l_must_free_frame then
				{AV_EXTERNAL}.av_frame_free ($l_output_frame)
			end
			manage_error_code (l_error, "Cannot draw video frame on texture")
			next_frame_ticks := next_frame_ticks + (video_queued.item.video.frequency * 1000.0)
		end

	rescale_current_frame (a_width, a_height: INTEGER): POINTER
			-- Create a new frame that has been rescale to fit to (`a_width', `a_height')
		local
			l_converter: POINTER
			l_frame_buffer: POINTER
			l_error, l_memory_size: INTEGER
		do
			Result := {AV_EXTERNAL}.av_frame_alloc
			l_converter := {AV_VIDEO_EXTERNAL}.sws_getContext (video_queued.item.video.width, video_queued.item.video.height, video_queued.item.video.pixel_format_index, a_width, a_height, {AV_EXTERNAL}.AV_PIX_FMT_YUV420P, {AV_VIDEO_EXTERNAL}.SWS_BICUBIC, void_ptr, void_ptr, void_ptr)
			l_memory_size := {AV_VIDEO_EXTERNAL}.av_image_get_buffer_size ({AV_EXTERNAL}.AV_PIX_FMT_YUV420P, a_width, a_height, 32)
			l_frame_buffer := {AV_EXTERNAL}.av_malloc (l_memory_size)
			l_error := {AV_VIDEO_EXTERNAL}.av_image_fill_arrays ({AV_EXTERNAL}.get_av_frame_struct_data (Result), {AV_EXTERNAL}.get_av_frame_struct_linesize (Result), l_frame_buffer, {AV_EXTERNAL}.AV_PIX_FMT_YUV420P, a_width, a_height, 32)
			{AV_EXTERNAL}.av_free (l_frame_buffer)
			if l_error >= 0 then
				l_error := {AV_VIDEO_EXTERNAL}.sws_scale (l_converter, {AV_EXTERNAL}.get_av_frame_struct_data (video_queued.item.video.last_decoded_frame), {AV_EXTERNAL}.get_av_frame_struct_linesize (video_queued.item.video.last_decoded_frame), 0, video_queued.item.video.height, {AV_EXTERNAL}.get_av_frame_struct_data (Result), {AV_EXTERNAL}.get_av_frame_struct_linesize (Result));
			else
				read_av_error ("Cannot scale video image", l_error)
			end
		end

feature {NONE} -- Implementation - Variables

	video_queued: LINKED_QUEUE [TUPLE [video: AV_VIDEO_MEDIA; nb_loop: INTEGER]]
			-- Every video to play with the number of loop it must play

	next_frame_ticks: REAL_64
			-- When to show the next picture frame.

invariant
	Playing_A_Video: is_playing implies not video_queued.is_empty

end
