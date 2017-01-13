note
	description : "Root class for the mouse and text example"
	author		: "Louis Marchand"
	date        : "Fri, 13 Jan 2017 16:38:24 +0000"
	revision    : "2.2"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	TEXT_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run the application
		local
			l_engine:ENGINE
		do
			game_library.enable_video	-- Make it possible to use video sub system (surface, window, etc.)
			text_library.enable_text	-- Make it possible to draw text
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
