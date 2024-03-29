note
	description: "Every events that can happend on a {GAME_WINDOW}"
	author: "Louis Marchand"
	date: "Wed, 01 Apr 2015 19:04:20 +0000"
	revision: "2.0"

deferred class
	GAME_WINDOW_EVENTS

inherit
	GAME_EVENTS
		redefine
			make
		end

feature {NONE} -- Initialisation

	make
			-- Initialization of `Current'
		do
			window_events_callback := agent (a_timestamp,a_window_id:NATURAL_32;a_event_type:NATURAL_8;a_data1,a_data2:INTEGER_32) do
											window_events_dispatcher(a_timestamp, a_window_id, a_event_type, a_data1, a_data2)
										end
			key_pressed_events_callback := agent (a_timestamp,a_window_id:NATURAL_32;a_repeat:NATURAL_8;
													a_scancode,a_keycode:NATURAL_32;a_modifier:NATURAL_16) do
											key_pressed_events_dispatcher(a_timestamp, a_window_id, a_repeat, a_scancode, a_keycode, a_modifier)
										end
			key_released_events_callback := agent (a_timestamp,a_window_id:NATURAL_32;a_repeat:NATURAL_8;
													a_scancode,a_keycode:NATURAL_32;a_modifier:NATURAL_16) do
											key_released_events_dispatcher(a_timestamp, a_window_id, a_repeat, a_scancode, a_keycode, a_modifier)
										end
			text_editing_events_callback := agent (a_timestamp,a_window_id:NATURAL_32;a_text:STRING_32;
													a_start,a_lenght:INTEGER_32) do
												text_editing_events_dispatcher(a_timestamp, a_window_id, a_text, a_start,a_lenght)
											end
			text_input_events_callback := agent (a_timestamp,a_window_id:NATURAL_32;a_text:STRING_32) do
												text_input_events_dispatcher(a_timestamp, a_window_id, a_text)
											end
			mouse_motion_events_callback := agent (a_timestamp,a_window_id, a_mouse_id, a_state:NATURAL_32;
													a_x,a_y,a_x_relative,a_y_relative:INTEGER_32) do
												mouse_motion_events_dispatcher(a_timestamp,a_window_id, a_mouse_id, a_state,
																				a_x,a_y,a_x_relative,a_y_relative)
											end
			mouse_button_pressed_events_callback := agent (a_timestamp,a_window_id, a_mouse_id:NATURAL_32;
														a_button,a_clicks: NATURAL_8; a_x,a_y:INTEGER_32) do
												mouse_button_pressed_events_dispatcher(a_timestamp,a_window_id, a_mouse_id,
																					a_button,a_clicks, a_x,a_y)
											end
			mouse_button_released_events_callback := agent (a_timestamp,a_window_id, a_mouse_id:NATURAL_32;
														a_button,a_clicks: NATURAL_8; a_x,a_y:INTEGER_32) do
												mouse_button_released_events_dispatcher(a_timestamp,a_window_id, a_mouse_id,
																					a_button,a_clicks, a_x,a_y)
											end
			mouse_wheel_move_events_callback := agent (a_timestamp,a_window_id,a_mouse_id:NATURAL_32;a_x,a_y:INTEGER_32) do
												mouse_wheel_move_events_dispatcher(a_timestamp,a_window_id,a_mouse_id,a_x,a_y)
											end
			Precursor{GAME_EVENTS}
		end
feature -- Access

	stop
			-- <Precursor>
		do
			is_running:=False
			events_controller.window_event_actions.prune_all (window_events_callback)
			events_controller.key_pressed_actions.prune_all (key_pressed_events_callback)
			events_controller.text_editing_actions.prune_all (text_editing_events_callback)
			events_controller.text_input_actions.prune_all (text_input_events_callback)
			events_controller.mouse_motion_actions.prune_all (mouse_motion_events_callback)
			events_controller.mouse_button_pressed_actions.prune_all (mouse_button_pressed_events_callback)
			events_controller.mouse_button_released_actions.prune_all (mouse_button_released_events_callback)
			events_controller.mouse_wheel_move_actions.prune_all (mouse_wheel_move_events_callback)
		end

	run
			-- <Precursor>
		do
			is_running:=True
			if
				attached show_actions_internal or
				attached hide_actions_internal or
				attached expose_actions_internal or
				attached move_actions_internal or
				attached resize_actions_internal or
				attached size_change_actions_internal or
				attached minimize_actions_internal or
				attached maximize_actions_internal or
				attached restore_actions_internal or
				attached mouse_enter_actions_internal or
				attached mouse_leave_actions_internal or
				attached keyboard_focus_gain_actions_internal or
				attached keyboard_focus_lost_actions_internal or
				attached close_request_actions_internal
			then
				events_controller.window_event_actions.extend (window_events_callback)
			end
			if attached key_pressed_actions_internal then
				events_controller.key_pressed_actions.extend (key_pressed_events_callback)
			end
			if attached key_released_actions_internal then
				events_controller.key_released_actions.extend (key_released_events_callback)
			end
			if attached text_editing_actions_internal then
				events_controller.text_editing_actions.extend (text_editing_events_callback)
			end
			if attached text_input_actions_internal then
				events_controller.text_input_actions.extend (text_input_events_callback)
			end
			if attached mouse_motion_actions_internal then
				events_controller.mouse_motion_actions.extend (mouse_motion_events_callback)
			end
			if attached mouse_button_pressed_actions_internal then
				events_controller.mouse_button_pressed_actions.extend (mouse_button_pressed_events_callback)
			end
			if attached mouse_button_released_actions_internal then
				events_controller.mouse_button_released_actions.extend (mouse_button_released_events_callback)
			end
			if attached mouse_wheel_move_actions_internal then
				events_controller.mouse_wheel_move_actions.extend (mouse_wheel_move_events_callback)
			end
		end

	clear
			-- <Precursor>
		local
			l_was_running:BOOLEAN
		do
			l_was_running := is_running
			if is_running then
				stop
			end
			show_actions_internal := Void
			hide_actions_internal := Void
			expose_actions_internal := Void
			move_actions_internal := Void
			resize_actions_internal := Void
			size_change_actions_internal := Void
			minimize_actions_internal := Void
			maximize_actions_internal := Void
			restore_actions_internal := Void
			mouse_enter_actions_internal := Void
			mouse_leave_actions_internal := Void
			keyboard_focus_gain_actions_internal := Void
			keyboard_focus_lost_actions_internal := Void
			close_request_actions_internal := Void
			key_pressed_actions_internal := Void
			key_released_actions_internal := Void
			text_editing_actions_internal := Void
			text_input_actions_internal := Void
			mouse_motion_actions_internal := Void
			mouse_button_pressed_actions_internal := Void
			mouse_button_released_actions_internal := Void
			mouse_wheel_move_actions_internal := Void
			if l_was_running then
				run
			end
		end

	show_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' is show.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached show_actions_internal as la_show_actions_internal then
				Result := la_show_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				show_actions_internal := Result
			end
		end

	hide_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' is hide.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached hide_actions_internal as la_hide_actions_internal then
				Result := la_hide_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				hide_actions_internal := Result
			end
		end

	expose_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' is exposed and should be redraw.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached expose_actions_internal as la_expose_actions_internal then
				Result := la_expose_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				expose_actions_internal := Result
			end
		end

	move_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; x, y:INTEGER_32]]
			-- When `Current' has been moved to (`x',`y').
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached move_actions_internal as la_move_actions_internal then
				Result := la_move_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				move_actions_internal := Result
			end
		end

	resize_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; width, height:INTEGER_32]]
			-- When `Current' has been resized by the user (external to the game library)
			-- to `width'x`height'. Always precceded by a `size_change_actions' events.
			-- Note: This event is not trigger by the {GAME_WINDOW}.`set_size' or {GAME_WINDOW}.`set_full_screen'
			-- Routines
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached resize_actions_internal as la_resize_actions_internal then
				Result := la_resize_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				resize_actions_internal := Result
			end
		end

	size_change_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' has been resized.
			-- Note: Trigger when a user resize the window (external to the game library) or when a
			-- call to the {GAME_WINDOW}.`set_size' or {GAME_WINDOW}.`set_full_screen' routines has
			-- been use.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached size_change_actions_internal as la_size_change_actions_internal then
				Result := la_size_change_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				size_change_actions_internal := Result
			end
		end

	minimize_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' has been minimized.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached minimize_actions_internal as la_minimize_actions_internal then
				Result := la_minimize_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				minimize_actions_internal := Result
			end
		end

	maximize_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' has been maximized.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached maximize_actions_internal as la_maximize_actions_internal then
				Result := la_maximize_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				maximize_actions_internal := Result
			end
		end

	restore_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' has been restored to normal size and position.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached restore_actions_internal as la_restore_actions_internal then
				Result := la_restore_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				restore_actions_internal := Result
			end
		end

	mouse_enter_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' has gained mouse focus.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached mouse_enter_actions_internal as la_mouse_enter_actions_internal then
				Result := la_mouse_enter_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				mouse_enter_actions_internal := Result
			end
		end

	mouse_leave_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' has lost mouse focus.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached mouse_leave_actions_internal as la_mouse_leave_actions_internal then
				Result := la_mouse_leave_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				mouse_leave_actions_internal := Result
			end
		end

	keyboard_focus_gain_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' has gain keyboard focus.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached keyboard_focus_gain_actions_internal as la_keyboard_focus_gain_actions_internal then
				Result := la_keyboard_focus_gain_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				keyboard_focus_gain_actions_internal := Result
			end
		end

	keyboard_focus_lost_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' has lost keyboard focus.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached keyboard_focus_lost_actions_internal as la_keyboard_focus_lost_actions_internal then
				Result := la_keyboard_focus_lost_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				keyboard_focus_lost_actions_internal := Result
			end
		end

	close_request_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When the Window manager request that `Current' be closed.
		require
			Window_Events_Enabled: events_controller.is_window_event_enable
		do
			if attached close_request_actions_internal as la_close_request_actions_internal then
				Result := la_close_request_actions_internal
			else
				create Result
				if is_running and not events_controller.window_event_actions.has (window_events_callback) then
					events_controller.window_event_actions.extend (window_events_callback)
				end
				close_request_actions_internal := Result
			end
		end

	key_pressed_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; key_state:GAME_KEY_EVENT]]
			-- When a key (represented by `key_state') has been pressed.
		require
			Key_Released_Events_Enabled: events_controller.is_key_pressed_event_enable
		do
			if attached key_pressed_actions_internal as la_key_pressed_actions_internal then
				Result := la_key_pressed_actions_internal
			else
				create Result
				if is_running and not events_controller.key_pressed_actions.has (key_pressed_events_callback) then
					events_controller.key_pressed_actions.extend (key_pressed_events_callback)
				end
				key_pressed_actions_internal := Result
			end
		end

	key_released_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; key_state:GAME_KEY_EVENT]]
			-- When a key (represented by `key_state') has been released.
		require
			Key_Released_Events_Enabled: events_controller.is_key_released_event_enable
		do
			if attached key_released_actions_internal as la_key_released_actions_internal then
				Result := la_key_released_actions_internal
			else
				create Result
				if is_running and not events_controller.key_released_actions.has (key_released_events_callback) then
					events_controller.key_released_actions.extend (key_released_events_callback)
				end
				key_released_actions_internal := Result
			end
		end

	text_editing_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; text:STRING_32;
												start,length:INTEGER_32]]
			-- When a text has been edited in `Current'.
		do
			if attached text_editing_actions_internal as la_text_editing_actions_internal then
				Result := la_text_editing_actions_internal
			else
				create Result
				if is_running and not events_controller.text_editing_actions.has (text_editing_events_callback) then
					events_controller.text_editing_actions.extend (text_editing_events_callback)
				end
				text_editing_actions_internal := Result
			end
		end

	text_input_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; text:STRING_32]]
			-- When a new text has been entered in `Current'.
		do
			if attached text_input_actions_internal as la_text_input_actions_internal then
				Result := la_text_input_actions_internal
			else
				create Result
				if is_running and not events_controller.text_input_actions.has (text_input_events_callback) then
					events_controller.text_input_actions.extend (text_input_events_callback)
				end
				text_input_actions_internal := Result
			end
		end

	mouse_motion_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; mouse_state:GAME_MOUSE_MOTION_EVENT;
																	delta_x, delta_y:INTEGER_32]]
			-- When a mouse represented by `mouse_state' has been moved in `Current'.
			-- The difference between the old position and the new (`delta_x',`delta_y')
		require
			Mouse_Motion_Events_Enabled: events_controller.is_mouse_motion_event_enable
		do
			if attached mouse_motion_actions_internal as la_mouse_motion_actions_internal then
				Result := la_mouse_motion_actions_internal
			else
				create Result
				if is_running and not events_controller.mouse_motion_actions.has (mouse_motion_events_callback) then
					events_controller.mouse_motion_actions.extend (mouse_motion_events_callback)
				end
				mouse_motion_actions_internal := Result
			end
		end

	mouse_button_pressed_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; mouse_state:GAME_MOUSE_BUTTON_PRESS_EVENT;
																	nb_clicks:NATURAL_8]]
			-- When a mouse represented by `mouse_state' has been pressed for the `nb_clicks' times
		require
			Mouse_Button_Pressed_Events_Enabled: events_controller.is_mouse_button_pressed_event_enable
		do
			if attached mouse_button_pressed_actions_internal as la_mouse_button_pressed_actions_internal then
				Result := la_mouse_button_pressed_actions_internal
			else
				create Result
				if is_running and not events_controller.mouse_button_pressed_actions.has (mouse_button_pressed_events_callback) then
					events_controller.mouse_button_pressed_actions.extend (mouse_button_pressed_events_callback)
				end
				mouse_button_pressed_actions_internal := Result
			end
		end

	mouse_button_released_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; mouse_state:GAME_MOUSE_BUTTON_RELEASE_EVENT;
																	nb_clicks:NATURAL_8]]
			-- When a mouse represented by `mouse_state' has been released for the `nb_clicks' times
		require
			Mouse_Button_Released_Events_Enabled: events_controller.is_mouse_button_released_event_enable
		do
			if attached mouse_button_released_actions_internal as la_mouse_button_released_actions_internal then
				Result := la_mouse_button_released_actions_internal
			else
				create Result
				if is_running and not events_controller.mouse_button_released_actions.has (mouse_button_released_events_callback) then
					events_controller.mouse_button_released_actions.extend (mouse_button_released_events_callback)
				end
				mouse_button_released_actions_internal := Result
			end
		end

	mouse_wheel_move_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; mouse_state:GAME_MOUSE_EVENT;
																	delta_x,delta_y:INTEGER_32]]
			-- When the wheel of a mouse represented by `mouse_state' has been moved.
			-- The difference between the old wheel position and the new one is (`delta_x',`delta_y')
			-- When `delta_x' is positive, the wheel has been move up, and when negative, it has been moved down
			-- When `delta_y' is positive, the wheel has been move right, and when negative, it has been moved left
		require
			Mouse_Wheel_Move_Events_Enabled: events_controller.is_mouse_wheel_event_enable
		do
			if attached mouse_wheel_move_actions_internal as la_mouse_wheel_move_actions_internal then
				Result := la_mouse_wheel_move_actions_internal
			else
				create Result
				if is_running and not events_controller.mouse_wheel_move_actions.has (mouse_wheel_move_events_callback) then
					events_controller.mouse_wheel_move_actions.extend (mouse_wheel_move_events_callback)
				end
				mouse_wheel_move_actions_internal := Result
			end
		end

