note
    description : "A game created in Eiffel."
    author      : ""
    generator   : "Eiffel Game2 Project Wizard"
    date        : "2026-02-26 09:08:01.539 +0000"
    revision    : "0.1"

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
			game_library.enable_joystick
			game_library.enable_controller
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end


end
