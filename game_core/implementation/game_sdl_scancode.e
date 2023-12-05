note
	description: "Scancode values of the SDL2 library"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_SDL_SCANCODE

feature -- Conversion

	frozen SDL_GetScancodeFromKey (key: NATURAL_32): NATURAL_32
		external
			"C (SDL_Keycode) : SDL_Scancode | <SDL.h>"
		alias
			"SDL_GetScancodeFromKey"
		end

	frozen SDL_GetScancodeFromName (name: POINTER): NATURAL_32
		external
			"C (const char *) : SDL_Scancode | <SDL.h>"
		alias
			"SDL_GetScancodeFromName"
		end

feature -- Scancodes

	frozen SDL_SCANCODE_UNKNOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_UNKNOWN"
		end

	frozen SDL_SCANCODE_A: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_A"
		end

	frozen SDL_SCANCODE_B: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_B"
		end

	frozen SDL_SCANCODE_C: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_C"
		end

	frozen SDL_SCANCODE_D: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_D"
		end

	frozen SDL_SCANCODE_E: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_E"
		end

	frozen SDL_SCANCODE_F: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F"
		end

	frozen SDL_SCANCODE_G: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_G"
		end

	frozen SDL_SCANCODE_H: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_H"
		end

	frozen SDL_SCANCODE_I: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_I"
		end

	frozen SDL_SCANCODE_J: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_J"
		end

	frozen SDL_SCANCODE_K: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_K"
		end

	frozen SDL_SCANCODE_L: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_L"
		end

	frozen SDL_SCANCODE_M: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_M"
		end

	frozen SDL_SCANCODE_N: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_N"
		end

	frozen SDL_SCANCODE_O: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_O"
		end

	frozen SDL_SCANCODE_P: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_P"
		end

	frozen SDL_SCANCODE_Q: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_Q"
		end

	frozen SDL_SCANCODE_R: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_R"
		end

	frozen SDL_SCANCODE_S: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_S"
		end

	frozen SDL_SCANCODE_T: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_T"
		end

	frozen SDL_SCANCODE_U: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_U"
		end

	frozen SDL_SCANCODE_V: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_V"
		end

	frozen SDL_SCANCODE_W: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_W"
		end

	frozen SDL_SCANCODE_X: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_X"
		end

	frozen SDL_SCANCODE_Y: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_Y"
		end

	frozen SDL_SCANCODE_Z: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_Z"
		end

	frozen SDL_SCANCODE_1: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_1"
		end

	frozen SDL_SCANCODE_2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_2"
		end

	frozen SDL_SCANCODE_3: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_3"
		end

	frozen SDL_SCANCODE_4: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_4"
		end

	frozen SDL_SCANCODE_5: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_5"
		end

	frozen SDL_SCANCODE_6: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_6"
		end

	frozen SDL_SCANCODE_7: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_7"
		end

	frozen SDL_SCANCODE_8: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_8"
		end

	frozen SDL_SCANCODE_9: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_9"
		end

	frozen SDL_SCANCODE_0: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_0"
		end

	frozen SDL_SCANCODE_RETURN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_RETURN"
		end

	frozen SDL_SCANCODE_ESCAPE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_ESCAPE"
		end

	frozen SDL_SCANCODE_BACKSPACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_BACKSPACE"
		end

	frozen SDL_SCANCODE_TAB: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_TAB"
		end

	frozen SDL_SCANCODE_SPACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_SPACE"
		end

	frozen SDL_SCANCODE_MINUS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_MINUS"
		end

	frozen SDL_SCANCODE_EQUALS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_EQUALS"
		end

	frozen SDL_SCANCODE_LEFTBRACKET: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LEFTBRACKET"
		end

	frozen SDL_SCANCODE_RIGHTBRACKET: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_RIGHTBRACKET"
		end

	frozen SDL_SCANCODE_BACKSLASH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_BACKSLASH"
		end

	frozen SDL_SCANCODE_NONUSHASH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_NONUSHASH"
		end

	frozen SDL_SCANCODE_SEMICOLON: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_SEMICOLON"
		end

	frozen SDL_SCANCODE_APOSTROPHE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_APOSTROPHE"
		end

	frozen SDL_SCANCODE_GRAVE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_GRAVE"
		end

	frozen SDL_SCANCODE_COMMA: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_COMMA"
		end

	frozen SDL_SCANCODE_PERIOD: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_PERIOD"
		end

	frozen SDL_SCANCODE_SLASH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_SLASH"
		end

	frozen SDL_SCANCODE_CAPSLOCK: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_CAPSLOCK"
		end

	frozen SDL_SCANCODE_F1: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F1"
		end

	frozen SDL_SCANCODE_F2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F2"
		end

	frozen SDL_SCANCODE_F3: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F3"
		end

	frozen SDL_SCANCODE_F4: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F4"
		end

	frozen SDL_SCANCODE_F5: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F5"
		end

	frozen SDL_SCANCODE_F6: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F6"
		end

	frozen SDL_SCANCODE_F7: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F7"
		end

	frozen SDL_SCANCODE_F8: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F8"
		end

	frozen SDL_SCANCODE_F9: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F9"
		end

	frozen SDL_SCANCODE_F10: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F10"
		end

	frozen SDL_SCANCODE_F11: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F11"
		end

	frozen SDL_SCANCODE_F12: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F12"
		end

	frozen SDL_SCANCODE_PRINTSCREEN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_PRINTSCREEN"
		end

	frozen SDL_SCANCODE_SCROLLLOCK: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_SCROLLLOCK"
		end

	frozen SDL_SCANCODE_PAUSE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_PAUSE"
		end

	frozen SDL_SCANCODE_INSERT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INSERT"
		end

	frozen SDL_SCANCODE_HOME: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_HOME"
		end

	frozen SDL_SCANCODE_PAGEUP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_PAGEUP"
		end

	frozen SDL_SCANCODE_DELETE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_DELETE"
		end

	frozen SDL_SCANCODE_END: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_END"
		end

	frozen SDL_SCANCODE_PAGEDOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_PAGEDOWN"
		end

	frozen SDL_SCANCODE_RIGHT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_RIGHT"
		end

	frozen SDL_SCANCODE_LEFT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LEFT"
		end

	frozen SDL_SCANCODE_DOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_DOWN"
		end

	frozen SDL_SCANCODE_UP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_UP"
		end

	frozen SDL_SCANCODE_NUMLOCKCLEAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_NUMLOCKCLEAR"
		end

	frozen SDL_SCANCODE_KP_DIVIDE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_DIVIDE"
		end

	frozen SDL_SCANCODE_KP_MULTIPLY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_MULTIPLY"
		end

	frozen SDL_SCANCODE_KP_MINUS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_MINUS"
		end

	frozen SDL_SCANCODE_KP_PLUS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_PLUS"
		end

	frozen SDL_SCANCODE_KP_ENTER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_ENTER"
		end

	frozen SDL_SCANCODE_KP_1: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_1"
		end

	frozen SDL_SCANCODE_KP_2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_2"
		end

	frozen SDL_SCANCODE_KP_3: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_3"
		end

	frozen SDL_SCANCODE_KP_4: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_4"
		end

	frozen SDL_SCANCODE_KP_5: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_5"
		end

	frozen SDL_SCANCODE_KP_6: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_6"
		end

	frozen SDL_SCANCODE_KP_7: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_7"
		end

	frozen SDL_SCANCODE_KP_8: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_8"
		end

	frozen SDL_SCANCODE_KP_9: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_9"
		end

	frozen SDL_SCANCODE_KP_0: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_0"
		end

	frozen SDL_SCANCODE_KP_PERIOD: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_PERIOD"
		end

	frozen SDL_SCANCODE_NONUSBACKSLASH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_NONUSBACKSLASH"
		end

	frozen SDL_SCANCODE_APPLICATION: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_APPLICATION"
		end

	frozen SDL_SCANCODE_POWER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_POWER"
		end

	frozen SDL_SCANCODE_KP_EQUALS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_EQUALS"
		end

	frozen SDL_SCANCODE_F13: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F13"
		end

	frozen SDL_SCANCODE_F14: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F14"
		end

	frozen SDL_SCANCODE_F15: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F15"
		end

	frozen SDL_SCANCODE_F16: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F16"
		end

	frozen SDL_SCANCODE_F17: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F17"
		end

	frozen SDL_SCANCODE_F18: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F18"
		end

	frozen SDL_SCANCODE_F19: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F19"
		end

	frozen SDL_SCANCODE_F20: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F20"
		end

	frozen SDL_SCANCODE_F21: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F21"
		end

	frozen SDL_SCANCODE_F22: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F22"
		end

	frozen SDL_SCANCODE_F23: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F23"
		end

	frozen SDL_SCANCODE_F24: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_F24"
		end

	frozen SDL_SCANCODE_EXECUTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_EXECUTE"
		end

	frozen SDL_SCANCODE_HELP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_HELP"
		end

	frozen SDL_SCANCODE_MENU: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_MENU"
		end

	frozen SDL_SCANCODE_SELECT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_SELECT"
		end

	frozen SDL_SCANCODE_STOP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_STOP"
		end

	frozen SDL_SCANCODE_AGAIN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AGAIN"
		end

	frozen SDL_SCANCODE_UNDO: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_UNDO"
		end

	frozen SDL_SCANCODE_CUT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_CUT"
		end

	frozen SDL_SCANCODE_COPY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_COPY"
		end

	frozen SDL_SCANCODE_PASTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_PASTE"
		end

	frozen SDL_SCANCODE_FIND: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_FIND"
		end

	frozen SDL_SCANCODE_MUTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_MUTE"
		end

	frozen SDL_SCANCODE_VOLUMEUP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_VOLUMEUP"
		end

	frozen SDL_SCANCODE_VOLUMEDOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_VOLUMEDOWN"
		end

	frozen SDL_SCANCODE_KP_COMMA: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_COMMA"
		end

	frozen SDL_SCANCODE_KP_EQUALSAS400: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_EQUALSAS400"
		end

	frozen SDL_SCANCODE_INTERNATIONAL1: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INTERNATIONAL1"
		end

	frozen SDL_SCANCODE_INTERNATIONAL2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INTERNATIONAL2"
		end

	frozen SDL_SCANCODE_INTERNATIONAL3: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INTERNATIONAL3"
		end

	frozen SDL_SCANCODE_INTERNATIONAL4: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INTERNATIONAL4"
		end

	frozen SDL_SCANCODE_INTERNATIONAL5: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INTERNATIONAL5"
		end

	frozen SDL_SCANCODE_INTERNATIONAL6: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INTERNATIONAL6"
		end

	frozen SDL_SCANCODE_INTERNATIONAL7: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INTERNATIONAL7"
		end

	frozen SDL_SCANCODE_INTERNATIONAL8: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INTERNATIONAL8"
		end

	frozen SDL_SCANCODE_INTERNATIONAL9: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_INTERNATIONAL9"
		end

	frozen SDL_SCANCODE_LANG1: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LANG1"
		end

	frozen SDL_SCANCODE_LANG2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LANG2"
		end

	frozen SDL_SCANCODE_LANG3: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LANG3"
		end

	frozen SDL_SCANCODE_LANG4: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LANG4"
		end

	frozen SDL_SCANCODE_LANG5: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LANG5"
		end

	frozen SDL_SCANCODE_LANG6: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LANG6"
		end

	frozen SDL_SCANCODE_LANG7: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LANG7"
		end

	frozen SDL_SCANCODE_LANG8: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LANG8"
		end

	frozen SDL_SCANCODE_LANG9: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LANG9"
		end

	frozen SDL_SCANCODE_ALTERASE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_ALTERASE"
		end

	frozen SDL_SCANCODE_SYSREQ: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_SYSREQ"
		end

	frozen SDL_SCANCODE_CANCEL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_CANCEL"
		end

	frozen SDL_SCANCODE_CLEAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_CLEAR"
		end

	frozen SDL_SCANCODE_PRIOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_PRIOR"
		end

	frozen SDL_SCANCODE_RETURN2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_RETURN2"
		end

	frozen SDL_SCANCODE_SEPARATOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_SEPARATOR"
		end

	frozen SDL_SCANCODE_OUT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_OUT"
		end

	frozen SDL_SCANCODE_OPER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_OPER"
		end

	frozen SDL_SCANCODE_CLEARAGAIN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_CLEARAGAIN"
		end

	frozen SDL_SCANCODE_CRSEL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_CRSEL"
		end

	frozen SDL_SCANCODE_EXSEL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_EXSEL"
		end

	frozen SDL_SCANCODE_KP_00: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_00"
		end

	frozen SDL_SCANCODE_KP_000: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_000"
		end

	frozen SDL_SCANCODE_THOUSANDSSEPARATOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_THOUSANDSSEPARATOR"
		end

	frozen SDL_SCANCODE_DECIMALSEPARATOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_DECIMALSEPARATOR"
		end

	frozen SDL_SCANCODE_CURRENCYUNIT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_CURRENCYUNIT"
		end

	frozen SDL_SCANCODE_CURRENCYSUBUNIT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_CURRENCYSUBUNIT"
		end

	frozen SDL_SCANCODE_KP_LEFTPAREN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_LEFTPAREN"
		end

	frozen SDL_SCANCODE_KP_RIGHTPAREN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_RIGHTPAREN"
		end

	frozen SDL_SCANCODE_KP_LEFTBRACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_LEFTBRACE"
		end

	frozen SDL_SCANCODE_KP_RIGHTBRACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_RIGHTBRACE"
		end

	frozen SDL_SCANCODE_KP_TAB: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_TAB"
		end

	frozen SDL_SCANCODE_KP_BACKSPACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_BACKSPACE"
		end

	frozen SDL_SCANCODE_KP_A: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_A"
		end

	frozen SDL_SCANCODE_KP_B: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_B"
		end

	frozen SDL_SCANCODE_KP_C: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_C"
		end

	frozen SDL_SCANCODE_KP_D: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_D"
		end

	frozen SDL_SCANCODE_KP_E: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_E"
		end

	frozen SDL_SCANCODE_KP_F: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_F"
		end

	frozen SDL_SCANCODE_KP_XOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_XOR"
		end

	frozen SDL_SCANCODE_KP_POWER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_POWER"
		end

	frozen SDL_SCANCODE_KP_PERCENT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_PERCENT"
		end

	frozen SDL_SCANCODE_KP_LESS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_LESS"
		end

	frozen SDL_SCANCODE_KP_GREATER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_GREATER"
		end

	frozen SDL_SCANCODE_KP_AMPERSAND: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_AMPERSAND"
		end

	frozen SDL_SCANCODE_KP_DBLAMPERSAND: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_DBLAMPERSAND"
		end

	frozen SDL_SCANCODE_KP_VERTICALBAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_VERTICALBAR"
		end

	frozen SDL_SCANCODE_KP_DBLVERTICALBAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_DBLVERTICALBAR"
		end

	frozen SDL_SCANCODE_KP_COLON: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_COLON"
		end

	frozen SDL_SCANCODE_KP_HASH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_HASH"
		end

	frozen SDL_SCANCODE_KP_SPACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_SPACE"
		end

	frozen SDL_SCANCODE_KP_AT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_AT"
		end

	frozen SDL_SCANCODE_KP_EXCLAM: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_EXCLAM"
		end

	frozen SDL_SCANCODE_KP_MEMSTORE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_MEMSTORE"
		end

	frozen SDL_SCANCODE_KP_MEMRECALL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_MEMRECALL"
		end

	frozen SDL_SCANCODE_KP_MEMCLEAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_MEMCLEAR"
		end

	frozen SDL_SCANCODE_KP_MEMADD: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_MEMADD"
		end

	frozen SDL_SCANCODE_KP_MEMSUBTRACT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_MEMSUBTRACT"
		end

	frozen SDL_SCANCODE_KP_MEMMULTIPLY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_MEMMULTIPLY"
		end

	frozen SDL_SCANCODE_KP_MEMDIVIDE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_MEMDIVIDE"
		end

	frozen SDL_SCANCODE_KP_PLUSMINUS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_PLUSMINUS"
		end

	frozen SDL_SCANCODE_KP_CLEAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_CLEAR"
		end

	frozen SDL_SCANCODE_KP_CLEARENTRY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_CLEARENTRY"
		end

	frozen SDL_SCANCODE_KP_BINARY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_BINARY"
		end

	frozen SDL_SCANCODE_KP_OCTAL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_OCTAL"
		end

	frozen SDL_SCANCODE_KP_DECIMAL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_DECIMAL"
		end

	frozen SDL_SCANCODE_KP_HEXADECIMAL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KP_HEXADECIMAL"
		end

	frozen SDL_SCANCODE_LCTRL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LCTRL"
		end

	frozen SDL_SCANCODE_LSHIFT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LSHIFT"
		end

	frozen SDL_SCANCODE_LALT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LALT"
		end

	frozen SDL_SCANCODE_LGUI: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_LGUI"
		end

	frozen SDL_SCANCODE_RCTRL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_RCTRL"
		end

	frozen SDL_SCANCODE_RSHIFT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_RSHIFT"
		end

	frozen SDL_SCANCODE_RALT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_RALT"
		end

	frozen SDL_SCANCODE_RGUI: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_RGUI"
		end

	frozen SDL_SCANCODE_MODE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_MODE"
		end

	frozen SDL_SCANCODE_AUDIONEXT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AUDIONEXT"
		end

	frozen SDL_SCANCODE_AUDIOPREV: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AUDIOPREV"
		end

	frozen SDL_SCANCODE_AUDIOSTOP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AUDIOSTOP"
		end

	frozen SDL_SCANCODE_AUDIOPLAY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AUDIOPLAY"
		end

	frozen SDL_SCANCODE_AUDIOMUTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AUDIOMUTE"
		end

	frozen SDL_SCANCODE_MEDIASELECT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_MEDIASELECT"
		end

	frozen SDL_SCANCODE_WWW: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_WWW"
		end

	frozen SDL_SCANCODE_MAIL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_MAIL"
		end

	frozen SDL_SCANCODE_CALCULATOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_CALCULATOR"
		end

	frozen SDL_SCANCODE_COMPUTER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_COMPUTER"
		end

	frozen SDL_SCANCODE_AC_SEARCH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AC_SEARCH"
		end

	frozen SDL_SCANCODE_AC_HOME: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AC_HOME"
		end

	frozen SDL_SCANCODE_AC_BACK: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AC_BACK"
		end

	frozen SDL_SCANCODE_AC_FORWARD: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AC_FORWARD"
		end

	frozen SDL_SCANCODE_AC_STOP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AC_STOP"
		end

	frozen SDL_SCANCODE_AC_REFRESH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AC_REFRESH"
		end

	frozen SDL_SCANCODE_AC_BOOKMARKS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_AC_BOOKMARKS"
		end

	frozen SDL_SCANCODE_BRIGHTNESSDOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_BRIGHTNESSDOWN"
		end

	frozen SDL_SCANCODE_BRIGHTNESSUP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_BRIGHTNESSUP"
		end

	frozen SDL_SCANCODE_DISPLAYSWITCH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_DISPLAYSWITCH"
		end

	frozen SDL_SCANCODE_KBDILLUMTOGGLE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KBDILLUMTOGGLE"
		end

	frozen SDL_SCANCODE_KBDILLUMDOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KBDILLUMDOWN"
		end

	frozen SDL_SCANCODE_KBDILLUMUP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_KBDILLUMUP"
		end

	frozen SDL_SCANCODE_EJECT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_EJECT"
		end

	frozen SDL_SCANCODE_SLEEP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_SLEEP"
		end

	frozen SDL_SCANCODE_APP1: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_APP1"
		end

	frozen SDL_SCANCODE_APP2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Scancode"
		alias
			"SDL_SCANCODE_APP2"
		end

end
