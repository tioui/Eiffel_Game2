note
    description: "External for GLEW library."
    author: "Louis Marchand"
    date: "Mon, 11 Jan 2016 16:54:11 +0000"
    revision: "1.0"

class
    GLEW_EXTERNAL

feature -- C external

	frozen GLEW_OK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GLEW_OK"
		end

	frozen GLEW_NO_ERROR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GLEW_NO_ERROR"
		end

	frozen GLEW_ERROR_NO_GL_VERSION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GLEW_ERROR_NO_GL_VERSION"
		end

	frozen GLEW_ERROR_GL_VERSION_10_ONLY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GLEW_ERROR_GL_VERSION_10_ONLY"
		end

	frozen GLEW_ERROR_GLX_VERSION_11_ONLY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GLEW_ERROR_GLX_VERSION_11_ONLY"
		end

	frozen GLEW_VERSION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GLEW_VERSION"
		end

	frozen GLEW_VERSION_MAJOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GLEW_VERSION_MAJOR"
		end

	frozen GLEW_VERSION_MINOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GLEW_VERSION_MINOR"
		end

	frozen GLEW_VERSION_MICRO : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GLEW_VERSION_MICRO"
		end

	frozen glewInit:NATURAL
		external
			"C:GLenum | <glew_order.h>"
		alias
			"glewInit"
		end

	frozen glewIsSupported(a_name: POINTER):BOOLEAN
		external
			"C(char *):GLboolean | <glew_order.h>"
		alias
			"glewIsSupported"
		end

	frozen glewExperimental_get : BOOLEAN
		external
			"C inline use <glew_order.h>"
		alias
			"glewExperimental"
		end

	frozen glewExperimental_set(a_value : BOOLEAN)
		external
			"C inline use <glew_order.h>"
		alias
			"glewExperimental = $a_value"
		end

	frozen glewGetExtension(a_name: POINTER):BOOLEAN
		external
			"C(char *):GLboolean | <glew_order.h>"
		alias
			"glewGetExtension"
		end

	frozen glewGetErrorString(a_error: NATURAL):POINTER
		external
			"C(GLenum):GLubyte * | <glew_order.h>"
		alias
			"glewGetErrorString"
		end

	frozen glewGetString(a_name: NATURAL):POINTER
		external
			"C(GLenum):GLubyte * | <glew_order.h>"
		alias
			"glewGetString"
		end

end
