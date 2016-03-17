note
	description : "Root class or the example of text input management"
	author		: "Louis Marchand"
	date        : "Thu, 17 Mar 2016 14:24:10 +0000"
	revision    : "1.0"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	TEXT_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_engine:detachable ENGINE
		do
			game_library.enable_video
			text_library.enable_text
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			l_engine := Void
			game_library.clear_all_events
			text_library.quit_library
			game_library.quit_library
		end

end
