note
	description : "Root class for the logical size example"
	author		: "Louis Marchand"
	date        : "Fri, 13 Jan 2017 16:38:24 +0000"
	revision    : "1.2"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED		-- To use the `game_library' singleton

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_engine:ENGINE
		do
			game_library.enable_video
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
