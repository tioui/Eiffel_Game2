note
	description: "A game example use to show how an object can follow a point in space"
	author: "Louis Marchand"
	generator: "Eiffel Game2 Project Wizard"
	date: "2023-10-17 03:25:28.557 +0000"
	revision: "0.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Running the game.
		local
			l_engine:GAME_ENGINE
		do
			game_library.enable_video
			create l_engine.make
			l_engine.run
		end

end
