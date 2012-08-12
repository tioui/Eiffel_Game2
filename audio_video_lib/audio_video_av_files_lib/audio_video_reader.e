note
	description: "Summary description for {AUDIO_VIDEO_READER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AUDIO_VIDEO_READER

inherit
	VIDEO_READER
	rename
		make as make_video_reader,
		video_queued_count as media_queued_count,
		queue_video_loop as queue_media_loop,
		queue_video_infinite_loop as queue_media_infinite_loop,
		queue_video as queue_media,
		load_video as load_media,
		stop as stop_video
	export
		{NONE} update_video_to_screen, stop_video
	redefine
		play,
		pause,
		load_media,
		queue_media_loop,
		dispose
	end

	AUDIO_SOURCE
	rename
		make as make_audio_source,
		is_playing as audio_is_playing,
		stop as stop_audio
	export
		{NONE} queue_sound_loop, queue_sound, queue_sound_infinite_loop, is_pause, audio_is_playing, stop_audio
	redefine
		play,
		pause,
		update_playing,
		dispose
	end

create
	make

feature {NONE} -- Initialization

	make(lib_ctrl:GAME_LIB_CONTROLLER;l_buffer_size:INTEGER)
			-- Initialization for `Current'.
		do
			make_video_reader(lib_ctrl)
			make_audio_source (l_buffer_size)
		end

feature -- Access

	play
		require else
			Play_Has_Media_Queud:media_queued_count>0
		do
			precursor {VIDEO_READER}
			precursor {AUDIO_SOURCE}
		end

	pause
		require else
			Pause_Is_Playing: is_playing
		do
			precursor {VIDEO_READER}
			precursor {AUDIO_SOURCE}
		end

	stop
		do
			stop_video
			stop_audio
		end


	queue_media_loop(video:AUDIO_VIDEO_MEDIA;nb_loop:INTEGER)
		do
			video_queued.put ([video,nb_loop])
			queue_sound(video)
		end

	update_playing
		do
			if video_finish then
				load_media
			else
				update_video_to_screen
				precursor
			end
		end

feature {NONE} -- Implementation - Routines

	load_media
		do
			video_finish:=true
			if not audio_is_playing then
				video_finish:=false
				precursor {VIDEO_READER}
			end
		end

	dispose
		do
			precursor {AUDIO_SOURCE}
			precursor {VIDEO_READER}
		end

feature {NONE} -- Implementation - Variables

	video_finish:BOOLEAN

end
