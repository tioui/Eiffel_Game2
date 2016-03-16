note
	description : "An exemple to show how to manage cursors"
	author		: "Louis Marchand"
	date        : "Wed, 16 Mar 2016 23:29:16 +0000"
	revision    : "1.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED		-- To use `game_library'
	TEXT_LIBRARY_SHARED		-- To use `text_library'
	IMG_LIBRARY_SHARED		-- To use `image_file_library'

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
			image_file_library.enable_image (True, False, False)
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			l_engine := Void				-- To be sure that the garbage collector can collect everything before quitting the libraries
			game_library.clear_all_events	-- To be sure that an object is not stocked inside an event agent
			image_file_library.quit_library
			text_library.quit_library
			game_library.quit_library
		end


end
