note
	description: "Inherit from this class to use the {GAME_LIBRARY_CONTROLLER} singleton named game_library"
	author: "Louis Marchand"
	date: "Sat, 28 Mar 2015 03:32:15 +0000"
	revision: "2.0"

deferred class
	GAME_LIBRARY_SHARED

feature -- Access

	game_library:GAME_LIBRARY_CONTROLLER
			-- The main controller of the game library
		once
			if attached internal_game_library as la_game_library then
				Result := la_game_library
			else
				create Result
			end
		end

feature {NONE} -- Implementation

	internal_game_library:detachable GAME_LIBRARY_CONTROLLER
			-- Assign to this attribute prior to use `game_library' to inject a specific {GAME_LIBRARY_CONTROLLER} singleton.

end
