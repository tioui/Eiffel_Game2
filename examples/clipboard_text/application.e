note
	description: "Example to used the system keyboard"
	author: "Louis Marchand"
	date: "Tue, 26 Jan 2016 19:34:13 +0000"
	revision: "1.0"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			game_library.enable_video
			run
			game_library.quit_library
		end

	run
			-- Execute the game
		local
			l_builder:GAME_WINDOW_SURFACED_BUILDER
			l_window:GAME_WINDOW
		do
			l_window := l_builder.generate_window
			if l_window.has_clipboard_text then
				print("What was in the system clipboard: " + l_window.clipboard_text + "%N")
			else
				print("There is nothing in the system clipboard.%N")
			end
			l_window.set_clipboard_text ("Long live Eiffel Game")
			print("Now, there is %"Long live Eiffel Game%" in the system clipboard%N")
		end

end
