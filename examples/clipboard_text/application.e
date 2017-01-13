note
	description: "Example to used the system keyboard"
	author: "Louis Marchand"
	date: "Fri, 13 Jan 2017 16:41:28 +0000"
	revision: "1.1"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_builder:GAME_WINDOW_SURFACED_BUILDER
			l_window:GAME_WINDOW
		do
			game_library.enable_video
			create l_builder
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
