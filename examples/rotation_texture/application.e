note
	description: "An example showing how to rotate texture."
	author: "Louis Marchand"
	date: "Wed, 06 Dec 2023 02:47:50 +0000"
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
			else
				io.error.put_string ("An error occured. Closing..%N")
			end
		end

end
