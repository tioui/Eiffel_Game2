note
	description : "Internal Root class of the game.%
				%The content of this file is auto-generated and must not be modified. Every modification will be lost when regenerated."
	generator   : "Eiffel Game2 Project Wizard"
	date        : "2026-02-12 03:36:44.077 +0000"
	revision    : "0.1"
	license     : "CC0"

class
	GAME2_APPLICATION

inherit
	ANY


create
	make

feature {NONE} -- Initialization

	make
			-- Initialize the libraries and run the game.
		local
			l_root_application:detachable APPLICATION
		do
			create l_root_application.make
			l_root_application := Void

		end

end