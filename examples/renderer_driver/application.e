note
	description : "Listing rendering drivers"
	date        : "Sat, 14 Mar 2015 02:22:50 +0000"
	revision    : "1.0"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED		-- To use the `game_library' object (very important).


create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			game_library.enable_video
			across game_library.renderer_drivers as l_drivers loop
				print(l_drivers.item.out + "%N%N")
			end
			game_library.quit_library
		end

end
