note
    description : "A game to show Joystick functionnality."
    author      : "Louis Marchand"
    generator   : "Eiffel Game2 Project Wizard"
	date        : "Sun, 17 Oct 2021 02:39:33 +0000"
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
            -- Running the game.
       	local
       		l_engine:ENGINE
        do
        	game_library.enable_video
        	game_library.enable_joystick
        	image_file_library.enable_png
            create l_engine.make
            if not l_engine.has_error then
            	l_engine.run
            else
            	io.error.put_string ("An error occured. Quitting...")
            end
        end

end
