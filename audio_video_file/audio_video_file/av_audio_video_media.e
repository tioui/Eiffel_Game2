note
	description: "A media used for audio and video processing."
	author: "Louis Marchand"
	date: "Thu, 29 Dec 2022 00:40:33 +0000"
	revision: "0.1"

deferred class
	AV_AUDIO_VIDEO_MEDIA

inherit
	AV_VIDEO_MEDIA
		rename
			frequency as video_frequency
		undefine
			default_create
		end
	AUDIO_SOUND
		undefine
			time_seek, time_position, time_count
		end

end
