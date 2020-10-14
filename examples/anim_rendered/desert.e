note
	description: "The game background"
	author: "Louis Marchand"
	date: "Wed, 01 Apr 2015 18:46:46 +0000"
	revision: "2.0"

class
	DESERT

inherit
	IMAGE

create
	make

feature {NONE} -- Initialization

	make(a_renderer:GAME_RENDERER)
			-- Initialization of `Current' for used with `a_renderer'
		do
			make_from_file(a_renderer,"desert.png")
		end


end
