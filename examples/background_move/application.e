note
	description: "An example where the background move instead of the player"
	author: "Louis Marchand"
	date: "Tue, 22 Mar 2016 13:41:42 +0000"
	revision: "1.0"

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
			l_engine:detachable ENGINE
		do
			game_library.enable_video
			image_file_library.enable_png
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			l_engine := Void
			game_library.clear_all_events
			image_file_library.quit_library
			game_library.quit_library
		end

end
