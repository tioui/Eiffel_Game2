note
	description : "Root class for the sound and window exemple"
	author		: "Louis Marchand"
	date        : "Fri, 13 Jan 2017 16:38:24 +0000"
	revision    : "2.2"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED		-- To use `game_library'
	AUDIO_LIBRARY_SHARED	-- To use `audio_library'

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_engine:detachable ENGINE
		do
			game_library.enable_video 		-- Enable the video functionalities
			audio_library.enable_playback	-- Enable the audio library to play sound
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end


end
