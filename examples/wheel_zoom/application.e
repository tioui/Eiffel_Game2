note
	description : "Example application used to show how the mous wheel is use."
	author      : "Louis Marchand"
	generator   : "Eiffel Game2 Project Wizard"
	date        : "2018-02-05 12:52:32.183 +0000"
	revision    : "0.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	IMG_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

    make
			-- Running the game.
		local
			l_engine:ENGINE
		do
			game_library.enable_video
			image_file_library.enable_jpg
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			else
				io.error.put_string ("The has been an error. Quitting.%N")
			end
		end

end
