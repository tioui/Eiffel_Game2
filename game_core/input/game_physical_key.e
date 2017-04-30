note
	description: "A physical keyboard key."
	author: "Louis Marchand"
	date: "Sun, 30 Apr 2017 15:08:50 +0000"
	revision: "2.1"

deferred class
	GAME_PHYSICAL_KEY

feature -- Access

	physical_code:INTEGER_32
			-- Hardware code of the key
			-- (not compatible between systems)
		deferred
		end


	is_unknown:BOOLEAN
			-- The `Current' physical key is not valid
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_UNKNOWN
		end


	is_a:BOOLEAN
			-- `Current' represent the physical a key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_A
		end


	is_b:BOOLEAN
			-- `Current' represent the physical b key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_B
		end


	is_c:BOOLEAN
			-- `Current' represent the physical c key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_C
		end


	is_d:BOOLEAN
			-- `Current' represent the physical d key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_D
		end


	is_e:BOOLEAN
			-- `Current' represent the physical e key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_E
		end


	is_f:BOOLEAN
			-- `Current' represent the physical f key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F
		end


	is_g:BOOLEAN
			-- `Current' represent the physical g key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_G
		end


	is_h:BOOLEAN
			-- `Current' represent the physical h key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_H
		end


	is_i:BOOLEAN
			-- `Current' represent the physical i key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_I
		end


	is_j:BOOLEAN
			-- `Current' represent the physical j key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_J
		end


	is_k:BOOLEAN
			-- `Current' represent the physical k key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_K
		end


	is_l:BOOLEAN
			-- `Current' represent the physical l key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_L
		end


	is_m:BOOLEAN
			-- `Current' represent the physical m key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_M
		end


	is_n:BOOLEAN
			-- `Current' represent the physical n key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_N
		end


	is_o:BOOLEAN
			-- `Current' represent the physical o key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_O
		end


	is_p:BOOLEAN
			-- `Current' represent the physical p key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_P
		end


	is_q:BOOLEAN
			-- `Current' represent the physical q key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_Q
		end


	is_r:BOOLEAN
			-- `Current' represent the physical r key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_R
		end


	is_s:BOOLEAN
			-- `Current' represent the physical s key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_S
		end


	is_t:BOOLEAN
			-- `Current' represent the physical t key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_T
		end


	is_u:BOOLEAN
			-- `Current' represent the physical u key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_U
		end


	is_v:BOOLEAN
			-- `Current' represent the physical v key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_V
		end


	is_w:BOOLEAN
			-- `Current' represent the physical w key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_W
		end


	is_x:BOOLEAN
			-- `Current' represent the physical x key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_X
		end


	is_y:BOOLEAN
			-- `Current' represent the physical y key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_Y
		end


	is_z:BOOLEAN
			-- `Current' represent the physical z key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_Z
		end


	is_1:BOOLEAN
			-- `Current' represent the physical 1 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_1
		end


	is_2:BOOLEAN
			-- `Current' represent the physical 2 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_2
		end


	is_3:BOOLEAN
			-- `Current' represent the physical 3 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_3
		end


	is_4:BOOLEAN
			-- `Current' represent the physical 4 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_4
		end


	is_5:BOOLEAN
			-- `Current' represent the physical 5 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_5
		end


	is_6:BOOLEAN
			-- `Current' represent the physical 6 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_6
		end


	is_7:BOOLEAN
			-- `Current' represent the physical 7 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_7
		end


	is_8:BOOLEAN
			-- `Current' represent the physical 8 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_8
		end


	is_9:BOOLEAN
			-- `Current' represent the physical 9 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_9
		end


	is_0:BOOLEAN
			-- `Current' represent the physical 0 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_0
		end


	is_return:BOOLEAN
			-- `Current' represent the physical return key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_RETURN
		end


	is_escape:BOOLEAN
			-- `Current' represent the physical escape key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_ESCAPE
		end


	is_backspace:BOOLEAN
			-- `Current' represent the physical backspace key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_BACKSPACE
		end


	is_tab:BOOLEAN
			-- `Current' represent the physical tab key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_TAB
		end


	is_space:BOOLEAN
			-- `Current' represent the physical space key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_SPACE
		end


	is_minus:BOOLEAN
			-- `Current' represent the physical minus key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_MINUS
		end


	is_equals:BOOLEAN
			-- `Current' represent the physical equals key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_EQUALS
		end


	is_left_bracket:BOOLEAN
			-- `Current' represent the physical left bracket key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LEFTBRACKET
		end


	is_right_bracket:BOOLEAN
			-- `Current' represent the physical right bracket key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_RIGHTBRACKET
		end


	is_backslash:BOOLEAN
			-- `Current' represent the physical backslash key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_BACKSLASH
		end


	is_iso_hash:BOOLEAN
			-- `Current' represent the physical hash key for ISO keyboard.
			-- Don't use this, use `is_backslash' instead.
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_NONUSHASH
		end


	is_semicolon:BOOLEAN
			-- `Current' represent the physical semicolon key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_SEMICOLON
		end


	is_apostrophe:BOOLEAN
			-- `Current' represent the physical apostrophe key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_APOSTROPHE
		end


	is_grave_accent:BOOLEAN
			-- `Current' represent the physical grave accent key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_GRAVE
		end


	is_comma:BOOLEAN
			-- `Current' represent the physical comma key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_COMMA
		end


	is_period:BOOLEAN
			-- `Current' represent the physical period key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_PERIOD
		end


	is_slash:BOOLEAN
			-- `Current' represent the physical slash key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_SLASH
		end


	is_caps_lock:BOOLEAN
			-- `Current' represent the physical caps lock key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_CAPSLOCK
		end


	is_f1:BOOLEAN
			-- `Current' represent the physical f1 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F1
		end


	is_f2:BOOLEAN
			-- `Current' represent the physical f2 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F2
		end


	is_f3:BOOLEAN
			-- `Current' represent the physical f3 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F3
		end


	is_f4:BOOLEAN
			-- `Current' represent the physical f4 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F4
		end


	is_f5:BOOLEAN
			-- `Current' represent the physical f5 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F5
		end


	is_f6:BOOLEAN
			-- `Current' represent the physical f6 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F6
		end


	is_f7:BOOLEAN
			-- `Current' represent the physical f7 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F7
		end


	is_f8:BOOLEAN
			-- `Current' represent the physical f8 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F8
		end


	is_f9:BOOLEAN
			-- `Current' represent the physical f9 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F9
		end


	is_f10:BOOLEAN
			-- `Current' represent the physical f10 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F10
		end


	is_f11:BOOLEAN
			-- `Current' represent the physical f11 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F11
		end


	is_f12:BOOLEAN
			-- `Current' represent the physical f12 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F12
		end


	is_print_screen:BOOLEAN
			-- `Current' represent the physical print screen key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_PRINTSCREEN
		end


	is_scroll_lock:BOOLEAN
			-- `Current' represent the physical scroll lock key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_SCROLLLOCK
		end


	is_pause:BOOLEAN
			-- `Current' represent the physical pause key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_PAUSE
		end


	is_insert:BOOLEAN
			-- `Current' represent the physical insert key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INSERT
		end


	is_home:BOOLEAN
			-- `Current' represent the physical home key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_HOME
		end


	is_page_up:BOOLEAN
			-- `Current' represent the physical page up key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_PAGEUP
		end


	is_delete:BOOLEAN
			-- `Current' represent the physical delete key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_DELETE
		end


	is_end:BOOLEAN
			-- `Current' represent the physical end key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_END
		end


	is_page_down:BOOLEAN
			-- `Current' represent the physical page down key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_PAGEDOWN
		end


	is_right:BOOLEAN
			-- `Current' represent the physical right key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_RIGHT
		end


	is_left:BOOLEAN
			-- `Current' represent the physical left key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LEFT
		end


	is_down:BOOLEAN
			-- `Current' represent the physical down key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_DOWN
		end


	is_up:BOOLEAN
			-- `Current' represent the physical up key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_UP
		end


	is_num_lock_clear:BOOLEAN
			-- `Current' represent the physical num lock clear key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_NUMLOCKCLEAR
		end


	is_keypad_divide:BOOLEAN
			-- `Current' represent the physical keypad divide key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_DIVIDE
		end


	is_keypad_multiply:BOOLEAN
			-- `Current' represent the physical keypad multiply key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_MULTIPLY
		end


	is_keypad_minus:BOOLEAN
			-- `Current' represent the physical keypad minus key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_MINUS
		end


	is_keypad_plus:BOOLEAN
			-- `Current' represent the physical keypad plus key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_PLUS
		end


	is_keypad_enter:BOOLEAN
			-- `Current' represent the physical keypad enter key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_ENTER
		end


	is_keypad_1:BOOLEAN
			-- `Current' represent the physical keypad 1 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_1
		end


	is_keypad_2:BOOLEAN
			-- `Current' represent the physical keypad 2 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_2
		end


	is_keypad_3:BOOLEAN
			-- `Current' represent the physical keypad 3 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_3
		end


	is_keypad_4:BOOLEAN
			-- `Current' represent the physical keypad 4 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_4
		end


	is_keypad_5:BOOLEAN
			-- `Current' represent the physical keypad 5 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_5
		end


	is_keypad_6:BOOLEAN
			-- `Current' represent the physical keypad 6 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_6
		end


	is_keypad_7:BOOLEAN
			-- `Current' represent the physical keypad 7 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_7
		end


	is_keypad_8:BOOLEAN
			-- `Current' represent the physical keypad 8 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_8
		end


	is_keypad_9:BOOLEAN
			-- `Current' represent the physical keypad 9 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_9
		end


	is_keypad_0:BOOLEAN
			-- `Current' represent the physical keypad 0 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_0
		end


	is_keypad_period:BOOLEAN
			-- `Current' represent the physical keypad period key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_PERIOD
		end


	is_iso_backslash:BOOLEAN
			-- `Current' represent the physical backslash key for ISO keyboard
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_NONUSBACKSLASH
		end


	is_application:BOOLEAN
			-- `Current' represent the physical application key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_APPLICATION
		end


	is_power:BOOLEAN
			-- `Current' represent the physical power key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_POWER
		end


	is_keypad_equals:BOOLEAN
			-- `Current' represent the physical keypad equals key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_EQUALS
		end


	is_f13:BOOLEAN
			-- `Current' represent the physical f13 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F13
		end


	is_f14:BOOLEAN
			-- `Current' represent the physical f14 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F14
		end


	is_f15:BOOLEAN
			-- `Current' represent the physical f15 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F15
		end


	is_f16:BOOLEAN
			-- `Current' represent the physical f16 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F16
		end


	is_f17:BOOLEAN
			-- `Current' represent the physical f17 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F17
		end


	is_f18:BOOLEAN
			-- `Current' represent the physical f18 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F18
		end


	is_f19:BOOLEAN
			-- `Current' represent the physical f19 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F19
		end


	is_f20:BOOLEAN
			-- `Current' represent the physical f20 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F20
		end


	is_f21:BOOLEAN
			-- `Current' represent the physical f21 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F21
		end


	is_f22:BOOLEAN
			-- `Current' represent the physical f22 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F22
		end


	is_f23:BOOLEAN
			-- `Current' represent the physical f23 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F23
		end


	is_f24:BOOLEAN
			-- `Current' represent the physical f24 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_F24
		end


	is_execute:BOOLEAN
			-- `Current' represent the physical execute key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_EXECUTE
		end


	is_help:BOOLEAN
			-- `Current' represent the physical help key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_HELP
		end


	is_menu:BOOLEAN
			-- `Current' represent the physical menu key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_MENU
		end


	is_select:BOOLEAN
			-- `Current' represent the physical select key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_SELECT
		end


	is_stop:BOOLEAN
			-- `Current' represent the physical stop key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_STOP
		end


	is_again:BOOLEAN
			-- `Current' represent the physical again key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AGAIN
		end


	is_undo:BOOLEAN
			-- `Current' represent the physical undo key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_UNDO
		end


	is_cut:BOOLEAN
			-- `Current' represent the physical cut key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_CUT
		end


	is_copy:BOOLEAN
			-- `Current' represent the physical copy key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_COPY
		end


	is_paste:BOOLEAN
			-- `Current' represent the physical paste key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_PASTE
		end


	is_find:BOOLEAN
			-- `Current' represent the physical find key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_FIND
		end


	is_mute:BOOLEAN
			-- `Current' represent the physical mute key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_MUTE
		end


	is_volume_up:BOOLEAN
			-- `Current' represent the physical volume up key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_VOLUMEUP
		end


	is_volume_down:BOOLEAN
			-- `Current' represent the physical volume down key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_VOLUMEDOWN
		end


	is_keypad_comma:BOOLEAN
			-- `Current' represent the physical keypad comma key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_COMMA
		end


	is_as400_keypad_equals:BOOLEAN
			-- `Current' represent the physical keypad equals key for as400 keyboard
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_EQUALSAS400
		end


	is_international_1:BOOLEAN
			-- `Current' represent the physical international 1 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INTERNATIONAL1
		end


	is_international_2:BOOLEAN
			-- `Current' represent the physical international 2 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INTERNATIONAL2
		end


	is_international_3:BOOLEAN
			-- `Current' represent the physical international 3 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INTERNATIONAL3
		end


	is_international_4:BOOLEAN
			-- `Current' represent the physical international 4 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INTERNATIONAL4
		end


	is_international_5:BOOLEAN
			-- `Current' represent the physical international 5 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INTERNATIONAL5
		end


	is_internationa_6:BOOLEAN
			-- `Current' represent the physical international 6 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INTERNATIONAL6
		end


	is_international_7:BOOLEAN
			-- `Current' represent the physical international 7 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INTERNATIONAL7
		end


	is_international_8:BOOLEAN
			-- `Current' represent the physical international 8 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INTERNATIONAL8
		end


	is_international_9:BOOLEAN
			-- `Current' represent the physical international 9 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_INTERNATIONAL9
		end


	is_lang_1:BOOLEAN
			-- `Current' represent the physical lang 1 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LANG1
		end


	is_lang_2:BOOLEAN
			-- `Current' represent the physical lang 2 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LANG2
		end


	is_lang_3:BOOLEAN
			-- `Current' represent the physical lang 3 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LANG3
		end


	is_lang_4:BOOLEAN
			-- `Current' represent the physical lang 4 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LANG4
		end


	is_lang_5:BOOLEAN
			-- `Current' represent the physical lang 5 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LANG5
		end


	is_lang_6:BOOLEAN
			-- `Current' represent the physical lang 6 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LANG6
		end


	is_lang_7:BOOLEAN
			-- `Current' represent the physical lang 7 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LANG7
		end


	is_lang_8:BOOLEAN
			-- `Current' represent the physical lang 8 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LANG8
		end


	is_lang_9:BOOLEAN
			-- `Current' represent the physical lang 9 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LANG9
		end


	is_erase_eaze_alternate_erase:BOOLEAN
			-- `Current' represent the physical alternate erase key for Erase Eaze keyboard
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_ALTERASE
		end


	is_sysreq:BOOLEAN
			-- `Current' represent the physical sysreq key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_SYSREQ
		end


	is_cancel:BOOLEAN
			-- `Current' represent the physical cancel key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_CANCEL
		end


	is_clear:BOOLEAN
			-- `Current' represent the physical clear key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_CLEAR
		end


	is_prior:BOOLEAN
			-- `Current' represent the physical prior key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_PRIOR
		end


	is_return_2:BOOLEAN
			-- `Current' represent the physical second return key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_RETURN2
		end


	is_separator:BOOLEAN
			-- `Current' represent the physical separator key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_SEPARATOR
		end


	is_out:BOOLEAN
			-- `Current' represent the physical out key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_OUT
		end


	is_oper:BOOLEAN
			-- `Current' represent the physical oper key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_OPER
		end


	is_clear_again:BOOLEAN
			-- `Current' represent the physical clear/again key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_CLEARAGAIN
		end


	is_crsel:BOOLEAN
			-- `Current' represent the physical crsel key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_CRSEL
		end


	is_exsel:BOOLEAN
			-- `Current' represent the physical exsel key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_EXSEL
		end


	is_keypad_00:BOOLEAN
			-- `Current' represent the physical keypad 00 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_00
		end


	is_keypad_000:BOOLEAN
			-- `Current' represent the physical keypad 000 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_000
		end


	is_thousands_separator:BOOLEAN
			-- `Current' represent the physical thousands separator key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_THOUSANDSSEPARATOR
		end


	is_decimal_separator:BOOLEAN
			-- `Current' represent the physical decimal separator key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_DECIMALSEPARATOR
		end


	is_currency_unit:BOOLEAN
			-- `Current' represent the physical currency unit key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_CURRENCYUNIT
		end


	is_currency_sub_unit:BOOLEAN
			-- `Current' represent the physical currency sub unit key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_CURRENCYSUBUNIT
		end


	is_keypad_left_parenthesis:BOOLEAN
			-- `Current' represent the physical keypad left parenthesis key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_LEFTPAREN
		end


	is_keypad_right_parenthesis:BOOLEAN
			-- `Current' represent the physical keypad right parenthesis key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_RIGHTPAREN
		end


	is_keypad_left_brace:BOOLEAN
			-- `Current' represent the physical keypad left brace key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_LEFTBRACE
		end


	is_keypad_rightbrace:BOOLEAN
			-- `Current' represent the physical keypad right brace key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_RIGHTBRACE
		end


	is_keypad_tab:BOOLEAN
			-- `Current' represent the physical keypad tab key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_TAB
		end


	is_keypad_backspace:BOOLEAN
			-- `Current' represent the physical keypad backspace key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_BACKSPACE
		end


	is_keypad_a:BOOLEAN
			-- `Current' represent the physical keypad a key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_A
		end


	is_keypad_b:BOOLEAN
			-- `Current' represent the physical keypad b key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_B
		end


	is_keypad_c:BOOLEAN
			-- `Current' represent the physical keypad c key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_C
		end


	is_keypad_d:BOOLEAN
			-- `Current' represent the physical keypad d key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_D
		end


	is_keypad_e:BOOLEAN
			-- `Current' represent the physical keypad e key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_E
		end


	is_keypad_f:BOOLEAN
			-- `Current' represent the physical keypad f key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_F
		end


	is_keypad_xor:BOOLEAN
			-- `Current' represent the physical keypad xor key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_XOR
		end


	is_keypad_power:BOOLEAN
			-- `Current' represent the physical kp_power key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_POWER
		end


	is_keypad_percent:BOOLEAN
			-- `Current' represent the physical keypad percent key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_PERCENT
		end


	is_keypad_less:BOOLEAN
			-- `Current' represent the physical keypad less key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_LESS
		end


	is_keypad_greater:BOOLEAN
			-- `Current' represent the physical keypad greater key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_GREATER
		end


	is_keypad_ampersand:BOOLEAN
			-- `Current' represent the physical keypad ampersand key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_AMPERSAND
		end


	is_keypad_double_ampersand:BOOLEAN
			-- `Current' represent the physical keypad double ampersand key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_DBLAMPERSAND
		end


	is_keypad_vertical_bar:BOOLEAN
			-- `Current' represent the physical keypad vertical bar key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_VERTICALBAR
		end


	is_keypad_double_vertical_bar:BOOLEAN
			-- `Current' represent the physical keypad double vertical bar key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_DBLVERTICALBAR
		end


	is_keypad_colon:BOOLEAN
			-- `Current' represent the physical keypad colon key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_COLON
		end


	is_keypad_hash:BOOLEAN
			-- `Current' represent the physical keypad hash key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_HASH
		end


	is_keypad_space:BOOLEAN
			-- `Current' represent the physical keypad space key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_SPACE
		end


	is_keypad_at:BOOLEAN
			-- `Current' represent the physical keypad at key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_AT
		end


	is_keypad_exclamation_mark:BOOLEAN
			-- `Current' represent the physical keypad exclamation mark key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_EXCLAM
		end


	is_keypad_mem_store:BOOLEAN
			-- `Current' represent the physical keypad mem store key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_MEMSTORE
		end


	is_keypad_mem_recall:BOOLEAN
			-- `Current' represent the physical keypad mem recall key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_MEMRECALL
		end


	is_keypad_mem_clear:BOOLEAN
			-- `Current' represent the physical keypad mem clear key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_MEMCLEAR
		end


	is_keypad_mem_add:BOOLEAN
			-- `Current' represent the physical keypad mem add key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_MEMADD
		end


	is_keypad_mem_subtract:BOOLEAN
			-- `Current' represent the physical keypad mem subtract key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_MEMSUBTRACT
		end


	is_keypad_mem_multiply:BOOLEAN
			-- `Current' represent the physical keypad mem multiply key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_MEMMULTIPLY
		end


	is_keypad_mem_divide:BOOLEAN
			-- `Current' represent the physical keypad mem divide key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_MEMDIVIDE
		end


	is_keypad_plus_minus:BOOLEAN
			-- `Current' represent the physical keypad plus/minus key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_PLUSMINUS
		end


	is_keypad_clear:BOOLEAN
			-- `Current' represent the physical keypad clear key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_CLEAR
		end


	is_keypad_clear_entry:BOOLEAN
			-- `Current' represent the physical keypad clear entry key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_CLEARENTRY
		end


	is_keypad_binary:BOOLEAN
			-- `Current' represent the physical keypad binary key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_BINARY
		end


	is_keypad_octal:BOOLEAN
			-- `Current' represent the physical keypad octal key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_OCTAL
		end


	is_keypad_decimal:BOOLEAN
			-- `Current' represent the physical keypad decimal key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_DECIMAL
		end


	is_keypad_hexadecimal:BOOLEAN
			-- `Current' represent the physical keypad hexadecimal key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KP_HEXADECIMAL
		end


	is_left_ctrl:BOOLEAN
			-- `Current' represent the physical left ctrl key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LCTRL
		end


	is_left_shift:BOOLEAN
			-- `Current' represent the physical left shift key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LSHIFT
		end


	is_left_alt:BOOLEAN
			-- `Current' represent the physical left alt key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LALT
		end


	is_left_gui:BOOLEAN
			-- `Current' represent the physical left gui key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_LGUI
		end


	is_right_ctrl:BOOLEAN
			-- `Current' represent the physical right ctrl key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_RCTRL
		end


	is_right_shift:BOOLEAN
			-- `Current' represent the physical right shift key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_RSHIFT
		end


	is_right_alt:BOOLEAN
			-- `Current' represent the physical right alt key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_RALT
		end


	is_right_gui:BOOLEAN
			-- `Current' represent the physical right gui key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_RGUI
		end


	is_mode:BOOLEAN
			-- `Current' represent the physical mode key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_MODE
		end


	is_audio_next:BOOLEAN
			-- `Current' represent the physical audio next key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AUDIONEXT
		end


	is_audio_prev:BOOLEAN
			-- `Current' represent the physical audio prev key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AUDIOPREV
		end


	is_audio_stop:BOOLEAN
			-- `Current' represent the physical audio stop key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AUDIOSTOP
		end


	is_audio_play:BOOLEAN
			-- `Current' represent the physical audio play key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AUDIOPLAY
		end


	is_audio_mute:BOOLEAN
			-- `Current' represent the physical audio mute key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AUDIOMUTE
		end


	is_media_select:BOOLEAN
			-- `Current' represent the physical media select key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_MEDIASELECT
		end


	is_www:BOOLEAN
			-- `Current' represent the physical www key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_WWW
		end


	is_mail:BOOLEAN
			-- `Current' represent the physical mail key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_MAIL
		end


	is_calculator:BOOLEAN
			-- `Current' represent the physical calculator key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_CALCULATOR
		end


	is_computer:BOOLEAN
			-- `Current' represent the physical computer key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_COMPUTER
		end


	is_application_control_search:BOOLEAN
			-- `Current' represent the physical search key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AC_SEARCH
		end


	is_application_control_home:BOOLEAN
			-- `Current' represent the physical home key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AC_HOME
		end


	is_application_control_back:BOOLEAN
			-- `Current' represent the physical back key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AC_BACK
		end


	is_application_control_forward:BOOLEAN
			-- `Current' represent the physical forward key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AC_FORWARD
		end


	is_application_control_stop:BOOLEAN
			-- `Current' represent the physical stop key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AC_STOP
		end


	is_application_control_refresh:BOOLEAN
			-- `Current' represent the physical refresh key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AC_REFRESH
		end


	is_application_control_bookmarks:BOOLEAN
			-- `Current' represent the physical bookmarks key of the application_control keypad
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_AC_BOOKMARKS
		end


	is_brightness_down:BOOLEAN
			-- `Current' represent the physical brightness down key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_BRIGHTNESSDOWN
		end


	is_brightness_up:BOOLEAN
			-- `Current' represent the physical brightness up key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_BRIGHTNESSUP
		end


	is_display_switch:BOOLEAN
			-- `Current' represent the physical display switch key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_DISPLAYSWITCH
		end


	is_keyboard_illumination_toggle:BOOLEAN
			-- `Current' represent the physical keyboard illumination toggle key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KBDILLUMTOGGLE
		end


	is_keyboard_illumination_down:BOOLEAN
			-- `Current' represent the physical keyboard illumination down key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KBDILLUMDOWN
		end


	is_keyboard_illumination_up:BOOLEAN
			-- `Current' represent the physical keyboard illumination up key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_KBDILLUMUP
		end


	is_eject:BOOLEAN
			-- `Current' represent the physical eject key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_EJECT
		end


	is_sleep:BOOLEAN
			-- `Current' represent the physical sleep key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_SLEEP
		end


	is_app_1:BOOLEAN
			-- `Current' represent the physical app 1 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_APP1
		end


	is_app_2:BOOLEAN
			-- `Current' represent the physical app 2 key
		do
			Result := physical_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_APP2
		end




end
