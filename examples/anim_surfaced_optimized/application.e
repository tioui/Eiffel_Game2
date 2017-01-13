note
	description : "[
					An example of sprite animation and movement using surfaced window.
					Also showing drawing optimization
				]"
	author		: "Louis Marchand"
	date        : "Fri, 13 Jan 2017 16:39:33 +0000"
	revision    : "2.2"

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
			l_engine:ENGINE
		do
			game_library.enable_video -- Enable the video functionalities
			image_file_library.enable_image (true, false, false)  -- Enable PNG image (but not TIF or JPG).
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
