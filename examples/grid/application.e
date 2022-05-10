note
	description : "A grid example."
	author: "Louis Marchand"
	date: "Sat, 25 Dec 2021 15:08:18 +0000"
	revision: "0.1"

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
			image_file_library.enable_png
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
