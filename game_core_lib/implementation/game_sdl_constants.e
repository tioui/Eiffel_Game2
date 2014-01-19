note
	description: "Summary description for {GAME_SDL_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_SDL_CONSTANTS

inherit
	GAME_SDL_ANY

feature {NONE} -- Constants SDL.h

	Sizeof_sdl_color:INTEGER
			-- Size of an SDL_Color C structure.
		once
			Result:={GAME_SDL_EXTERNAL}.c_sizeof_sdl_color
		end

	C_sizeof_sdl_event:INTEGER
			-- Size of an SDL_Event C structure.
		once
			Result:={GAME_SDL_EXTERNAL}.c_sizeof_sdl_event
		end

	Size_of_sdl_rect_structure : INTEGER
			-- The size of a SDL_Rect C structure in byte.
		once
			Result:={GAME_SDL_EXTERNAL}.c_sizeof_sdl_rect
		end

	Sdl_windowevent:NATURAL_32
			 -- Event type for SDL_WindowEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT
		end

	Sdl_keydown:NATURAL_32
			 -- Event type for SDL_KeyboardEvent.
			 -- Active when a key as been pressed.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_KEYDOWN
		end

	Sdl_keyup:NATURAL_32
			 -- Event type for SDL_KeyboardEvent.
			 -- Active when a key as been released.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_KEYUP
		end

	Sdl_textediting:NATURAL_32
			 -- Event type for SDL_TextEditingEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_TEXTEDITING
		end

	Sdl_textinput:NATURAL_32
			 -- Event type for SDL_TextInputEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_TEXTINPUT
		end

	Sdl_mousemotion:NATURAL_32
			 -- Event type for SDL_TextInputEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_MOUSEMOTION
		end

	Sdl_mousebuttondown:NATURAL_32
			 -- Event type for SDL_MouseButtonEvent.
			 -- Active when a button as been pressed.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN
		end

	Sdl_mousebuttonup:NATURAL_32
			 -- Event type for SDL_MouseButtonEvent.
			 -- Active when a button as been released.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONUP
		end

	Sdl_mousewheel:NATURAL_32
			 -- Event type for SDL_MouseWheelEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_MOUSEWHEEL
		end

	Sdl_joyaxismotion:NATURAL_32
			 -- Event type for SDL_JoyAxisEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_JOYAXISMOTION
		end

	Sdl_joyballmotion:NATURAL_32
			 -- Event type for SDL_JoyAxisEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_JOYBALLMOTION
		end

	Sdl_joyhatmotion:NATURAL_32
			 -- Event type for SDL_JoyHatEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_JOYHATMOTION
		end

	Sdl_joybuttondown:NATURAL_32
			 -- Event type for SDL_JoyButtonEvent.
			 -- Active when a button as been pressed.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_JOYBUTTONDOWN
		end

	Sdl_joybuttonup:NATURAL_32
			 -- Event type for SDL_JoyButtonEvent.
			 -- Active when a button as been released.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_JOYBUTTONUP
		end

	Sdl_joydeviceadded:NATURAL_32
			 -- Event type for SDL_JoyDeviceEvent.
			 -- Active when a device as been added.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_JOYDEVICEADDED
		end

	Sdl_joydeviceremoved:NATURAL_32
			 -- Event type for SDL_JoyDeviceEvent.
			 -- Active when a device as been removed.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_JOYDEVICEREMOVED
		end

	Sdl_controlleraxismotion:NATURAL_32
			 -- Event type for SDL_ControllerAxisEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_CONTROLLERAXISMOTION
		end

	Sdl_controllerbuttondown:NATURAL_32
			 -- Event type for SDL_ControllerButtonEvent.
			 -- Active when a button as been pressed.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_CONTROLLERBUTTONDOWN
		end

	Sdl_controllerbuttonup:NATURAL_32
			 -- Event type for SDL_ControllerButtonEvent.
			 -- Active when a button as been released.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_CONTROLLERBUTTONUP
		end

	Sdl_controllerdeviceadded:NATURAL_32
			 -- Event type for SDL_ControllerDeviceEvent.
			 -- Active when a device as been added.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_CONTROLLERDEVICEADDED
		end

	Sdl_controllerdeviceremoved:NATURAL_32
			 -- Event type for SDL_ControllerDeviceEvent.
			 -- Active when a device as been removed.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_CONTROLLERDEVICEREMOVED
		end

	Sdl_controllerdeviceremapped:NATURAL_32
			 -- Event type for SDL_ControllerDeviceEvent.
			 -- Active when a device as been emapped.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_CONTROLLERDEVICEREMAPPED
		end

	Sdl_quit:NATURAL_32
			 -- Event type for SDL_QuitEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_QUIT
		end

	Sdl_fingermotion:NATURAL_32
			 -- Event type for SDL_TouchFingerEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_FINGERMOTION
		end

	Sdl_fingerdown:NATURAL_32
			 -- Event type for SDL_TouchFingerEvent.
			 -- Active when a finger as been pressed.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_FINGERDOWN
		end

	Sdl_fingerup:NATURAL_32
			 -- Event type for SDL_TouchFingerEvent.
			 -- Active when a finger as been released.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_FINGERUP
		end

	Sdl_multigesture:NATURAL_32
			 -- Event type for SDL_MultiGestureEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_MULTIGESTURE
		end

	Sdl_dollargesture:NATURAL_32
			 -- Event type for SDL_DollarGestureEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_DOLLARGESTURE
		end

	Sdl_dropfile:NATURAL_32
			 -- Event type for SDL_DropEvent.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_DROPFILE
		end

	Sdl_init_timer:NATURAL_32
			-- Timer subsystem
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_INIT_TIMER
		end

	Sdl_init_audio:NATURAL_32
			-- Audio subsystem
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_INIT_AUDIO
		end

	Sdl_init_video:NATURAL_32
			-- Video subsystem
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_INIT_VIDEO
		end

	Sdl_init_joystick:NATURAL_32
			-- Joystick subsystem
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_INIT_JOYSTICK
		end

	Sdl_init_haptic:NATURAL_32
			-- Haptic (force feedback) subsystem
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_INIT_HAPTIC
		end

	Sdl_init_gamecontroller:NATURAL_32
			-- Controller subsystem
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_INIT_GAMECONTROLLER
		end

	Sdl_init_events:NATURAL_32
			-- Events subsystem
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_INIT_EVENTS
		end

	Sdl_init_everything:NATURAL_32
			-- All subsystems.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_INIT_EVERYTHING
		end

	Sdl_init_noparachute:NATURAL_32
			-- Don't catch fatal signals
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_INIT_NOPARACHUTE
		end

	Sdl_windowpos_undefined_display(a_display:INTEGER):INTEGER
			-- Used to indicate that you don't care what the window position is.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_UNDEFINED_DISPLAY(a_display)
		end

	Sdl_windowpos_centered_display(a_display:INTEGER):INTEGER
			-- Used to indicate that you don't care what the window position is.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_CENTERED_DISPLAY(a_display)
		end

	Sdl_window_fullscreen:NATURAL_32
			-- Fullscreen window.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_FULLSCREEN
		end

	Sdl_window_fullscreen_desktop:NATURAL_32
			-- Fullscreen window at the current desktop resolution.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_FULLSCREEN_DESKTOP
		end

	Sdl_window_opengl:NATURAL_32
			-- Window usable with OpenGL context
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_OPENGL
		end

	Sdl_window_hidden:NATURAL_32
			-- Window is not visible.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_HIDDEN
		end

	Sdl_window_borderless:NATURAL_32
			-- No window decoration.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_BORDERLESS
		end

	Sdl_window_resizable:NATURAL_32
			-- Window can be resized.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_RESIZABLE
		end

	Sdl_window_minimized:NATURAL_32
			-- Window is minimized.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_MINIMIZED
		end

	Sdl_window_maximized:NATURAL_32
			-- Window is maximized.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_MAXIMIZED
		end

	Sdl_window_input_grabbed:NATURAL_32
			-- Window has grabbed input focus.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_INPUT_GRABBED
		end

	Sdl_window_allow_highdpi:NATURAL_32
			-- Window should be created in high-DPI mode if supported.
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_WINDOW_ALLOW_HIGHDPI
		end

	Size_of_sdl_display_mode_structure : INTEGER
			-- The size of a SDL_Rect C structure in byte.
		once
			Result:={GAME_SDL_EXTERNAL}.c_sizeof_sdl_display_mode
		end

	Sdl_pixelformat_unknown : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_UNKNOWN
		end

	Sdl_pixelformat_index1lsb : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_INDEX1LSB
		end

	Sdl_pixelformat_index1msb : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_INDEX1MSB
		end

	Sdl_pixelformat_index4lsb : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_INDEX4LSB
		end

	Sdl_pixelformat_index4msb : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_INDEX4MSB
		end

	Sdl_pixelformat_index8 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_INDEX8
		end

	Sdl_pixelformat_rgb332 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGB332
		end

	Sdl_pixelformat_rgb444 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGB444
		end

	Sdl_pixelformat_rgb555 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGB555
		end

	Sdl_pixelformat_bgr555 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_BGR555
		end

	Sdl_pixelformat_argb4444 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_ARGB4444
		end

	Sdl_pixelformat_rgba4444 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGBA4444
		end

	Sdl_pixelformat_abgr4444 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_ABGR4444
		end

	Sdl_pixelformat_bgra4444 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_BGRA4444
		end

	Sdl_pixelformat_argb1555 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_ARGB1555
		end

	Sdl_pixelformat_rgba5551 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGBA5551
		end

	Sdl_pixelformat_abgr1555 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_ABGR1555
		end

	Sdl_pixelformat_bgra5551 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_BGRA5551
		end

	Sdl_pixelformat_rgb565 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGB565
		end

	Sdl_pixelformat_bgr565 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_BGR565
		end

	Sdl_pixelformat_rgb24 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGB24
		end

	Sdl_pixelformat_bgr24 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_BGR24
		end

	Sdl_pixelformat_rgb888 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGB888
		end

	Sdl_pixelformat_rgbx8888 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGBX8888
		end

	Sdl_pixelformat_bgr888 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_BGR888
		end

	Sdl_pixelformat_bgrx8888 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_BGRX8888
		end

	Sdl_pixelformat_argb8888 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_ARGB8888
		end

	Sdl_pixelformat_rgba8888 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_RGBA8888
		end

	Sdl_pixelformat_abgr8888 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_ABGR8888
		end

	Sdl_pixelformat_bgra8888 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_BGRA8888
		end

	Sdl_pixelformat_argb2101010 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_ARGB2101010
		end

	Sdl_pixelformat_yv12 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_YV12
		end

	Sdl_pixelformat_iyuv : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_IYUV
		end

	Sdl_pixelformat_yuy2 : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_YUY2
		end

	Sdl_pixelformat_uyvy : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_UYVY
		end

	Sdl_pixelformat_yvyu : NATURAL_32
			-- Format constants
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_PIXELFORMAT_YVYU
		end

	Sdl_syswm_unknown : INTEGER
			-- Unknow window manager
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_SYSWM_UNKNOWN
		end

	Sdl_syswm_windows : INTEGER
			-- Windows window manager
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_SYSWM_WINDOWS
		end

	Sdl_syswm_x11 : INTEGER
			-- X11 window manager
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_SYSWM_X11
		end

	Sdl_syswm_directfb : INTEGER
			-- DirectFB window manager
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_SYSWM_DIRECTFB
		end

	Sdl_syswm_cocoa : INTEGER
			-- Cocoa window manager for Mac OS X
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_SYSWM_COCOA
		end

	Sdl_syswm_uikit : INTEGER
			-- UIKit window manager for IOS
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_SYSWM_UIKIT
		end

	Sdl_enable : INTEGER
			-- Enable the feature
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_ENABLE
		end

	Sdl_disable : INTEGER
			-- Disable the feature
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_DISABLE
		end

	Sdl_query : INTEGER
			-- Query an information
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_QUERY
		end

	Sdl_false : INTEGER
			-- A false value
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_FALSE
		end

	Sdl_true : INTEGER
			-- A rue value
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_TRUE
		end

	Sdl_blendmode_none : INTEGER
			-- no blending dstRGBA = srcRGBA
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_BLENDMODE_NONE
		end

	Sdl_blendmode_blend : INTEGER
			-- alpha blending dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA)) dstA = srcA + (dstA * (1-srcA))
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_BLENDMODE_BLEND
		end

	Sdl_blendmode_add : INTEGER
			-- additive blending dstRGB = (srcRGB * srcA) + dstRGB dstA = dstA
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_BLENDMODE_ADD
		end

	Sdl_blendmode_mod : INTEGER
			-- color modulate dstRGB = srcRGB * dstRGB dstA = dstA
		once
			Result:={GAME_SDL_EXTERNAL}.SDL_BLENDMODE_MOD
		end

end
