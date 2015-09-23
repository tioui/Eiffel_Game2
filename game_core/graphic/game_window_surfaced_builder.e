note
	description: "A builder to create {GAME_WINDOW_SURFACED}."
	author: "Louis Marchand"
	date: "Sat, 04 Apr 2015 00:24:50 +0000"
	revision: "2.0"

expanded class
	GAME_WINDOW_SURFACED_BUILDER

inherit
	GAME_WINDOW_BUILDER
feature -- Access

	generate_window:GAME_WINDOW_SURFACED
			-- The {GAME_WINDOW_SURFACED} that fit all
			-- attributes of `Current'
		do
			create Result.make (
							title, display, is_position_x_centered,
							is_position_y_centered, is_position_x_undefined,
							is_position_y_undefined, position_x, position_y,
							width, height, flags
						)

		end
end
