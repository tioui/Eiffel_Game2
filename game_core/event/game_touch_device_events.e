note
	description: "Manage Touch device events"
	author: "Louis Marchand"
	date: "Fri, 17 Apr 2015 02:32:57 +0000"
	revision: "2.0"

deferred class
	GAME_TOUCH_DEVICE_EVENTS

inherit
	GAME_EVENTS
		redefine
			default_create
		end


feature {NONE} -- Initialisation

	default_create
			-- Initialization of `Current'
		do
			is_running := True
			finger_motion_events_callback := agent (a_timestamp:NATURAL_32;a_touch_id, a_finger_id:INTEGER_64;
												a_x, a_y, a_x_relative, a_y_relative, a_pressure:REAL_32)
				do
					finger_motion_events_dispatcher (a_timestamp, a_touch_id, a_finger_id, a_x, a_y, a_x_relative, a_y_relative, a_pressure)
				end
			finger_touched_events_callback := agent (a_timestamp:NATURAL_32;a_touch_id, a_finger_id:INTEGER_64;
												a_x, a_y, a_x_relative, a_y_relative, a_pressure:REAL_32)
				do
					finger_touched_events_dispatcher (a_timestamp, a_touch_id, a_finger_id, a_x, a_y, a_x_relative, a_y_relative, a_pressure)
				end
			finger_released_events_callback := agent (a_timestamp:NATURAL_32;a_touch_id, a_finger_id:INTEGER_64;
												a_x, a_y, a_x_relative, a_y_relative, a_pressure:REAL_32)
				do
					finger_released_events_dispatcher (a_timestamp, a_touch_id, a_finger_id, a_x, a_y, a_x_relative, a_y_relative, a_pressure)
				end
		ensure then
			make_event_is_running: is_running
		end

feature -- Access

	stop
			-- <Precursor>
		do
			is_running := False
			events_controller.finger_motion_actions.prune_all (finger_motion_events_callback)
			events_controller.finger_touched_actions.prune_all (finger_touched_events_callback)
			events_controller.finger_released_actions.prune_all (finger_released_events_callback)
		end

	run
			-- <Precursor>
		do
			is_running := False
			if attached finger_motion_actions_internal then
				events_controller.finger_motion_actions.extend (finger_motion_events_callback)
				events_controller.finger_touched_actions.extend (finger_touched_events_callback)
				events_controller.finger_released_actions.extend (finger_released_events_callback)
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
			finger_motion_actions_internal := Void
			finger_touched_actions_internal := Void
			finger_released_actions_internal := Void
			if l_was_running then
				run
			end
		end

	is_running: BOOLEAN assign set_is_running
			-- Is `Current' active

	finger_motion_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; finger_state:GAME_FINGER_EVENT_STATE]]
			-- When a finger has been moved on `Current', `finger_state' is used to get finger information
		require
			Finger_Motion_Event_Enable: events_controller.is_finger_motion_event_enable
		do
			if attached finger_motion_actions_internal as la_finger_motion_actions_internal then
				Result := la_finger_motion_actions_internal
			else
				create Result
				if is_running and not events_controller.finger_motion_actions.has (finger_motion_events_callback) then
					events_controller.finger_motion_actions.extend (finger_motion_events_callback)
				end
				finger_motion_actions_internal := Result
			end
		end

	finger_touched_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; finger_state:GAME_FINGER_EVENT_STATE]]
			-- When a finger has been pressed on `Current', `finger_state' is used to get finger information
		require
			Finger_Touch_Event_Enable: events_controller.is_finger_touched_event_enable
		do
			if attached finger_touched_actions_internal as la_finger_touched_actions_internal then
				Result := la_finger_touched_actions_internal
			else
				create Result
				if is_running and not events_controller.finger_touched_actions.has (finger_touched_events_callback) then
					events_controller.finger_touched_actions.extend (finger_touched_events_callback)
				end
				finger_touched_actions_internal := Result
			end
		end

	finger_released_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; finger_state:GAME_FINGER_EVENT_STATE]]
			-- When a finger has been released on `Current', `finger_state' is used to get finger information
		require
			Finger_Released_Event_Enable: events_controller.is_finger_released_event_enable
		do
			if attached finger_released_actions_internal as la_finger_released_actions_internal then
				Result := la_finger_released_actions_internal
			else
				create Result
				if is_running and not events_controller.finger_released_actions.has (finger_released_events_callback) then
					events_controller.finger_released_actions.extend (finger_released_events_callback)
				end
				finger_released_actions_internal := Result
			end
		end

