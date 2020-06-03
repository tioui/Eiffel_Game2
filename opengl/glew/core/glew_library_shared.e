note
	description: "Summary description for {GLEW_LIBRARY_SHARED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GLEW_LIBRARY_SHARED

feature -- Access

	glew_library:GLEW_CONTROLLER
			-- The controler of the GLEW library
		once
			create Result
		end
end
