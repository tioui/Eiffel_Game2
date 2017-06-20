note
	description: "An example of how to read MP3 files."
	author: "Louis Marchand"
	date: "Fri, 13 Jan 2017 16:38:24 +0000"
	revision: "1.0"

class
	APPLICATION

inherit
	AUDIO_LIBRARY_SHARED
	MPG_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_engine:ENGINE
		do
			audio_library.enable_playback
			mpg_library.enable_mpg
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
