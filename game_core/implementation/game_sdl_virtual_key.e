note
	description: "Keycodes enum of the SDL2 library."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_SDL_VIRTUAL_KEY

feature -- Conversion

	frozen SDL_GetKeyName (key: INTEGER_32): POINTER
		external
			"C (SDL_Keycode) : const char* | <SDL.h>"
		alias
			"SDL_GetKeyName"
		end

	frozen SDL_GetKeyFromScancode (scancode: INTEGER_32): INTEGER_32
		external
			"C (SDL_Scancode) : SDL_Keycode | <SDL.h>"
		alias
			"SDL_GetKeyFromScancode"
		end

	frozen SDL_GetKeyFromName (name: POINTER): INTEGER_32
		external
			"C (const char *) : SDL_Keycode | <SDL.h>"
		alias
			"SDL_GetKeyFromName"
		end

feature -- Virtual key codes

	frozen SDLK_UNKNOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_UNKNOWN"
		end

	frozen SDLK_RETURN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RETURN"
		end

	frozen SDLK_ESCAPE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_ESCAPE"
		end

	frozen SDLK_BACKSPACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BACKSPACE"
		end

	frozen SDLK_TAB: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_TAB"
		end

	frozen SDLK_SPACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SPACE"
		end

	frozen SDLK_EXCLAIM: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EXCLAIM"
		end

	frozen SDLK_QUOTEDBL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_QUOTEDBL"
		end

	frozen SDLK_HASH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_HASH"
		end

	frozen SDLK_PERCENT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PERCENT"
		end

	frozen SDLK_DOLLAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DOLLAR"
		end

	frozen SDLK_AMPERSAND: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AMPERSAND"
		end

	frozen SDLK_QUOTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_QUOTE"
		end

	frozen SDLK_LEFTPAREN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LEFTPAREN"
		end

	frozen SDLK_RIGHTPAREN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RIGHTPAREN"
		end

	frozen SDLK_ASTERISK: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_ASTERISK"
		end

	frozen SDLK_PLUS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PLUS"
		end

	frozen SDLK_COMMA: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_COMMA"
		end

	frozen SDLK_MINUS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MINUS"
		end

	frozen SDLK_PERIOD: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PERIOD"
		end

	frozen SDLK_SLASH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SLASH"
		end

	frozen SDLK_0: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_0"
		end

	frozen SDLK_1: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_1"
		end

	frozen SDLK_2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_2"
		end

	frozen SDLK_3: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_3"
		end

	frozen SDLK_4: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_4"
		end

	frozen SDLK_5: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_5"
		end

	frozen SDLK_6: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_6"
		end

	frozen SDLK_7: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_7"
		end

	frozen SDLK_8: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_8"
		end

	frozen SDLK_9: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_9"
		end

	frozen SDLK_COLON: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_COLON"
		end

	frozen SDLK_SEMICOLON: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SEMICOLON"
		end

	frozen SDLK_LESS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LESS"
		end

	frozen SDLK_EQUALS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EQUALS"
		end

	frozen SDLK_GREATER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_GREATER"
		end

	frozen SDLK_QUESTION: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_QUESTION"
		end

	frozen SDLK_AT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AT"
		end

	frozen SDLK_LEFTBRACKET: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LEFTBRACKET"
		end

	frozen SDLK_BACKSLASH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BACKSLASH"
		end

	frozen SDLK_RIGHTBRACKET: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RIGHTBRACKET"
		end

	frozen SDLK_CARET: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CARET"
		end

	frozen SDLK_UNDERSCORE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_UNDERSCORE"
		end

	frozen SDLK_BACKQUOTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BACKQUOTE"
		end

	frozen SDLK_a: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_a"
		end

	frozen SDLK_b: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_b"
		end

	frozen SDLK_c: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_c"
		end

	frozen SDLK_d: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_d"
		end

	frozen SDLK_e: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_e"
		end

	frozen SDLK_f: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_f"
		end

	frozen SDLK_g: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_g"
		end

	frozen SDLK_h: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_h"
		end

	frozen SDLK_i: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_i"
		end

	frozen SDLK_j: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_j"
		end

	frozen SDLK_k: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_k"
		end

	frozen SDLK_l: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_l"
		end

	frozen SDLK_m: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_m"
		end

	frozen SDLK_n: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_n"
		end

	frozen SDLK_o: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_o"
		end

	frozen SDLK_p: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_p"
		end

	frozen SDLK_q: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_q"
		end

	frozen SDLK_r: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_r"
		end

	frozen SDLK_s: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_s"
		end

	frozen SDLK_t: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_t"
		end

	frozen SDLK_u: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_u"
		end

	frozen SDLK_v: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_v"
		end

	frozen SDLK_w: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_w"
		end

	frozen SDLK_x: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_x"
		end

	frozen SDLK_y: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_y"
		end

	frozen SDLK_z: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_z"
		end

	frozen SDLK_CAPSLOCK: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CAPSLOCK"
		end

	frozen SDLK_F1: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F1"
		end

	frozen SDLK_F2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F2"
		end

	frozen SDLK_F3: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F3"
		end

	frozen SDLK_F4: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F4"
		end

	frozen SDLK_F5: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F5"
		end

	frozen SDLK_F6: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F6"
		end

	frozen SDLK_F7: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F7"
		end

	frozen SDLK_F8: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F8"
		end

	frozen SDLK_F9: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F9"
		end

	frozen SDLK_F10: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F10"
		end

	frozen SDLK_F11: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F11"
		end

	frozen SDLK_F12: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F12"
		end

	frozen SDLK_PRINTSCREEN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PRINTSCREEN"
		end

	frozen SDLK_SCROLLLOCK: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SCROLLLOCK"
		end

	frozen SDLK_PAUSE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PAUSE"
		end

	frozen SDLK_INSERT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_INSERT"
		end

	frozen SDLK_HOME: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_HOME"
		end

	frozen SDLK_PAGEUP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PAGEUP"
		end

	frozen SDLK_DELETE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DELETE"
		end

	frozen SDLK_END: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_END"
		end

	frozen SDLK_PAGEDOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PAGEDOWN"
		end

	frozen SDLK_RIGHT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RIGHT"
		end

	frozen SDLK_LEFT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LEFT"
		end

	frozen SDLK_DOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DOWN"
		end

	frozen SDLK_UP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_UP"
		end

	frozen SDLK_NUMLOCKCLEAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_NUMLOCKCLEAR"
		end

	frozen SDLK_KP_DIVIDE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_DIVIDE"
		end

	frozen SDLK_KP_MULTIPLY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MULTIPLY"
		end

	frozen SDLK_KP_MINUS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MINUS"
		end

	frozen SDLK_KP_PLUS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_PLUS"
		end

	frozen SDLK_KP_ENTER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_ENTER"
		end

	frozen SDLK_KP_1: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_1"
		end

	frozen SDLK_KP_2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_2"
		end

	frozen SDLK_KP_3: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_3"
		end

	frozen SDLK_KP_4: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_4"
		end

	frozen SDLK_KP_5: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_5"
		end

	frozen SDLK_KP_6: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_6"
		end

	frozen SDLK_KP_7: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_7"
		end

	frozen SDLK_KP_8: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_8"
		end

	frozen SDLK_KP_9: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_9"
		end

	frozen SDLK_KP_0: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_0"
		end

	frozen SDLK_KP_PERIOD: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_PERIOD"
		end

	frozen SDLK_APPLICATION: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_APPLICATION"
		end

	frozen SDLK_POWER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_POWER"
		end

	frozen SDLK_KP_EQUALS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_EQUALS"
		end

	frozen SDLK_F13: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F13"
		end

	frozen SDLK_F14: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F14"
		end

	frozen SDLK_F15: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F15"
		end

	frozen SDLK_F16: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F16"
		end

	frozen SDLK_F17: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F17"
		end

	frozen SDLK_F18: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F18"
		end

	frozen SDLK_F19: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F19"
		end

	frozen SDLK_F20: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F20"
		end

	frozen SDLK_F21: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F21"
		end

	frozen SDLK_F22: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F22"
		end

	frozen SDLK_F23: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F23"
		end

	frozen SDLK_F24: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F24"
		end

	frozen SDLK_EXECUTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EXECUTE"
		end

	frozen SDLK_HELP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_HELP"
		end

	frozen SDLK_MENU: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MENU"
		end

	frozen SDLK_SELECT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SELECT"
		end

	frozen SDLK_STOP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_STOP"
		end

	frozen SDLK_AGAIN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AGAIN"
		end

	frozen SDLK_UNDO: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_UNDO"
		end

	frozen SDLK_CUT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CUT"
		end

	frozen SDLK_COPY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_COPY"
		end

	frozen SDLK_PASTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PASTE"
		end

	frozen SDLK_FIND: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_FIND"
		end

	frozen SDLK_MUTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MUTE"
		end

	frozen SDLK_VOLUMEUP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_VOLUMEUP"
		end

	frozen SDLK_VOLUMEDOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_VOLUMEDOWN"
		end

	frozen SDLK_KP_COMMA: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_COMMA"
		end

	frozen SDLK_KP_EQUALSAS400: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_EQUALSAS400"
		end

	frozen SDLK_ALTERASE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_ALTERASE"
		end

	frozen SDLK_SYSREQ: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SYSREQ"
		end

	frozen SDLK_CANCEL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CANCEL"
		end

	frozen SDLK_CLEAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CLEAR"
		end

	frozen SDLK_PRIOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PRIOR"
		end

	frozen SDLK_RETURN2: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RETURN2"
		end

	frozen SDLK_SEPARATOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SEPARATOR"
		end

	frozen SDLK_OUT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_OUT"
		end

	frozen SDLK_OPER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_OPER"
		end

	frozen SDLK_CLEARAGAIN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CLEARAGAIN"
		end

	frozen SDLK_CRSEL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CRSEL"
		end

	frozen SDLK_EXSEL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EXSEL"
		end

	frozen SDLK_KP_00: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_00"
		end

	frozen SDLK_KP_000: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_000"
		end

	frozen SDLK_THOUSANDSSEPARATOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_THOUSANDSSEPARATOR"
		end

	frozen SDLK_DECIMALSEPARATOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DECIMALSEPARATOR"
		end

	frozen SDLK_CURRENCYUNIT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CURRENCYUNIT"
		end

	frozen SDLK_CURRENCYSUBUNIT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CURRENCYSUBUNIT"
		end

	frozen SDLK_KP_LEFTPAREN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_LEFTPAREN"
		end

	frozen SDLK_KP_RIGHTPAREN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_RIGHTPAREN"
		end

	frozen SDLK_KP_LEFTBRACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_LEFTBRACE"
		end

	frozen SDLK_KP_RIGHTBRACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_RIGHTBRACE"
		end

	frozen SDLK_KP_TAB: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_TAB"
		end

	frozen SDLK_KP_BACKSPACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_BACKSPACE"
		end

	frozen SDLK_KP_A: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_A"
		end

	frozen SDLK_KP_B: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_B"
		end

	frozen SDLK_KP_C: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_C"
		end

	frozen SDLK_KP_D: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_D"
		end

	frozen SDLK_KP_E: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_E"
		end

	frozen SDLK_KP_F: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_F"
		end

	frozen SDLK_KP_XOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_XOR"
		end

	frozen SDLK_KP_POWER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_POWER"
		end

	frozen SDLK_KP_PERCENT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_PERCENT"
		end

	frozen SDLK_KP_LESS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_LESS"
		end

	frozen SDLK_KP_GREATER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_GREATER"
		end

	frozen SDLK_KP_AMPERSAND: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_AMPERSAND"
		end

	frozen SDLK_KP_DBLAMPERSAND: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_DBLAMPERSAND"
		end

	frozen SDLK_KP_VERTICALBAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_VERTICALBAR"
		end

	frozen SDLK_KP_DBLVERTICALBAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_DBLVERTICALBAR"
		end

	frozen SDLK_KP_COLON: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_COLON"
		end

	frozen SDLK_KP_HASH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_HASH"
		end

	frozen SDLK_KP_SPACE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_SPACE"
		end

	frozen SDLK_KP_AT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_AT"
		end

	frozen SDLK_KP_EXCLAM: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_EXCLAM"
		end

	frozen SDLK_KP_MEMSTORE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMSTORE"
		end

	frozen SDLK_KP_MEMRECALL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMRECALL"
		end

	frozen SDLK_KP_MEMCLEAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMCLEAR"
		end

	frozen SDLK_KP_MEMADD: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMADD"
		end

	frozen SDLK_KP_MEMSUBTRACT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMSUBTRACT"
		end

	frozen SDLK_KP_MEMMULTIPLY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMMULTIPLY"
		end

	frozen SDLK_KP_MEMDIVIDE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMDIVIDE"
		end

	frozen SDLK_KP_PLUSMINUS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_PLUSMINUS"
		end

	frozen SDLK_KP_CLEAR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_CLEAR"
		end

	frozen SDLK_KP_CLEARENTRY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_CLEARENTRY"
		end

	frozen SDLK_KP_BINARY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_BINARY"
		end

	frozen SDLK_KP_OCTAL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_OCTAL"
		end

	frozen SDLK_KP_DECIMAL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_DECIMAL"
		end

	frozen SDLK_KP_HEXADECIMAL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_HEXADECIMAL"
		end

	frozen SDLK_LCTRL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LCTRL"
		end

	frozen SDLK_LSHIFT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LSHIFT"
		end

	frozen SDLK_LALT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LALT"
		end

	frozen SDLK_LGUI: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LGUI"
		end

	frozen SDLK_RCTRL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RCTRL"
		end

	frozen SDLK_RSHIFT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RSHIFT"
		end

	frozen SDLK_RALT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RALT"
		end

	frozen SDLK_RGUI: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RGUI"
		end

	frozen SDLK_MODE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MODE"
		end

	frozen SDLK_AUDIONEXT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIONEXT"
		end

	frozen SDLK_AUDIOPREV: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIOPREV"
		end

	frozen SDLK_AUDIOSTOP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIOSTOP"
		end

	frozen SDLK_AUDIOPLAY: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIOPLAY"
		end

	frozen SDLK_AUDIOMUTE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIOMUTE"
		end

	frozen SDLK_MEDIASELECT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MEDIASELECT"
		end

	frozen SDLK_WWW: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_WWW"
		end

	frozen SDLK_MAIL: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MAIL"
		end

	frozen SDLK_CALCULATOR: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CALCULATOR"
		end

	frozen SDLK_COMPUTER: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_COMPUTER"
		end

	frozen SDLK_AC_SEARCH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_SEARCH"
		end

	frozen SDLK_AC_HOME: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_HOME"
		end

	frozen SDLK_AC_BACK: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_BACK"
		end

	frozen SDLK_AC_FORWARD: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_FORWARD"
		end

	frozen SDLK_AC_STOP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_STOP"
		end

	frozen SDLK_AC_REFRESH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_REFRESH"
		end

	frozen SDLK_AC_BOOKMARKS: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_BOOKMARKS"
		end

	frozen SDLK_BRIGHTNESSDOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BRIGHTNESSDOWN"
		end

	frozen SDLK_BRIGHTNESSUP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BRIGHTNESSUP"
		end

	frozen SDLK_DISPLAYSWITCH: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DISPLAYSWITCH"
		end

	frozen SDLK_KBDILLUMTOGGLE: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KBDILLUMTOGGLE"
		end

	frozen SDLK_KBDILLUMDOWN: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KBDILLUMDOWN"
		end

	frozen SDLK_KBDILLUMUP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KBDILLUMUP"
		end

	frozen SDLK_EJECT: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EJECT"
		end

	frozen SDLK_SLEEP: INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SLEEP"
		end

end
