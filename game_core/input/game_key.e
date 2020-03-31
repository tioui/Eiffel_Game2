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

	GAME_VIRTUAL_KEY
		undefine
			out
		end

	GAME_PHYSICAL_KEY
		rename
			is_unknown as is_physical_unknown,
			is_a as is_physical_a,
			is_b as is_physical_b,
			is_c as is_physical_c,
			is_d as is_physical_d,
			is_e as is_physical_e,
			is_f as is_physical_f,
			is_g as is_physical_g,
			is_h as is_physical_h,
			is_i as is_physical_i,
			is_j as is_physical_j,
			is_k as is_physical_k,
			is_l as is_physical_l,
			is_m as is_physical_m,
			is_n as is_physical_n,
			is_o as is_physical_o,
			is_p as is_physical_p,
			is_q as is_physical_q,
			is_r as is_physical_r,
			is_s as is_physical_s,
			is_t as is_physical_t,
			is_u as is_physical_u,
			is_v as is_physical_v,
			is_w as is_physical_w,
			is_x as is_physical_x,
			is_y as is_physical_y,
			is_z as is_physical_z,
			is_1 as is_physical_1,
			is_2 as is_physical_2,
			is_3 as is_physical_3,
			is_4 as is_physical_4,
			is_5 as is_physical_5,
			is_6 as is_physical_6,
			is_7 as is_physical_7,
			is_8 as is_physical_8,
			is_9 as is_physical_9,
			is_0 as is_physical_0,
			is_return as is_physical_return,
			is_escape as is_physical_escape,
			is_backspace as is_physical_backspace,
			is_tab as is_physical_tab,
			is_space as is_physical_space,
			is_minus as is_physical_minus,
			is_equals as is_physical_equals,
			is_left_bracket as is_physical_left_bracket,
			is_right_bracket as is_physical_right_bracket,
			is_backslash as is_physical_backslash,
			is_iso_hash as is_physical_iso_hash,
			is_semicolon as is_physical_semicolon,
			is_apostrophe as is_physical_apostrophe,
			is_grave_accent as is_physical_grave_accent,
			is_comma as is_physical_comma,
			is_period as is_physical_period,
			is_slash as is_physical_slash,
			is_caps_lock as is_physical_caps_lock,
			is_f1 as is_physical_f1,
			is_f2 as is_physical_f2,
			is_f3 as is_physical_f3,
			is_f4 as is_physical_f4,
			is_f5 as is_physical_f5,
			is_f6 as is_physical_f6,
			is_f7 as is_physical_f7,
			is_f8 as is_physical_f8,
			is_f9 as is_physical_f9,
			is_f10 as is_physical_f10,
			is_f11 as is_physical_f11,
			is_f12 as is_physical_f12,
			is_print_screen as is_physical_print_screen,
			is_scroll_lock as is_physical_scroll_lock,
			is_pause as is_physical_pause,
			is_insert as is_physical_insert,
			is_home as is_physical_home,
			is_page_up as is_physical_page_up,
			is_delete as is_physical_delete,
			is_end as is_physical_end,
			is_page_down as is_physical_page_down,
			is_right as is_physical_right,
			is_left as is_physical_left,
			is_down as is_physical_down,
			is_up as is_physical_up,
			is_num_lock_clear as is_physical_num_lock_clear,
			is_keypad_divide as is_physical_keypad_divide,
			is_keypad_multiply as is_physical_keypad_multiply,
			is_keypad_minus as is_physical_keypad_minus,
			is_keypad_plus as is_physical_keypad_plus,
			is_keypad_enter as is_physical_keypad_enter,
			is_keypad_1 as is_physical_keypad_1,
			is_keypad_2 as is_physical_keypad_2,
			is_keypad_3 as is_physical_keypad_3,
			is_keypad_4 as is_physical_keypad_4,
			is_keypad_5 as is_physical_keypad_5,
			is_keypad_6 as is_physical_keypad_6,
			is_keypad_7 as is_physical_keypad_7,
			is_keypad_8 as is_physical_keypad_8,
			is_keypad_9 as is_physical_keypad_9,
			is_keypad_0 as is_physical_keypad_0,
			is_keypad_period as is_physical_keypad_period,
			is_iso_backslash as is_physical_iso_backslash,
			is_application as is_physical_application,
			is_power as is_physical_power,
			is_keypad_equals as is_physical_keypad_equals,
			is_f13 as is_physical_f13,
			is_f14 as is_physical_f14,
			is_f15 as is_physical_f15,
			is_f16 as is_physical_f16,
			is_f17 as is_physical_f17,
			is_f18 as is_physical_f18,
			is_f19 as is_physical_f19,
			is_f20 as is_physical_f20,
			is_f21 as is_physical_f21,
			is_f22 as is_physical_f22,
			is_f23 as is_physical_f23,
			is_f24 as is_physical_f24,
			is_execute as is_physical_execute,
			is_help as is_physical_help,
			is_menu as is_physical_menu,
			is_select as is_physical_select,
			is_stop as is_physical_stop,
			is_again as is_physical_again,
			is_undo as is_physical_undo,
			is_cut as is_physical_cut,
			is_copy as is_physical_copy,
			is_paste as is_physical_paste,
			is_find as is_physical_find,
			is_mute as is_physical_mute,
			is_volume_up as is_physical_volume_up,
			is_volume_down as is_physical_volume_down,
			is_keypad_comma as is_physical_keypad_comma,
			is_as400_keypad_equals as is_physical_as400_keypad_equals,
			is_international_1 as is_physical_international_1,
			is_international_2 as is_physical_international_2,
			is_international_3 as is_physical_international_3,
			is_international_4 as is_physical_international_4,
			is_international_5 as is_physical_international_5,
			is_internationa_6 as is_physical_internationa_6,
			is_international_7 as is_physical_international_7,
			is_international_8 as is_physical_international_8,
			is_international_9 as is_physical_international_9,
			is_lang_1 as is_physical_lang_1,
			is_lang_2 as is_physical_lang_2,
			is_lang_3 as is_physical_lang_3,
			is_lang_4 as is_physical_lang_4,
			is_lang_5 as is_physical_lang_5,
			is_lang_6 as is_physical_lang_6,
			is_lang_7 as is_physical_lang_7,
			is_lang_8 as is_physical_lang_8,
			is_lang_9 as is_physical_lang_9,
			is_erase_eaze_alternate_erase as is_physical_erase_eaze_alternate_erase,
			is_sysreq as is_physical_sysreq,
			is_cancel as is_physical_cancel,
			is_clear as is_physical_clear,
			is_prior as is_physical_prior,
			is_return_2 as is_physical_return_2,
			is_separator as is_physical_separator,
			is_out as is_physical_out,
			is_oper as is_physical_oper,
			is_clear_again as is_physical_clear_again,
			is_crsel as is_physical_crsel,
			is_exsel as is_physical_exsel,
			is_keypad_00 as is_physical_keypad_00,
			is_keypad_000 as is_physical_keypad_000,
			is_thousands_separator as is_physical_thousands_separator,
			is_decimal_separator as is_physical_decimal_separator,
			is_currency_unit as is_physical_currency_unit,
			is_currency_sub_unit as is_physical_currency_sub_unit,
			is_keypad_left_parenthesis as is_physical_keypad_left_parenthesis,
			is_keypad_right_parenthesis as is_physical_keypad_right_parenthesis,
			is_keypad_left_brace as is_physical_keypad_left_brace,
			is_keypad_rightbrace as is_physical_keypad_rightbrace,
			is_keypad_tab as is_physical_keypad_tab,
			is_keypad_backspace as is_physical_keypad_backspace,
			is_keypad_a as is_physical_keypad_a,
			is_keypad_b as is_physical_keypad_b,
			is_keypad_c as is_physical_keypad_c,
			is_keypad_d as is_physical_keypad_d,
			is_keypad_e as is_physical_keypad_e,
			is_keypad_f as is_physical_keypad_f,
			is_keypad_xor as is_physical_keypad_xor,
			is_keypad_power as is_physical_keypad_power,
			is_keypad_percent as is_physical_keypad_percent,
			is_keypad_less as is_physical_keypad_less,
			is_keypad_greater as is_physical_keypad_greater,
			is_keypad_ampersand as is_physical_keypad_ampersand,
			is_keypad_double_ampersand as is_physical_keypad_double_ampersand,
			is_keypad_vertical_bar as is_physical_keypad_vertical_bar,
			is_keypad_double_vertical_bar as is_physical_keypad_double_vertical_bar,
			is_keypad_colon as is_physical_keypad_colon,
			is_keypad_hash as is_physical_keypad_hash,
			is_keypad_space as is_physical_keypad_space,
			is_keypad_at as is_physical_keypad_at,
			is_keypad_exclamation_mark as is_physical_keypad_exclamation_mark,
			is_keypad_mem_store as is_physical_keypad_mem_store,
			is_keypad_mem_recall as is_physical_keypad_mem_recall,
			is_keypad_mem_clear as is_physical_keypad_mem_clear,
			is_keypad_mem_add as is_physical_keypad_mem_add,
			is_keypad_mem_subtract as is_physical_keypad_mem_subtract,
			is_keypad_mem_multiply as is_physical_keypad_mem_multiply,
			is_keypad_mem_divide as is_physical_keypad_mem_divide,
			is_keypad_plus_minus as is_physical_keypad_plus_minus,
			is_keypad_clear as is_physical_keypad_clear,
			is_keypad_clear_entry as is_physical_keypad_clear_entry,
			is_keypad_binary as is_physical_keypad_binary,
			is_keypad_octal as is_physical_keypad_octal,
			is_keypad_decimal as is_physical_keypad_decimal,
			is_keypad_hexadecimal as is_physical_keypad_hexadecimal,
			is_left_ctrl as is_physical_left_ctrl,
			is_left_shift as is_physical_left_shift,
			is_left_alt as is_physical_left_alt,
			is_left_gui as is_physical_left_gui,
			is_right_ctrl as is_physical_right_ctrl,
			is_right_shift as is_physical_right_shift,
			is_right_alt as is_physical_right_alt,
			is_right_gui as is_physical_right_gui,
			is_mode as is_physical_mode,
			is_audio_next as is_physical_audio_next,
			is_audio_prev as is_physical_audio_prev,
			is_audio_stop as is_physical_audio_stop,
			is_audio_play as is_physical_audio_play,
			is_audio_mute as is_physical_audio_mute,
			is_media_select as is_physical_media_select,
			is_www as is_physical_www,
			is_mail as is_physical_mail,
			is_calculator as is_physical_calculator,
			is_computer as is_physical_computer,
			is_application_control_search as is_physical_application_control_search,
			is_application_control_home as is_physical_application_control_home,
			is_application_control_back as is_physical_application_control_back,
			is_application_control_forward as is_physical_application_control_forward,
			is_application_control_stop as is_physical_application_control_stop,
			is_application_control_refresh as is_physical_application_control_refresh,
			is_application_control_bookmarks as is_physical_application_control_bookmarks,
			is_brightness_down as is_physical_brightness_down,
			is_brightness_up as is_physical_brightness_up,
			is_display_switch as is_physical_display_switch,
			is_keyboard_illumination_toggle as is_physical_keyboard_illumination_toggle,
			is_keyboard_illumination_down as is_physical_keyboard_illumination_down,
			is_keyboard_illumination_up as is_physical_keyboard_illumination_up,
			is_eject as is_physical_eject,
			is_sleep as is_physical_sleep,
			is_app_1 as is_physical_app_1,
			is_app_2 as is_physical_app_2
		undefine
			out
		end

