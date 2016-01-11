note
	description: "GLEW Wrapper"
	author: "Louis Marchand"
	date: "Mon, 11 Jan 2016 16:44:57 +0000"
	revision: "1.0"

class
	GLEW

inherit
	GLEW_EXTERNAL

feature -- Access

	glew_error_text(a_code:NATURAL):READABLE_STRING_GENERAL
			-- The Text representation of the GLEW error represented by `a_code'
		local
			l_c_string:C_STRING
		do
			create l_c_string.make_by_pointer (glewGetErrorString (a_code))
			Result := l_c_string.string
		end

	glew_is_supported(a_name:READABLE_STRING_GENERAL):BOOLEAN
			-- The OpenGL module represented by `a_name' is supported by the current openGL Context
		local
			l_c_string:C_STRING
		do
			create l_c_string.make (a_name)
			Result := glewIsSupported (l_c_string.item)
		end


end
