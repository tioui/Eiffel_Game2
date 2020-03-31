note
	description: "A builder to create {GAME_WINDOW_GL}."
	author: "Louis Marchand"
	date: "Tue, 29 Dec 2015 19:06:42 +0000"
	revision: "1.0"

expanded class
	GAME_WINDOW_GL_BUILDER

inherit
	GAME_WINDOW_BUILDER
	GAME_SDL_ANY
		undefine
			default_create
		end

feature -- Access

	reset_gl
			-- Reset the `gl_*' attributes these default values
		do
			{GAME_SDL_EXTERNAL}.SDL_GL_ResetAttributes
		end

	set_gl_version(a_version: TUPLE[major, minor:INTEGER])
			-- The version of OpenGL that the result of `generate_window' will use.
			-- Default depend on the OpenGL library in the system
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_MAJOR_VERSION, a_version.major)
			if l_error = 0 then
				l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_MINOR_VERSION, a_version.minor)
				manage_error_code (l_error, "Could not set OpenGL minor version")
			else
				manage_error_code (l_error, "Could not set OpenGL major version")
			end
		end

	set_gl_red_size(a_size:INTEGER)
			-- Minimum number of bits for the red channel of the color buffer.
			-- Defaults to 3
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_RED_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL red channel size")
		end

	set_gl_green_size(a_size:INTEGER)
			-- Minimum number of bits for the green channel of the color buffer.
			-- Defaults to 3
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_GREEN_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL green channel size")
		end

	set_gl_blue_size(a_size:INTEGER)
			-- Minimum number of bits for the blue channel of the color buffer.
			-- Defaults to 2
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_BLUE_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL blue channel size")
		end

	set_gl_alpha_size(a_size:INTEGER)
			-- Minimum number of bits for the alpha channel of the color buffer.
			-- Defaults to 0
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ALPHA_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL alpha channel size")
		end

	set_gl_buffer_size(a_size:INTEGER)
			-- Minimum number of bits for the frame buffer.
			-- Defaults to 0
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_BUFFER_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL frame buffer size")
		end

	enable_gl_double_buffer
			-- The result of `generate_window' will be double buffered.
			-- Default: True
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_DOUBLEBUFFER, 1)
			manage_error_code (l_error, "Could not enable the OpenGL double buffer information")
		end

	disable_gl_double_buffer
			-- The result of `generate_window' will not be double buffered.
			-- Default: True
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_DOUBLEBUFFER, 0)
			manage_error_code (l_error, "Could not disable the OpenGL double buffer information")
		end

	set_gl_depth_size(a_size:INTEGER)
			-- Minimum number of bits for the depth buffer.
			-- Defaults to 16
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_DEPTH_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL depth buffer size")
		end

	set_gl_stencil_size(a_size:INTEGER)
			-- Minimum number of bits for the stencil buffer.
			-- Defaults to 0
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_STENCIL_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL stencil buffer size")
		end

	set_gl_accumulation_red_size(a_size:INTEGER)
			-- Minimum number of bits for the red channel of the accumulation buffer.
			-- Defaults to 0
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCUM_RED_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL accumulation buffer red channel size")
		end

	set_gl_accumulation_green_size(a_size:INTEGER)
			-- Minimum number of bits for the green channel of the accumulation buffer.
			-- Defaults to 0
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCUM_GREEN_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL accumulation buffer green channel size")
		end

	set_gl_accumulation_blue_size(a_size:INTEGER)
			-- Minimum number of bits for the blue channel of the accumulation buffer.
			-- Defaults to 0
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCUM_BLUE_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL accumulation buffer blue channel size")
		end

	set_gl_accumulation_alpha_size(a_size:INTEGER)
			-- Minimum number of bits for the alpha channel of the accumulation buffer.
			-- Defaults to 0
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCUM_ALPHA_SIZE, a_size)
			manage_error_code (l_error, "Could not set the OpenGL accumulation buffer alpha channel size")
		end

	enable_gl_stereo
			-- The result of `generate_window' will used quad buffer stereo rendering.
			-- Default: False
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_STEREO, 1)
			manage_error_code (l_error, "Could not enable the OpenGL quad buffer stereo rendering information")
		end

	disable_gl_stereo
			-- The result of `generate_window' will not used quad buffer stereo rendering.
			-- Default: False
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_STEREO, 0)
			manage_error_code (l_error, "Could not disable the OpenGL quad buffer stereo rendering information")
		end

	enable_gl_multi_sample(a_sample_count:INTEGER)
			-- Multisample anti-aliasing will be enabled and using  `gl_multi_sample_count' around the current pixel
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_MULTISAMPLEBUFFERS, 1)
			if l_error = 0 then
				l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_MULTISAMPLESAMPLES, a_sample_count)
				manage_error_code (l_error, "Could not set the OpenGL multisample anti-aliasing sample count")
			else
				manage_error_code (l_error, "Could not enable the OpenGL multisample anti-aliasing information")
			end
		end

	disable_gl_multi_sample
			-- Disable Multisample anti-aliasing
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_MULTISAMPLEBUFFERS, 0)
			manage_error_code (l_error, "Could not disable the OpenGL multisample anti-aliasing information")
		end

	enable_gl_software_rendering
			-- The result of `generate_window' will use softare rendering.
			-- Default: False
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCELERATED_VISUAL, 0)
			manage_error_code (l_error, "Could not disable the OpenGL software rendering information")
		end

	disable_gl_software_rendering
			-- The result of `generate_window' will try to use hardware rendering.
			-- Default: False
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_ACCELERATED_VISUAL, 1)
			manage_error_code (l_error, "Could not disable the OpenGL software rendering information")
		end

	enable_gl_debug
			-- Put the GL into a "debug" mode. May cause performance lost
			-- Ignored on system that does not support it.
			-- Default: False
		do
			gl_context_flags := gl_context_flags.bit_or({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_DEBUG_FLAG)
			set_gl_context_flags(gl_context_flags)
		end

	disable_gl_debug
			-- Don't put the GL into a "debug" mode.
			-- Ignored on system that does not support it.
			-- Default: False
		do
			gl_context_flags := gl_context_flags.bit_and({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_DEBUG_FLAG.bit_not)
			set_gl_context_flags(gl_context_flags)
		end

	enable_gl_forward_compatibility
			-- No deprecated context functionality will be supported
			-- Can provide better performance
			-- Only available for OpenGL 3.0 and newer
			-- Ignored on system that does not support it.
			-- Default: False
		do
			gl_context_flags := gl_context_flags.bit_or({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG)
			set_gl_context_flags(gl_context_flags)
		end

	disable_gl_forward_compatibility
			-- Deprecated context functionality will be supported
			-- Ignored on system that does not support it.
			-- Default: False
		do
			gl_context_flags := gl_context_flags.bit_and({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG.bit_not)
			set_gl_context_flags(gl_context_flags)
		end

	enable_gl_robust_access
			-- Internal OpenGL context will use more robust API.
			-- Ignored on system that does not support it.
			-- Can cause a performance lost
			-- Default: False
		do
			gl_context_flags := gl_context_flags.bit_or({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG)
			set_gl_context_flags(gl_context_flags)
		end

	disable_gl_robust_access
			-- Internal OpenGL context will not use more robust API.
			-- Ignored on system that does not support it.
			-- Default: False
		do
			gl_context_flags := gl_context_flags.bit_and({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG.bit_not)
			set_gl_context_flags(gl_context_flags)
		end

	enable_gl_reset_isolation
			-- Enable more rebust driver or hardware failure reset management.
			-- Ignored on system that does not support it.
			-- Default: False
		do
			gl_context_flags := gl_context_flags.bit_or({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_RESET_ISOLATION_FLAG)
			set_gl_context_flags(gl_context_flags)
		end

	disable_gl_reset_isolation
			-- Do not enable more rebust driver or hardware failure reset management.
			-- Ignored on system that does not support it.
			-- Default: False
		do
			gl_context_flags := gl_context_flags.bit_and({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_RESET_ISOLATION_FLAG.bit_not)
			set_gl_context_flags(gl_context_flags)
		end

	enable_gl_core_profile
			-- In this profile, deprecated conext funtionnalities will be disabled;
			-- Default: Depend on the system
		do
			set_gl_context_profile_flags({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_PROFILE_CORE)
		end

	enable_gl_compatibility_profile
			-- In this profile, deprecated conext funtionnalities will be enabled;
			-- Default: Depend on the system
		do
			set_gl_context_profile_flags({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_PROFILE_COMPATIBILITY)
		end

	enable_gl_es_profile
			-- In this profile, only the GLES subset of the context functionnalities will be enabled
			-- Default: Depend on the system
		do
			set_gl_context_profile_flags({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_PROFILE_ES)
		end

	enable_gl_context_sharing
			-- Enable OpenGL Context Sharing
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_SHARE_WITH_CURRENT_CONTEXT, 1)
			manage_error_code (l_error, "Could not enable the OpenGL context sharing information")
		end

	disable_gl_context_sharing
			-- Disable OpenGL Context Sharing
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_SHARE_WITH_CURRENT_CONTEXT, 0)
			manage_error_code (l_error, "Could not disable the OpenGL context sharing information")
		end

	enable_gl_srgb_request
			-- Request sRGB rendering
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_FRAMEBUFFER_SRGB_CAPABLE, 1)
			manage_error_code (l_error, "Could not enable the OpenGL sRGB rendering request information")
		end

	disable_gl_srgb_request
			-- Don't request sRGB rendering
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_FRAMEBUFFER_SRGB_CAPABLE, 0)
			manage_error_code (l_error, "Could not disable the OpenGL sRGB rendering request information")
		end

	is_gl_swap_interval_enabled:BOOLEAN
			-- The FPS will be managed by the `update' of the result of `generate_window'
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GL_GetSwapInterval = 1
		end

	is_gl_swap_late_enabled:BOOLEAN
			-- Like `enable_gl_swap_interval', but if a frame is skip because of
			-- a lag, the driver will immediately update the frame.
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GL_GetSwapInterval = -1
		end

	enable_gl_swap_interval
			-- Set `is_gl_swap_interval_enabled'
		do
			manage_error_code ({GAME_SDL_EXTERNAL}.SDL_GL_SetSwapInterval(1), "Cannot set swap interval")
		end

	enable_gl_swap_late
			-- Set `is_gl_swap_late_enabled'
			-- If this fail, you can it is possible that you can use `enable_gl_swap_interval'
		do
			manage_error_code ({GAME_SDL_EXTERNAL}.SDL_GL_SetSwapInterval(1), "Cannot set swap late")
		end

	disable_gl_swap_interval_and_late
			-- Unset `is_gl_swap_interval_enabled' and `is_gl_swap_late_enabled'
		do
			manage_error_code ({GAME_SDL_EXTERNAL}.SDL_GL_SetSwapInterval(1), "Cannot unset swap interval and swap late")
		end


	generate_window:GAME_WINDOW_GL
			-- The {GAME_WINDOW_GL} that fit all
			-- attributes of `Current'
		do
			create Result.make (
							title, display, is_position_x_centered,
							is_position_y_centered, is_position_x_undefined,
							is_position_y_undefined, position_x, position_y,
							width, height, flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_WINDOW_OPENGL)
						)

		end

feature {NONE} -- Implementation

	gl_context_flags:INTEGER

	set_gl_context_flags(a_flags:INTEGER)
			-- Assign the context internal flags with `a_flags'
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_FLAGS, a_flags)
			manage_error_code (l_error, "Could not assign the OpenGL context information")
		end

	set_gl_context_profile_flags(a_flags:INTEGER)
			-- Assign the context profile flags with `a_flags'
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.sdl_gl_setattribute ({GAME_SDL_EXTERNAL}.SDL_GL_CONTEXT_PROFILE_MASK, a_flags)
			manage_error_code (l_error, "Could not assign the OpenGL context profile information")
		end

end