create
	make_from_physical_code,
	make_from_virtual_code,
	make_from_name

feature {NONE} -- Initialization

	make_from_physical_code(a_physical_code:INTEGER_32)
			-- Initialize `Current' using hardware
			-- dependant `a_physical_code' value (scancode).
		do
			physical_code := a_physical_code
			virtual_code := {GAME_SDL_VIRTUAL_KEY}.SDL_GetKeyFromScancode(physical_code)
		end

	make_from_virtual_code(a_virtual_code:INTEGER_32)
			-- Initialize `Current' using layout aware
			-- `a_virtual_code' value (keycode).
		do
			virtual_code := a_virtual_code
			physical_code := {GAME_SDL_SCANCODE}.SDL_GetScancodeFromKey(virtual_code)
		end

	make_from_name(a_name:READABLE_STRING_GENERAL)
			-- Initialize `Current' using a text representation.
		local
			l_code:INTEGER_32
			l_utf_converter:UTF_CONVERTER
			l_text_c:C_STRING
		do
			create l_utf_converter
			create l_text_c.make(l_utf_converter.string_32_to_utf_8_string_8 (a_name.to_string_32))
			l_code := {GAME_SDL_SCANCODE}.SDL_GetScancodeFromName(l_text_c.item)
			if l_code = {GAME_SDL_SCANCODE}.SDL_SCANCODE_UNKNOWN  then
				l_code := {GAME_SDL_VIRTUAL_KEY}.SDL_GetKeyFromName(l_text_c.item)
				make_from_virtual_code(l_code)
			else
				make_from_physical_code(l_code)
			end
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
			Result := {UTF_CONVERTER}.utf_8_string_8_to_escaped_string_32 (out)
		end

	out:STRING
			-- <Precursor>
			-- Note that this value is in UTF-8.
			-- Use `unicode_out' to get the UTF-8 representatin
		local
			l_result_ptr:POINTER
			l_result_c:C_STRING
		do
			l_result_ptr:={GAME_SDL_VIRTUAL_KEY}.SDL_GetKeyName(virtual_code)
			if not l_result_ptr.is_default_pointer then
				Result:=(create {C_STRING}.make_by_pointer (l_result_ptr)).string
			else
				Result:=""
			end
	 	end

end
