note
	description: "An example of how to read MP3 files."
	author: "Louis Marchand"
	date: "Fri, 04 Nov 2016 17:31:01 +0000"
	revision: "0.1"

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
			audio_library.enable_sound
			mpg_library.enable_mpg
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			mpg_library.quit_library
			audio_library.quit_library
		end

end