feature {NONE} -- Implementation

	finger_motion_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;finger_state:GAME_FINGER_EVENT_STATE]]
			-- Internal value of the `finger_motion_actions' lazy evaluated attribute

	finger_motion_events_callback: PROCEDURE [ANY, TUPLE [timestamp:NATURAL_32;touch_id, finger_id:INTEGER_64;
												x, y, x_relative, y_relative, pressure:REAL_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `finger_motion_actions' {ACTION_SEQUENCE}

	finger_motion_events_dispatcher (a_timestamp:NATURAL_32;a_touch_id, a_finger_id:INTEGER_64;
												a_x, a_y, a_x_relative, a_y_relative, a_pressure:REAL_32)
			-- The dispatcher receiving event from the `finger_motion_events_callback' and dispatch them to
			-- the `finger_motion_actions' {ACTION_SEQUENCE}
		local
			l_finger_state:GAME_FINGER_EVENT_STATE
		do
			if a_touch_id = id then
				if attached finger_motion_actions_internal as la_actions then
					create l_finger_state.make (a_finger_id, a_x, a_y, a_x_relative, a_y_relative, a_pressure)
					la_actions.call (a_timestamp, l_finger_state)
				end
			end
		end

	finger_touched_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;finger_state:GAME_FINGER_EVENT_STATE]]
			-- Internal value of the `finger_touched_actions' lazy evaluated attribute

	finger_touched_events_callback: PROCEDURE [ANY, TUPLE [timestamp:NATURAL_32;touch_id, finger_id:INTEGER_64;
												x, y, x_relative, y_relative, pressure:REAL_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `finger_touched_actions' {ACTION_SEQUENCE}

	finger_touched_events_dispatcher (a_timestamp:NATURAL_32;a_touch_id, a_finger_id:INTEGER_64;
												a_x, a_y, a_x_relative, a_y_relative, a_pressure:REAL_32)
			-- The dispatcher receiving event from the `finger_touched_events_callback' and dispatch them to
			-- the `finger_touched_actions' {ACTION_SEQUENCE}
		local
			l_finger_state:GAME_FINGER_EVENT_STATE
		do
			if a_touch_id = id then
				if attached finger_touched_actions_internal as la_actions then
					create l_finger_state.make (a_finger_id, a_x, a_y, a_x_relative, a_y_relative, a_pressure)
					la_actions.call (a_timestamp, l_finger_state)
				end
			end
		end

	finger_released_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;finger_state:GAME_FINGER_EVENT_STATE]]
			-- Internal value of the `finger_released_actions' lazy evaluated attribute

	finger_released_events_callback: PROCEDURE [ANY, TUPLE [timestamp:NATURAL_32;touch_id, finger_id:INTEGER_64;
												x, y, x_relative, y_relative, pressure:REAL_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `finger_released_actions' {ACTION_SEQUENCE}

	finger_released_events_dispatcher (a_timestamp:NATURAL_32;a_touch_id, a_finger_id:INTEGER_64;
												a_x, a_y, a_x_relative, a_y_relative, a_pressure:REAL_32)
			-- The dispatcher receiving event from the `finger_released_events_callback' and dispatch them to
			-- the `finger_released_actions' {ACTION_SEQUENCE}
		local
			l_finger_state:GAME_FINGER_EVENT_STATE
		do
			if a_touch_id = id then
				if attached finger_released_actions_internal as la_actions then
					create l_finger_state.make (a_finger_id, a_x, a_y, a_x_relative, a_y_relative, a_pressure)
					la_actions.call (a_timestamp, l_finger_state)
				end
			end
		end

	id: INTEGER_64
			-- Internal event identifier of `Current'
		deferred
		end
end
