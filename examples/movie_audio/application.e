note
	description: "A game tutorial that show how to play the audio of a movie."
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 05:08:09 +0000"
	revision: "0.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED
	IMG_LIBRARY_SHARED
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
			image_file_library.enable_png
			audio_library.enable_playback
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			else
				io.error.put_string ("Cannot create game engine.%N")
			end
		end

end
