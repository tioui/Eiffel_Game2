note
	description: "Used to share the text library manager singleton"
	author: "Louis Marchand"
	date: "Mon, 30 Mar 2015 01:20:46 +0000"
	revision: "2.0"

deferred class
	TEXT_LIBRARY_SHARED

feature -- Access

	text_library:TEXT_CONTROLLER
			-- The main manager of the text library
		once ("PROCESS")
			create Result
		end
end
