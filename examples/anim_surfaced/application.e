note
	description : "An example of sprite animation and movement using surfaced window"
	author		: "Louis Marchand"
	date        : "Wed, 16 Mar 2016 23:29:16 +0000"
	revision    : "2.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED		-- To use `game_library'
	IMG_LIBRARY_SHARED		-- To use `image_file_library'

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_engine:detachable ENGINE
		do
			game_library.enable_video -- Enable the video functionalities
			image_file_library.enable_image (true, false, false)  -- Enable PNG image (but not TIF or JPG).
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			l_engine := Void				-- To be sure that the garbage collector can collect everything before quitting the libraries
			game_library.clear_all_events	-- To be sure that an object is not stocked inside an event agent
			image_file_library.quit_library  -- Correctly unlink image files library
			game_library.quit_library  -- Clear the library before quitting
		end


end
