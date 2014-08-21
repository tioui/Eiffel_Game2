note
	description: "Summary description for {GAME_WINDOW_EVENTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_WINDOW_EVENTS

feature {NONE} -- Initialisation

	make
		do
			is_running:=True
			window_events_callback := agent (a_timestamp,a_window_id:NATURAL_32;a_event_type:NATURAL_8;a_data1,a_data2:INTEGER_32) do
											window_events_dispatcher(a_timestamp, a_window_id, a_event_type, a_data1, a_data2)
										end
		ensure
			Make_Event_Is_Running: is_running
		end
feature -- Access

	stop
			-- Put `Current' innactive.
		require
			Stop_Is_Running: is_running
		do
			is_running:=False
			events_controller.window_event_actions.prune_all (window_events_callback)
		end

	run
			-- Put `Current' active.
		require
			Run_Not_Already_Running: not is_running
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

		end

	clear
			-- Remove all events.
		do
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
		end

	is_running:BOOLEAN
			-- Is `Current' active

	show_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When `Current' is show.
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

feature {NONE} -- Implementation

	show_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	expose_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	hide_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	move_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; x, y:INTEGER_32]]

	resize_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; width, height:INTEGER_32]]

	size_change_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	minimize_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	maximize_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	restore_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	mouse_enter_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	mouse_leave_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	keyboard_focus_gain_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	keyboard_focus_lost_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	close_request_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	window_events_callback:PROCEDURE [ANY, TUPLE[timestamp,window_id:NATURAL_32;event_type:NATURAL_8;data1,data2:INTEGER_32]]

	window_events_dispatcher(a_timestamp,a_window_id:NATURAL_32;a_event_type:NATURAL_8;a_data1,a_data2:INTEGER_32)
		do
			if a_window_id = window_id then
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

	events_controller:GAME_EVENTS_CONTROLLER
		deferred
		end

	window_id:NATURAL_32
		deferred
		end
end
