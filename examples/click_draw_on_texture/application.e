note
	description: "An example of game using click and that draw on a texture."
	author: "Louis Marchand"
	generator: "Eiffel Game2 Project Wizard"
	date: "2023-10-26 12:51:56.410 +0000"
	revision: "0.1"

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
			l_engine:ENGINE
		do
			game_library.enable_video
			text_library.enable_text
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			else
				io.error.put_string ("An error occured. Closing...%N")
			end
		end

end
