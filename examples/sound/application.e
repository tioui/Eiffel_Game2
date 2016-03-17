note
	description : "Root class for the sound and window exemple"
	author		: "Louis Marchand"
	date        : "Thu, 17 Mar 2016 13:26:06 +0000"
	revision    : "2.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED		-- To use `game_library'
	AUDIO_LIBRARY_SHARED	-- To use `audio_library'

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_engine:detachable ENGINE
		do
			game_library.enable_video -- Enable the video functionalities
			print("List of devices:%N")
			across audio_library.devices as la_device loop
				print("    " + la_device.item + "%N")
			end
			audio_library.enable_sound
			print("Using device: " + audio_library.device_specifier + "%N")
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			l_engine := Void
			audio_library.quit_library
			game_library.quit_library  -- Clear the library before quitting
		end


end
