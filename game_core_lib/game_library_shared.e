note
	description: "Summary description for {GAME_LIBRARY_SHARED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_LIBRARY_SHARED

feature -- Access

	game_library:GAME_LIBRARY_CONTROLLER
		once
			create Result.make
		end

end
