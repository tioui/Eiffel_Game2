note
	description: "An example where the background move instead of the player"
	author: "Louis Marchand"
	date: "Fri, 13 Jan 2017 16:40:42 +0000"
	revision: "1.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	IMG_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_engine:ENGINE
		do
			game_library.enable_video
			image_file_library.enable_png
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
