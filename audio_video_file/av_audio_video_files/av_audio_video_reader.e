note
	description: "A reader of audio-video media."
	author: "Louis Marchand"
	date: "Thu, 29 Dec 2022 00:40:33 +0000"
	revision: "0.1"

class
	AV_AUDIO_VIDEO_READER

inherit
	AV_VIDEO_READER
		rename
			make as make_video_reader
		redefine
			play, pause, stop, queue_video_loop, update_texture,
			manage_end_of_file, queue_video_infinite_loop, queue_video
		end

create
	make

feature {NONE} -- Implementation

	make(a_texture: GAME_TEXTURE_STREAMING; a_audio_source:AUDIO_SOURCE)
			-- Initialization for `Current' using `a_texture' as `texture' and
			-- `a_audio_source' as `audio_source'.
		require
			Is_iyuv_format: a_texture.pixel_format.is_iyuv
			Texture_Valid: not a_texture.has_error
		do
			make_video_reader(a_texture)
			audio_source := a_audio_source
		ensure
			Texture_Assign: texture = a_texture
			Audio_Source_Assign: audio_source = a_audio_source
		end

feature -- Access

	audio_source:AUDIO_SOURCE
			-- The source used to play the audio

	play (a_timestamp: NATURAL_32)
			-- <Precursor>
		do
			Precursor(a_timestamp)
			audio_source.play
		end

	pause
			-- <Precursor>
		do
			Precursor
			audio_source.pause
		end

	stop
			-- <Precursor>
		do
			Precursor
			audio_source.stop
		end

	queue_video_loop (a_video: AV_AUDIO_VIDEO_MEDIA; a_loop_count: INTEGER)
			-- <Precursor>
		do
			Precursor(a_video, a_loop_count)
			check attached {AV_AUDIO_VIDEO_MEDIA} a_video as la_audio_video then
				audio_source.queue_sound (la_audio_video)
			end
		end

	queue_video_infinite_loop (a_video: AV_AUDIO_VIDEO_MEDIA)
			-- Queue `a_video` to loop indefinitely
		do
			Precursor(a_video)
		end

	queue_video (a_video: AV_AUDIO_VIDEO_MEDIA)
			-- Queue `a_video` to play for a single loop
		do
			Precursor(a_video)
		end

	update_texture (a_timestamp: NATURAL_32)
			-- <Precursor>
		do
			audio_source.update_playing
			Precursor(a_timestamp)
		end


feature {NONE} -- Implementation - Routines

	manage_end_of_file (a_timestamp: NATURAL_32)
			-- <Precursor>
		do
			if not audio_source.is_playing then
				Precursor(a_timestamp)
				if is_playing then
					check attached {AV_AUDIO_VIDEO_MEDIA} video_queued.item.video as la_audio_video then
						audio_source.queue_sound (la_audio_video)
						audio_source.play
					end
				end
			end

		end
invariant
	Is_All_Audio_Video_Media:across video_queued as la_video_queued all attached {AV_AUDIO_VIDEO_MEDIA} la_video_queued.item.video end
end
