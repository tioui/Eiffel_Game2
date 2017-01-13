note
	description: "Root class of the battery management example"
	author: "Louis Marchand"
	date: "Fri, 13 Jan 2017 16:40:58 +0000"
	revision: "1.2"

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
			l_engine:ENGINE
		do
			game_library.enable_video
			text_library.enable_text
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
