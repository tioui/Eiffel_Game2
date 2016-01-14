note
	description: "OpenGL utility functions and constants container."
	author: "Louis Marchand"
	date: "Tue, 29 Dec 2015 19:06:42 +0000"
	revision: "1.0"

class
	GLU

inherit
	GLU_EXTERNAL


feature -- Access

	glu_error_text(a_code:NATURAL):READABLE_STRING_GENERAL
			-- The Text representation of the GL or GLU error represented by `a_code'
		local
			l_c_string:C_STRING
		do
			create l_c_string.make_by_pointer (gluErrorString (a_code))
			Result := l_c_string.string
		end

end
