note
	description: "GLEW Wrapper"
	author: "Louis Marchand"
	date: "Thu, 21 May 2020 18:16:44 +0000"
	revision: "2.0"

class
	GLEW_CONTROLLER

feature -- Access

	init
		do
			error_code := glewinit
		end

	error_code:NATURAL
			-- The error returned by `init'

	has_error:BOOLEAN
			-- An error occured
		do
			Result := error_code = GLEW_OK
		end

	is_supported(a_name:READABLE_STRING_GENERAL):BOOLEAN
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glewIsSupportedInternal(l_c_name.item)
		ensure
			instance_free: class
		end

	is_extension_supported(a_name:READABLE_STRING_GENERAL):BOOLEAN
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glewIsExtensionSupportedInternal(l_c_name.item)
		ensure
			instance_free: class
		end

	get_extension(a_name:READABLE_STRING_GENERAL):BOOLEAN
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glewGetExtensionInternal(l_c_name.item)
		ensure
			instance_free: class
		end

	error_string:STRING
			-- The error returned by `Current'
		local
			l_c_error:C_STRING
		do
			create l_c_error.make_by_pointer (glewGetErrorStringInternal(error_code))
			Result := l_c_error.string
		end

	frozen is_experimental: BOOLEAN
		external
			"C inline use <gl_order.h>"
		alias
			"return glewExperimental"
		end

feature {NONE} -- External


	frozen GLEW_OK: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GLEW_OK"
		end

	frozen glewInit: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return glewInit()"
		end

	frozen glewIsSupportedInternal(a_name: POINTER): BOOLEAN
		external
			"C inline use <gl_order.h>"
		alias
			"return glewIsSupported ((char *)$a_name)"
		end

	frozen glewIsExtensionSupportedInternal(a_name: POINTER): BOOLEAN
		external
			"C inline use <gl_order.h>"
		alias
			"return glewIsExtensionSupported ((char *)$a_name)"
		end

	frozen glewGetExtensionInternal(a_name: POINTER): BOOLEAN
		external
			"C inline use <gl_order.h>"
		alias
			"return glewGetExtension ((char *)$a_name)"
		end

	frozen glewGetErrorStringInternal(a_error: NATURAL): POINTER
		external
			"C inline use <gl_order.h>"
		alias
			"return glewGetErrorString ((GLenum)$a_error)"
		end

	frozen glewGetStringInternal(a_name: NATURAL): POINTER
		external
			"C inline use <gl_order.h>"
		alias
			"return glewGetString ((GLenum)$a_name)"
		end

end
