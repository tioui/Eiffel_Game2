note
    description : "[
    			Exemple for creating a menu and a router for switching between
    			different engines.
    		]"
    author      : "Louis Marchand"
    generator   : "Eiffel Game2 Project Wizard"
    date        : "2021-10-28 05:28:12.025 +0000"
    revision    : "0.1"

class
    APPLICATION

inherit
	GAME_LIBRARY_SHARED
	TEXT_LIBRARY_SHARED

create
    make

feature {NONE} -- Initialization

    make
            -- Running the game.
        local
        	l_router:ROUTER
        do
			game_library.enable_video
			text_library.enable_text
            create l_router.make
            if not l_router.has_error then
            	l_router.run
            else
            	io.error.put_string ("An error occured. Quitting...%N")
            end
        end

end
