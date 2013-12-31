note
	description: "Summary description for {GAME_SDL_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_SDL_CONSTANTS

feature {NONE} -- Constants SDL.h

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


feature {NONE} -- Macro SDL_endian.h

--	Sdl_byteorder:NATURAL_32
--		once
--			Result:={GAME_SDL_EXTERNAL}.SDL_BYTEORDER
--		end

--	Sdl_lil_endian:NATURAL_32
--		once
--			Result:={GAME_SDL_EXTERNAL}.SDL_LIL_ENDIAN
--		end

--	Sdl_big_endian:NATURAL_32
--		once
--			Result:={GAME_SDL_EXTERNAL}.SDL_BIG_ENDIAN
--		end

end
