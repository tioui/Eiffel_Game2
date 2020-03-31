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
			make
		end


feature {NONE} -- Initialisation

	make
			-- Initialization of `Current'
		do
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
			fingers_gesture_events_callback := agent (a_timestamp:NATURAL_32;a_touch_id:INTEGER_64;
														a_fingers_count:NATURAL_16; a_center_x, a_center_y,
														a_theta, a_distance:REAL_32)
				do
					fingers_gesture_events_dispatcher (a_timestamp, a_touch_id, a_fingers_count, a_center_x, a_center_y, a_theta, a_distance)
				end
			dollar_gesture_events_callback := agent (a_timestamp:NATURAL_32;a_touch_id:INTEGER_64;
													a_gesture_id:INTEGER_64;a_fingers_count:NATURAL_32;
													a_center_x, a_center_y,a_error:REAL_32)
				do
					dollar_gesture_events_dispatcher (a_timestamp, a_touch_id, a_gesture_id, a_fingers_count, a_center_x, a_center_y, a_error)
				end
			dollar_record_events_callback := agent (a_timestamp:NATURAL_32;a_touch_id, a_gesture_id:INTEGER_64)
				do
					dollar_record_events_dispatcher (a_timestamp, a_touch_id, a_gesture_id)
				end
			Precursor{GAME_EVENTS}
		end

feature -- Access

	stop
			-- <Precursor>
		do
			is_running := False
			events_controller.finger_motion_actions.prune_all (finger_motion_events_callback)
			events_controller.finger_touched_actions.prune_all (finger_touched_events_callback)
			events_controller.finger_released_actions.prune_all (finger_released_events_callback)
			events_controller.fingers_gesture_actions.prune_all (fingers_gesture_events_callback)
			events_controller.dollar_gesture_actions.prune_all (dollar_gesture_events_callback)
			events_controller.dollar_record_actions.prune_all (dollar_record_events_callback)
		end

	run
			-- <Precursor>
		do
			is_running := False
			if attached finger_motion_actions_internal then
				events_controller.finger_motion_actions.extend (finger_motion_events_callback)
			end
			if attached finger_touched_actions_internal then
				events_controller.finger_touched_actions.extend (finger_touched_events_callback)
			end
			if attached finger_released_actions_internal then
				events_controller.finger_released_actions.extend (finger_released_events_callback)
			end
			if attached fingers_gesture_actions_internal then
				events_controller.fingers_gesture_actions.extend (fingers_gesture_events_callback)
			end
			if attached dollar_gesture_actions_internal then
				events_controller.dollar_gesture_actions.extend (dollar_gesture_events_callback)
			end
			if attached dollar_record_actions_internal then
				events_controller.dollar_record_actions.extend (dollar_record_events_callback)
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
			fingers_gesture_actions_internal := Void
			dollar_gesture_actions_internal := Void
			dollar_record_actions_internal := Void
			if l_was_running then
				run
			end
		end

	finger_motion_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; finger_state:GAME_FINGER_EVENT]]
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

	finger_touched_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; finger_state:GAME_FINGER_EVENT]]
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

	finger_released_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; finger_state:GAME_FINGER_EVENT]]
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

	fingers_gesture_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; fingers_gesture:GAME_FINGERS_GESTURE]]
			-- When a fingers simple gesture has been performed on `Current',
			-- `fingers_gesture' is used to get the gesture informations
		require
			Fingers_Gesture_Event_Enable: events_controller.is_fingers_gesture_event_enable
		do
			if attached fingers_gesture_actions_internal as la_fingers_gesture_actions_internal then
				Result := la_fingers_gesture_actions_internal
			else
				create Result
				if is_running and not events_controller.fingers_gesture_actions.has (fingers_gesture_events_callback) then
					events_controller.fingers_gesture_actions.extend (fingers_gesture_events_callback)
				end
				fingers_gesture_actions_internal := Result
			end
		end

	dollar_gesture_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; dollar_gesture:GAME_DOLLAR_GESTURE]]
			-- When a $1 gesture has been performed on `Current',
			-- `dollar_gesture' is used to get the gesture informations
		require
			Dollar_Gesture_Event_Enable: events_controller.is_dollar_gesture_event_enable
		do
			if attached dollar_gesture_actions_internal as la_dollar_gesture_actions_internal then
				Result := la_dollar_gesture_actions_internal
			else
				create Result
				if is_running and not events_controller.dollar_gesture_actions.has (dollar_gesture_events_callback) then
					events_controller.dollar_gesture_actions.extend (dollar_gesture_events_callback)
				end
				dollar_gesture_actions_internal := Result
			end
		end

	dollar_record_actions: ACTION_SEQUENCE [TUPLE [timestamp: NATURAL_32; template_hash:INTEGER_64]]
			-- When a $1 gesture has been recorded on `Current' (using `record_dollar_gesture'),
			-- `template_hash' is used to get the hash of the gesture. This hash will be used
			-- to identified this tempate on future `dollar_gesture_actions' events
		require
			Dollar_Record_Event_Enable: events_controller.is_dollar_record_event_enable
		do
			if attached dollar_record_actions_internal as la_dollar_record_actions_internal then
				Result := la_dollar_record_actions_internal
			else
				create Result
				if is_running and not events_controller.dollar_record_actions.has (dollar_record_events_callback) then
					events_controller.dollar_record_actions.extend (dollar_record_events_callback)
				end
				dollar_record_actions_internal := Result
			end
		end

	record_dollar_gesture
			-- Start a $1 gesture recording. The recording will be finish when a `dollar_record_actions' event
			-- will trigger.
		local
			l_error : INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RecordGesture(id)
			manage_error_code (l_error - 1, "Cannot record dollar gesture")
		end

feature {NONE} -- Implementation

	finger_motion_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;finger_state:GAME_FINGER_EVENT]]
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
			l_finger_state:GAME_FINGER_EVENT
		do
			if
				a_touch_id = id and then
				attached finger_motion_actions_internal as la_actions
			then
				create l_finger_state.make (a_finger_id, a_x, a_y, a_x_relative, a_y_relative, a_pressure)
				la_actions.call (a_timestamp, l_finger_state)
			end
		end

	finger_touched_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;finger_state:GAME_FINGER_EVENT]]
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
			l_finger_state:GAME_FINGER_EVENT
		do
			if
				a_touch_id = id and then
				attached finger_touched_actions_internal as la_actions
			then
				create l_finger_state.make (a_finger_id, a_x, a_y, a_x_relative, a_y_relative, a_pressure)
				la_actions.call (a_timestamp, l_finger_state)
			end
		end

	finger_released_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;finger_state:GAME_FINGER_EVENT]]
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
			l_finger_state:GAME_FINGER_EVENT
		do
			if
				a_touch_id = id and then
				attached finger_released_actions_internal as la_actions
			then
				create l_finger_state.make (a_finger_id, a_x, a_y, a_x_relative, a_y_relative, a_pressure)
				la_actions.call (a_timestamp, l_finger_state)
			end
		end

	fingers_gesture_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;fingers_gesture:GAME_FINGERS_GESTURE]]
			-- Internal value of the `fingers_gesture_actions' lazy evaluated attribute

	fingers_gesture_events_callback: PROCEDURE [ANY, TUPLE [timestamp:NATURAL_32;touch_id:INTEGER_64;
															fingers_count:NATURAL_16; center_x, center_y,
															theta, distance:REAL_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `fingers_gesture_actions' {ACTION_SEQUENCE}

	fingers_gesture_events_dispatcher (a_timestamp:NATURAL_32;a_touch_id:INTEGER_64;
										a_fingers_count:NATURAL_16; a_center_x, a_center_y,
										a_theta, a_distance:REAL_32)
			-- The dispatcher receiving event from the `fingers_gesture_events_callback' and dispatch them to
			-- the `fingers_gesture_actions' {ACTION_SEQUENCE}
		local
			l_fingers_gesture:GAME_FINGERS_GESTURE
		do
			if
				a_touch_id = id and then
				attached fingers_gesture_actions_internal as la_actions
			then
				create l_fingers_gesture.make (a_center_x, a_center_y, a_distance, a_theta, a_fingers_count)
				la_actions.call (a_timestamp, l_fingers_gesture)
			end
		end

	dollar_gesture_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;dollar_gesture:GAME_DOLLAR_GESTURE]]
			-- Internal value of the `dollar_gesture_actions' lazy evaluated attribute

	dollar_gesture_events_callback: PROCEDURE [ANY, TUPLE [timestamp:NATURAL_32;touch_id:INTEGER_64;
										gesture_id:INTEGER_64;fingers_count:NATURAL_32;
										center_x, center_y, error:REAL_32]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `dollar_gesture_actions' {ACTION_SEQUENCE}

	dollar_gesture_events_dispatcher (a_timestamp:NATURAL_32;a_touch_id:INTEGER_64;
										a_gesture_id:INTEGER_64;a_fingers_count:NATURAL_32;
										a_center_x, a_center_y,a_error:REAL_32)
			-- The dispatcher receiving event from the `dollar_gesture_events_callback' and dispatch them to
			-- the `dollar_gesture_actions' {ACTION_SEQUENCE}
		local
			l_dollar_gesture:GAME_DOLLAR_GESTURE
		do
			if
				a_touch_id = id and then
				attached dollar_gesture_actions_internal as la_actions
			then
				create l_dollar_gesture.make (a_gesture_id, a_center_x, a_center_y, a_error, a_fingers_count)
				la_actions.call (a_timestamp, l_dollar_gesture)
			end
		end

	dollar_record_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; template_hash:INTEGER_64]]
			-- Internal value of the `dollar_record_actions' lazy evaluated attribute

	dollar_record_events_callback: PROCEDURE [ANY, TUPLE [timestamp:NATURAL_32;touch_id, gesture_id:INTEGER_64]]
			-- Callback used to register `Current' in the `events_controller' for the
			-- `dollar_record_actions' {ACTION_SEQUENCE}

	dollar_record_events_dispatcher (a_timestamp:NATURAL_32;a_touch_id, a_gesture_id:INTEGER_64)
			-- The dispatcher receiving event from the `dollar_record_events_callback' and dispatch them to
			-- the `dollar_record_actions' {ACTION_SEQUENCE}
		do
			if
				a_touch_id = id and then
				attached dollar_record_actions_internal as la_actions
			then
				la_actions.call (a_timestamp, a_gesture_id)
			end
		end

	id: INTEGER_64
			-- Internal event identifier of `Current'
		deferred
		end
end
