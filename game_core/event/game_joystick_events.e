note
	description: "Manage Joystick events"
	author: "Louis Marchand"
	date: "Tue, 24 Feb 2015 00:34:06 +0000"
	revision: "2.0"

deferred class
	GAME_JOYSTICK_EVENTS

inherit
	GAME_SDL_ANY
		redefine
			default_create
		end

feature {NONE} -- Initialisation
	default_create
			-- Initialization of `Current'
		do
			is_running := True
			axis_motion_events_callback := agent (a_timestamp: NATURAL_32; a_joystick_id:INTEGER_32; a_axis_id:NATURAL_8; a_value:INTEGER_16)
				do
					axis_motion_events_dispatcher(a_timestamp, a_joystick_id, a_axis_id, a_value)
				end
			ball_motion_events_callback := agent (a_timestamp: NATURAL_32; a_joystick_id:INTEGER_32; a_ball_id:NATURAL_8; a_x_relative, a_y_relative:INTEGER_16)
				do
					ball_motion_events_dispatcher(a_timestamp, a_joystick_id, a_ball_id, a_x_relative, a_y_relative)
				end
			hat_motion_events_callback := agent (a_timestamp: NATURAL_32; a_joystick_id:INTEGER_32; a_hat_id, a_value:NATURAL_8)
				do
					hat_motion_events_dispatcher(a_timestamp, a_joystick_id, a_hat_id, a_value)
				end
			button_pressed_events_callback := agent (a_timestamp: NATURAL_32; a_joystick_id:INTEGER_32; a_button_id:NATURAL_8)
				do
					button_pressed_events_dispatcher(a_timestamp, a_joystick_id, a_button_id)
				end
			button_released_events_callback := agent (a_timestamp: NATURAL_32; a_joystick_id:INTEGER_32; a_button_id:NATURAL_8)
				do
					button_released_events_dispatcher(a_timestamp, a_joystick_id, a_button_id)
				end
			removed_events_callback := agent (a_timestamp: NATURAL_32; a_joystick_id:INTEGER_32)
				do
					removed_events_dispatcher(a_timestamp, a_joystick_id)
				end
		ensure then
			make_event_is_running: is_running
		end

feature -- Access

	stop
			-- Put `Current' innactive.
		require
			stop_is_running: is_running
		do
			is_running := False
			events_controller.joy_axis_motion_actions.prune_all (axis_motion_events_callback)
			events_controller.joy_ball_motion_actions.prune_all (ball_motion_events_callback)
			events_controller.joy_hat_motion_actions.prune_all (hat_motion_events_callback)
			events_controller.joy_button_pressed_actions.prune_all (button_pressed_events_callback)
			events_controller.joy_button_released_actions.prune_all (button_released_events_callback)
			events_controller.joy_device_removed_actions.prune_all (removed_events_callback)
		end

	run
			-- Put `Current' active.
		require
			run_not_already_running: not is_running
		do
			is_running := False
			if attached axis_motion_actions_internal then
				events_controller.joy_axis_motion_actions.extend (axis_motion_events_callback)
			end
			if attached ball_motion_actions_internal then
				events_controller.joy_ball_motion_actions.extend (ball_motion_events_callback)
			end
			if attached hat_motion_actions_internal then
				events_controller.joy_hat_motion_actions.extend (hat_motion_events_callback)
			end
			if attached button_pressed_actions_internal then
				events_controller.joy_button_pressed_actions.extend (button_pressed_events_callback)
			end
			if attached button_released_actions_internal then
				events_controller.joy_button_released_actions.extend (button_released_events_callback)
			end
			if attached removed_actions_internal then
				events_controller.joy_device_removed_actions.extend (removed_events_callback)
			end
		end

	clear
			-- Remove all events.
		local
			l_was_running: BOOLEAN
		do
			l_was_running := is_running
			if is_running then
				stop
			end
			axis_motion_actions_internal := Void
			ball_motion_actions_internal := Void
			hat_motion_actions_internal := Void
			button_pressed_actions_internal := Void
			button_released_actions_internal := Void
			removed_actions_internal := Void
			if l_was_running then
				run
			end
		end

	is_running: BOOLEAN
			-- Is `Current' active

	axis_motion_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; axis_id:NATURAL_8; value:INTEGER_16]]
			-- When an axis of `Current' has been moved at a certain `value'.
		require
			Joy_Axis_Motion_Event_Enable: events_controller.is_joy_axis_motion_event_enable
		do
			if attached axis_motion_actions_internal as la_axis_motion_actions_internal then
				Result := la_axis_motion_actions_internal
			else
				create Result
				if is_running and not events_controller.joy_axis_motion_actions.has (axis_motion_events_callback) then
					events_controller.joy_axis_motion_actions.extend (axis_motion_events_callback)
				end
				axis_motion_actions_internal := Result
			end
		end

	ball_motion_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; ball_id:NATURAL_8; x_relative, y_relative:INTEGER_16]]
			-- When a ball of `Current' has been moved to a certain relative value (`x_relative',`y_relative')
		require
			Joy_Ball_Motion_Event_Enable: events_controller.is_joy_ball_motion_event_enable
		do
			if attached ball_motion_actions_internal as la_ball_motion_actions_internal then
				Result := la_ball_motion_actions_internal
			else
				create Result
				if is_running and not events_controller.joy_ball_motion_actions.has (ball_motion_events_callback) then
					events_controller.joy_ball_motion_actions.extend (ball_motion_events_callback)
				end
				ball_motion_actions_internal := Result
			end
		end

	hat_motion_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; hat_id:NATURAL_8; a_state: GAME_JOYSTICK_HAT_STATE]]
			-- When a hat of `Current' has been moved at a certain `value'.
		require
			Joy_Hat_Motion_Event_Enable: events_controller.is_joy_hat_motion_event_enable
		do
			if attached hat_motion_actions_internal as la_hat_motion_actions_internal then
				Result := la_hat_motion_actions_internal
			else
				create Result
				if is_running and not events_controller.joy_hat_motion_actions.has (hat_motion_events_callback) then
					events_controller.joy_hat_motion_actions.extend (hat_motion_events_callback)
				end
				hat_motion_actions_internal := Result
			end
		end

	button_pressed_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; button_id:NATURAL_8]]
			-- When a button (identified by `button_id') of `Current' has been pressed.
		require
			Joy_Button_Pressed_Event_Enable: events_controller.is_joy_button_pressed_event_enable
		do
			if attached button_pressed_actions_internal as la_button_pressed_actions_internal then
				Result := la_button_pressed_actions_internal
			else
				create Result
				if is_running and not events_controller.joy_button_pressed_actions.has (button_pressed_events_callback) then
					events_controller.joy_button_pressed_actions.extend (button_pressed_events_callback)
				end
				button_pressed_actions_internal := Result
			end
		end

	button_released_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; button_id:NATURAL_8]]
			-- When a button (identified by `button_id') of `Current' has been released.
		require
			Joy_Button_Pressed_Event_Enable: events_controller.is_joy_button_released_event_enable
		do
			if attached button_released_actions_internal as la_button_released_actions_internal then
				Result := la_button_released_actions_internal
			else
				create Result
				if is_running and not events_controller.joy_button_released_actions.has (button_released_events_callback) then
					events_controller.joy_button_released_actions.extend (button_released_events_callback)
				end
				button_released_actions_internal := Result
			end
		end

	removed_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32]]
			-- When `Current' is removed (probably disconected)
		require
			Joy_Button_Pressed_Event_Enable: events_controller.is_joy_device_removed_event_enable
		do
			if attached removed_actions_internal as la_removed_actions_internal then
				Result := la_removed_actions_internal
			else
				create Result
				if is_running and not events_controller.joy_device_removed_actions.has (removed_events_callback) then
					events_controller.joy_device_removed_actions.extend (removed_events_callback)
				end
				removed_actions_internal := Result
			end
		end

	events_controller: GAME_EVENTS_CONTROLLER
			-- The used game event manager
		deferred
		end

feature {NONE} -- Implementation

	axis_motion_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;axis_id:NATURAL_8;value:INTEGER_16]]
			-- Internal value of the `axis_motion_actions' lazy evaluated attribute

	axis_motion_events_callback: PROCEDURE [ANY, TUPLE [timestamp: NATURAL_32; joystick_id: INTEGER_32; axis_id:NATURAL_8; value:INTEGER_16]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `axis_motion_actions' {ACTION_SEQUENCE}

	axis_motion_events_dispatcher (a_timestamp: NATURAL_32; a_joystick_id:INTEGER; a_axis_id:NATURAL_8; a_value:INTEGER_16)
			-- The dispatcher receiving event from the `axis_motion_events_callback' and dispatch them to
			-- the `axis_motion_actions' {ACTION_SEQUENCE}
		do
			if a_joystick_id = id then
				if attached axis_motion_actions_internal as la_actions then
					la_actions.call (a_timestamp, a_axis_id, a_value)
				end
			end
		end

	ball_motion_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;ball_id:NATURAL_8;x_relative, y_relative:INTEGER_16]]
			-- Internal value of the `ball_motion_actions' lazy evaluated attribute

	ball_motion_events_callback: PROCEDURE [ANY, TUPLE [timestamp: NATURAL_32; joystick_id: INTEGER_32; ball_id:NATURAL_8; x_relative, y_relative:INTEGER_16]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `ball_motion_actions' {ACTION_SEQUENCE}

	ball_motion_events_dispatcher (a_timestamp: NATURAL_32; a_joystick_id:INTEGER; a_ball_id:NATURAL_8; a_x_relative, a_y_relative:INTEGER_16)
			-- The dispatcher receiving event from the `ball_motion_events_callback' and dispatch them to
			-- the `ball_motion_actions' {ACTION_SEQUENCE}
		do
			if a_joystick_id = id then
				if attached ball_motion_actions_internal as la_actions then
					la_actions.call (a_timestamp, a_ball_id, a_x_relative, a_y_relative)
				end
			end
		end

	hat_motion_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;hat_id:NATURAL_8; state: GAME_JOYSTICK_HAT_STATE]]
			-- Internal value of the `hat_motion_actions' lazy evaluated attribute

	hat_motion_events_callback: PROCEDURE [ANY, TUPLE [timestamp: NATURAL_32; joystick_id: INTEGER_32; hat_id, value:NATURAL_8]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `hat_motion_actions' {ACTION_SEQUENCE}

	hat_motion_events_dispatcher (a_timestamp: NATURAL_32; a_joystick_id:INTEGER; a_hat_id, a_value:NATURAL_8)
			-- The dispatcher receiving event from the `hat_motion_events_callback' and dispatch them to
			-- the `hat_motion_actions' {ACTION_SEQUENCE}
		local
			l_hat_state: GAME_JOYSTICK_HAT_STATE
		do
			if a_joystick_id = id then
				if attached hat_motion_actions_internal as la_actions then
					create l_hat_state.make(a_value)
					la_actions.call (a_timestamp, a_hat_id, l_hat_state)
				end
			end
		end

	button_pressed_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;button_id:NATURAL_8]]
			-- Internal value of the `button_pressed_actions' lazy evaluated attribute

	button_pressed_events_callback: PROCEDURE [ANY, TUPLE [timestamp: NATURAL_32; joystick_id: INTEGER_32; button_id:NATURAL_8]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `button_pressed_actions' {ACTION_SEQUENCE}

	button_pressed_events_dispatcher (a_timestamp: NATURAL_32; a_joystick_id:INTEGER; a_button_id:NATURAL_8)
			-- The dispatcher receiving event from the `button_pressed_events_callback' and dispatch them to
			-- the `button_pressed_actions' {ACTION_SEQUENCE}
		do
			if a_joystick_id = id then
				if attached button_pressed_actions_internal as la_actions then
					la_actions.call (a_timestamp, a_button_id)
				end
			end
		end

	button_released_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;button_id:NATURAL_8]]
			-- Internal value of the `button_released_actions' lazy evaluated attribute

	button_released_events_callback: PROCEDURE [ANY, TUPLE [timestamp: NATURAL_32; joystick_id: INTEGER_32; button_id:NATURAL_8]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `button_released_actions' {ACTION_SEQUENCE}

	button_released_events_dispatcher (a_timestamp: NATURAL_32; a_joystick_id:INTEGER; a_button_id:NATURAL_8)
			-- The dispatcher receiving event from the `button_released_events_callback' and dispatch them to
			-- the `button_released_actions' {ACTION_SEQUENCE}
		do
			if a_joystick_id = id then
				if attached button_released_actions_internal as la_actions then
					la_actions.call (a_timestamp, a_button_id)
				end
			end
		end

	removed_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal value of the `removed_actions' lazy evaluated attribute

	removed_events_callback: PROCEDURE [ANY, TUPLE [timestamp: NATURAL_32; joystick_id: INTEGER_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `removed_actions' {ACTION_SEQUENCE}

	removed_events_dispatcher (a_timestamp: NATURAL_32; a_joystick_id:INTEGER)
			-- The dispatcher receiving event from the `removed_events_callback' and dispatch them to
			-- the `removed_actions' {ACTION_SEQUENCE}
		do
			if a_joystick_id = id then
				if attached removed_actions_internal as la_actions then
					la_actions.call (a_timestamp)
				end
			end
		end


	id: INTEGER
			-- Internal event identifier of `Current'
		deferred
		end

end
