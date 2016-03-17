note
	description : "Root class of the Surface2 example"
	author		: "Louis Marchand"
	date		: "Thu, 17 Mar 2016 13:26:06 +0000"
	revision    : "1.1"

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
			l_engine:detachable ENGINE		-- Detachable to be able to put it back to Void after use
		do
			game_library.enable_video	-- Enable the video functionnality of the library

			image_file_library.enable_image (True, True, False)	-- Enable image loading from PNG and JPEG files.
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			l_engine := Void		-- To be sure that the garbage collector can collect everything before quitting the libraries
			game_library.clear_all_events	-- To be sure that an object is not stocked inside an event agent
			image_file_library.quit_library	-- Must be call before the {GAME_LIBRARY_CONTROLLER}.`quit_library'
			game_library.quit_library	-- Must be done before quitting
										-- The garbage colector must be able to collect every object of type GAME_*
		end

end
