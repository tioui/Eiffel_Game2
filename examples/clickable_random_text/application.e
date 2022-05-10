note
	description : "Example using random number, text and clickables."
	author: "Louis Marchand"
	date: "Wed, 22 Dec 2021 19:48:09 +0000"
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
			end
		end

end
