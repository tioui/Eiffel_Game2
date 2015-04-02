note
	description: "A keyboard key."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_KEY

inherit
	GAME_SDL_ANY
		redefine
			out
		end

create
	make_from_physical_code,
	make_from_virtual_code

feature {NONE} -- Initialization

	make_from_physical_code(a_physical_code:INTEGER_32)
			-- Initialize `Current' using hardware
			-- dependant `a_physical_code' value (scancode).
		do
			physical_code := a_physical_code
			virtual_code := {GAME_SDL_EXTERNAL}.SDL_GetKeyFromScancode(physical_code)
		end

	make_from_virtual_code(a_virtual_code:INTEGER_32)
			-- Initialize `Current' using layout aware
			-- `a_virtual_code' value (keycode).
		do
			virtual_code := a_virtual_code
			physical_code := {GAME_SDL_EXTERNAL}.SDL_GetScancodeFromKey(virtual_code)
		end


feature -- Access

	virtual_code:INTEGER_32
			-- Code of the key using the virtual layout keyboard
			-- (should be compatible between systems)

	physical_code:INTEGER_32
			-- Hardware code of the key
			-- (not compatible between systems)

	unicode_out:READABLE_STRING_GENERAL
			-- The unicode text representation of `Current'
		do
			Result := (create {UTF_CONVERTER}).utf_8_string_8_to_escaped_string_32 (out)
		end

	out:STRING
			-- <Precursor>
			-- Note that this value is in UTF-8.
			-- Use `unicode_out' to get the UTF-8 representatin
		local
			l_result_ptr:POINTER
			l_result_c:C_STRING
		do
			l_result_ptr:={GAME_SDL_EXTERNAL}.SDL_GetKeyName(virtual_code)
			if not l_result_ptr.is_default_pointer then
				create l_result_c.make_by_pointer (l_result_ptr)
				Result:=l_result_c.string
			else
				Result:=""
			end
	 	end

	is_unknown:BOOLEAN
			-- `Current' is not a valid key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_UNKNOWN
		end

	is_return : BOOLEAN
			-- `Current' represent the return key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_RETURN
		end


	is_escape : BOOLEAN
			-- `Current' represent the escape key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_ESCAPE
		end


	is_backspace : BOOLEAN
			-- `Current' represent the backspace key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_BACKSPACE
		end


	is_tab : BOOLEAN
			-- `Current' represent the tab key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_TAB
		end


	is_space : BOOLEAN
			-- `Current' represent the space key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_SPACE
		end


	is_exclaim : BOOLEAN
			-- `Current' represent the exclaim key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_EXCLAIM
		end


	is_double_quote : BOOLEAN
			-- `Current' represent the double quote key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_QUOTEDBL
		end


	is_hash : BOOLEAN
			-- `Current' represent the hash key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_HASH
		end


	is_percent : BOOLEAN
			-- `Current' represent the percent key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_PERCENT
		end


	is_dollar : BOOLEAN
			-- `Current' represent the dollar key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_DOLLAR
		end


	is_ampersand : BOOLEAN
			-- `Current' represent the ampersand key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AMPERSAND
		end


	is_quote : BOOLEAN
			-- `Current' represent the quote key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_QUOTE
		end


	is_left_parenthesis : BOOLEAN
			-- `Current' represent the left parenthesis key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_LEFTPAREN
		end


	is_right_parenthesis : BOOLEAN
			-- `Current' represent the right parenthesis key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_RIGHTPAREN
		end


	is_asterisk : BOOLEAN
			-- `Current' represent the asterisk key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_ASTERISK
		end


	is_plus : BOOLEAN
			-- `Current' represent the plus key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_PLUS
		end


	is_comma : BOOLEAN
			-- `Current' represent the comma key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_COMMA
		end


	is_minus : BOOLEAN
			-- `Current' represent the minus key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_MINUS
		end


	is_period : BOOLEAN
			-- `Current' represent the period key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_PERIOD
		end


	is_slash : BOOLEAN
			-- `Current' represent the slash key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_SLASH
		end


	is_0 : BOOLEAN
			-- `Current' represent the 0 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_0
		end


	is_1 : BOOLEAN
			-- `Current' represent the 1 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_1
		end


	is_2 : BOOLEAN
			-- `Current' represent the 2 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_2
		end


	is_3 : BOOLEAN
			-- `Current' represent the 3 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_3
		end


	is_4 : BOOLEAN
			-- `Current' represent the 4 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_4
		end


	is_5 : BOOLEAN
			-- `Current' represent the 5 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_5
		end


	is_6 : BOOLEAN
			-- `Current' represent the 6 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_6
		end


	is_7 : BOOLEAN
			-- `Current' represent the 7 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_7
		end


	is_8 : BOOLEAN
			-- `Current' represent the 8 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_8
		end


	is_9 : BOOLEAN
			-- `Current' represent the 9 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_9
		end


	is_colon : BOOLEAN
			-- `Current' represent the colon key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_COLON
		end


	is_semicolon : BOOLEAN
			-- `Current' represent the semicolon key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_SEMICOLON
		end


	is_less : BOOLEAN
			-- `Current' represent the less key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_LESS
		end


	is_equals : BOOLEAN
			-- `Current' represent the equals key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_EQUALS
		end


	is_greater : BOOLEAN
			-- `Current' represent the greater key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_GREATER
		end


	is_question_mark : BOOLEAN
			-- `Current' represent the question mark key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_QUESTION
		end


	is_at : BOOLEAN
			-- `Current' represent the at key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AT
		end


	is_left_bracket : BOOLEAN
			-- `Current' represent the leftbracket key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_LEFTBRACKET
		end


	is_backslash : BOOLEAN
			-- `Current' represent the backslash key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_BACKSLASH
		end


	is_right_bracket : BOOLEAN
			-- `Current' represent the right bracket key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_RIGHTBRACKET
		end


	is_caret : BOOLEAN
			-- `Current' represent the caret key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CARET
		end


	is_underscore : BOOLEAN
			-- `Current' represent the underscore key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_UNDERSCORE
		end


	is_backquote : BOOLEAN
			-- `Current' represent the backquote key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_BACKQUOTE
		end


	is_A : BOOLEAN
			-- `Current' represent the A key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_a
		end


	is_B : BOOLEAN
			-- `Current' represent the B key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_b
		end


	is_C : BOOLEAN
			-- `Current' represent the C key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_c
		end


	is_D : BOOLEAN
			-- `Current' represent the D key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_d
		end


	is_E : BOOLEAN
			-- `Current' represent the E key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_e
		end


	is_F : BOOLEAN
			-- `Current' represent the F key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_f
		end


	is_G : BOOLEAN
			-- `Current' represent the G key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_g
		end


	is_H : BOOLEAN
			-- `Current' represent the H key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_h
		end


	is_I : BOOLEAN
			-- `Current' represent the I key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_i
		end


	is_J : BOOLEAN
			-- `Current' represent the J key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_j
		end


	is_K : BOOLEAN
			-- `Current' represent the K key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_k
		end


	is_L : BOOLEAN
			-- `Current' represent the L key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_l
		end


	is_M : BOOLEAN
			-- `Current' represent the M key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_m
		end


	is_N : BOOLEAN
			-- `Current' represent the N key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_n
		end


	is_O : BOOLEAN
			-- `Current' represent the O key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_o
		end


	is_P : BOOLEAN
			-- `Current' represent the P key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_p
		end


	is_Q : BOOLEAN
			-- `Current' represent the Q key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_q
		end


	is_R : BOOLEAN
			-- `Current' represent the R key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_r
		end


	is_S : BOOLEAN
			-- `Current' represent the S key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_s
		end


	is_T : BOOLEAN
			-- `Current' represent the T key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_t
		end


	is_U : BOOLEAN
			-- `Current' represent the U key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_u
		end


	is_V : BOOLEAN
			-- `Current' represent the V key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_v
		end


	is_W : BOOLEAN
			-- `Current' represent the W key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_w
		end


	is_X : BOOLEAN
			-- `Current' represent the X key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_x
		end


	is_Y : BOOLEAN
			-- `Current' represent the Y key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_y
		end


	is_Z : BOOLEAN
			-- `Current' represent the Z key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_z
		end


	is_caps_lock : BOOLEAN
			-- `Current' represent the caps lock key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CAPSLOCK
		end


	is_f1 : BOOLEAN
			-- `Current' represent the f1 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F1
		end


	is_f2 : BOOLEAN
			-- `Current' represent the f2 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F2
		end


	is_f3 : BOOLEAN
			-- `Current' represent the f3 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F3
		end


	is_f4 : BOOLEAN
			-- `Current' represent the f4 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F4
		end


	is_f5 : BOOLEAN
			-- `Current' represent the f5 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F5
		end


	is_f6 : BOOLEAN
			-- `Current' represent the f6 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F6
		end


	is_f7 : BOOLEAN
			-- `Current' represent the f7 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F7
		end


	is_f8 : BOOLEAN
			-- `Current' represent the f8 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F8
		end


	is_f9 : BOOLEAN
			-- `Current' represent the f9 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F9
		end


	is_f10 : BOOLEAN
			-- `Current' represent the f10 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F10
		end


	is_f11 : BOOLEAN
			-- `Current' represent the f11 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F11
		end


	is_f12 : BOOLEAN
			-- `Current' represent the f12 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F12
		end


	is_print_screen : BOOLEAN
			-- `Current' represent the print screen key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_PRINTSCREEN
		end


	is_scroll_lock : BOOLEAN
			-- `Current' represent the scroll lock key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_SCROLLLOCK
		end


	is_pause : BOOLEAN
			-- `Current' represent the pause key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_PAUSE
		end


	is_insert : BOOLEAN
			-- `Current' represent the insert key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_INSERT
		end


	is_home : BOOLEAN
			-- `Current' represent the home key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_HOME
		end


	is_page_up : BOOLEAN
			-- `Current' represent the page up key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_PAGEUP
		end


	is_delete : BOOLEAN
			-- `Current' represent the delete key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_DELETE
		end


	is_end : BOOLEAN
			-- `Current' represent the end key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_END
		end


	is_page_down : BOOLEAN
			-- `Current' represent the page down key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_PAGEDOWN
		end


	is_right : BOOLEAN
			-- `Current' represent the right key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_RIGHT
		end


	is_left : BOOLEAN
			-- `Current' represent the left key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_LEFT
		end


	is_down : BOOLEAN
			-- `Current' represent the down key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_DOWN
		end


	is_up : BOOLEAN
			-- `Current' represent the up key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_UP
		end


	is_numlock_clear : BOOLEAN
			-- `Current' represent the numlock clear key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_NUMLOCKCLEAR
		end


	is_keypad_divide : BOOLEAN
			-- `Current' represent the key pad divide key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_DIVIDE
		end


	is_keypad_multiply : BOOLEAN
			-- `Current' represent the key pad multiply key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_MULTIPLY
		end


	is_keypad_minus : BOOLEAN
			-- `Current' represent the key pad minus key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_MINUS
		end


	is_keypad_plus : BOOLEAN
			-- `Current' represent the key pad plus key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_PLUS
		end


	is_keypad_enter : BOOLEAN
			-- `Current' represent the key pad enter key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_ENTER
		end


	is_keypad_1 : BOOLEAN
			-- `Current' represent the key pad 1 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_1
		end


	is_keypad_2 : BOOLEAN
			-- `Current' represent the key pad 2 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_2
		end


	is_keypad_3 : BOOLEAN
			-- `Current' represent the key pad 3 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_3
		end


	is_keypad_4 : BOOLEAN
			-- `Current' represent the key pad 4 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_4
		end


	is_keypad_5 : BOOLEAN
			-- `Current' represent the key pad 5 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_5
		end


	is_keypad_6 : BOOLEAN
			-- `Current' represent the key pad 6 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_6
		end


	is_keypad_7 : BOOLEAN
			-- `Current' represent the key pad 7 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_7
		end


	is_keypad_8 : BOOLEAN
			-- `Current' represent the key pad 8 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_8
		end


	is_keypad_9 : BOOLEAN
			-- `Current' represent the key pad 9 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_9
		end


	is_keypad_0 : BOOLEAN
			-- `Current' represent the key pad 0 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_0
		end


	is_keypad_period : BOOLEAN
			-- `Current' represent the key pad period key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_PERIOD
		end


	is_application : BOOLEAN
			-- `Current' represent the application key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_APPLICATION
		end


	is_power : BOOLEAN
			-- `Current' represent the power key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_POWER
		end


	is_kp_equals : BOOLEAN
			-- `Current' represent the kp_equals key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_EQUALS
		end


	is_f13 : BOOLEAN
			-- `Current' represent the f13 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F13
		end


	is_f14 : BOOLEAN
			-- `Current' represent the f14 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F14
		end


	is_f15 : BOOLEAN
			-- `Current' represent the f15 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F15
		end


	is_f16 : BOOLEAN
			-- `Current' represent the f16 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F16
		end


	is_f17 : BOOLEAN
			-- `Current' represent the f17 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F17
		end


	is_f18 : BOOLEAN
			-- `Current' represent the f18 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F18
		end


	is_f19 : BOOLEAN
			-- `Current' represent the f19 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F19
		end


	is_f20 : BOOLEAN
			-- `Current' represent the f20 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F20
		end


	is_f21 : BOOLEAN
			-- `Current' represent the f21 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F21
		end


	is_f22 : BOOLEAN
			-- `Current' represent the f22 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F22
		end


	is_f23 : BOOLEAN
			-- `Current' represent the f23 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F23
		end


	is_f24 : BOOLEAN
			-- `Current' represent the f24 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_F24
		end


	is_execute : BOOLEAN
			-- `Current' represent the execute key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_EXECUTE
		end


	is_help : BOOLEAN
			-- `Current' represent the help key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_HELP
		end


	is_menu : BOOLEAN
			-- `Current' represent the menu key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_MENU
		end


	is_select : BOOLEAN
			-- `Current' represent the select key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_SELECT
		end


	is_stop : BOOLEAN
			-- `Current' represent the stop key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_STOP
		end


	is_again : BOOLEAN
			-- `Current' represent the again key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AGAIN
		end


	is_undo : BOOLEAN
			-- `Current' represent the undo key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_UNDO
		end


	is_cut : BOOLEAN
			-- `Current' represent the cut key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CUT
		end


	is_copy : BOOLEAN
			-- `Current' represent the copy key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_COPY
		end


	is_paste : BOOLEAN
			-- `Current' represent the paste key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_PASTE
		end


	is_find : BOOLEAN
			-- `Current' represent the find key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_FIND
		end


	is_mute : BOOLEAN
			-- `Current' represent the mute key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_MUTE
		end


	is_volume_up : BOOLEAN
			-- `Current' represent the volume up key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_VOLUMEUP
		end


	is_volume_down : BOOLEAN
			-- `Current' represent the volume down key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_VOLUMEDOWN
		end


	is_keypad_comma : BOOLEAN
			-- `Current' represent the key pad comma key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_COMMA
		end


	is_as400_keypad_equals : BOOLEAN
			-- `Current' represent the key pad equals key for as400 keyboard
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_EQUALSAS400
		end


	is_erase_eaze_alternate_erase : BOOLEAN
			-- `Current' represent the alternate erase key for Erase Eaze keyboard
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_ALTERASE
		end


	is_sysreq : BOOLEAN
			-- `Current' represent the sysreq key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_SYSREQ
		end


	is_cancel : BOOLEAN
			-- `Current' represent the cancel key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CANCEL
		end


	is_clear : BOOLEAN
			-- `Current' represent the clear key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CLEAR
		end


	is_prior : BOOLEAN
			-- `Current' represent the prior key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_PRIOR
		end


	is_return2 : BOOLEAN
			-- `Current' represent the return2 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_RETURN2
		end


	is_separator : BOOLEAN
			-- `Current' represent the separator key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_SEPARATOR
		end


	is_out : BOOLEAN
			-- `Current' represent the out key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_OUT
		end


	is_oper : BOOLEAN
			-- `Current' represent the oper key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_OPER
		end


	is_clear_again : BOOLEAN
			-- `Current' represent the clear again key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CLEARAGAIN
		end


	is_crsel : BOOLEAN
			-- `Current' represent the crsel key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CRSEL
		end


	is_exsel : BOOLEAN
			-- `Current' represent the exsel key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_EXSEL
		end


	is_keypad_00 : BOOLEAN
			-- `Current' represent the key pad 00 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_00
		end


	is_keypad_000 : BOOLEAN
			-- `Current' represent the key pad 000 key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_000
		end


	is_thousands_separator : BOOLEAN
			-- `Current' represent the thousands separator key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_THOUSANDSSEPARATOR
		end


	is_decimal_separator : BOOLEAN
			-- `Current' represent the decimal separator key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_DECIMALSEPARATOR
		end


	is_currency_unit : BOOLEAN
			-- `Current' represent the currency unit key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CURRENCYUNIT
		end


	is_currency_sub_unit : BOOLEAN
			-- `Current' represent the currency sub unit key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CURRENCYSUBUNIT
		end


	is_keypad_left_parenthesis : BOOLEAN
			-- `Current' represent the key pad left parenthesis key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_LEFTPAREN
		end


	is_keypad_right_parenthesis : BOOLEAN
			-- `Current' represent the key pad right parenthesis key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_RIGHTPAREN
		end


	is_keypad_left_brace : BOOLEAN
			-- `Current' represent the key pad left brace key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_LEFTBRACE
		end


	is_keypad_right_brace : BOOLEAN
			-- `Current' represent the key pad right brace key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_RIGHTBRACE
		end


	is_keypad_tab : BOOLEAN
			-- `Current' represent the key pad tab key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_TAB
		end


	is_keypad_backspace : BOOLEAN
			-- `Current' represent the key pad backspace key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_BACKSPACE
		end


	is_keypad_a : BOOLEAN
			-- `Current' represent the key pad a key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_A
		end


	is_keypad_b : BOOLEAN
			-- `Current' represent the key pad b key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_B
		end


	is_keypad_c : BOOLEAN
			-- `Current' represent the key pad c key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_C
		end


	is_keypad_d : BOOLEAN
			-- `Current' represent the key pad d key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_D
		end


	is_keypad_e : BOOLEAN
			-- `Current' represent the key pad e key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_E
		end


	is_keypad_f : BOOLEAN
			-- `Current' represent the key pad f key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_F
		end


	is_keypad_xor : BOOLEAN
			-- `Current' represent the key pad xor key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_XOR
		end


	is_keypad_power : BOOLEAN
			-- `Current' represent the key pad power key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_POWER
		end


	is_keypad_percent : BOOLEAN
			-- `Current' represent the key pad percent key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_PERCENT
		end


	is_keypad_less : BOOLEAN
			-- `Current' represent the key pad less key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_LESS
		end


	is_keypad_greater : BOOLEAN
			-- `Current' represent the key pad greater key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_GREATER
		end


	is_keypad_ampersand : BOOLEAN
			-- `Current' represent the key pad ampersand key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_AMPERSAND
		end


	is_keypad_double_ampersand : BOOLEAN
			-- `Current' represent the key pad double ampersand key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_DBLAMPERSAND
		end


	is_keypad_vertical_bar : BOOLEAN
			-- `Current' represent the key pad vertical bar key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_VERTICALBAR
		end


	is_keypad_double_vertical_bar : BOOLEAN
			-- `Current' represent the key pad double vertical bar key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_DBLVERTICALBAR
		end


	is_keypad_colon : BOOLEAN
			-- `Current' represent the key pad colon key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_COLON
		end


	is_keypad_hash : BOOLEAN
			-- `Current' represent the key pad hash key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_HASH
		end


	is_keypad_space : BOOLEAN
			-- `Current' represent the key pad space key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_SPACE
		end


	is_keypad_at : BOOLEAN
			-- `Current' represent the key pad at key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_AT
		end


	is_keypad_exclamation_mark : BOOLEAN
			-- `Current' represent the key pad exclamation mark key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_EXCLAM
		end


	is_keypad_mem_store : BOOLEAN
			-- `Current' represent the key pad mem store key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_MEMSTORE
		end


	is_keypad_mem_recall : BOOLEAN
			-- `Current' represent the key pad mem recall key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_MEMRECALL
		end


	is_keypad_mem_clear : BOOLEAN
			-- `Current' represent the key pad mem clear key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_MEMCLEAR
		end


	is_keypad_mem_add : BOOLEAN
			-- `Current' represent the key pad mem add key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_MEMADD
		end


	is_keypad_mem_subtract : BOOLEAN
			-- `Current' represent the key pad mem subtract key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_MEMSUBTRACT
		end


	is_keypad_mem_multiply : BOOLEAN
			-- `Current' represent the key pad mem multiply key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_MEMMULTIPLY
		end


	is_keypad_mem_divide : BOOLEAN
			-- `Current' represent the key pad mem divide key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_MEMDIVIDE
		end


	is_keypad_plus_minus : BOOLEAN
			-- `Current' represent the key pad plus minus key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_PLUSMINUS
		end


	is_keypad_clear : BOOLEAN
			-- `Current' represent the key pad clear key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_CLEAR
		end


	is_keypad_clear_entry : BOOLEAN
			-- `Current' represent the key pad clear entry key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_CLEARENTRY
		end


	is_keypad_binary : BOOLEAN
			-- `Current' represent the key pad binary key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_BINARY
		end


	is_keypad_octal : BOOLEAN
			-- `Current' represent the key pad octal key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_OCTAL
		end


	is_keypad_decimal : BOOLEAN
			-- `Current' represent the key pad decimal key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_DECIMAL
		end


	is_keypad_hexadecimal : BOOLEAN
			-- `Current' represent the key pad hexadecimal key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KP_HEXADECIMAL
		end


	is_left_ctrl : BOOLEAN
			-- `Current' represent the left ctrl key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_LCTRL
		end


	is_left_shift : BOOLEAN
			-- `Current' represent the left shift key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_LSHIFT
		end


	is_left_alt : BOOLEAN
			-- `Current' represent the left alt key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_LALT
		end


	is_left_gui : BOOLEAN
			-- `Current' represent the left gui key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_LGUI
		end


	is_right_ctrl : BOOLEAN
			-- `Current' represent the right ctrl key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_RCTRL
		end


	is_right_shift : BOOLEAN
			-- `Current' represent the right shift key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_RSHIFT
		end


	is_right_alt : BOOLEAN
			-- `Current' represent the right alt key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_RALT
		end


	is_right_gui : BOOLEAN
			-- `Current' represent the right gui key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_RGUI
		end


	is_mode : BOOLEAN
			-- `Current' represent the mode key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_MODE
		end


	is_audio_next : BOOLEAN
			-- `Current' represent the audio_next key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AUDIONEXT
		end


	is_audio_prev : BOOLEAN
			-- `Current' represent the audio prev key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AUDIOPREV
		end


	is_audio_stop : BOOLEAN
			-- `Current' represent the audio stop key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AUDIOSTOP
		end


	is_audio_play : BOOLEAN
			-- `Current' represent the audio play key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AUDIOPLAY
		end


	is_audio_mute : BOOLEAN
			-- `Current' represent the audio mute key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AUDIOMUTE
		end


	is_media_select : BOOLEAN
			-- `Current' represent the media select key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_MEDIASELECT
		end


	is_www : BOOLEAN
			-- `Current' represent the www key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_WWW
		end


	is_mail : BOOLEAN
			-- `Current' represent the mail key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_MAIL
		end


	is_calculator : BOOLEAN
			-- `Current' represent the calculator key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_CALCULATOR
		end


	is_computer : BOOLEAN
			-- `Current' represent the computer key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_COMPUTER
		end


	is_application_control_search : BOOLEAN
			-- `Current' represent the search key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AC_SEARCH
		end


	is_application_control_home : BOOLEAN
			-- `Current' represent the home key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AC_HOME
		end


	is_application_control_back : BOOLEAN
			-- `Current' represent the back key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AC_BACK
		end


	is_application_control_forward : BOOLEAN
			-- `Current' represent the forward key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AC_FORWARD
		end


	is_application_control_stop : BOOLEAN
			-- `Current' represent the stop key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AC_STOP
		end


	is_application_control_refresh : BOOLEAN
			-- `Current' represent the refresh key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AC_REFRESH
		end


	is_application_control_bookmarks : BOOLEAN
			-- `Current' represent the bookmarks key of the application control keyboard section
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_AC_BOOKMARKS
		end


	is_brightnessdown : BOOLEAN
			-- `Current' represent the brightnessdown key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_BRIGHTNESSDOWN
		end


	is_brightness_up : BOOLEAN
			-- `Current' represent the brightness up key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_BRIGHTNESSUP
		end


	is_display_switch : BOOLEAN
			-- `Current' represent the display switch key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_DISPLAYSWITCH
		end


	is_keyboard_illumination_toggle : BOOLEAN
			-- `Current' represent the keyboard illumination toggle key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KBDILLUMTOGGLE
		end


	is_keyboard_illumination_down : BOOLEAN
			-- `Current' represent the keyboard illumination down key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KBDILLUMDOWN
		end


	is_keyboard_illuminationup : BOOLEAN
			-- `Current' represent the keyboard illumination up key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_KBDILLUMUP
		end


	is_eject : BOOLEAN
			-- `Current' represent the eject key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_EJECT
		end


	is_sleep : BOOLEAN
			-- `Current' represent the sleep key
		do
			Result := virtual_code = {GAME_SDL_EXTERNAL}.SDLK_SLEEP
		end

	is_physical_unknown:BOOLEAN
			-- The `Current' physical key is not valid
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_UNKNOWN
		end


	is_physical_a:BOOLEAN
			-- `Current' represent the physical a key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_A
		end


	is_physical_b:BOOLEAN
			-- `Current' represent the physical b key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_B
		end


	is_physical_c:BOOLEAN
			-- `Current' represent the physical c key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_C
		end


	is_physical_d:BOOLEAN
			-- `Current' represent the physical d key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_D
		end


	is_physical_e:BOOLEAN
			-- `Current' represent the physical e key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_E
		end


	is_physical_f:BOOLEAN
			-- `Current' represent the physical f key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F
		end


	is_physical_g:BOOLEAN
			-- `Current' represent the physical g key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_G
		end


	is_physical_h:BOOLEAN
			-- `Current' represent the physical h key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_H
		end


	is_physical_i:BOOLEAN
			-- `Current' represent the physical i key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_I
		end


	is_physical_j:BOOLEAN
			-- `Current' represent the physical j key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_J
		end


	is_physical_k:BOOLEAN
			-- `Current' represent the physical k key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_K
		end


	is_physical_l:BOOLEAN
			-- `Current' represent the physical l key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_L
		end


	is_physical_m:BOOLEAN
			-- `Current' represent the physical m key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_M
		end


	is_physical_n:BOOLEAN
			-- `Current' represent the physical n key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_N
		end


	is_physical_o:BOOLEAN
			-- `Current' represent the physical o key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_O
		end


	is_physical_p:BOOLEAN
			-- `Current' represent the physical p key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_P
		end


	is_physical_q:BOOLEAN
			-- `Current' represent the physical q key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_Q
		end


	is_physical_r:BOOLEAN
			-- `Current' represent the physical r key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_R
		end


	is_physical_s:BOOLEAN
			-- `Current' represent the physical s key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_S
		end


	is_physical_t:BOOLEAN
			-- `Current' represent the physical t key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_T
		end


	is_physical_u:BOOLEAN
			-- `Current' represent the physical u key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_U
		end


	is_physical_v:BOOLEAN
			-- `Current' represent the physical v key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_V
		end


	is_physical_w:BOOLEAN
			-- `Current' represent the physical w key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_W
		end


	is_physical_x:BOOLEAN
			-- `Current' represent the physical x key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_X
		end


	is_physical_y:BOOLEAN
			-- `Current' represent the physical y key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_Y
		end


	is_physical_z:BOOLEAN
			-- `Current' represent the physical z key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_Z
		end


	is_physical_1:BOOLEAN
			-- `Current' represent the physical 1 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_1
		end


	is_physical_2:BOOLEAN
			-- `Current' represent the physical 2 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_2
		end


	is_physical_3:BOOLEAN
			-- `Current' represent the physical 3 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_3
		end


	is_physical_4:BOOLEAN
			-- `Current' represent the physical 4 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_4
		end


	is_physical_5:BOOLEAN
			-- `Current' represent the physical 5 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_5
		end


	is_physical_6:BOOLEAN
			-- `Current' represent the physical 6 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_6
		end


	is_physical_7:BOOLEAN
			-- `Current' represent the physical 7 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_7
		end


	is_physical_8:BOOLEAN
			-- `Current' represent the physical 8 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_8
		end


	is_physical_9:BOOLEAN
			-- `Current' represent the physical 9 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_9
		end


	is_physical_0:BOOLEAN
			-- `Current' represent the physical 0 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_0
		end


	is_physical_return:BOOLEAN
			-- `Current' represent the physical return key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_RETURN
		end


	is_physical_escape:BOOLEAN
			-- `Current' represent the physical escape key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_ESCAPE
		end


	is_physical_backspace:BOOLEAN
			-- `Current' represent the physical backspace key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_BACKSPACE
		end


	is_physical_tab:BOOLEAN
			-- `Current' represent the physical tab key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_TAB
		end


	is_physical_space:BOOLEAN
			-- `Current' represent the physical space key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_SPACE
		end


	is_physical_minus:BOOLEAN
			-- `Current' represent the physical minus key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_MINUS
		end


	is_physical_equals:BOOLEAN
			-- `Current' represent the physical equals key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_EQUALS
		end


	is_physical_left_bracket:BOOLEAN
			-- `Current' represent the physical left bracket key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LEFTBRACKET
		end


	is_physical_right_bracket:BOOLEAN
			-- `Current' represent the physical right bracket key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_RIGHTBRACKET
		end


	is_physical_backslash:BOOLEAN
			-- `Current' represent the physical backslash key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_BACKSLASH
		end


	is_physical_iso_hash:BOOLEAN
			-- `Current' represent the physical hash key for ISO keyboard.
			-- Don't use this, use `is_physical_backslash' instead.
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_NONUSHASH
		end


	is_physical_semicolon:BOOLEAN
			-- `Current' represent the physical semicolon key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_SEMICOLON
		end


	is_physical_apostrophe:BOOLEAN
			-- `Current' represent the physical apostrophe key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_APOSTROPHE
		end


	is_physical_grave_accent:BOOLEAN
			-- `Current' represent the physical grave accent key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_GRAVE
		end


	is_physical_comma:BOOLEAN
			-- `Current' represent the physical comma key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_COMMA
		end


	is_physical_period:BOOLEAN
			-- `Current' represent the physical period key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_PERIOD
		end


	is_physical_slash:BOOLEAN
			-- `Current' represent the physical slash key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_SLASH
		end


	is_physical_caps_lock:BOOLEAN
			-- `Current' represent the physical caps lock key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_CAPSLOCK
		end


	is_physical_f1:BOOLEAN
			-- `Current' represent the physical f1 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F1
		end


	is_physical_f2:BOOLEAN
			-- `Current' represent the physical f2 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F2
		end


	is_physical_f3:BOOLEAN
			-- `Current' represent the physical f3 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F3
		end


	is_physical_f4:BOOLEAN
			-- `Current' represent the physical f4 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F4
		end


	is_physical_f5:BOOLEAN
			-- `Current' represent the physical f5 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F5
		end


	is_physical_f6:BOOLEAN
			-- `Current' represent the physical f6 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F6
		end


	is_physical_f7:BOOLEAN
			-- `Current' represent the physical f7 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F7
		end


	is_physical_f8:BOOLEAN
			-- `Current' represent the physical f8 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F8
		end


	is_physical_f9:BOOLEAN
			-- `Current' represent the physical f9 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F9
		end


	is_physical_f10:BOOLEAN
			-- `Current' represent the physical f10 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F10
		end


	is_physical_f11:BOOLEAN
			-- `Current' represent the physical f11 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F11
		end


	is_physical_f12:BOOLEAN
			-- `Current' represent the physical f12 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F12
		end


	is_physical_print_screen:BOOLEAN
			-- `Current' represent the physical print screen key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_PRINTSCREEN
		end


	is_physical_scroll_lock:BOOLEAN
			-- `Current' represent the physical scroll lock key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_SCROLLLOCK
		end


	is_physical_pause:BOOLEAN
			-- `Current' represent the physical pause key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_PAUSE
		end


	is_physical_insert:BOOLEAN
			-- `Current' represent the physical insert key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INSERT
		end


	is_physical_home:BOOLEAN
			-- `Current' represent the physical home key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_HOME
		end


	is_physical_page_up:BOOLEAN
			-- `Current' represent the physical page up key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_PAGEUP
		end


	is_physical_delete:BOOLEAN
			-- `Current' represent the physical delete key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_DELETE
		end


	is_physical_end:BOOLEAN
			-- `Current' represent the physical end key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_END
		end


	is_physical_page_down:BOOLEAN
			-- `Current' represent the physical page down key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_PAGEDOWN
		end


	is_physical_right:BOOLEAN
			-- `Current' represent the physical right key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_RIGHT
		end


	is_physical_left:BOOLEAN
			-- `Current' represent the physical left key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LEFT
		end


	is_physical_down:BOOLEAN
			-- `Current' represent the physical down key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_DOWN
		end


	is_physical_up:BOOLEAN
			-- `Current' represent the physical up key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_UP
		end


	is_physical_num_lock_clear:BOOLEAN
			-- `Current' represent the physical num lock clear key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_NUMLOCKCLEAR
		end


	is_physical_keypad_divide:BOOLEAN
			-- `Current' represent the physical keypad divide key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_DIVIDE
		end


	is_physical_keypad_multiply:BOOLEAN
			-- `Current' represent the physical keypad multiply key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_MULTIPLY
		end


	is_physical_keypad_minus:BOOLEAN
			-- `Current' represent the physical keypad minus key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_MINUS
		end


	is_physical_keypad_plus:BOOLEAN
			-- `Current' represent the physical keypad plus key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_PLUS
		end


	is_physical_keypad_enter:BOOLEAN
			-- `Current' represent the physical keypad enter key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_ENTER
		end


	is_physical_keypad_1:BOOLEAN
			-- `Current' represent the physical keypad 1 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_1
		end


	is_physical_keypad_2:BOOLEAN
			-- `Current' represent the physical keypad 2 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_2
		end


	is_physical_keypad_3:BOOLEAN
			-- `Current' represent the physical keypad 3 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_3
		end


	is_physical_keypad_4:BOOLEAN
			-- `Current' represent the physical keypad 4 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_4
		end


	is_physical_keypad_5:BOOLEAN
			-- `Current' represent the physical keypad 5 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_5
		end


	is_physical_keypad_6:BOOLEAN
			-- `Current' represent the physical keypad 6 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_6
		end


	is_physical_keypad_7:BOOLEAN
			-- `Current' represent the physical keypad 7 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_7
		end


	is_physical_keypad_8:BOOLEAN
			-- `Current' represent the physical keypad 8 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_8
		end


	is_physical_keypad_9:BOOLEAN
			-- `Current' represent the physical keypad 9 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_9
		end


	is_physical_keypad_0:BOOLEAN
			-- `Current' represent the physical keypad 0 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_0
		end


	is_physical_keypad_period:BOOLEAN
			-- `Current' represent the physical keypad period key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_PERIOD
		end


	is_physical_iso_backslash:BOOLEAN
			-- `Current' represent the physical backslash key for ISO keyboard
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_NONUSBACKSLASH
		end


	is_physical_application:BOOLEAN
			-- `Current' represent the physical application key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_APPLICATION
		end


	is_physical_power:BOOLEAN
			-- `Current' represent the physical power key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_POWER
		end


	is_physical_keypad_equals:BOOLEAN
			-- `Current' represent the physical keypad equals key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_EQUALS
		end


	is_physical_f13:BOOLEAN
			-- `Current' represent the physical f13 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F13
		end


	is_physical_f14:BOOLEAN
			-- `Current' represent the physical f14 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F14
		end


	is_physical_f15:BOOLEAN
			-- `Current' represent the physical f15 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F15
		end


	is_physical_f16:BOOLEAN
			-- `Current' represent the physical f16 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F16
		end


	is_physical_f17:BOOLEAN
			-- `Current' represent the physical f17 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F17
		end


	is_physical_f18:BOOLEAN
			-- `Current' represent the physical f18 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F18
		end


	is_physical_f19:BOOLEAN
			-- `Current' represent the physical f19 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F19
		end


	is_physical_f20:BOOLEAN
			-- `Current' represent the physical f20 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F20
		end


	is_physical_f21:BOOLEAN
			-- `Current' represent the physical f21 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F21
		end


	is_physical_f22:BOOLEAN
			-- `Current' represent the physical f22 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F22
		end


	is_physical_f23:BOOLEAN
			-- `Current' represent the physical f23 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F23
		end


	is_physical_f24:BOOLEAN
			-- `Current' represent the physical f24 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_F24
		end


	is_physical_execute:BOOLEAN
			-- `Current' represent the physical execute key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_EXECUTE
		end


	is_physical_help:BOOLEAN
			-- `Current' represent the physical help key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_HELP
		end


	is_physical_menu:BOOLEAN
			-- `Current' represent the physical menu key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_MENU
		end


	is_physical_select:BOOLEAN
			-- `Current' represent the physical select key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_SELECT
		end


	is_physical_stop:BOOLEAN
			-- `Current' represent the physical stop key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_STOP
		end


	is_physical_again:BOOLEAN
			-- `Current' represent the physical again key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AGAIN
		end


	is_physical_undo:BOOLEAN
			-- `Current' represent the physical undo key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_UNDO
		end


	is_physical_cut:BOOLEAN
			-- `Current' represent the physical cut key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_CUT
		end


	is_physical_copy:BOOLEAN
			-- `Current' represent the physical copy key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_COPY
		end


	is_physical_paste:BOOLEAN
			-- `Current' represent the physical paste key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_PASTE
		end


	is_physical_find:BOOLEAN
			-- `Current' represent the physical find key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_FIND
		end


	is_physical_mute:BOOLEAN
			-- `Current' represent the physical mute key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_MUTE
		end


	is_physical_volume_up:BOOLEAN
			-- `Current' represent the physical volume up key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_VOLUMEUP
		end


	is_physical_volume_down:BOOLEAN
			-- `Current' represent the physical volume down key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_VOLUMEDOWN
		end


	is_physical_keypad_comma:BOOLEAN
			-- `Current' represent the physical keypad comma key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_COMMA
		end


	is_physical_as400_keypad_equals:BOOLEAN
			-- `Current' represent the physical keypad equals key for as400 keyboard
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_EQUALSAS400
		end


	is_physical_international_1:BOOLEAN
			-- `Current' represent the physical international 1 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INTERNATIONAL1
		end


	is_physical_international_2:BOOLEAN
			-- `Current' represent the physical international 2 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INTERNATIONAL2
		end


	is_physical_international_3:BOOLEAN
			-- `Current' represent the physical international 3 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INTERNATIONAL3
		end


	is_physical_international_4:BOOLEAN
			-- `Current' represent the physical international 4 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INTERNATIONAL4
		end


	is_physical_international_5:BOOLEAN
			-- `Current' represent the physical international 5 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INTERNATIONAL5
		end


	is_physical_internationa_6:BOOLEAN
			-- `Current' represent the physical international 6 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INTERNATIONAL6
		end


	is_physical_international_7:BOOLEAN
			-- `Current' represent the physical international 7 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INTERNATIONAL7
		end


	is_physical_international_8:BOOLEAN
			-- `Current' represent the physical international 8 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INTERNATIONAL8
		end


	is_physical_international_9:BOOLEAN
			-- `Current' represent the physical international 9 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_INTERNATIONAL9
		end


	is_physical_lang_1:BOOLEAN
			-- `Current' represent the physical lang 1 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LANG1
		end


	is_physical_lang_2:BOOLEAN
			-- `Current' represent the physical lang 2 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LANG2
		end


	is_physical_lang_3:BOOLEAN
			-- `Current' represent the physical lang 3 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LANG3
		end


	is_physical_lang_4:BOOLEAN
			-- `Current' represent the physical lang 4 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LANG4
		end


	is_physical_lang_5:BOOLEAN
			-- `Current' represent the physical lang 5 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LANG5
		end


	is_physical_lang_6:BOOLEAN
			-- `Current' represent the physical lang 6 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LANG6
		end


	is_physical_lang_7:BOOLEAN
			-- `Current' represent the physical lang 7 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LANG7
		end


	is_physical_lang_8:BOOLEAN
			-- `Current' represent the physical lang 8 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LANG8
		end


	is_physical_lang_9:BOOLEAN
			-- `Current' represent the physical lang 9 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LANG9
		end


	is_physical_erase_eaze_alternate_erase:BOOLEAN
			-- `Current' represent the physical alternate erase key for Erase Eaze keyboard
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_ALTERASE
		end


	is_physical_sysreq:BOOLEAN
			-- `Current' represent the physical sysreq key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_SYSREQ
		end


	is_physical_cancel:BOOLEAN
			-- `Current' represent the physical cancel key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_CANCEL
		end


	is_physical_clear:BOOLEAN
			-- `Current' represent the physical clear key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_CLEAR
		end


	is_physical_prior:BOOLEAN
			-- `Current' represent the physical prior key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_PRIOR
		end


	is_physical_return_2:BOOLEAN
			-- `Current' represent the physical second return key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_RETURN2
		end


	is_physical_separator:BOOLEAN
			-- `Current' represent the physical separator key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_SEPARATOR
		end


	is_physical_out:BOOLEAN
			-- `Current' represent the physical out key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_OUT
		end


	is_physical_oper:BOOLEAN
			-- `Current' represent the physical oper key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_OPER
		end


	is_physical_clear_again:BOOLEAN
			-- `Current' represent the physical clear/again key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_CLEARAGAIN
		end


	is_physical_crsel:BOOLEAN
			-- `Current' represent the physical crsel key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_CRSEL
		end


	is_physical_exsel:BOOLEAN
			-- `Current' represent the physical exsel key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_EXSEL
		end


	is_physical_keypad_00:BOOLEAN
			-- `Current' represent the physical keypad 00 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_00
		end


	is_physical_keypad_000:BOOLEAN
			-- `Current' represent the physical keypad 000 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_000
		end


	is_physical_thousands_separator:BOOLEAN
			-- `Current' represent the physical thousands separator key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_THOUSANDSSEPARATOR
		end


	is_physical_decimal_separator:BOOLEAN
			-- `Current' represent the physical decimal separator key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_DECIMALSEPARATOR
		end


	is_physical_currency_unit:BOOLEAN
			-- `Current' represent the physical currency unit key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_CURRENCYUNIT
		end


	is_physical_currency_sub_unit:BOOLEAN
			-- `Current' represent the physical currency sub unit key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_CURRENCYSUBUNIT
		end


	is_physical_keypad_left_parenthesis:BOOLEAN
			-- `Current' represent the physical keypad left parenthesis key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_LEFTPAREN
		end


	is_physical_keypad_right_parenthesis:BOOLEAN
			-- `Current' represent the physical keypad right parenthesis key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_RIGHTPAREN
		end


	is_physical_keypad_left_brace:BOOLEAN
			-- `Current' represent the physical keypad left brace key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_LEFTBRACE
		end


	is_physical_keypad_rightbrace:BOOLEAN
			-- `Current' represent the physical keypad right brace key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_RIGHTBRACE
		end


	is_physical_keypad_tab:BOOLEAN
			-- `Current' represent the physical keypad tab key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_TAB
		end


	is_physical_keypad_backspace:BOOLEAN
			-- `Current' represent the physical keypad backspace key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_BACKSPACE
		end


	is_physical_keypad_a:BOOLEAN
			-- `Current' represent the physical keypad a key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_A
		end


	is_physical_keypad_b:BOOLEAN
			-- `Current' represent the physical keypad b key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_B
		end


	is_physical_keypad_c:BOOLEAN
			-- `Current' represent the physical keypad c key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_C
		end


	is_physical_keypad_d:BOOLEAN
			-- `Current' represent the physical keypad d key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_D
		end


	is_physical_keypad_e:BOOLEAN
			-- `Current' represent the physical keypad e key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_E
		end


	is_physical_keypad_f:BOOLEAN
			-- `Current' represent the physical keypad f key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_F
		end


	is_physical_keypad_xor:BOOLEAN
			-- `Current' represent the physical keypad xor key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_XOR
		end


	is_physical_keypad_power:BOOLEAN
			-- `Current' represent the physical kp_power key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_POWER
		end


	is_physical_keypad_percent:BOOLEAN
			-- `Current' represent the physical keypad percent key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_PERCENT
		end


	is_physical_keypad_less:BOOLEAN
			-- `Current' represent the physical keypad less key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_LESS
		end


	is_physical_keypad_greater:BOOLEAN
			-- `Current' represent the physical keypad greater key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_GREATER
		end


	is_physical_keypad_ampersand:BOOLEAN
			-- `Current' represent the physical keypad ampersand key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_AMPERSAND
		end


	is_physical_keypad_double_ampersand:BOOLEAN
			-- `Current' represent the physical keypad double ampersand key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_DBLAMPERSAND
		end


	is_physical_keypad_vertical_bar:BOOLEAN
			-- `Current' represent the physical keypad vertical bar key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_VERTICALBAR
		end


	is_physical_keypad_double_vertical_bar:BOOLEAN
			-- `Current' represent the physical keypad double vertical bar key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_DBLVERTICALBAR
		end


	is_physical_keypad_colon:BOOLEAN
			-- `Current' represent the physical keypad colon key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_COLON
		end


	is_physical_keypad_hash:BOOLEAN
			-- `Current' represent the physical keypad hash key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_HASH
		end


	is_physical_keypad_space:BOOLEAN
			-- `Current' represent the physical keypad space key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_SPACE
		end


	is_physical_keypad_at:BOOLEAN
			-- `Current' represent the physical keypad at key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_AT
		end


	is_physical_keypad_exclamation_mark:BOOLEAN
			-- `Current' represent the physical keypad exclamation mark key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_EXCLAM
		end


	is_physical_keypad_mem_store:BOOLEAN
			-- `Current' represent the physical keypad mem store key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_MEMSTORE
		end


	is_physical_keypad_mem_recall:BOOLEAN
			-- `Current' represent the physical keypad mem recall key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_MEMRECALL
		end


	is_physical_keypad_mem_clear:BOOLEAN
			-- `Current' represent the physical keypad mem clear key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_MEMCLEAR
		end


	is_physical_keypad_mem_add:BOOLEAN
			-- `Current' represent the physical keypad mem add key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_MEMADD
		end


	is_physical_keypad_mem_subtract:BOOLEAN
			-- `Current' represent the physical keypad mem subtract key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_MEMSUBTRACT
		end


	is_physical_keypad_mem_multiply:BOOLEAN
			-- `Current' represent the physical keypad mem multiply key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_MEMMULTIPLY
		end


	is_physical_keypad_mem_divide:BOOLEAN
			-- `Current' represent the physical keypad mem divide key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_MEMDIVIDE
		end


	is_physical_keypad_plus_minus:BOOLEAN
			-- `Current' represent the physical keypad plus/minus key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_PLUSMINUS
		end


	is_physical_keypad_clear:BOOLEAN
			-- `Current' represent the physical keypad clear key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_CLEAR
		end


	is_physical_keypad_clear_entry:BOOLEAN
			-- `Current' represent the physical keypad clear entry key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_CLEARENTRY
		end


	is_physical_keypad_binary:BOOLEAN
			-- `Current' represent the physical keypad binary key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_BINARY
		end


	is_physical_keypad_octal:BOOLEAN
			-- `Current' represent the physical keypad octal key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_OCTAL
		end


	is_physical_keypad_decimal:BOOLEAN
			-- `Current' represent the physical keypad decimal key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_DECIMAL
		end


	is_physical_keypad_hexadecimal:BOOLEAN
			-- `Current' represent the physical keypad hexadecimal key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KP_HEXADECIMAL
		end


	is_physical_left_ctrl:BOOLEAN
			-- `Current' represent the physical left ctrl key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LCTRL
		end


	is_physical_left_shift:BOOLEAN
			-- `Current' represent the physical left shift key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LSHIFT
		end


	is_physical_left_alt:BOOLEAN
			-- `Current' represent the physical left alt key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LALT
		end


	is_physical_left_gui:BOOLEAN
			-- `Current' represent the physical left gui key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_LGUI
		end


	is_physical_right_ctrl:BOOLEAN
			-- `Current' represent the physical right ctrl key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_RCTRL
		end


	is_physical_right_shift:BOOLEAN
			-- `Current' represent the physical right shift key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_RSHIFT
		end


	is_physical_right_alt:BOOLEAN
			-- `Current' represent the physical right alt key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_RALT
		end


	is_physical_right_gui:BOOLEAN
			-- `Current' represent the physical right gui key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_RGUI
		end


	is_physical_mode:BOOLEAN
			-- `Current' represent the physical mode key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_MODE
		end


	is_physical_audio_next:BOOLEAN
			-- `Current' represent the physical audio next key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AUDIONEXT
		end


	is_physical_audio_prev:BOOLEAN
			-- `Current' represent the physical audio prev key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AUDIOPREV
		end


	is_physical_audio_stop:BOOLEAN
			-- `Current' represent the physical audio stop key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AUDIOSTOP
		end


	is_physical_audio_play:BOOLEAN
			-- `Current' represent the physical audio play key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AUDIOPLAY
		end


	is_physical_audio_mute:BOOLEAN
			-- `Current' represent the physical audio mute key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AUDIOMUTE
		end


	is_physical_media_select:BOOLEAN
			-- `Current' represent the physical media select key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_MEDIASELECT
		end


	is_physical_www:BOOLEAN
			-- `Current' represent the physical www key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_WWW
		end


	is_physical_mail:BOOLEAN
			-- `Current' represent the physical mail key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_MAIL
		end


	is_physical_calculator:BOOLEAN
			-- `Current' represent the physical calculator key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_CALCULATOR
		end


	is_physical_computer:BOOLEAN
			-- `Current' represent the physical computer key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_COMPUTER
		end


	is_physical_application_control_search:BOOLEAN
			-- `Current' represent the physical search key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AC_SEARCH
		end


	is_physical_application_control_home:BOOLEAN
			-- `Current' represent the physical home key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AC_HOME
		end


	is_physical_application_control_back:BOOLEAN
			-- `Current' represent the physical back key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AC_BACK
		end


	is_physical_application_control_forward:BOOLEAN
			-- `Current' represent the physical forward key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AC_FORWARD
		end


	is_physical_application_control_stop:BOOLEAN
			-- `Current' represent the physical stop key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AC_STOP
		end


	is_physical_application_control_refresh:BOOLEAN
			-- `Current' represent the physical refresh key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AC_REFRESH
		end


	is_physical_application_control_bookmarks:BOOLEAN
			-- `Current' represent the physical bookmarks key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_AC_BOOKMARKS
		end


	is_physical_brightness_down:BOOLEAN
			-- `Current' represent the physical brightness down key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_BRIGHTNESSDOWN
		end


	is_physical_brightness_up:BOOLEAN
			-- `Current' represent the physical brightness up key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_BRIGHTNESSUP
		end


	is_physical_display_switch:BOOLEAN
			-- `Current' represent the physical display switch key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_DISPLAYSWITCH
		end


	is_physical_keyboard_illumination_toggle:BOOLEAN
			-- `Current' represent the physical keyboard illumination toggle key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KBDILLUMTOGGLE
		end


	is_physical_keyboard_illumination_down:BOOLEAN
			-- `Current' represent the physical keyboard illumination down key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KBDILLUMDOWN
		end


	is_physical_keyboard_illumination_up:BOOLEAN
			-- `Current' represent the physical keyboard illumination up key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_KBDILLUMUP
		end


	is_physical_eject:BOOLEAN
			-- `Current' represent the physical eject key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_EJECT
		end


	is_physical_sleep:BOOLEAN
			-- `Current' represent the physical sleep key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_SLEEP
		end


	is_physical_app_1:BOOLEAN
			-- `Current' represent the physical app 1 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_APP1
		end


	is_physical_app_2:BOOLEAN
			-- `Current' represent the physical app 2 key
		do
			Result := physical_code = {GAME_SDL_EXTERNAL}.SDL_SCANCODE_APP2
		end




end
