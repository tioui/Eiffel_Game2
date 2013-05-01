note
	description: "Keyboard Events. To retreive the state of the keyboard. Must be return by an object of GAME_EVENT_CONTROLLER type."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_KEYBOARD_EVENT

inherit
	ANY
		redefine
			out
		end

create {GAME_EVENT_CONTROLLER}
	make

feature {NONE} -- Initialization

	make(a_type,a_state,a_scancode:NATURAL_8;a_unicode:NATURAL_16;a_sym,a_mod:INTEGER)
			-- Initialization for `Current'.
		do
			type:=a_type
			state:=a_state
			scancode:=a_scancode
			unicode:=a_unicode
			sym:=a_sym
			mod:=a_mod
		end

feature {NONE} -- Implementation

	type:NATURAL_8

	state:NATURAL_8

	sym:INTEGER

	mod:INTEGER

feature -- Access

	scancode:NATURAL_8 -- Hardware dependent scancode (not compatible between system)

	unicode:NATURAL_16 -- The translated unicode character representing the button pressed or released.

	character:CHARACTER_8
			-- Return the caracter representation of the key pressed.
		do
			result := unicode.to_character_32.to_character_8
		end

	out:STRING
		local
			l_result_ptr:POINTER
			l_result_c:C_STRING
		do
			l_result_ptr:={GAME_SDL_EXTERNAL}.SDL_GetKeyName(sym)
			if not l_result_ptr.is_default_pointer then
				create l_result_c.make_by_pointer (l_result_ptr)
				Result:=l_result_c.string
			else
				Result:=""
			end

		end

feature -- Type and State
	is_key_down:BOOLEAN
		-- Return true if the button has been pressed
		-- Equivalent to the is_pressed for all normals keys.
		-- The difference is for the Caps Lock and Num Lock keys.
		-- For those keys, the is_key_down is activate when the
		-- del turn on.
	do
		Result:= type={GAME_SDL_EXTERNAL}.SDL_KEYDOWN
	end

	is_key_up:BOOLEAN
		-- Return true if the button has been released
		-- Equivalent to the is_released for all normals keys.
		-- The difference is for the Caps Lock and Num Lock keys.
		-- For those keys, the is_key_up is activate when the
		-- del turn off.
	do
		Result:= type={GAME_SDL_EXTERNAL}.SDL_KEYUP
	end

	is_pressed:BOOLEAN
		-- Return true if the button has been pressed
		-- Equivalent to the is_key_down for all normals keys.
		-- The difference is for the Caps Lock and Num Lock keys.
		-- For those keys, the is_pressed is activate when the
		-- button is pressed (same as other buttons).
	do
		Result:= state={GAME_SDL_EXTERNAL}.SDL_PRESSED
	end

	is_released:BOOLEAN
		-- Return true if the button has been released
		-- Equivalent to the is_key_up for all normals keys.
		-- The difference is for the Caps Lock and Num Lock keys.
		-- For those keys, the is_released is activate when the
		-- button is released (same as other buttons).
	do
		Result:= state={GAME_SDL_EXTERNAL}.SDL_RELEASED
	end

feature -- Modifier

	is_no_modifier:BOOLEAN
		-- Return true if no modifier is activate.
	do
		Result:= mod={GAME_SDL_EXTERNAL}.KMOD_NONE
	end

	is_left_shift_modifier:BOOLEAN
		-- Return true if the left shift is pressed.
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_LSHIFT)/=0
	end

	is_right_shift_modifier:BOOLEAN
		-- Return true if the right shift is pressed.
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_RSHIFT)/=0
	end

	is_shift_modifier:BOOLEAN
		-- Return true if a shift button is pressed.
	do
		Result:= is_left_shift_modifier or is_right_shift_modifier
	end

	is_left_ctrl_modifier:BOOLEAN
		-- Return true if the left ctrl key is pressed.
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_LCTRL)/=0
	end

	is_right_ctrl_modifier:BOOLEAN
		-- Return true if the right ctrl key is pressed.
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_RCTRL)/=0
	end

	is_ctrl_modifier:BOOLEAN
		-- Return true if a ctrl button is pressed.
	do
		Result:= is_left_ctrl_modifier or is_right_ctrl_modifier
	end

	is_left_alt_modifier:BOOLEAN
		-- Return true if the left alt key is pressed.
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_LALT)/=0
	end

	is_right_alt_modifier:BOOLEAN
		-- Return true if the right alt key is pressed.
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_RALT)/=0
	end

	is_alt_modifier:BOOLEAN
		-- Return true if an alt button is pressed.
	do
		Result:=is_left_alt_modifier or is_right_alt_modifier
	end

	is_left_meta_modifier:BOOLEAN
		-- Return true if the left meta (windows or command) key is pressed.
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_LMETA)/=0
	end

	is_right_meta_modifier:BOOLEAN
		-- Return true if the right meta (windows or command) key is pressed.
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_RMETA)/=0
	end

	is_meta_modifier:BOOLEAN
		-- Return true a meta (windows or command) key is pressed.
	do
		Result:=is_left_meta_modifier or is_right_meta_modifier
	end

	is_numlock_modifier:BOOLEAN
		-- Return true if the numlock is activate (the del is on).
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_NUM)/=0
	end

	is_capslock_modifier:BOOLEAN
		-- Return true if the numlock is activate (the del is on).
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_CAPS)/=0
	end

	is_mode_modifier:BOOLEAN
		-- Return true if the mode is activate.
	do
		Result:= mod.bit_and ({GAME_SDL_EXTERNAL}.KMOD_MODE)/=0
	end

feature -- Keys

	is_BACKSPACE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_BACKSPACE
	end

	is_TAB_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_TAB
	end

	is_CLEAR_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_CLEAR
	end

	is_RETURN_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_RETURN
	end

	is_PAUSE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_PAUSE
	end

	is_ESCAPE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_ESCAPE
	end

	is_SPACE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_SPACE
	end

	is_EXCLAIM_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_EXCLAIM
	end

	is_QUOTEDBL_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_QUOTEDBL
	end

	is_HASH_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_HASH
	end

	is_DOLLAR_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_DOLLAR
	end

	is_AMPERSAND_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_AMPERSAND
	end

	is_QUOTE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_QUOTE
	end

	is_LEFTPAREN_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_LEFTPAREN
	end

	is_RIGHTPAREN_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_RIGHTPAREN
	end

	is_ASTERISK_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_ASTERISK
	end

	is_PLUS_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_PLUS
	end

	is_COMMA_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_COMMA
	end

	is_MINUS_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_MINUS
	end

	is_PERIOD_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_PERIOD
	end

	is_SLASH_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_SLASH
	end

	is_0_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_0
	end

	is_1_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_1
	end

	is_2_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_2
	end

	is_3_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_3
	end

	is_4_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_4
	end

	is_5_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_5
	end

	is_6_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_6
	end

	is_7_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_7
	end

	is_8_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_8
	end

	is_9_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_9
	end

	is_COLON_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_COLON
	end

	is_SEMICOLON_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_SEMICOLON
	end

	is_LESS_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_LESS
	end

	is_EQUALS_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_EQUALS
	end

	is_GREATER_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_GREATER
	end

	is_QUESTION_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_QUESTION
	end

	is_AT_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_AT
	end

	is_LEFTBRACKET_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_LEFTBRACKET
	end

	is_BACKSLASH_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_BACKSLASH
	end

	is_RIGHTBRACKET_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_RIGHTBRACKET
	end

	is_CARET_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_CARET
	end

	is_UNDERSCORE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_UNDERSCORE
	end

	is_BACKQUOTE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_BACKQUOTE
	end

	is_a_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_a
	end

	is_b_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_b
	end

	is_c_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_c
	end

	is_d_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_d
	end

	is_e_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_e
	end

	is_f_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_f
	end

	is_g_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_g
	end

	is_h_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_h
	end

	is_i_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_i
	end

	is_j_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_j
	end

	is_k_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_k
	end

	is_l_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_l
	end

	is_m_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_m
	end

	is_n_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_n
	end

	is_o_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_o
	end

	is_p_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_p
	end

	is_q_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_q
	end

	is_r_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_r
	end

	is_s_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_s
	end

	is_t_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_t
	end

	is_u_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_u
	end

	is_v_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_v
	end

	is_w_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_w
	end

	is_x_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_x
	end

	is_y_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_y
	end

	is_z_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_z
	end

	is_DELETE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_DELETE
	end

	is_WORLD_0_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_0
	end

	is_WORLD_1_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_1
	end

	is_WORLD_2_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_2
	end

	is_WORLD_3_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_3
	end

	is_WORLD_4_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_4
	end

	is_WORLD_5_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_5
	end

	is_WORLD_6_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_6
	end

	is_WORLD_7_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_7
	end

	is_WORLD_8_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_8
	end

	is_WORLD_9_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_9
	end

	is_WORLD_10_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_10
	end

	is_WORLD_11_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_11
	end

	is_WORLD_12_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_12
	end

	is_WORLD_13_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_13
	end

	is_WORLD_14_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_14
	end

	is_WORLD_15_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_15
	end

	is_WORLD_16_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_16
	end

	is_WORLD_17_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_17
	end

	is_WORLD_18_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_18
	end

	is_WORLD_19_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_19
	end

	is_WORLD_20_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_20
	end

	is_WORLD_21_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_21
	end

	is_WORLD_22_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_22
	end

	is_WORLD_23_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_23
	end

	is_WORLD_24_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_24
	end

	is_WORLD_25_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_25
	end

	is_WORLD_26_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_26
	end

	is_WORLD_27_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_27
	end

	is_WORLD_28_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_28
	end

	is_WORLD_29_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_29
	end

	is_WORLD_30_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_30
	end

	is_WORLD_31_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_31
	end

	is_WORLD_32_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_32
	end

	is_WORLD_33_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_33
	end

	is_WORLD_34_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_34
	end

	is_WORLD_35_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_35
	end

	is_WORLD_36_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_36
	end

	is_WORLD_37_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_37
	end

	is_WORLD_38_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_38
	end

	is_WORLD_39_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_39
	end

	is_WORLD_40_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_40
	end

	is_WORLD_41_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_41
	end

	is_WORLD_42_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_42
	end

	is_WORLD_43_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_43
	end

	is_WORLD_44_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_44
	end

	is_WORLD_45_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_45
	end

	is_WORLD_46_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_46
	end

	is_WORLD_47_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_47
	end

	is_WORLD_48_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_48
	end

	is_WORLD_49_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_49
	end

	is_WORLD_50_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_50
	end

	is_WORLD_51_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_51
	end

	is_WORLD_52_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_52
	end

	is_WORLD_53_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_53
	end

	is_WORLD_54_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_54
	end

	is_WORLD_55_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_55
	end

	is_WORLD_56_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_56
	end

	is_WORLD_57_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_57
	end

	is_WORLD_58_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_58
	end

	is_WORLD_59_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_59
	end

	is_WORLD_60_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_60
	end

	is_WORLD_61_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_61
	end

	is_WORLD_62_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_62
	end

	is_WORLD_63_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_63
	end

	is_WORLD_64_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_64
	end

	is_WORLD_65_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_65
	end

	is_WORLD_66_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_66
	end

	is_WORLD_67_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_67
	end

	is_WORLD_68_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_68
	end

	is_WORLD_69_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_69
	end

	is_WORLD_70_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_70
	end

	is_WORLD_71_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_71
	end

	is_WORLD_72_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_72
	end

	is_WORLD_73_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_73
	end

	is_WORLD_74_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_74
	end

	is_WORLD_75_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_75
	end

	is_WORLD_76_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_76
	end

	is_WORLD_77_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_77
	end

	is_WORLD_78_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_78
	end

	is_WORLD_79_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_79
	end

	is_WORLD_80_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_80
	end

	is_WORLD_81_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_81
	end

	is_WORLD_82_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_82
	end

	is_WORLD_83_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_83
	end

	is_WORLD_84_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_84
	end

	is_WORLD_85_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_85
	end

	is_WORLD_86_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_86
	end

	is_WORLD_87_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_87
	end

	is_WORLD_88_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_88
	end

	is_WORLD_89_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_89
	end

	is_WORLD_90_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_90
	end

	is_WORLD_91_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_91
	end

	is_WORLD_92_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_92
	end

	is_WORLD_93_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_93
	end

	is_WORLD_94_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_94
	end

	is_WORLD_95_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_WORLD_95
	end

	is_KP0_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP0
	end

	is_KP1_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP1
	end

	is_KP2_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP2
	end

	is_KP3_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP3
	end

	is_KP4_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP4
	end

	is_KP5_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP5
	end

	is_KP6_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP6
	end

	is_KP7_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP7
	end

	is_KP8_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP8
	end

	is_KP9_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP9
	end

	is_KP_PERIOD_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP_PERIOD
	end

	is_KP_DIVIDE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP_DIVIDE
	end

	is_KP_MULTIPLY_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP_MULTIPLY
	end

	is_KP_MINUS_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP_MINUS
	end

	is_KP_PLUS_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP_PLUS
	end

	is_KP_ENTER_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP_ENTER
	end

	is_KP_EQUALS_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_KP_EQUALS
	end

	is_UP_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_UP
	end

	is_DOWN_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_DOWN
	end

	is_RIGHT_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_RIGHT
	end

	is_LEFT_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_LEFT
	end

	is_INSERT_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_INSERT
	end

	is_HOME_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_HOME
	end

	is_END_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_END
	end

	is_PAGEUP_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_PAGEUP
	end

	is_PAGEDOWN_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_PAGEDOWN
	end

	is_F1_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F1
	end

	is_F2_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F2
	end

	is_F3_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F3
	end

	is_F4_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F4
	end

	is_F5_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F5
	end

	is_F6_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F6
	end

	is_F7_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F7
	end

	is_F8_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F8
	end

	is_F9_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F9
	end

	is_F10_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F10
	end

	is_F11_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F11
	end

	is_F12_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F12
	end

	is_F13_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F13
	end

	is_F14_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F14
	end

	is_F15_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_F15
	end

	is_NUMLOCK_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_NUMLOCK
	end

	is_CAPSLOCK_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_CAPSLOCK
	end

	is_SCROLLOCK_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_SCROLLOCK
	end

	is_RSHIFT_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_RSHIFT
	end

	is_LSHIFT_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_LSHIFT
	end

	is_RCTRL_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_RCTRL
	end

	is_LCTRL_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_LCTRL
	end

	is_RALT_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_RALT
	end

	is_LALT_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_LALT
	end

	is_RMETA_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_RMETA
	end

	is_LMETA_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_LMETA
	end

	is_LSUPER_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_LSUPER
	end

	is_RSUPER_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_RSUPER
	end

	is_MODE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_MODE
	end

	is_COMPOSE_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_COMPOSE
	end

	is_HELP_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_HELP
	end

	is_PRINT_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_PRINT
	end

	is_SYSREQ_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_SYSREQ
	end

	is_BREAK_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_BREAK
	end

	is_MENU_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_MENU
	end

	is_POWER_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_POWER
	end

	is_EURO_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_EURO
	end

	is_UNDO_key:BOOLEAN
	do
		Result:=sym={GAME_SDL_EXTERNAL}.SDLK_UNDO
	end


end
