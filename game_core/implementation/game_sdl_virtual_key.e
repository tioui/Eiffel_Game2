note
	description: "Keycodes enum of the SDL2 library."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_SDL_VIRTUAL_KEY

feature -- Conversion

	frozen SDL_GetKeyName (key: NATURAL_32): POINTER
		external
			"C (SDL_Keycode) : const char* | <SDL.h>"
		alias
			"SDL_GetKeyName"
		end

	frozen SDL_GetKeyFromScancode (scancode: NATURAL_32): NATURAL_32
		external
			"C (SDL_Scancode) : SDL_Keycode | <SDL.h>"
		alias
			"SDL_GetKeyFromScancode"
		end

	frozen SDL_GetKeyFromName (name: POINTER): NATURAL_32
		external
			"C (const char *) : SDL_Keycode | <SDL.h>"
		alias
			"SDL_GetKeyFromName"
		end

feature -- Virtual key codes

	frozen SDLK_UNKNOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_UNKNOWN"
		end

	frozen SDLK_RETURN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_RETURN"
		end

	frozen SDLK_ESCAPE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_ESCAPE"
		end

	frozen SDLK_BACKSPACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_BACKSPACE"
		end

	frozen SDLK_TAB: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_TAB"
		end

	frozen SDLK_SPACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_SPACE"
		end

	frozen SDLK_EXCLAIM: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_EXCLAIM"
		end

	frozen SDLK_QUOTEDBL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_QUOTEDBL"
		end

	frozen SDLK_HASH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_HASH"
		end

	frozen SDLK_PERCENT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_PERCENT"
		end

	frozen SDLK_DOLLAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_DOLLAR"
		end

	frozen SDLK_AMPERSAND: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AMPERSAND"
		end

	frozen SDLK_QUOTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_QUOTE"
		end

	frozen SDLK_LEFTPAREN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_LEFTPAREN"
		end

	frozen SDLK_RIGHTPAREN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_RIGHTPAREN"
		end

	frozen SDLK_ASTERISK: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_ASTERISK"
		end

	frozen SDLK_PLUS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_PLUS"
		end

	frozen SDLK_COMMA: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_COMMA"
		end

	frozen SDLK_MINUS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_MINUS"
		end

	frozen SDLK_PERIOD: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_PERIOD"
		end

	frozen SDLK_SLASH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_SLASH"
		end

	frozen SDLK_0: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_0"
		end

	frozen SDLK_1: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_1"
		end

	frozen SDLK_2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_2"
		end

	frozen SDLK_3: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_3"
		end

	frozen SDLK_4: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_4"
		end

	frozen SDLK_5: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_5"
		end

	frozen SDLK_6: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_6"
		end

	frozen SDLK_7: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_7"
		end

	frozen SDLK_8: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_8"
		end

	frozen SDLK_9: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_9"
		end

	frozen SDLK_COLON: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_COLON"
		end

	frozen SDLK_SEMICOLON: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_SEMICOLON"
		end

	frozen SDLK_LESS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_LESS"
		end

	frozen SDLK_EQUALS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_EQUALS"
		end

	frozen SDLK_GREATER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_GREATER"
		end

	frozen SDLK_QUESTION: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_QUESTION"
		end

	frozen SDLK_AT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AT"
		end

	frozen SDLK_LEFTBRACKET: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_LEFTBRACKET"
		end

	frozen SDLK_BACKSLASH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_BACKSLASH"
		end

	frozen SDLK_RIGHTBRACKET: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_RIGHTBRACKET"
		end

	frozen SDLK_CARET: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CARET"
		end

	frozen SDLK_UNDERSCORE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_UNDERSCORE"
		end

	frozen SDLK_BACKQUOTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_BACKQUOTE"
		end

	frozen SDLK_a: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_a"
		end

	frozen SDLK_b: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_b"
		end

	frozen SDLK_c: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_c"
		end

	frozen SDLK_d: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_d"
		end

	frozen SDLK_e: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_e"
		end

	frozen SDLK_f: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_f"
		end

	frozen SDLK_g: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_g"
		end

	frozen SDLK_h: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_h"
		end

	frozen SDLK_i: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_i"
		end

	frozen SDLK_j: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_j"
		end

	frozen SDLK_k: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_k"
		end

	frozen SDLK_l: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_l"
		end

	frozen SDLK_m: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_m"
		end

	frozen SDLK_n: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_n"
		end

	frozen SDLK_o: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_o"
		end

	frozen SDLK_p: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_p"
		end

	frozen SDLK_q: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_q"
		end

	frozen SDLK_r: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_r"
		end

	frozen SDLK_s: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_s"
		end

	frozen SDLK_t: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_t"
		end

	frozen SDLK_u: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_u"
		end

	frozen SDLK_v: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_v"
		end

	frozen SDLK_w: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_w"
		end

	frozen SDLK_x: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_x"
		end

	frozen SDLK_y: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_y"
		end

	frozen SDLK_z: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_z"
		end

	frozen SDLK_CAPSLOCK: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CAPSLOCK"
		end

	frozen SDLK_F1: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F1"
		end

	frozen SDLK_F2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F2"
		end

	frozen SDLK_F3: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F3"
		end

	frozen SDLK_F4: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F4"
		end

	frozen SDLK_F5: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F5"
		end

	frozen SDLK_F6: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F6"
		end

	frozen SDLK_F7: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F7"
		end

	frozen SDLK_F8: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F8"
		end

	frozen SDLK_F9: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F9"
		end

	frozen SDLK_F10: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F10"
		end

	frozen SDLK_F11: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F11"
		end

	frozen SDLK_F12: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F12"
		end

	frozen SDLK_PRINTSCREEN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_PRINTSCREEN"
		end

	frozen SDLK_SCROLLLOCK: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_SCROLLLOCK"
		end

	frozen SDLK_PAUSE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_PAUSE"
		end

	frozen SDLK_INSERT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_INSERT"
		end

	frozen SDLK_HOME: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_HOME"
		end

	frozen SDLK_PAGEUP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_PAGEUP"
		end

	frozen SDLK_DELETE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_DELETE"
		end

	frozen SDLK_END: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_END"
		end

	frozen SDLK_PAGEDOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_PAGEDOWN"
		end

	frozen SDLK_RIGHT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_RIGHT"
		end

	frozen SDLK_LEFT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_LEFT"
		end

	frozen SDLK_DOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_DOWN"
		end

	frozen SDLK_UP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_UP"
		end

	frozen SDLK_NUMLOCKCLEAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_NUMLOCKCLEAR"
		end

	frozen SDLK_KP_DIVIDE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_DIVIDE"
		end

	frozen SDLK_KP_MULTIPLY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_MULTIPLY"
		end

	frozen SDLK_KP_MINUS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_MINUS"
		end

	frozen SDLK_KP_PLUS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_PLUS"
		end

	frozen SDLK_KP_ENTER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_ENTER"
		end

	frozen SDLK_KP_1: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_1"
		end

	frozen SDLK_KP_2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_2"
		end

	frozen SDLK_KP_3: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_3"
		end

	frozen SDLK_KP_4: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_4"
		end

	frozen SDLK_KP_5: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_5"
		end

	frozen SDLK_KP_6: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_6"
		end

	frozen SDLK_KP_7: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_7"
		end

	frozen SDLK_KP_8: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_8"
		end

	frozen SDLK_KP_9: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_9"
		end

	frozen SDLK_KP_0: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_0"
		end

	frozen SDLK_KP_PERIOD: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_PERIOD"
		end

	frozen SDLK_APPLICATION: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_APPLICATION"
		end

	frozen SDLK_POWER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_POWER"
		end

	frozen SDLK_KP_EQUALS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_EQUALS"
		end

	frozen SDLK_F13: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F13"
		end

	frozen SDLK_F14: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F14"
		end

	frozen SDLK_F15: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F15"
		end

	frozen SDLK_F16: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F16"
		end

	frozen SDLK_F17: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F17"
		end

	frozen SDLK_F18: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F18"
		end

	frozen SDLK_F19: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F19"
		end

	frozen SDLK_F20: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F20"
		end

	frozen SDLK_F21: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F21"
		end

	frozen SDLK_F22: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F22"
		end

	frozen SDLK_F23: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F23"
		end

	frozen SDLK_F24: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_F24"
		end

	frozen SDLK_EXECUTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_EXECUTE"
		end

	frozen SDLK_HELP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_HELP"
		end

	frozen SDLK_MENU: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_MENU"
		end

	frozen SDLK_SELECT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_SELECT"
		end

	frozen SDLK_STOP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_STOP"
		end

	frozen SDLK_AGAIN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AGAIN"
		end

	frozen SDLK_UNDO: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_UNDO"
		end

	frozen SDLK_CUT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CUT"
		end

	frozen SDLK_COPY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_COPY"
		end

	frozen SDLK_PASTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_PASTE"
		end

	frozen SDLK_FIND: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_FIND"
		end

	frozen SDLK_MUTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_MUTE"
		end

	frozen SDLK_VOLUMEUP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_VOLUMEUP"
		end

	frozen SDLK_VOLUMEDOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_VOLUMEDOWN"
		end

	frozen SDLK_KP_COMMA: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_COMMA"
		end

	frozen SDLK_KP_EQUALSAS400: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_EQUALSAS400"
		end

	frozen SDLK_ALTERASE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_ALTERASE"
		end

	frozen SDLK_SYSREQ: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_SYSREQ"
		end

	frozen SDLK_CANCEL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CANCEL"
		end

	frozen SDLK_CLEAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CLEAR"
		end

	frozen SDLK_PRIOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_PRIOR"
		end

	frozen SDLK_RETURN2: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_RETURN2"
		end

	frozen SDLK_SEPARATOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_SEPARATOR"
		end

	frozen SDLK_OUT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_OUT"
		end

	frozen SDLK_OPER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_OPER"
		end

	frozen SDLK_CLEARAGAIN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CLEARAGAIN"
		end

	frozen SDLK_CRSEL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CRSEL"
		end

	frozen SDLK_EXSEL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_EXSEL"
		end

	frozen SDLK_KP_00: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_00"
		end

	frozen SDLK_KP_000: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_000"
		end

	frozen SDLK_THOUSANDSSEPARATOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_THOUSANDSSEPARATOR"
		end

	frozen SDLK_DECIMALSEPARATOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_DECIMALSEPARATOR"
		end

	frozen SDLK_CURRENCYUNIT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CURRENCYUNIT"
		end

	frozen SDLK_CURRENCYSUBUNIT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CURRENCYSUBUNIT"
		end

	frozen SDLK_KP_LEFTPAREN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_LEFTPAREN"
		end

	frozen SDLK_KP_RIGHTPAREN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_RIGHTPAREN"
		end

	frozen SDLK_KP_LEFTBRACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_LEFTBRACE"
		end

	frozen SDLK_KP_RIGHTBRACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_RIGHTBRACE"
		end

	frozen SDLK_KP_TAB: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_TAB"
		end

	frozen SDLK_KP_BACKSPACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_BACKSPACE"
		end

	frozen SDLK_KP_A: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_A"
		end

	frozen SDLK_KP_B: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_B"
		end

	frozen SDLK_KP_C: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_C"
		end

	frozen SDLK_KP_D: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_D"
		end

	frozen SDLK_KP_E: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_E"
		end

	frozen SDLK_KP_F: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_F"
		end

	frozen SDLK_KP_XOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_XOR"
		end

	frozen SDLK_KP_POWER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_POWER"
		end

	frozen SDLK_KP_PERCENT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_PERCENT"
		end

	frozen SDLK_KP_LESS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_LESS"
		end

	frozen SDLK_KP_GREATER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_GREATER"
		end

	frozen SDLK_KP_AMPERSAND: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_AMPERSAND"
		end

	frozen SDLK_KP_DBLAMPERSAND: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_DBLAMPERSAND"
		end

	frozen SDLK_KP_VERTICALBAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_VERTICALBAR"
		end

	frozen SDLK_KP_DBLVERTICALBAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_DBLVERTICALBAR"
		end

	frozen SDLK_KP_COLON: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_COLON"
		end

	frozen SDLK_KP_HASH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_HASH"
		end

	frozen SDLK_KP_SPACE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_SPACE"
		end

	frozen SDLK_KP_AT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_AT"
		end

	frozen SDLK_KP_EXCLAM: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_EXCLAM"
		end

	frozen SDLK_KP_MEMSTORE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_MEMSTORE"
		end

	frozen SDLK_KP_MEMRECALL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_MEMRECALL"
		end

	frozen SDLK_KP_MEMCLEAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_MEMCLEAR"
		end

	frozen SDLK_KP_MEMADD: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_MEMADD"
		end

	frozen SDLK_KP_MEMSUBTRACT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_MEMSUBTRACT"
		end

	frozen SDLK_KP_MEMMULTIPLY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_MEMMULTIPLY"
		end

	frozen SDLK_KP_MEMDIVIDE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_MEMDIVIDE"
		end

	frozen SDLK_KP_PLUSMINUS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_PLUSMINUS"
		end

	frozen SDLK_KP_CLEAR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_CLEAR"
		end

	frozen SDLK_KP_CLEARENTRY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_CLEARENTRY"
		end

	frozen SDLK_KP_BINARY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_BINARY"
		end

	frozen SDLK_KP_OCTAL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_OCTAL"
		end

	frozen SDLK_KP_DECIMAL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_DECIMAL"
		end

	frozen SDLK_KP_HEXADECIMAL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KP_HEXADECIMAL"
		end

	frozen SDLK_LCTRL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_LCTRL"
		end

	frozen SDLK_LSHIFT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_LSHIFT"
		end

	frozen SDLK_LALT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_LALT"
		end

	frozen SDLK_LGUI: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_LGUI"
		end

	frozen SDLK_RCTRL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_RCTRL"
		end

	frozen SDLK_RSHIFT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_RSHIFT"
		end

	frozen SDLK_RALT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_RALT"
		end

	frozen SDLK_RGUI: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_RGUI"
		end

	frozen SDLK_MODE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_MODE"
		end

	frozen SDLK_AUDIONEXT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AUDIONEXT"
		end

	frozen SDLK_AUDIOPREV: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AUDIOPREV"
		end

	frozen SDLK_AUDIOSTOP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AUDIOSTOP"
		end

	frozen SDLK_AUDIOPLAY: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AUDIOPLAY"
		end

	frozen SDLK_AUDIOMUTE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AUDIOMUTE"
		end

	frozen SDLK_MEDIASELECT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_MEDIASELECT"
		end

	frozen SDLK_WWW: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_WWW"
		end

	frozen SDLK_MAIL: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_MAIL"
		end

	frozen SDLK_CALCULATOR: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_CALCULATOR"
		end

	frozen SDLK_COMPUTER: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_COMPUTER"
		end

	frozen SDLK_AC_SEARCH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AC_SEARCH"
		end

	frozen SDLK_AC_HOME: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AC_HOME"
		end

	frozen SDLK_AC_BACK: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AC_BACK"
		end

	frozen SDLK_AC_FORWARD: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AC_FORWARD"
		end

	frozen SDLK_AC_STOP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AC_STOP"
		end

	frozen SDLK_AC_REFRESH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AC_REFRESH"
		end

	frozen SDLK_AC_BOOKMARKS: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_AC_BOOKMARKS"
		end

	frozen SDLK_BRIGHTNESSDOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_BRIGHTNESSDOWN"
		end

	frozen SDLK_BRIGHTNESSUP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_BRIGHTNESSUP"
		end

	frozen SDLK_DISPLAYSWITCH: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_DISPLAYSWITCH"
		end

	frozen SDLK_KBDILLUMTOGGLE: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KBDILLUMTOGGLE"
		end

	frozen SDLK_KBDILLUMDOWN: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KBDILLUMDOWN"
		end

	frozen SDLK_KBDILLUMUP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_KBDILLUMUP"
		end

	frozen SDLK_EJECT: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_EJECT"
		end

	frozen SDLK_SLEEP: NATURAL_32
		external
			"C [macro <SDL.h>] : SDL_Keycode"
		alias
			"SDLK_SLEEP"
		end

end
