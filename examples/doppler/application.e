note
	description: "Application that show an exemples of the audio doppler effect usage (3D audio source opsitionning)"
	author: "Louis Marchand"
	date: "Fri, 13 Jan 2017 16:38:24 +0000"
	revision: "2.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	IMG_LIBRARY_SHARED
	AUDIO_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
		local
			l_engine:ENGINE
		do
			game_library.enable_video
			image_file_library.enable_png
			audio_library.enable_sound
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
