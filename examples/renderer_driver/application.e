note
	description : "Listing rendering drivers"
	date        : "Fri, 13 Jan 2017 16:38:24 +0000"
	revision    : "1.1"

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
		end

end
