note
	description: "A program to test mouse position when using {GAME_RENDERER}.`logical_size`."
	author: "Louis Machand"
	generator: "Eiffel Game2 Project Wizard"
	date: "2023-10-26 05:21:12.399 +0000"
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
				io.error.put_string ("An error occured. Quitting...%N")
			end

		end

end