feature {NONE} -- Implementation

	show_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `show_actions' lazy evaluated attribute

	expose_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `expose_actions' lazy evaluated attribute

	hide_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `hide_actions' lazy evaluated attribute

	move_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; x, y:INTEGER_32]]
			-- Internal value of the `move_actions' lazy evaluated attribute

	resize_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; width, height:INTEGER_32]]
			-- Internal value of the `resize_actions' lazy evaluated attribute

	size_change_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `size_change_actions' lazy evaluated attribute

	minimize_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `minimize_actions' lazy evaluated attribute

	maximize_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `maximize_actions' lazy evaluated attribute

	restore_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `restore_actions' lazy evaluated attribute

	mouse_enter_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `mouse_enter_actions' lazy evaluated attribute

	mouse_leave_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `mouse_leave_actions' lazy evaluated attribute

	keyboard_focus_gain_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `keyboard_focus_gain_actions' lazy evaluated attribute

	keyboard_focus_lost_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `keyboard_focus_lost_actions' lazy evaluated attribute

	close_request_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `close_request_actions' lazy evaluated attribute

	window_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id:NATURAL_32;event_type:NATURAL_8;data1,data2:INTEGER_32]]
			-- Callback used to register `Current' in the `events_controller' for those {ACTION_SEQUENCE}:
			-- `show_actions', `expose_actions', `hide_actions', `move_actions', `resize_actions',
			-- `size_change_actions', `minimize_actions', `maximize_actions', `restore_actions',
			-- `mouse_enter_actions', `mouse_leave_actions', `keyboard_focus_gain_actions',
			-- `keyboard_focus_lost_actions' and `close_request_actions'

	window_events_dispatcher(a_timestamp,a_window_id:NATURAL_32;a_event_type:NATURAL_8;a_data1,a_data2:INTEGER_32)
			-- The dispatcher receiving event from the `window_events_callback' and dispatch them to those
			-- {ACTION_SEQUENCE}: `show_actions', `expose_actions', `hide_actions', `move_actions',
			-- `resize_actions', `size_change_actions', `minimize_actions', `maximize_actions',
			-- `restore_actions', `mouse_enter_actions', `mouse_leave_actions',
			-- `keyboard_focus_gain_actions', `keyboard_focus_lost_actions' and `close_request_actions'
		do
			if a_window_id = id or a_window_id = 0 then
				if a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_SHOWN then
					if attached show_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_HIDDEN then
					if attached hide_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_EXPOSED then
					if attached expose_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_MOVED then
					if attached move_actions_internal as actions then
						actions.call([a_timestamp, a_data1, a_data2])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_RESIZED then
					if attached resize_actions_internal as actions then
						actions.call([a_timestamp, a_data1, a_data2])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_SIZE_CHANGED then
					if attached size_change_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_MINIMIZED then
					if attached minimize_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_MAXIMIZED then
					if attached maximize_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_RESTORED then
					if attached restore_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_ENTER then
					if attached mouse_enter_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_LEAVE then
					if attached mouse_leave_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_FOCUS_GAINED then
					if attached keyboard_focus_gain_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_FOCUS_LOST then
					if attached keyboard_focus_lost_actions_internal as actions then
						actions.call([a_timestamp])
					end
				elseif a_event_type = {GAME_SDL_EXTERNAL}.SDL_WINDOWEVENT_CLOSE then
					if attached close_request_actions_internal as actions then
						actions.call([a_timestamp])
					end
				end
			end

		end

	key_pressed_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; keyboard_state:GAME_KEY_EVENT]]
			-- Internal value of the `key_pressed_actions' lazy evaluated attribute

	key_pressed_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id:NATURAL_32;repeat:NATURAL_8;
												scancode,keycode:NATURAL_32;modifier:NATURAL_16]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `key_pressed_actions' {ACTION_SEQUENCE}

	key_pressed_events_dispatcher(a_timestamp,a_window_id:NATURAL_32;a_repeat:NATURAL_8;
								a_scancode,a_keycode:NATURAL_32;a_modifier:NATURAL_16)
			-- The dispatcher receiving event from the `key_pressed_events_callback' and dispatch them to
			-- the `key_pressed_actions' {ACTION_SEQUENCE}
		local
			l_keyboard_state:GAME_KEY_EVENT
		do
			if
				(a_window_id =id or a_window_id = 0) and then
				attached key_pressed_actions_internal as actions
			then
				create l_keyboard_state.make(a_scancode, a_keycode, a_modifier, a_repeat)
				actions.call (a_timestamp, l_keyboard_state)
			end
		end

	key_released_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; keyboard_state:GAME_KEY_EVENT]]
			-- Internal value of the `key_released_actions' lazy evaluated attribute

	key_released_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id:NATURAL_32;repeat:NATURAL_8;
												scancode,keycode:NATURAL_32;modifier:NATURAL_16]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `key_released_actions' {ACTION_SEQUENCE}

	key_released_events_dispatcher(a_timestamp,a_window_id:NATURAL_32;a_repeat:NATURAL_8;
								a_scancode,a_keycode:NATURAL_32;a_modifier:NATURAL_16)
			-- The dispatcher receiving event from the `key_released_events_callback' and dispatch them to
			-- the `key_released_actions' {ACTION_SEQUENCE}
		local
			l_keyboard_state:GAME_KEY_EVENT
		do
			if
				(a_window_id =id or a_window_id = 0) and then
				attached key_released_actions_internal as actions
			then
				create l_keyboard_state.make(a_scancode, a_keycode, a_modifier, a_repeat)
				actions.call (a_timestamp, l_keyboard_state)
			end
		end

	text_editing_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; text:STRING_32;
																		start,lenght:INTEGER_32]]
			-- Internal value of the `text_editing_actions' lazy evaluated attribute

	text_editing_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id:NATURAL_32;text:STRING_32;
												start,lenght:INTEGER_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `text_editing_actions' {ACTION_SEQUENCE}

	text_editing_events_dispatcher(a_timestamp,a_window_id:NATURAL_32;a_text:STRING_32;
									a_start,a_lenght:INTEGER_32)
			-- The dispatcher receiving event from the `text_editing_events_callback' and dispatch them to
			-- the `text_editing_actions' {ACTION_SEQUENCE}
		do
			if
				(a_window_id =id or a_window_id = 0) and then
				attached text_editing_actions_internal as actions
			then
				actions.call (a_timestamp, a_text, a_start, a_lenght)
			end
		end

	text_input_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; text:STRING_32]]
			-- Internal value of the `text_input_actions' lazy evaluated attribute

	text_input_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id:NATURAL_32;text:STRING_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `text_input_actions' {ACTION_SEQUENCE}

	text_input_events_dispatcher(a_timestamp,a_window_id:NATURAL_32;a_text:STRING_32)
			-- The dispatcher receiving event from the `text_input_events_callback' and dispatch them to
			-- the `text_input_actions' {ACTION_SEQUENCE}
		do
			if
				(a_window_id =id or a_window_id = 0) and then
				attached text_input_actions_internal as actions
			then
				actions.call (a_timestamp, a_text)
			end
		end

	mouse_motion_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; mouse_state:GAME_MOUSE_MOTION_EVENT;
																	delta_x, delta_y:INTEGER_32]]
			-- Internal value of the `mouse_motion_actions' lazy evaluated attribute

	mouse_motion_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id,mouse_id, state:NATURAL_32;
														x,y,x_relative,y_relative:INTEGER_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `mouse_motion_actions' {ACTION_SEQUENCE}

	mouse_motion_events_dispatcher(a_timestamp,a_window_id, a_mouse_id, a_state:NATURAL_32;
									a_x,a_y,a_x_relative,a_y_relative:INTEGER_32)
			-- The dispatcher receiving event from the `mouse_motion_events_callback' and dispatch them to
			-- the `mouse_motion_actions' {ACTION_SEQUENCE}
		local
			l_mouse_state:GAME_MOUSE_MOTION_EVENT
		do
			if
				(a_window_id =id or a_window_id = 0) and then
				attached mouse_motion_actions_internal as actions
			then
				create l_mouse_state.make (a_mouse_id, a_state, a_x, a_y)
				actions.call (a_timestamp, l_mouse_state, a_x_relative, a_y_relative)
			end
		end

	mouse_button_pressed_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; mouse_state:GAME_MOUSE_BUTTON_PRESS_EVENT;
																	nb_clicks:NATURAL_8]]
			-- Internal value of the `mouse_button_pressed_actions' lazy evaluated attribute

	mouse_button_pressed_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id,mouse_id:NATURAL_32;
													button,clicks: NATURAL_8;x,y:INTEGER_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `mouse_button_pressed_actions' {ACTION_SEQUENCE}

	mouse_button_pressed_events_dispatcher(a_timestamp,a_window_id, a_mouse_id:NATURAL_32;
									a_button,a_clicks: NATURAL_8; a_x,a_y:INTEGER_32)
			-- The dispatcher receiving event from the `mouse_button_pressed_events_callback' and dispatch them to
			-- the `mouse_button_pressed_actions' {ACTION_SEQUENCE}
		local
			l_mouse_state:GAME_MOUSE_BUTTON_PRESS_EVENT
		do
			if
				(a_window_id =id or a_window_id = 0) and then
				attached mouse_button_pressed_actions_internal as actions
			then
				create l_mouse_state.make (a_mouse_id, a_button, a_x, a_y)
				actions.call (a_timestamp, l_mouse_state, a_clicks)
			end
		end

	mouse_button_released_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; mouse_state:GAME_MOUSE_BUTTON_RELEASE_EVENT;
																	nb_clicks:NATURAL_8]]
			-- Internal value of the `mouse_button_released_actions' lazy evaluated attribute

	mouse_button_released_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id,mouse_id:NATURAL_32;
													button,clicks: NATURAL_8;x,y:INTEGER_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `mouse_button_released_actions' {ACTION_SEQUENCE}

	mouse_button_released_events_dispatcher(a_timestamp,a_window_id, a_mouse_id:NATURAL_32;
									a_button,a_clicks: NATURAL_8; a_x,a_y:INTEGER_32)
			-- The dispatcher receiving event from the `mouse_button_released_events_callback' and dispatch them to
			-- the `mouse_button_released_actions' {ACTION_SEQUENCE}
		local
			l_mouse_state:GAME_MOUSE_BUTTON_RELEASE_EVENT
		do
			if
				(a_window_id =id or a_window_id = 0) and then
				attached mouse_button_released_actions_internal as actions
			then
				create l_mouse_state.make (a_mouse_id, a_button, a_x, a_y)
				actions.call (a_timestamp, l_mouse_state, a_clicks)
			end
		end

	mouse_wheel_move_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; mouse_state:GAME_MOUSE_EVENT;
																	delta_x,delta_y:INTEGER_32]]
			-- Internal value of the `mouse_wheel_move_actions' lazy evaluated attribute

	mouse_wheel_move_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id,mouse_id:NATURAL_32;x,y:INTEGER_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `mouse_wheel_move_actions' {ACTION_SEQUENCE}

	mouse_wheel_move_events_dispatcher(a_timestamp,a_window_id,a_mouse_id:NATURAL_32;a_x,a_y:INTEGER_32)
			-- The dispatcher receiving event from the `mouse_wheel_move_events_callback' and dispatch them to
			-- the `mouse_wheel_move_actions' {ACTION_SEQUENCE}
		do
			if
				(a_window_id =id or a_window_id = 0) and then
				attached mouse_wheel_move_actions_internal as actions
			then
				actions.call (a_timestamp, create {GAME_MOUSE_EVENT}.make (a_mouse_id), a_x, a_y)
			end
		end

	id:NATURAL_32
			-- Internal event identifier of `Current'
		deferred
		end
end
