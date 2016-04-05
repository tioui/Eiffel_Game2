note
	description: "doppler application root class"
	date: "$Date$"
	revision: "$Revision$"

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
		local
			l_engine:detachable ENGINE
		do
			game_library.enable_video
			image_file_library.enable_png
			audio_library.enable_sound
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
			l_engine := Void
			game_library.clear_all_events
			image_file_library.quit_library
			game_library.quit_library
			audio_library.quit_library
		end

end
