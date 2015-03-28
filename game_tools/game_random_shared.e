note
	description: "[
					Inherit from this class to use the {GAME_RANDOM} singleton named game_library.
					Assign `internal_random' prior to use the `random' feature to set a custom
					{GAME_RANDOM}. May be quite useful for mock testing with a precise random seed.
				]"
	author: "Louis Marchand"
	date: "Sat, 28 Mar 2015 03:32:15 +0000"
	revision: "1.0"

deferred class
	GAME_RANDOM_SHARED

feature -- Access

	random:GAME_RANDOM
			-- The random generator singleton
		once
			if attached internal_random as la_random then
				Result := la_random
			else
				create Result
			end
		end

feature {NONE} -- Implementation

	internal_random:detachable GAME_RANDOM
			-- Assign to this attribute prior to use `random' to inject a specific {GAME_RANDOM} singleton.

end
