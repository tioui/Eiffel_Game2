note
	description : "Internal Root class of the game.%
				%The content of this file is auto-generated and must not be modified. Every modification will be lost when regenerated."
	generator   : "Eiffel Game2 Project Wizard"
	date        : "2021-10-16 08:24:36.241 +0000"
	revision    : "0.1"
	license     : "CC0"

class
	GAME2_APPLICATION

inherit
	ANY
	GAME_LIBRARY_SHARED
	IMG_LIBRARY_SHARED


create
	make

feature {NONE} -- Initialization

	make
			-- Initialize the libraries and run the game.
		local
			l_root_application:detachable APPLICATION
		do
			create l_root_application.make
			l_root_application := Void
			game_library.clear_all_events
			image_file_library.quit_library
			game_library.quit_library

		end

end