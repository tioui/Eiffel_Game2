note
	description : "Root class of the Surface2 example"
	author		: "Louis Marchand"
	date		: "Fri, 13 Jan 2017 16:38:24 +0000"
	revision    : "1.2"

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
			l_engine:ENGINE		-- Detachable to be able to put it back to Void after use
		do
			game_library.enable_video	-- Enable the video functionnality of the library
			image_file_library.enable_image (True, True, False)	-- Enable image loading from PNG and JPEG files.
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
