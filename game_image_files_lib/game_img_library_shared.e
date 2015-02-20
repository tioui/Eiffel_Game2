note
	description: "Summary description for {GAME_IMG_LIBRARY_SHARED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_IMG_LIBRARY_SHARED

feature -- Access

	image_files_library: GAME_IMG_CONTROLLER
		once
			create Result
		end

end
