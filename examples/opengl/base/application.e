note
	description: "Root class for the simple OpenGL example"
	author: "Louis Marchand"
	date: "Wed, 16 Mar 2016 23:29:16 +0000"
	revision: "1.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_engine:detachable ENGINE
		do
			game_library.enable_video
			game_library.enable_gl
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			l_engine := Void
			game_library.clear_all_events
			game_library.quit_library
		end

end
