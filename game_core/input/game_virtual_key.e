note
	description: "A virtual keyboard key."
	author: "Louis Marchand"
	date: "Sun, 30 Apr 2017 15:08:50 +0000"
	revision: "2.1"

deferred class
	GAME_VIRTUAL_KEY

feature -- Access

	virtual_code: INTEGER_32
			-- Code of the key using the virtual layout keyboard
			-- (should be compatible between systems)
		deferred
		end

	is_unknown: BOOLEAN
			-- `Current' is not a valid key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_UNKNOWN
		end

	is_return: BOOLEAN
			-- `Current' represent the return key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_RETURN
		end

	is_escape: BOOLEAN
			-- `Current' represent the escape key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_ESCAPE
		end

	is_backspace: BOOLEAN
			-- `Current' represent the backspace key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_BACKSPACE
		end

	is_tab: BOOLEAN
			-- `Current' represent the tab key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_TAB
		end

	is_space: BOOLEAN
			-- `Current' represent the space key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_SPACE
		end

	is_exclaim: BOOLEAN
			-- `Current' represent the exclaim key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_EXCLAIM
		end

	is_double_quote: BOOLEAN
			-- `Current' represent the double quote key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_QUOTEDBL
		end

	is_hash: BOOLEAN
			-- `Current' represent the hash key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_HASH
		end

	is_percent: BOOLEAN
			-- `Current' represent the percent key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_PERCENT
		end

	is_dollar: BOOLEAN
			-- `Current' represent the dollar key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_DOLLAR
		end

	is_ampersand: BOOLEAN
			-- `Current' represent the ampersand key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AMPERSAND
		end

	is_quote: BOOLEAN
			-- `Current' represent the quote key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_QUOTE
		end

	is_left_parenthesis: BOOLEAN
			-- `Current' represent the left parenthesis key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_LEFTPAREN
		end

	is_right_parenthesis: BOOLEAN
			-- `Current' represent the right parenthesis key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_RIGHTPAREN
		end

	is_asterisk: BOOLEAN
			-- `Current' represent the asterisk key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_ASTERISK
		end

	is_plus: BOOLEAN
			-- `Current' represent the plus key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_PLUS
		end

	is_comma: BOOLEAN
			-- `Current' represent the comma key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_COMMA
		end

	is_minus: BOOLEAN
			-- `Current' represent the minus key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_MINUS
		end

	is_period: BOOLEAN
			-- `Current' represent the period key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_PERIOD
		end

	is_slash: BOOLEAN
			-- `Current' represent the slash key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_SLASH
		end

	is_0: BOOLEAN
			-- `Current' represent the 0 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_0
		end

	is_1: BOOLEAN
			-- `Current' represent the 1 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_1
		end

	is_2: BOOLEAN
			-- `Current' represent the 2 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_2
		end

	is_3: BOOLEAN
			-- `Current' represent the 3 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_3
		end

	is_4: BOOLEAN
			-- `Current' represent the 4 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_4
		end

	is_5: BOOLEAN
			-- `Current' represent the 5 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_5
		end

	is_6: BOOLEAN
			-- `Current' represent the 6 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_6
		end

	is_7: BOOLEAN
			-- `Current' represent the 7 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_7
		end

	is_8: BOOLEAN
			-- `Current' represent the 8 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_8
		end

	is_9: BOOLEAN
			-- `Current' represent the 9 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_9
		end

	is_colon: BOOLEAN
			-- `Current' represent the colon key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_COLON
		end

	is_semicolon: BOOLEAN
			-- `Current' represent the semicolon key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_SEMICOLON
		end

	is_less: BOOLEAN
			-- `Current' represent the less key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_LESS
		end

	is_equals: BOOLEAN
			-- `Current' represent the equals key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_EQUALS
		end

	is_greater: BOOLEAN
			-- `Current' represent the greater key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_GREATER
		end

	is_question_mark: BOOLEAN
			-- `Current' represent the question mark key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_QUESTION
		end

	is_at: BOOLEAN
			-- `Current' represent the at key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AT
		end

	is_left_bracket: BOOLEAN
			-- `Current' represent the leftbracket key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_LEFTBRACKET
		end

	is_backslash: BOOLEAN
			-- `Current' represent the backslash key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_BACKSLASH
		end

	is_right_bracket: BOOLEAN
			-- `Current' represent the right bracket key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_RIGHTBRACKET
		end

	is_caret: BOOLEAN
			-- `Current' represent the caret key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CARET
		end

	is_underscore: BOOLEAN
			-- `Current' represent the underscore key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_UNDERSCORE
		end

	is_backquote: BOOLEAN
			-- `Current' represent the backquote key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_BACKQUOTE
		end

	is_A: BOOLEAN
			-- `Current' represent the A key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_a
		end

	is_B: BOOLEAN
			-- `Current' represent the B key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_b
		end

	is_C: BOOLEAN
			-- `Current' represent the C key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_c
		end

	is_D: BOOLEAN
			-- `Current' represent the D key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_d
		end

	is_E: BOOLEAN
			-- `Current' represent the E key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_e
		end

	is_F: BOOLEAN
			-- `Current' represent the F key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_f
		end

	is_G: BOOLEAN
			-- `Current' represent the G key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_g
		end

	is_H: BOOLEAN
			-- `Current' represent the H key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_h
		end

	is_I: BOOLEAN
			-- `Current' represent the I key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_i
		end

	is_J: BOOLEAN
			-- `Current' represent the J key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_j
		end

	is_K: BOOLEAN
			-- `Current' represent the K key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_k
		end

	is_L: BOOLEAN
			-- `Current' represent the L key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_l
		end

	is_M: BOOLEAN
			-- `Current' represent the M key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_m
		end

	is_N: BOOLEAN
			-- `Current' represent the N key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_n
		end

	is_O: BOOLEAN
			-- `Current' represent the O key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_o
		end

	is_P: BOOLEAN
			-- `Current' represent the P key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_p
		end

	is_Q: BOOLEAN
			-- `Current' represent the Q key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_q
		end

	is_R: BOOLEAN
			-- `Current' represent the R key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_r
		end

	is_S: BOOLEAN
			-- `Current' represent the S key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_s
		end

	is_T: BOOLEAN
			-- `Current' represent the T key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_t
		end

	is_U: BOOLEAN
			-- `Current' represent the U key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_u
		end

	is_V: BOOLEAN
			-- `Current' represent the V key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_v
		end

	is_W: BOOLEAN
			-- `Current' represent the W key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_w
		end

	is_X: BOOLEAN
			-- `Current' represent the X key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_x
		end

	is_Y: BOOLEAN
			-- `Current' represent the Y key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_y
		end

	is_Z: BOOLEAN
			-- `Current' represent the Z key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_z
		end

	is_caps_lock: BOOLEAN
			-- `Current' represent the caps lock key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CAPSLOCK
		end

	is_f1: BOOLEAN
			-- `Current' represent the f1 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F1
		end

	is_f2: BOOLEAN
			-- `Current' represent the f2 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F2
		end

	is_f3: BOOLEAN
			-- `Current' represent the f3 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F3
		end

	is_f4: BOOLEAN
			-- `Current' represent the f4 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F4
		end

	is_f5: BOOLEAN
			-- `Current' represent the f5 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F5
		end

	is_f6: BOOLEAN
			-- `Current' represent the f6 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F6
		end

	is_f7: BOOLEAN
			-- `Current' represent the f7 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F7
		end

	is_f8: BOOLEAN
			-- `Current' represent the f8 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F8
		end

	is_f9: BOOLEAN
			-- `Current' represent the f9 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F9
		end

	is_f10: BOOLEAN
			-- `Current' represent the f10 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F10
		end

	is_f11: BOOLEAN
			-- `Current' represent the f11 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F11
		end

	is_f12: BOOLEAN
			-- `Current' represent the f12 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F12
		end

	is_print_screen: BOOLEAN
			-- `Current' represent the print screen key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_PRINTSCREEN
		end

	is_scroll_lock: BOOLEAN
			-- `Current' represent the scroll lock key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_SCROLLLOCK
		end

	is_pause: BOOLEAN
			-- `Current' represent the pause key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_PAUSE
		end

	is_insert: BOOLEAN
			-- `Current' represent the insert key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_INSERT
		end

	is_home: BOOLEAN
			-- `Current' represent the home key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_HOME
		end

	is_page_up: BOOLEAN
			-- `Current' represent the page up key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_PAGEUP
		end

	is_delete: BOOLEAN
			-- `Current' represent the delete key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_DELETE
		end

	is_end: BOOLEAN
			-- `Current' represent the end key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_END
		end

	is_page_down: BOOLEAN
			-- `Current' represent the page down key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_PAGEDOWN
		end

	is_right: BOOLEAN
			-- `Current' represent the right key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_RIGHT
		end

	is_left: BOOLEAN
			-- `Current' represent the left key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_LEFT
		end

	is_down: BOOLEAN
			-- `Current' represent the down key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_DOWN
		end

	is_up: BOOLEAN
			-- `Current' represent the up key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_UP
		end

	is_numlock_clear: BOOLEAN
			-- `Current' represent the numlock clear key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_NUMLOCKCLEAR
		end

	is_keypad_divide: BOOLEAN
			-- `Current' represent the key pad divide key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_DIVIDE
		end

	is_keypad_multiply: BOOLEAN
			-- `Current' represent the key pad multiply key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_MULTIPLY
		end

	is_keypad_minus: BOOLEAN
			-- `Current' represent the key pad minus key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_MINUS
		end

	is_keypad_plus: BOOLEAN
			-- `Current' represent the key pad plus key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_PLUS
		end

	is_keypad_enter: BOOLEAN
			-- `Current' represent the key pad enter key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_ENTER
		end

	is_keypad_1: BOOLEAN
			-- `Current' represent the key pad 1 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_1
		end

	is_keypad_2: BOOLEAN
			-- `Current' represent the key pad 2 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_2
		end

	is_keypad_3: BOOLEAN
			-- `Current' represent the key pad 3 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_3
		end

	is_keypad_4: BOOLEAN
			-- `Current' represent the key pad 4 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_4
		end

	is_keypad_5: BOOLEAN
			-- `Current' represent the key pad 5 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_5
		end

	is_keypad_6: BOOLEAN
			-- `Current' represent the key pad 6 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_6
		end

	is_keypad_7: BOOLEAN
			-- `Current' represent the key pad 7 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_7
		end

	is_keypad_8: BOOLEAN
			-- `Current' represent the key pad 8 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_8
		end

	is_keypad_9: BOOLEAN
			-- `Current' represent the key pad 9 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_9
		end

	is_keypad_0: BOOLEAN
			-- `Current' represent the key pad 0 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_0
		end

	is_keypad_period: BOOLEAN
			-- `Current' represent the key pad period key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_PERIOD
		end

	is_application: BOOLEAN
			-- `Current' represent the application key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_APPLICATION
		end

	is_power: BOOLEAN
			-- `Current' represent the power key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_POWER
		end

	is_kp_equals: BOOLEAN
			-- `Current' represent the kp_equals key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_EQUALS
		end

	is_f13: BOOLEAN
			-- `Current' represent the f13 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F13
		end

	is_f14: BOOLEAN
			-- `Current' represent the f14 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F14
		end

	is_f15: BOOLEAN
			-- `Current' represent the f15 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F15
		end

	is_f16: BOOLEAN
			-- `Current' represent the f16 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F16
		end

	is_f17: BOOLEAN
			-- `Current' represent the f17 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F17
		end

	is_f18: BOOLEAN
			-- `Current' represent the f18 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F18
		end

	is_f19: BOOLEAN
			-- `Current' represent the f19 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F19
		end

	is_f20: BOOLEAN
			-- `Current' represent the f20 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F20
		end

	is_f21: BOOLEAN
			-- `Current' represent the f21 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F21
		end

	is_f22: BOOLEAN
			-- `Current' represent the f22 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F22
		end

	is_f23: BOOLEAN
			-- `Current' represent the f23 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F23
		end

	is_f24: BOOLEAN
			-- `Current' represent the f24 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_F24
		end

	is_execute: BOOLEAN
			-- `Current' represent the execute key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_EXECUTE
		end

	is_help: BOOLEAN
			-- `Current' represent the help key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_HELP
		end

	is_menu: BOOLEAN
			-- `Current' represent the menu key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_MENU
		end

	is_select: BOOLEAN
			-- `Current' represent the select key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_SELECT
		end

	is_stop: BOOLEAN
			-- `Current' represent the stop key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_STOP
		end

	is_again: BOOLEAN
			-- `Current' represent the again key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AGAIN
		end

	is_undo: BOOLEAN
			-- `Current' represent the undo key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_UNDO
		end

	is_cut: BOOLEAN
			-- `Current' represent the cut key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CUT
		end

	is_copy: BOOLEAN
			-- `Current' represent the copy key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_COPY
		end

	is_paste: BOOLEAN
			-- `Current' represent the paste key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_PASTE
		end

	is_find: BOOLEAN
			-- `Current' represent the find key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_FIND
		end

	is_mute: BOOLEAN
			-- `Current' represent the mute key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_MUTE
		end

	is_volume_up: BOOLEAN
			-- `Current' represent the volume up key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_VOLUMEUP
		end

	is_volume_down: BOOLEAN
			-- `Current' represent the volume down key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_VOLUMEDOWN
		end

	is_keypad_comma: BOOLEAN
			-- `Current' represent the key pad comma key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_COMMA
		end

	is_as400_keypad_equals: BOOLEAN
			-- `Current' represent the key pad equals key for as400 keyboard
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_EQUALSAS400
		end

	is_erase_eaze_alternate_erase: BOOLEAN
			-- `Current' represent the alternate erase key for Erase Eaze keyboard
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_ALTERASE
		end

	is_sysreq: BOOLEAN
			-- `Current' represent the sysreq key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_SYSREQ
		end

	is_cancel: BOOLEAN
			-- `Current' represent the cancel key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CANCEL
		end

	is_clear: BOOLEAN
			-- `Current' represent the clear key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CLEAR
		end

	is_prior: BOOLEAN
			-- `Current' represent the prior key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_PRIOR
		end

	is_return2: BOOLEAN
			-- `Current' represent the return2 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_RETURN2
		end

	is_separator: BOOLEAN
			-- `Current' represent the separator key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_SEPARATOR
		end

	is_out: BOOLEAN
			-- `Current' represent the out key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_OUT
		end

	is_oper: BOOLEAN
			-- `Current' represent the oper key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_OPER
		end

	is_clear_again: BOOLEAN
			-- `Current' represent the clear again key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CLEARAGAIN
		end

	is_crsel: BOOLEAN
			-- `Current' represent the crsel key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CRSEL
		end

	is_exsel: BOOLEAN
			-- `Current' represent the exsel key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_EXSEL
		end

	is_keypad_00: BOOLEAN
			-- `Current' represent the key pad 00 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_00
		end

	is_keypad_000: BOOLEAN
			-- `Current' represent the key pad 000 key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_000
		end

	is_thousands_separator: BOOLEAN
			-- `Current' represent the thousands separator key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_THOUSANDSSEPARATOR
		end

	is_decimal_separator: BOOLEAN
			-- `Current' represent the decimal separator key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_DECIMALSEPARATOR
		end

	is_currency_unit: BOOLEAN
			-- `Current' represent the currency unit key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CURRENCYUNIT
		end

	is_currency_sub_unit: BOOLEAN
			-- `Current' represent the currency sub unit key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CURRENCYSUBUNIT
		end

	is_keypad_left_parenthesis: BOOLEAN
			-- `Current' represent the key pad left parenthesis key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_LEFTPAREN
		end

	is_keypad_right_parenthesis: BOOLEAN
			-- `Current' represent the key pad right parenthesis key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_RIGHTPAREN
		end

	is_keypad_left_brace: BOOLEAN
			-- `Current' represent the key pad left brace key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_LEFTBRACE
		end

	is_keypad_right_brace: BOOLEAN
			-- `Current' represent the key pad right brace key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_RIGHTBRACE
		end

	is_keypad_tab: BOOLEAN
			-- `Current' represent the key pad tab key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_TAB
		end

	is_keypad_backspace: BOOLEAN
			-- `Current' represent the key pad backspace key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_BACKSPACE
		end

	is_keypad_a: BOOLEAN
			-- `Current' represent the key pad a key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_A
		end

	is_keypad_b: BOOLEAN
			-- `Current' represent the key pad b key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_B
		end

	is_keypad_c: BOOLEAN
			-- `Current' represent the key pad c key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_C
		end

	is_keypad_d: BOOLEAN
			-- `Current' represent the key pad d key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_D
		end

	is_keypad_e: BOOLEAN
			-- `Current' represent the key pad e key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_E
		end

	is_keypad_f: BOOLEAN
			-- `Current' represent the key pad f key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_F
		end

	is_keypad_xor: BOOLEAN
			-- `Current' represent the key pad xor key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_XOR
		end

	is_keypad_power: BOOLEAN
			-- `Current' represent the key pad power key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_POWER
		end

	is_keypad_percent: BOOLEAN
			-- `Current' represent the key pad percent key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_PERCENT
		end

	is_keypad_less: BOOLEAN
			-- `Current' represent the key pad less key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_LESS
		end

	is_keypad_greater: BOOLEAN
			-- `Current' represent the key pad greater key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_GREATER
		end

	is_keypad_ampersand: BOOLEAN
			-- `Current' represent the key pad ampersand key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_AMPERSAND
		end

	is_keypad_double_ampersand: BOOLEAN
			-- `Current' represent the key pad double ampersand key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_DBLAMPERSAND
		end

	is_keypad_vertical_bar: BOOLEAN
			-- `Current' represent the key pad vertical bar key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_VERTICALBAR
		end

	is_keypad_double_vertical_bar: BOOLEAN
			-- `Current' represent the key pad double vertical bar key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_DBLVERTICALBAR
		end

	is_keypad_colon: BOOLEAN
			-- `Current' represent the key pad colon key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_COLON
		end

	is_keypad_hash: BOOLEAN
			-- `Current' represent the key pad hash key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_HASH
		end

	is_keypad_space: BOOLEAN
			-- `Current' represent the key pad space key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_SPACE
		end

	is_keypad_at: BOOLEAN
			-- `Current' represent the key pad at key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_AT
		end

	is_keypad_exclamation_mark: BOOLEAN
			-- `Current' represent the key pad exclamation mark key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_EXCLAM
		end

	is_keypad_mem_store: BOOLEAN
			-- `Current' represent the key pad mem store key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_MEMSTORE
		end

	is_keypad_mem_recall: BOOLEAN
			-- `Current' represent the key pad mem recall key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_MEMRECALL
		end

	is_keypad_mem_clear: BOOLEAN
			-- `Current' represent the key pad mem clear key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_MEMCLEAR
		end

	is_keypad_mem_add: BOOLEAN
			-- `Current' represent the key pad mem add key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_MEMADD
		end

	is_keypad_mem_subtract: BOOLEAN
			-- `Current' represent the key pad mem subtract key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_MEMSUBTRACT
		end

	is_keypad_mem_multiply: BOOLEAN
			-- `Current' represent the key pad mem multiply key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_MEMMULTIPLY
		end

	is_keypad_mem_divide: BOOLEAN
			-- `Current' represent the key pad mem divide key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_MEMDIVIDE
		end

	is_keypad_plus_minus: BOOLEAN
			-- `Current' represent the key pad plus minus key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_PLUSMINUS
		end

	is_keypad_clear: BOOLEAN
			-- `Current' represent the key pad clear key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_CLEAR
		end

	is_keypad_clear_entry: BOOLEAN
			-- `Current' represent the key pad clear entry key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_CLEARENTRY
		end

	is_keypad_binary: BOOLEAN
			-- `Current' represent the key pad binary key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_BINARY
		end

	is_keypad_octal: BOOLEAN
			-- `Current' represent the key pad octal key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_OCTAL
		end

	is_keypad_decimal: BOOLEAN
			-- `Current' represent the key pad decimal key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_DECIMAL
		end

	is_keypad_hexadecimal: BOOLEAN
			-- `Current' represent the key pad hexadecimal key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KP_HEXADECIMAL
		end

	is_left_ctrl: BOOLEAN
			-- `Current' represent the left ctrl key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_LCTRL
		end

	is_left_shift: BOOLEAN
			-- `Current' represent the left shift key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_LSHIFT
		end

	is_left_alt: BOOLEAN
			-- `Current' represent the left alt key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_LALT
		end

	is_left_gui: BOOLEAN
			-- `Current' represent the left gui key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_LGUI
		end

	is_right_ctrl: BOOLEAN
			-- `Current' represent the right ctrl key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_RCTRL
		end

	is_right_shift: BOOLEAN
			-- `Current' represent the right shift key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_RSHIFT
		end

	is_right_alt: BOOLEAN
			-- `Current' represent the right alt key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_RALT
		end

	is_right_gui: BOOLEAN
			-- `Current' represent the right gui key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_RGUI
		end

	is_mode: BOOLEAN
			-- `Current' represent the mode key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_MODE
		end

	is_audio_next: BOOLEAN
			-- `Current' represent the audio_next key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AUDIONEXT
		end

	is_audio_prev: BOOLEAN
			-- `Current' represent the audio prev key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AUDIOPREV
		end

	is_audio_stop: BOOLEAN
			-- `Current' represent the audio stop key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AUDIOSTOP
		end

	is_audio_play: BOOLEAN
			-- `Current' represent the audio play key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AUDIOPLAY
		end

	is_audio_mute: BOOLEAN
			-- `Current' represent the audio mute key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AUDIOMUTE
		end

	is_media_select: BOOLEAN
			-- `Current' represent the media select key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_MEDIASELECT
		end

	is_www: BOOLEAN
			-- `Current' represent the www key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_WWW
		end

	is_mail: BOOLEAN
			-- `Current' represent the mail key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_MAIL
		end

	is_calculator: BOOLEAN
			-- `Current' represent the calculator key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_CALCULATOR
		end

	is_computer: BOOLEAN
			-- `Current' represent the computer key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_COMPUTER
		end

	is_application_control_search: BOOLEAN
			-- `Current' represent the search key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AC_SEARCH
		end

	is_application_control_home: BOOLEAN
			-- `Current' represent the home key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AC_HOME
		end

	is_application_control_back: BOOLEAN
			-- `Current' represent the back key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AC_BACK
		end

	is_application_control_forward: BOOLEAN
			-- `Current' represent the forward key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AC_FORWARD
		end

	is_application_control_stop: BOOLEAN
			-- `Current' represent the stop key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AC_STOP
		end

	is_application_control_refresh: BOOLEAN
			-- `Current' represent the refresh key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AC_REFRESH
		end

	is_application_control_bookmarks: BOOLEAN
			-- `Current' represent the bookmarks key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_AC_BOOKMARKS
		end

	is_brightnessdown: BOOLEAN
			-- `Current' represent the brightnessdown key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_BRIGHTNESSDOWN
		end

	is_brightness_up: BOOLEAN
			-- `Current' represent the brightness up key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_BRIGHTNESSUP
		end

	is_display_switch: BOOLEAN
			-- `Current' represent the display switch key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_DISPLAYSWITCH
		end

	is_keyboard_illumination_toggle: BOOLEAN
			-- `Current' represent the keyboard illumination toggle key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KBDILLUMTOGGLE
		end

	is_keyboard_illumination_down: BOOLEAN
			-- `Current' represent the keyboard illumination down key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KBDILLUMDOWN
		end

	is_keyboard_illuminationup: BOOLEAN
			-- `Current' represent the keyboard illumination up key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_KBDILLUMUP
		end

	is_eject: BOOLEAN
			-- `Current' represent the eject key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_EJECT
		end

	is_sleep: BOOLEAN
			-- `Current' represent the sleep key
		do
			Result := virtual_code = {GAME_SDL_VIRTUAL_KEY}.SDLK_SLEEP
		end

end
