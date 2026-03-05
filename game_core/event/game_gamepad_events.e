note
	description: "Summary description for {GAME_GAMEPAD_EVENTS}."
	author: "Malyk Vigneault"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_GAMEPAD_EVENTS

inherit
	GAME_EVENTS
		redefine
			make
		end

feature {NONE} -- Initialisation

	make
			-- initialization of 'Current'
		do
			axis_motion_events_callback := agent (a_timestamp: NATURAL_32; a_joystick_id:INTEGER_32; a_axis_id:NATURAL_8; a_value:INTEGER_16)
				do
					axis_motion_events_dispatcher(a_timestamp, a_joystick_id, a_axis_id, a_value)
				end
			button_pressed_events_callback := agent (a_timestamp: NATURAL_32; a_gamepad_id:INTEGER_32; a_button_id:NATURAL_8)
				do
					button_pressed_events_dispatcher(a_timestamp, a_gamepad_id, a_button_id)
				end
			button_released_events_callback := agent (a_timestamp: NATURAL_32; a_gamepad_id:INTEGER_32; a_button_id:NATURAL_8)
				do
					button_released_events_dispatcher(a_timestamp, a_gamepad_id, a_button_id)
				end
			Precursor {GAME_EVENTS}
		end

feature -- Access

	stop
		-- <Precursor>
		do
			is_running := False
			events_controller.gamepad_axis_motion_actions.prune_all (axis_motion_events_callback)
			events_controller.gamepad_button_pressed_actions.prune_all (button_pressed_events_callback)
			events_controller.gamepad_button_released_actions.prune_all (button_released_events_callback)
		end

	run
			-- <Precursor>
		do
			is_running := true
			if attached axis_motion_actions_internal then
						events_controller.gamepad_axis_motion_actions.extend (axis_motion_events_callback)
					end
			if attached button_pressed_actions_internal then
				events_controller.gamepad_button_pressed_actions.extend (button_pressed_events_callback)
			end
			if attached button_released_actions_internal then
				events_controller.gamepad_button_released_actions.extend (button_released_events_callback)
			end
		end

	clear
			-- <Precursor>
		local
			l_was_running: BOOLEAN
		do
			l_was_running := is_running
			if is_running then
				stop
			end
			axis_motion_actions_internal := Void
			button_pressed_actions_internal := Void
			button_released_actions_internal := Void
			removed_actions_internal := Void
			if l_was_running then
				run
			end
		end

	axis_motion_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; axis_id:NATURAL_8; value:INTEGER_16]]
			-- When an axis of `Current' has been moved at a certain `value'.
		require
			Gamepad_Axis_Motion_Event_Enable: events_controller.is_gamepad_axis_motion_event_enable
		do
			if attached axis_motion_actions_internal as la_axis_motion_actions_internal then
				Result := la_axis_motion_actions_internal
			else
				create Result
				if is_running and not events_controller.gamepad_axis_motion_actions.has (axis_motion_events_callback) then
					events_controller.gamepad_axis_motion_actions.extend (axis_motion_events_callback)
				end
				axis_motion_actions_internal := Result
			end
		end

	button_pressed_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; button_id:NATURAL_8]]
			-- When a button (identified by `button_id') of `Current' has been pressed.
		require
			Gamepad_Button_Pressed_Event_Enable: events_controller.is_gamepad_button_pressed_event_enable
		do
			if attached button_pressed_actions_internal as la_button_pressed_actions_internal then
				Result := la_button_pressed_actions_internal
			else
				create Result
				if is_running and not events_controller.gamepad_button_pressed_actions.has (button_pressed_events_callback) then
					events_controller.gamepad_button_pressed_actions.extend (button_pressed_events_callback)
				end
				button_pressed_actions_internal := Result
			end
		end

	button_released_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; button_id:NATURAL_8]]
			-- When a button (identified by `button_id') of `Current' has been released.
		require
			Gamepad_Button_Released_Event_Enable: events_controller.is_gamepad_button_released_event_enable
		do
			if attached button_released_actions_internal as la_button_released_actions_internal then
				Result := la_button_released_actions_internal
			else
				create Result
				if is_running and not events_controller.gamepad_button_released_actions.has (button_released_events_callback) then
					events_controller.gamepad_button_released_actions.extend (button_released_events_callback)
				end
				button_released_actions_internal := Result
			end
		end

	removed_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32]]
			-- When `Current' is removed (probably disconected)
		require
			Gamepad_Button_Pressed_Event_Enable: events_controller.is_gamepad_device_removed_event_enable
		do
			if attached removed_actions_internal as la_removed_actions_internal then
				Result := la_removed_actions_internal
			else
				create Result
				removed_actions_internal := Result
			end
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
			if
				a_joystick_id = id and then
				attached axis_motion_actions_internal as la_actions
			then
				la_actions.call (a_timestamp, a_axis_id, a_value)
			end
		end

	button_pressed_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;button_id:NATURAL_8]]
			-- Internal value of the `button_pressed_actions' lazy evaluated attribute

	button_pressed_events_callback: PROCEDURE [ANY, TUPLE [timestamp: NATURAL_32; gamepad_id: INTEGER_32; button_id:NATURAL_8]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `button_pressed_actions' {ACTION_SEQUENCE}

	button_pressed_events_dispatcher (a_timestamp: NATURAL_32; a_gamepad_id:INTEGER; a_button_id:NATURAL_8)
			-- The dispatcher receiving event from the `button_pressed_events_callback' and dispatch them to
			-- the `button_pressed_actions' {ACTION_SEQUENCE}
		do
			if
				a_gamepad_id = id and then
				attached button_pressed_actions_internal as la_actions
			then
				la_actions.call (a_timestamp, a_button_id)
			end
		end

	button_released_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;button_id:NATURAL_8]]
			-- Internal value of the `button_released_actions' lazy evaluated attribute

	button_released_events_callback: PROCEDURE [ANY, TUPLE [timestamp: NATURAL_32; gamepad_id: INTEGER_32; button_id:NATURAL_8]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `button_released_actions' {ACTION_SEQUENCE}

	button_released_events_dispatcher (a_timestamp: NATURAL_32; a_gamepad_id:INTEGER_32; a_button_id:NATURAL_8)
			-- The dispatcher receiving event from the `button_released_events_callback' and dispatch them to
			-- the `button_released_actions' {ACTION_SEQUENCE}
		do
			if
				a_gamepad_id = id and then
				attached button_released_actions_internal as la_actions
			then
				la_actions.call (a_timestamp, a_button_id)
			end
		end

	removed_events_dispatcher (a_timestamp: NATURAL_32; a_gamepad_id:INTEGER)
			-- The dispatcher receiving event from the `removed_events_callback' and dispatch them to
			-- the `removed_actions' {ACTION_SEQUENCE}
		do
			if
				a_gamepad_id = id and then
				attached removed_actions_internal as la_actions
			then
				la_actions.call (a_timestamp)
			end
		end

	id: INTEGER
			-- Internal event identifier of `Current'
		deferred
		end

feature {GAME_LIBRARY_CONTROLLER} -- Implementation

	removed_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
		-- Internal value of the `removed_actions' lazy evaluated attribute

end
