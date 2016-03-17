note
	description : "Root class for the mouse and text example"
	author		: "Louis Marchand"
	date        : "Wed, 16 Mar 2016 23:29:16 +0000"
	revision    : "2.1"

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
			l_engine:detachable ENGINE
		do
			game_library.enable_video	-- Make it possible to use video sub system (surface, window, etc.)
			text_library.enable_text	-- Make it possible to draw text
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			l_engine := Void				-- To be sure that the garbage collector can collect everything before quitting the libraries
			game_library.clear_all_events	-- To be sure that an object is not stocked inside an event agent
			text_library.quit_library
			game_library.quit_library
		end

end
