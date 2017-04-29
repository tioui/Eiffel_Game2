note
	description: "Scancode values of the SDL2 library"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_SDL_SCANCODE

feature -- Conversion

	frozen SDL_GetScancodeFromKey (key: INTEGER_32): INTEGER_32
		external
			"C (SDL_Keycode) : SDL_Scancode | <SDL.h>"
		alias
			"SDL_GetScancodeFromKey"
		end

	frozen SDL_GetScancodeFromName (name: POINTER): INTEGER_32
		external
			"C (const char *) : SDL_Scancode | <SDL.h>"
		alias
			"SDL_GetScancodeFromName"
		end

feature -- Scancodes

	frozen SDL_SCANCODE_UNKNOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_UNKNOWN"
		end

	frozen SDL_SCANCODE_A: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_A"
		end

	frozen SDL_SCANCODE_B: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_B"
		end

	frozen SDL_SCANCODE_C: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_C"
		end

	frozen SDL_SCANCODE_D: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_D"
		end

	frozen SDL_SCANCODE_E: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_E"
		end

	frozen SDL_SCANCODE_F: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F"
		end

	frozen SDL_SCANCODE_G: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_G"
		end

	frozen SDL_SCANCODE_H: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_H"
		end

	frozen SDL_SCANCODE_I: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_I"
		end

	frozen SDL_SCANCODE_J: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_J"
		end

	frozen SDL_SCANCODE_K: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_K"
		end

	frozen SDL_SCANCODE_L: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_L"
		end

	frozen SDL_SCANCODE_M: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_M"
		end

	frozen SDL_SCANCODE_N: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_N"
		end

	frozen SDL_SCANCODE_O: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_O"
		end

	frozen SDL_SCANCODE_P: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_P"
		end

	frozen SDL_SCANCODE_Q: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_Q"
		end

	frozen SDL_SCANCODE_R: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_R"
		end

	frozen SDL_SCANCODE_S: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_S"
		end

	frozen SDL_SCANCODE_T: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_T"
		end

	frozen SDL_SCANCODE_U: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_U"
		end

	frozen SDL_SCANCODE_V: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_V"
		end

	frozen SDL_SCANCODE_W: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_W"
		end

	frozen SDL_SCANCODE_X: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_X"
		end

	frozen SDL_SCANCODE_Y: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_Y"
		end

	frozen SDL_SCANCODE_Z: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_Z"
		end

	frozen SDL_SCANCODE_1: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_1"
		end

	frozen SDL_SCANCODE_2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_2"
		end

	frozen SDL_SCANCODE_3: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_3"
		end

	frozen SDL_SCANCODE_4: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_4"
		end

	frozen SDL_SCANCODE_5: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_5"
		end

	frozen SDL_SCANCODE_6: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_6"
		end

	frozen SDL_SCANCODE_7: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_7"
		end

	frozen SDL_SCANCODE_8: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_8"
		end

	frozen SDL_SCANCODE_9: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_9"
		end

	frozen SDL_SCANCODE_0: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_0"
		end

	frozen SDL_SCANCODE_RETURN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RETURN"
		end

	frozen SDL_SCANCODE_ESCAPE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_ESCAPE"
		end

	frozen SDL_SCANCODE_BACKSPACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_BACKSPACE"
		end

	frozen SDL_SCANCODE_TAB: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_TAB"
		end

	frozen SDL_SCANCODE_SPACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SPACE"
		end

	frozen SDL_SCANCODE_MINUS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MINUS"
		end

	frozen SDL_SCANCODE_EQUALS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_EQUALS"
		end

	frozen SDL_SCANCODE_LEFTBRACKET: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LEFTBRACKET"
		end

	frozen SDL_SCANCODE_RIGHTBRACKET: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RIGHTBRACKET"
		end

	frozen SDL_SCANCODE_BACKSLASH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_BACKSLASH"
		end

	frozen SDL_SCANCODE_NONUSHASH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_NONUSHASH"
		end

	frozen SDL_SCANCODE_SEMICOLON: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SEMICOLON"
		end

	frozen SDL_SCANCODE_APOSTROPHE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_APOSTROPHE"
		end

	frozen SDL_SCANCODE_GRAVE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_GRAVE"
		end

	frozen SDL_SCANCODE_COMMA: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_COMMA"
		end

	frozen SDL_SCANCODE_PERIOD: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PERIOD"
		end

	frozen SDL_SCANCODE_SLASH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SLASH"
		end

	frozen SDL_SCANCODE_CAPSLOCK: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CAPSLOCK"
		end

	frozen SDL_SCANCODE_F1: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F1"
		end

	frozen SDL_SCANCODE_F2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F2"
		end

	frozen SDL_SCANCODE_F3: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F3"
		end

	frozen SDL_SCANCODE_F4: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F4"
		end

	frozen SDL_SCANCODE_F5: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F5"
		end

	frozen SDL_SCANCODE_F6: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F6"
		end

	frozen SDL_SCANCODE_F7: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F7"
		end

	frozen SDL_SCANCODE_F8: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F8"
		end

	frozen SDL_SCANCODE_F9: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F9"
		end

	frozen SDL_SCANCODE_F10: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F10"
		end

	frozen SDL_SCANCODE_F11: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F11"
		end

	frozen SDL_SCANCODE_F12: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F12"
		end

	frozen SDL_SCANCODE_PRINTSCREEN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PRINTSCREEN"
		end

	frozen SDL_SCANCODE_SCROLLLOCK: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SCROLLLOCK"
		end

	frozen SDL_SCANCODE_PAUSE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PAUSE"
		end

	frozen SDL_SCANCODE_INSERT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INSERT"
		end

	frozen SDL_SCANCODE_HOME: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_HOME"
		end

	frozen SDL_SCANCODE_PAGEUP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PAGEUP"
		end

	frozen SDL_SCANCODE_DELETE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_DELETE"
		end

	frozen SDL_SCANCODE_END: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_END"
		end

	frozen SDL_SCANCODE_PAGEDOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PAGEDOWN"
		end

	frozen SDL_SCANCODE_RIGHT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RIGHT"
		end

	frozen SDL_SCANCODE_LEFT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LEFT"
		end

	frozen SDL_SCANCODE_DOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_DOWN"
		end

	frozen SDL_SCANCODE_UP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_UP"
		end

	frozen SDL_SCANCODE_NUMLOCKCLEAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_NUMLOCKCLEAR"
		end

	frozen SDL_SCANCODE_KP_DIVIDE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_DIVIDE"
		end

	frozen SDL_SCANCODE_KP_MULTIPLY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MULTIPLY"
		end

	frozen SDL_SCANCODE_KP_MINUS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MINUS"
		end

	frozen SDL_SCANCODE_KP_PLUS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_PLUS"
		end

	frozen SDL_SCANCODE_KP_ENTER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_ENTER"
		end

	frozen SDL_SCANCODE_KP_1: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_1"
		end

	frozen SDL_SCANCODE_KP_2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_2"
		end

	frozen SDL_SCANCODE_KP_3: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_3"
		end

	frozen SDL_SCANCODE_KP_4: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_4"
		end

	frozen SDL_SCANCODE_KP_5: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_5"
		end

	frozen SDL_SCANCODE_KP_6: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_6"
		end

	frozen SDL_SCANCODE_KP_7: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_7"
		end

	frozen SDL_SCANCODE_KP_8: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_8"
		end

	frozen SDL_SCANCODE_KP_9: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_9"
		end

	frozen SDL_SCANCODE_KP_0: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_0"
		end

	frozen SDL_SCANCODE_KP_PERIOD: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_PERIOD"
		end

	frozen SDL_SCANCODE_NONUSBACKSLASH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_NONUSBACKSLASH"
		end

	frozen SDL_SCANCODE_APPLICATION: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_APPLICATION"
		end

	frozen SDL_SCANCODE_POWER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_POWER"
		end

	frozen SDL_SCANCODE_KP_EQUALS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_EQUALS"
		end

	frozen SDL_SCANCODE_F13: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F13"
		end

	frozen SDL_SCANCODE_F14: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F14"
		end

	frozen SDL_SCANCODE_F15: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F15"
		end

	frozen SDL_SCANCODE_F16: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F16"
		end

	frozen SDL_SCANCODE_F17: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F17"
		end

	frozen SDL_SCANCODE_F18: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F18"
		end

	frozen SDL_SCANCODE_F19: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F19"
		end

	frozen SDL_SCANCODE_F20: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F20"
		end

	frozen SDL_SCANCODE_F21: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F21"
		end

	frozen SDL_SCANCODE_F22: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F22"
		end

	frozen SDL_SCANCODE_F23: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F23"
		end

	frozen SDL_SCANCODE_F24: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F24"
		end

	frozen SDL_SCANCODE_EXECUTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_EXECUTE"
		end

	frozen SDL_SCANCODE_HELP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_HELP"
		end

	frozen SDL_SCANCODE_MENU: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MENU"
		end

	frozen SDL_SCANCODE_SELECT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SELECT"
		end

	frozen SDL_SCANCODE_STOP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_STOP"
		end

	frozen SDL_SCANCODE_AGAIN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AGAIN"
		end

	frozen SDL_SCANCODE_UNDO: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_UNDO"
		end

	frozen SDL_SCANCODE_CUT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CUT"
		end

	frozen SDL_SCANCODE_COPY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_COPY"
		end

	frozen SDL_SCANCODE_PASTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PASTE"
		end

	frozen SDL_SCANCODE_FIND: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_FIND"
		end

	frozen SDL_SCANCODE_MUTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MUTE"
		end

	frozen SDL_SCANCODE_VOLUMEUP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_VOLUMEUP"
		end

	frozen SDL_SCANCODE_VOLUMEDOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_VOLUMEDOWN"
		end

	frozen SDL_SCANCODE_KP_COMMA: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_COMMA"
		end

	frozen SDL_SCANCODE_KP_EQUALSAS400: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_EQUALSAS400"
		end

	frozen SDL_SCANCODE_INTERNATIONAL1: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL1"
		end

	frozen SDL_SCANCODE_INTERNATIONAL2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL2"
		end

	frozen SDL_SCANCODE_INTERNATIONAL3: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL3"
		end

	frozen SDL_SCANCODE_INTERNATIONAL4: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL4"
		end

	frozen SDL_SCANCODE_INTERNATIONAL5: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL5"
		end

	frozen SDL_SCANCODE_INTERNATIONAL6: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL6"
		end

	frozen SDL_SCANCODE_INTERNATIONAL7: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL7"
		end

	frozen SDL_SCANCODE_INTERNATIONAL8: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL8"
		end

	frozen SDL_SCANCODE_INTERNATIONAL9: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL9"
		end

	frozen SDL_SCANCODE_LANG1: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG1"
		end

	frozen SDL_SCANCODE_LANG2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG2"
		end

	frozen SDL_SCANCODE_LANG3: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG3"
		end

	frozen SDL_SCANCODE_LANG4: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG4"
		end

	frozen SDL_SCANCODE_LANG5: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG5"
		end

	frozen SDL_SCANCODE_LANG6: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG6"
		end

	frozen SDL_SCANCODE_LANG7: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG7"
		end

	frozen SDL_SCANCODE_LANG8: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG8"
		end

	frozen SDL_SCANCODE_LANG9: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG9"
		end

	frozen SDL_SCANCODE_ALTERASE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_ALTERASE"
		end

	frozen SDL_SCANCODE_SYSREQ: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SYSREQ"
		end

	frozen SDL_SCANCODE_CANCEL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CANCEL"
		end

	frozen SDL_SCANCODE_CLEAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CLEAR"
		end

	frozen SDL_SCANCODE_PRIOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PRIOR"
		end

	frozen SDL_SCANCODE_RETURN2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RETURN2"
		end

	frozen SDL_SCANCODE_SEPARATOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SEPARATOR"
		end

	frozen SDL_SCANCODE_OUT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_OUT"
		end

	frozen SDL_SCANCODE_OPER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_OPER"
		end

	frozen SDL_SCANCODE_CLEARAGAIN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CLEARAGAIN"
		end

	frozen SDL_SCANCODE_CRSEL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CRSEL"
		end

	frozen SDL_SCANCODE_EXSEL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_EXSEL"
		end

	frozen SDL_SCANCODE_KP_00: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_00"
		end

	frozen SDL_SCANCODE_KP_000: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_000"
		end

	frozen SDL_SCANCODE_THOUSANDSSEPARATOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_THOUSANDSSEPARATOR"
		end

	frozen SDL_SCANCODE_DECIMALSEPARATOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_DECIMALSEPARATOR"
		end

	frozen SDL_SCANCODE_CURRENCYUNIT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CURRENCYUNIT"
		end

	frozen SDL_SCANCODE_CURRENCYSUBUNIT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CURRENCYSUBUNIT"
		end

	frozen SDL_SCANCODE_KP_LEFTPAREN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_LEFTPAREN"
		end

	frozen SDL_SCANCODE_KP_RIGHTPAREN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_RIGHTPAREN"
		end

	frozen SDL_SCANCODE_KP_LEFTBRACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_LEFTBRACE"
		end

	frozen SDL_SCANCODE_KP_RIGHTBRACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_RIGHTBRACE"
		end

	frozen SDL_SCANCODE_KP_TAB: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_TAB"
		end

	frozen SDL_SCANCODE_KP_BACKSPACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_BACKSPACE"
		end

	frozen SDL_SCANCODE_KP_A: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_A"
		end

	frozen SDL_SCANCODE_KP_B: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_B"
		end

	frozen SDL_SCANCODE_KP_C: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_C"
		end

	frozen SDL_SCANCODE_KP_D: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_D"
		end

	frozen SDL_SCANCODE_KP_E: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_E"
		end

	frozen SDL_SCANCODE_KP_F: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_F"
		end

	frozen SDL_SCANCODE_KP_XOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_XOR"
		end

	frozen SDL_SCANCODE_KP_POWER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_POWER"
		end

	frozen SDL_SCANCODE_KP_PERCENT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_PERCENT"
		end

	frozen SDL_SCANCODE_KP_LESS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_LESS"
		end

	frozen SDL_SCANCODE_KP_GREATER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_GREATER"
		end

	frozen SDL_SCANCODE_KP_AMPERSAND: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_AMPERSAND"
		end

	frozen SDL_SCANCODE_KP_DBLAMPERSAND: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_DBLAMPERSAND"
		end

	frozen SDL_SCANCODE_KP_VERTICALBAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_VERTICALBAR"
		end

	frozen SDL_SCANCODE_KP_DBLVERTICALBAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_DBLVERTICALBAR"
		end

	frozen SDL_SCANCODE_KP_COLON: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_COLON"
		end

	frozen SDL_SCANCODE_KP_HASH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_HASH"
		end

	frozen SDL_SCANCODE_KP_SPACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_SPACE"
		end

	frozen SDL_SCANCODE_KP_AT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_AT"
		end

	frozen SDL_SCANCODE_KP_EXCLAM: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_EXCLAM"
		end

	frozen SDL_SCANCODE_KP_MEMSTORE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMSTORE"
		end

	frozen SDL_SCANCODE_KP_MEMRECALL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMRECALL"
		end

	frozen SDL_SCANCODE_KP_MEMCLEAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMCLEAR"
		end

	frozen SDL_SCANCODE_KP_MEMADD: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMADD"
		end

	frozen SDL_SCANCODE_KP_MEMSUBTRACT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMSUBTRACT"
		end

	frozen SDL_SCANCODE_KP_MEMMULTIPLY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMMULTIPLY"
		end

	frozen SDL_SCANCODE_KP_MEMDIVIDE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMDIVIDE"
		end

	frozen SDL_SCANCODE_KP_PLUSMINUS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_PLUSMINUS"
		end

	frozen SDL_SCANCODE_KP_CLEAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_CLEAR"
		end

	frozen SDL_SCANCODE_KP_CLEARENTRY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_CLEARENTRY"
		end

	frozen SDL_SCANCODE_KP_BINARY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_BINARY"
		end

	frozen SDL_SCANCODE_KP_OCTAL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_OCTAL"
		end

	frozen SDL_SCANCODE_KP_DECIMAL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_DECIMAL"
		end

	frozen SDL_SCANCODE_KP_HEXADECIMAL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_HEXADECIMAL"
		end

	frozen SDL_SCANCODE_LCTRL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LCTRL"
		end

	frozen SDL_SCANCODE_LSHIFT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LSHIFT"
		end

	frozen SDL_SCANCODE_LALT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LALT"
		end

	frozen SDL_SCANCODE_LGUI: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LGUI"
		end

	frozen SDL_SCANCODE_RCTRL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RCTRL"
		end

	frozen SDL_SCANCODE_RSHIFT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RSHIFT"
		end

	frozen SDL_SCANCODE_RALT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RALT"
		end

	frozen SDL_SCANCODE_RGUI: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RGUI"
		end

	frozen SDL_SCANCODE_MODE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MODE"
		end

	frozen SDL_SCANCODE_AUDIONEXT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIONEXT"
		end

	frozen SDL_SCANCODE_AUDIOPREV: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIOPREV"
		end

	frozen SDL_SCANCODE_AUDIOSTOP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIOSTOP"
		end

	frozen SDL_SCANCODE_AUDIOPLAY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIOPLAY"
		end

	frozen SDL_SCANCODE_AUDIOMUTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIOMUTE"
		end

	frozen SDL_SCANCODE_MEDIASELECT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MEDIASELECT"
		end

	frozen SDL_SCANCODE_WWW: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_WWW"
		end

	frozen SDL_SCANCODE_MAIL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MAIL"
		end

	frozen SDL_SCANCODE_CALCULATOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CALCULATOR"
		end

	frozen SDL_SCANCODE_COMPUTER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_COMPUTER"
		end

	frozen SDL_SCANCODE_AC_SEARCH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_SEARCH"
		end

	frozen SDL_SCANCODE_AC_HOME: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_HOME"
		end

	frozen SDL_SCANCODE_AC_BACK: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_BACK"
		end

	frozen SDL_SCANCODE_AC_FORWARD: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_FORWARD"
		end

	frozen SDL_SCANCODE_AC_STOP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_STOP"
		end

	frozen SDL_SCANCODE_AC_REFRESH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_REFRESH"
		end

	frozen SDL_SCANCODE_AC_BOOKMARKS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_BOOKMARKS"
		end

	frozen SDL_SCANCODE_BRIGHTNESSDOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_BRIGHTNESSDOWN"
		end

	frozen SDL_SCANCODE_BRIGHTNESSUP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_BRIGHTNESSUP"
		end

	frozen SDL_SCANCODE_DISPLAYSWITCH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_DISPLAYSWITCH"
		end

	frozen SDL_SCANCODE_KBDILLUMTOGGLE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KBDILLUMTOGGLE"
		end

	frozen SDL_SCANCODE_KBDILLUMDOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KBDILLUMDOWN"
		end

	frozen SDL_SCANCODE_KBDILLUMUP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KBDILLUMUP"
		end

	frozen SDL_SCANCODE_EJECT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_EJECT"
		end

	frozen SDL_SCANCODE_SLEEP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SLEEP"
		end

	frozen SDL_SCANCODE_APP1: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_APP1"
		end

	frozen SDL_SCANCODE_APP2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_APP2"
		end

end
