note
	description : "An example to use an audio capture device."
	author      : "Louis Marchand"
	generator   : "Eiffel Game2 Project Wizard"
	date        : "2017-06-15 07:32:13.187 +0000"
	revision    : "0.1"

class
	APPLICATION

create
	make

feature {NONE} -- Initialization

	make
			-- Running the game.
		local
			l_engine:ENGINE
		do
			create l_engine.make
			if not l_engine.has_error then
				l_engine.run
			end
		end

end
