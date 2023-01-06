note
	description: "A game tutorial that show how to show audio video movie."
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 05:08:09 +0000"
	revision: "0.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	AUDIO_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Running the game.
		local
			l_engine:ENGINE
		do
			game_library.enable_video
			audio_library.enable_playback
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			else
				io.error.put_string ("Cannot create game engine.%N")
			end
		end

end
