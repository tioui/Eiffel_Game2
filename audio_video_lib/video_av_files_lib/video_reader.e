note
	description: "Summary description for {VIDEO_READER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VIDEO_READER
inherit
	AV_ANY
	DISPOSABLE

create
	make

feature {NONE} -- Initialization

	make(a_core_lib_ctrl:GAME_LIB_CONTROLLER)
			-- Initialization for `Current'.
		Require
			Video_Make_Screen_Must_Exist:a_core_lib_ctrl.screen_is_create
		do
			core_lib_ctrl:=a_core_lib_ctrl
			dst_rect:= dst_rect.memory_alloc ({GAME_SDL_EXTERNAL}.c_sizeof_sdl_rect)
			set_x (0)
			set_y (0)
			set_width (a_core_lib_ctrl.screen_surface.width)
			set_height (a_core_lib_ctrl.screen_surface.height)
			create video_queued.make
			is_auto_resize:=true
		end

feature -- Access




	x:INTEGER assign set_x
		do
			Result:={GAME_SDL_EXTERNAL}.get_rect_struct_x(dst_rect).to_integer
		end

	y:INTEGER assign set_y
		do
			Result:={GAME_SDL_EXTERNAL}.get_rect_struct_y(dst_rect).to_integer
		end

	width:INTEGER assign set_width
		do
			Result:={GAME_SDL_EXTERNAL}.get_rect_struct_w(dst_rect).to_integer_32
		end

	height:INTEGER assign set_height
		do
			Result:={GAME_SDL_EXTERNAL}.get_rect_struct_h(dst_rect).to_integer_32
		end

	set_x(a_x:INTEGER)
		do
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(dst_rect,a_x.to_integer_16)
		end

	set_y(a_y:INTEGER)
		do
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(dst_rect,a_y.to_integer_16)
		end

	set_width(a_width:INTEGER)
		do
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(dst_rect,a_width.to_natural_16)
		end

	set_height(a_height:INTEGER)
		do
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(dst_rect,a_height.to_natural_16)
		end

	play
		require
			Play_Has_Video_Queud:video_queued_count>0
		do
			if not is_on_pause then
				load_video
			end
			is_playing:=true
			is_on_pause:=false
			next_frame_ticks:=core_lib_ctrl.get_ticks
		end

	pause
		require
			Pause_Is_Playing: is_playing
		do
			is_playing:=false
			is_on_pause:=true
		end

	stop
		do
			is_playing:=false
			is_on_pause:=false
			video_queued.wipe_out
		end

	is_playing:BOOLEAN
	is_on_pause:BOOLEAN

	is_stop:BOOLEAN
		do
			Result:=not is_playing and not is_on_pause
		end

	is_auto_resize:BOOLEAN

	enable_auto_resize
		do
			is_auto_resize:=true
		end

	disable_auto_resize
		do
			is_auto_resize:=true
		end

	queue_video_loop(a_video:VIDEO_MEDIA;a_nb_loop:INTEGER)
		do
			video_queued.put ([a_video,a_nb_loop])
		end

	queue_video_infinite_loop(a_video:VIDEO_MEDIA)
		do
			queue_video_loop (a_video,-1)
		end

	queue_video(a_video:VIDEO_MEDIA)
		do
			queue_video_loop (a_video,0)
		end

	video_queued_count:INTEGER
		do
			Result:=video_queued.count
		end

	update_video_to_screen
		local
			error:INTEGER
			temp_delay:REAL_64
		do
			if is_playing and then core_lib_ctrl.get_ticks>=next_frame_ticks.floor.to_natural_32 then
				temp_delay:=(video_queued.item.video.time_base_num.to_double/video_queued.item.video.time_base_denum.to_double)
				video_queued.item.video.decode_frame
				if not video_queued.item.video.end_of_file then
					error:={GAME_SDL_EXTERNAL}.SDL_LockYUVOverlay(overlay)
					check error=0 end
					error:={AV_VIDEO_EXTERNAL}.sws_scale(converter, {AV_EXTERNAL}.get_av_frame_struct_data(video_queued.item.video.last_decoded_frame),
										{AV_EXTERNAL}.get_av_frame_struct_linesize(video_queued.item.video.last_decoded_frame),0,
										video_queued.item.video.height,	{AV_EXTERNAL}.get_av_frame_struct_data(pictureYUV),
										{AV_EXTERNAL}.get_av_frame_struct_linesize(pictureYUV));
					{GAME_SDL_EXTERNAL}.SDL_UnlockYUVOverlay(overlay)
					{GAME_SDL_EXTERNAL}.SDL_DisplayYUVOverlay(overlay, dst_rect)
					temp_delay:=temp_delay+({AV_EXTERNAL}.get_av_frame_struct_repeat_pict(video_queued.item.video.last_decoded_frame)*(temp_delay*0.5))
					next_frame_ticks:=next_frame_ticks+(temp_delay*1000.0)
				else
					video_queued.item.video.restart
					if video_queued.item.nb_loop>0 then
						video_queued.item.nb_loop:=video_queued.item.nb_loop-1
					elseif video_queued.item.nb_loop=0 then
						video_queued.remove
						if video_queued.is_empty then
							stop
						else
							load_video
						end
					end
					next_frame_ticks:=core_lib_ctrl.get_ticks
				end
			elseif not is_stop then
				{GAME_SDL_EXTERNAL}.SDL_DisplayYUVOverlay(overlay, dst_rect)
			end
		end

feature {NONE} -- Implementation - Routines

	load_video
		local
			size,error:INTEGER
		do
			if is_auto_resize then
				set_width (video_queued.item.video.width)
				set_height (video_queued.item.video.height)
			end
			free_converter
			overlay:={GAME_SDL_EXTERNAL}.SDL_CreateYUVOverlay(video_queued.item.video.width,video_queued.item.video.height,{GAME_SDL_EXTERNAL}.SDL_YV12_OVERLAY,{GAME_SDL_EXTERNAL}.SDL_GetVideoSurface)
			converter:={AV_VIDEO_EXTERNAL}.sws_getContext(video_queued.item.video.width,video_queued.item.video.height,
									video_queued.item.video.pix_fmt,video_queued.item.video.width,video_queued.item.video.height,
									{AV_EXTERNAL}.PIX_FMT_YUV420P,{AV_VIDEO_EXTERNAL}.SWS_BICUBIC,void_ptr,void_ptr,void_ptr)
			check not converter.is_default_pointer end
			pictureYUV:={AV_EXTERNAL}.avcodec_alloc_frame
			check not pictureYUV.is_default_pointer end
			size:={AV_EXTERNAL}.avpicture_get_size(video_queued.item.video.pix_fmt,video_queued.item.video.width,video_queued.item.video.height)
			pictureYUV_buffer:={AV_EXTERNAL}.av_malloc(size)
			error:={AV_EXTERNAL}.avpicture_fill(pictureYUV,pictureYUV_buffer,video_queued.item.video.pix_fmt,video_queued.item.video.width,video_queued.item.video.height)
			check error>=0 end
			{AV_EXTERNAL}.set_av_frame_struct_data_i(pictureYUV,0,
								{GAME_SDL_EXTERNAL}.get_sdl_overlay_struct_pixels_i(overlay,0))
			{AV_EXTERNAL}.set_av_frame_struct_data_i(pictureYUV,1,
								{GAME_SDL_EXTERNAL}.get_sdl_overlay_struct_pixels_i(overlay,2))
			{AV_EXTERNAL}.set_av_frame_struct_data_i(pictureYUV,2,
								{GAME_SDL_EXTERNAL}.get_sdl_overlay_struct_pixels_i(overlay,1))
			{AV_EXTERNAL}.set_av_frame_struct_linesize_i(pictureYUV,0,
								{GAME_SDL_EXTERNAL}.get_sdl_overlay_struct_pitches_i(overlay,0))
			{AV_EXTERNAL}.set_av_frame_struct_linesize_i(pictureYUV,1,
								{GAME_SDL_EXTERNAL}.get_sdl_overlay_struct_pitches_i(overlay,2))
			{AV_EXTERNAL}.set_av_frame_struct_linesize_i(pictureYUV,2,
								{GAME_SDL_EXTERNAL}.get_sdl_overlay_struct_pitches_i(overlay,1))

		end

	free_converter
		do
			if overlay/=Void then
				{GAME_SDL_EXTERNAL}.SDL_FreeYUVOverlay(overlay)
				{AV_EXTERNAL}.av_free(converter)
				{AV_EXTERNAL}.av_free(pictureYUV)
				{AV_EXTERNAL}.av_free(pictureYUV_buffer)
			end

		end

	dispose
		do
			video_queued.wipe_out
			dst_rect.memory_free
			free_converter
		end

feature {NONE} -- Implementation - Variables

	core_lib_ctrl:GAME_LIB_CONTROLLER

	overlay:POINTER

	dst_rect:POINTER

	video_queued:LINKED_QUEUE[TUPLE[video:VIDEO_MEDIA;nb_loop:INTEGER]]

	converter:POINTER
	pictureYUV:POINTER
	pictureYUV_buffer:POINTER


	next_frame_ticks:REAL_64

end
