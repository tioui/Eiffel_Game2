note
	description: "A {GAME_WINDOW} that can be used directly with OpenGL."
	author: "Louis Marchand"
	date: "Tue, 29 Dec 2015 19:06:42 +0000"
	revision: "1.0"

class
	GAME_WINDOW_GL

inherit
	GAME_WINDOW
		redefine
			make, dispose
		end

create
	make

feature {NONE} -- Initialization

	make (a_title: READABLE_STRING_GENERAL; a_display: detachable GAME_DISPLAY;
			a_is_x_centered, a_is_y_centered, a_is_x_undefined, a_is_y_undefined: BOOLEAN;
			a_x, a_y, a_width, a_height: INTEGER_32; a_flags: NATURAL_32)
			-- <Precursor>
		do
			Precursor {GAME_WINDOW}(a_title, a_display, a_is_x_centered, a_is_y_centered,
									a_is_x_undefined, a_is_y_undefined, a_x, a_y, a_width, a_height, a_flags)
			gl_context := {GAME_SDL_EXTERNAL}.SDL_GL_CreateContext(item)
			manage_error_pointer (gl_context, "Cannot create GL context for the Window")
		end

feature -- Access

	gl_context_valid:BOOLEAN
			-- The contex of `Current' is correctly created
		do
			Result := not gl_context.is_default_pointer
		end

	gl_drawable_size:TUPLE[width, height:INTEGER]
			-- Return the drawable area dimension of `Current'.
			-- Ti differ of `size' when we're rendering to a high-DPI drawable
			-- Note: use that with glViewport
		require
			gl_context_valid
		local
			l_width, l_height:INTEGER
		do
			{GAME_SDL_EXTERNAL}.SDL_GL_GetDrawableSize(item, $l_width, $l_height)
			Result := [l_width, l_height]
		end

	gl_version:TUPLE[major, minor:INTEGER]
			-- The version of OpenGL that `Current' use.
			-- Default depend on the OpenGL library in the system
		require
			gl_context_valid
		local
			l_error:INTEGER
			l_major, l_minor:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_MAJOR_VERSION, $l_major)
			if l_error = 0 then
				l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_MINOR_VERSION, $l_minor)
				if l_error = 0 then
					Result := [l_major, l_minor]
				else
					manage_error_code (l_error, "Could not get the OpenGL minor version")
					Result := [l_major, 0]
				end
			else
				manage_error_code (l_error, "Could not get the OpenGL major version")
				Result := [0, 0]
			end
		end

	gl_red_size:INTEGER
			-- Minimum number of bits for the red channel of the color buffer.
			-- Defaults to 3
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_RED_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL red channel size")
			Result := l_size
		end

	gl_green_size:INTEGER
			-- Minimum number of bits for the green channel of the color buffer.
			-- Defaults to 3
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_GREEN_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL green channel size")
			Result := l_size
		end

	gl_blue_size:INTEGER
			-- Minimum number of bits for the blue channel of the color buffer.
			-- Defaults to 2
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_BLUE_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL blue channel size")
			Result := l_size
		end

	gl_alpha_size:INTEGER
			-- Minimum number of bits for the alpha channel of the color buffer.
			-- Defaults to 0
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ALPHA_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL alpha channel size")
			Result := l_size
		end

	gl_buffer_size:INTEGER
			-- Minimum number of bits for the frame buffer.
			-- Defaults to 0
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_BUFFER_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL frame buffer size")
			Result := l_size
		end

	is_gl_double_buffer_enabled:BOOLEAN
			-- True if `Current' is double buffered. False if not.
			-- Default: True
		require
			gl_context_valid
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_DOUBLEBUFFER, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL double buffer information")
			Result := l_value /= 0
		end

	gl_depth_size:INTEGER
			-- Minimum number of bits for the depth buffer.
			-- Defaults to 16
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_DEPTH_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL depth buffer size")
			Result := l_size
		end

	gl_stencil_size:INTEGER
			-- Minimum number of bits for the stencil buffer.
			-- Defaults to 0
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_STENCIL_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL stencil buffer size")
			Result := l_size
		end

	gl_accumulation_red_size:INTEGER
			-- Minimum number of bits for the red channel of the accumulation buffer.
			-- Defaults to 0
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCUM_RED_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL accumulation buffer red channel size")
			Result := l_size
		end

	gl_accumulation_green_size:INTEGER
			-- Minimum number of bits for the green channel of the accumulation buffer.
			-- Defaults to 0
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCUM_GREEN_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL accumulation buffer green channel size")
			Result := l_size
		end

	gl_accumulation_blue_size:INTEGER
			-- Minimum number of bits for the blue channel of the accumulation buffer.
			-- Defaults to 0
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCUM_BLUE_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL accumulation buffer blue channel size")
			Result := l_size
		end

	gl_accumulation_alpha_size:INTEGER
			-- Minimum number of bits for the alpha channel of the accumulation buffer.
			-- Defaults to 0
		require
			gl_context_valid
		local
			l_error, l_size:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCUM_ALPHA_SIZE, $l_size)
			manage_error_code (l_error, "Could not get the OpenGL accumulation buffer alpha channel size")
			Result := l_size
		end

	is_gl_stereo_enabled:BOOLEAN
			-- True if `Current' used quad buffer stereo rendering. False if not.
			-- Default: False
		require
			gl_context_valid
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_STEREO, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL quad buffer stereo rendering information")
			Result := l_value /= 0
		end

	is_gl_multi_sample_enabled:BOOLEAN
			-- True if `Current' used multisample anti-aliasing. False if not
			-- Default: False
		require
			gl_context_valid
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_MULTISAMPLEBUFFERS, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL multisample anti-aliasing information")
			Result := l_value /= 0
		end

	gl_multi_sample_count:INTEGER
			-- If multisample anti-aliasing is enabled (see: `is_gl_multi_sample_enabled'),
			-- return the number of samples used around the current pixel
			-- Default: 0
		require
			gl_context_valid
			is_gl_multi_sample_enabled
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_MULTISAMPLESAMPLES, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL multisample anti-aliasing information")
			Result := l_value
		end

	is_gl_software_rendering_enable:BOOLEAN
			-- `Current' uses software rendering.
			-- Default: False
		require
			gl_context_valid
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCELERATED_VISUAL, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL software rendering information")
			Result := l_value = 0
		end

	is_gl_hardware_rendering_enable:BOOLEAN
			-- `Current' uses hardware rendering.
			-- Default: True
		require
			gl_context_valid
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCELERATED_VISUAL, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL software rendering information")
			Result := l_value = 0
		end

	is_gl_debug_enabled:BOOLEAN
			-- Put the GL into a "debug" mode. May cause performance lost
			-- Ignored on system that does not support it.
			-- Default: False
		require
			gl_context_valid
		do
			Result := gl_context_flags.bit_and({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_DEBUG_FLAG) /= 0
		end

	is_gl_forward_compatibility_enabled:BOOLEAN
			-- If True, no deprecated context functionality will be supported
			-- Can cause a performance gain
			-- Only available for OpenGL 3.0 and newer
			-- Ignored on system that does not support it.
			-- Default: False
		require
			gl_context_valid
		do
			Result := gl_context_flags.bit_and({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG) /= 0
		end

	is_gl_robust_access_enabled:BOOLEAN
			-- If True, Internal OpenGL context will use more robust API.
			-- Ignored on system that does not support it.
			-- Can cause a performance lost
			-- Default: False
		require
			gl_context_valid
		do
			Result := gl_context_flags.bit_and({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG) /= 0
		end

	is_gl_reset_isolation_enabled:BOOLEAN
			-- True to enable more rebust driver or hardware failure reset management.
			-- Ignored on system that does not support it.
			-- Default: False
		require
			gl_context_valid
		do
			Result := gl_context_flags.bit_and({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_RESET_ISOLATION_FLAG) /= 0
		end

	is_gl_core_profile_enabled:BOOLEAN
			-- True to enable the core context profile.
			-- In this profile, deprecated conext funtionnalities will be disabled;
			-- Default: Depend on the system
		require
			gl_context_valid
		do
			Result := gl_context_profile_flags = {GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_PROFILE_CORE
		end

	is_gl_compatibility_profile_enabled:BOOLEAN
			-- True to enable the compatibility context profile.
			-- In this profile, deprecated conext funtionnalities will be enabled;
			-- Default: Depend on the system
		require
			gl_context_valid
		do
			Result := gl_context_profile_flags = {GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_PROFILE_COMPATIBILITY
		end

	is_gl_es_profile_enabled:BOOLEAN
			-- True to enable the GLES context profile.
			-- In this profile, only the GLES subset of the context functionnalities will be enabled
			-- Default: Depend on the system
		require
			gl_context_valid
		do
			Result := gl_context_profile_flags = {GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_PROFILE_ES
		end

	is_gl_context_sharing_enabled:BOOLEAN
			-- True to enable OpenGL Context Sharing
			-- Default: False
		require
			gl_context_valid
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_SHARE_WITH_CURRENT_CONTEXT, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL context sharing information")
			Result := l_value /= 0
		end

	is_gl_srgb_request_enabled:BOOLEAN
			-- True to request sRGB rendering
			-- Default: False
		require
			gl_context_valid
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_FRAMEBUFFER_SRGB_CAPABLE, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL sRGB rendering request information")
			Result := l_value /= 0
		end

	update
			-- <Precursor>
		require else
			gl_context_valid
		do
			{GAME_SDL_EXTERNAL}.SDL_GL_SwapWindow(item)
		end

feature {NONE} -- Implementation

	gl_context:POINTER
			-- The GL context associate with the window

	dispose
		do
			if not gl_context.is_default_pointer then
				{GAME_SDL_EXTERNAL}.SDL_GL_DeleteContext(gl_context)
			end
		end

	gl_context_flags:INTEGER
			-- The context internal flags
		require
			gl_context_valid
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_FLAGS, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL context information")
			Result := l_value
		end

	gl_context_profile_flags:INTEGER
			-- The context profile flags
		require
			gl_context_valid
		local
			l_error, l_value:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_getattribute ({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_PROFILE_MASK, $l_value)
			manage_error_code (l_error, "Could not get the OpenGL context profile information")
			Result := l_value
		end

end
