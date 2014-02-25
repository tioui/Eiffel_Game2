note
	description: "Controler for the event. It is important to call poll_event or wait_event regularly if you want events to be launch."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.2.1.1"

class
	GAME_EVENTS_CONTROLLER

inherit
	DISPOSABLE
		redefine
			default_create
		end
	GAME_SDL_CONSTANTS
		redefine
			default_create
		end

create {GAME_SDL_CONTROLLER}
	default_create

feature {NONE} -- Initialization

	default_create
		do
			event_ptr:=event_ptr.memory_calloc (1, C_sizeof_sdl_event)
			create on_iteration
			create on_quit_signal
			create on_dollar_gesture
			create on_window_event
			create on_key_down_event
			create on_key_up_event
			create on_text_editing_event
			create on_text_input_event
			create on_mouse_motion_event
			create on_mouse_button_down_event
			create on_mouse_button_up_event
			create on_mouse_wheel_event
		end



feature -- Access

	poll_event
			-- Execute an event validation. If no event is pending, do nothing.
		local
			l_is_event:INTEGER
		do
			if not on_iteration.is_empty then
				if attached game_library as la_game_library then
					on_iteration.call ([la_game_library.ticks])
				else
					on_iteration.call ([(0).as_natural_32])
				end
			end
			from l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(event_ptr)
			until l_is_event=0
			loop
				decode_event
				l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(event_ptr)
			end
		end

	on_quit_signal: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When the application receive a quit signal.

	on_iteration: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Called at each game loop

	on_dollar_gesture: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_device_id:NATURAL_64;
												gesture_id:INTEGER_64;number_of_fingers:NATURAL_32;
												x,y,error:REAL_32]]

	on_window_event: ACTION_SEQUENCE[TUPLE[timestamp,window_id:NATURAL_32;event_type:NATURAL_8;data1,data2:INTEGER_32]]

	on_key_down_event: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;key_state,repeat:NATURAL_8;
												scancode,keycode:INTEGER_32;modifier:NATURAL_16]]

	on_key_up_event: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;key_state,repeat:NATURAL_8;
												scancode,keycode:INTEGER_32;modifier:NATURAL_16]]

	on_text_editing_event: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;text:STRING_32;
												start,lenght:INTEGER_32]]

	on_text_input_event: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;text:STRING_32]]

	on_mouse_motion_event: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,which, state:NATURAL_32;
													x,y,x_relative,y_relative:INTEGER_32]]

	on_mouse_button_down_event: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,which:NATURAL_32;
													button, state,clicks: NATURAL_8;x,y:INTEGER_32]]

	on_mouse_button_up_event: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,which:NATURAL_32;
													button, state,clicks: NATURAL_8;x,y:INTEGER_32]]

	on_mouse_wheel_event: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,which:NATURAL_32;x,y:INTEGER_32]]

feature {GAME_SDL_CONTROLLER}

	set_game_library(a_game_library:GAME_SDL_CONTROLLER)
		do
			game_library := a_game_library
		end

feature {NONE} -- Implementation

	decode_event
		-- Analyse the event and launch the appropriate action.
		-- For optimisation purpose, this routine is quite long.
	local
		l_event_type:NATURAL_32
	do
		l_event_type:={GAME_SDL_EXTERNAL}.get_event_struct_type(event_ptr)
		if l_event_type=Sdl_quit and not on_quit_signal.is_empty then
			on_quit_signal.call ([{GAME_SDL_EXTERNAL}.get_quit_event_struct_timestamp(event_ptr)])
		elseif l_event_type = Sdl_dollargesture and not on_dollar_gesture.is_empty then
			on_dollar_gesture.call ([
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_touch_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_gesture_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_num_fingers(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_y(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_error(event_ptr)
										])
		elseif l_event_type = sdl_windowevent and then not on_window_event.is_empty then
			on_window_event.call ([
										{GAME_SDL_EXTERNAL}.get_window_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_event(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_data1(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_data2(event_ptr)
									])
		elseif l_event_type = sdl_keydown and then not on_key_down_event.is_empty then
			on_key_down_event.call ([
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_state(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_repeat(event_ptr),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_sym({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_mod({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr))
									])
		elseif l_event_type = sdl_keyup and then not on_key_up_event.is_empty then
			on_key_up_event.call ([
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_state(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_repeat(event_ptr),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_sym({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_mod({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr))
									])
		elseif l_event_type = sdl_textediting and then not on_text_editing_event.is_empty then
			on_text_editing_event.call ([
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_window_id(event_ptr),
										pointer_utf8_to_string_32({GAME_SDL_EXTERNAL}.get_text_editing_event_struct_text(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_start(event_ptr),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_length(event_ptr)
									])
		elseif l_event_type = sdl_textinput and then not on_text_input_event.is_empty then
			on_text_input_event.call ([
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_window_id(event_ptr),
										pointer_utf8_to_string_32({GAME_SDL_EXTERNAL}.get_text_editing_event_struct_text(event_ptr))
									])
		elseif l_event_type = sdl_mousemotion and then not on_mouse_motion_event.is_empty then
			on_mouse_motion_event.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_state(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_y(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_xrel(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_yrel(event_ptr)
									])
		elseif l_event_type = sdl_mousebuttondown and then not on_mouse_button_down_event.is_empty then
			on_mouse_button_down_event.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_state(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_clicks(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(event_ptr)
									])
		elseif l_event_type = sdl_mousebuttonup and then not on_mouse_button_up_event.is_empty then
			on_mouse_button_up_event.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_state(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_clicks(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(event_ptr)
									])
		elseif l_event_type = sdl_mousewheel and then not on_mouse_wheel_event.is_empty then
			on_mouse_wheel_event.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_y(event_ptr)
									])
		end
	end

	pointer_utf8_to_string_32(l_utf8_pointer:POINTER):STRING_32
		local
			l_to_covert:STRING_8
			l_utf_converter:UTF_CONVERTER
		do
			create l_utf_converter
			create l_to_covert.make_from_c (l_utf8_pointer)
			Result := l_utf_converter.utf_8_string_8_to_escaped_string_32 (l_to_covert)
		end

	dispose
		do
			event_ptr.memory_free
		end

	event_ptr:POINTER

	game_library: detachable GAME_SDL_CONTROLLER


end
