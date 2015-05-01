note
	description: "[
				Every high level events that are not attached to a specific
				component of the library (window, joystick, etc.)
			]"
	author: "Louis Marchand"
	date: "Sat, 28 Feb 2015 19:01:23 +0000"
	revision: "2.0"

deferred class
	GAME_COMMON_EVENTS

inherit
	GAME_EVENTS
		redefine
			make
		end

feature {NONE} -- Initialisation

	make
			-- Initialization of `Current'
		do
			file_dropped_actions_callback := agent (a_timestamp:NATURAL_32; a_filename:READABLE_STRING_GENERAL) do
											file_dropped_actions.call ([a_timestamp, a_filename])
										end
			joystick_founded_actions_callback := agent (a_timestamp:NATURAL_32; a_joystick_id:INTEGER_32) do
												joystick_founded_actions.call ([a_timestamp, a_joystick_id])
											end
			joystick_removed_actions_callback := agent (a_timestamp:NATURAL_32; a_joystick_id:INTEGER_32) do
												joystick_removed_actions.call ([a_timestamp, a_joystick_id])
											end
			quit_signal_actions_callback := agent (a_timestamp:NATURAL_32) do
											quit_signal_actions.call ([a_timestamp])
										end
			iteration_actions_callback:=agent (a_timestamp:NATURAL_32) do
										iteration_actions.call ([a_timestamp])
									end
			Precursor{GAME_EVENTS}
		end

feature -- Access

	stop
			-- <Precursor>
		do
			is_running:=False
			events_controller.quit_signal_actions.prune_all (quit_signal_actions_callback)
			events_controller.iteration_actions.prune_all (iteration_actions_callback)
			events_controller.joy_device_founded_actions.prune_all (joystick_founded_actions_callback)
			events_controller.joy_device_removed_actions.prune_all (joystick_removed_actions_callback)
			events_controller.file_dropped_actions.prune_all (file_dropped_actions_callback)
		end

	run
			-- <Precursor>
		do
			is_running:=True
			if attached quit_signal_actions_internal as la_on_quit_signal_internal then
				events_controller.quit_signal_actions.extend (quit_signal_actions_callback)
			end
			if attached iteration_actions_internal as la_on_iteration_internal then
				events_controller.iteration_actions.extend (iteration_actions_callback)
			end
			if attached joystick_founded_actions_internal as la_on_joystick_added_internal then
				events_controller.joy_device_founded_actions.extend (joystick_founded_actions_callback)
			end
			if attached joystick_removed_actions_internal as la_on_joystick_removed_internal then
				events_controller.joy_device_removed_actions.extend (joystick_removed_actions_callback)
			end
			if attached file_dropped_actions_internal as la_on_file_drop_internal then
				events_controller.file_dropped_actions.extend (file_dropped_actions_callback)
			end
		end

	clear
			-- Remove common library event.
			-- Note: does not clear other events like window events, joystick events, etc. To clear every events
			-- in the system, used {GAME_LIBRARY_CONTROLLER}.`clear_all_events'.
		local
			l_was_running:BOOLEAN
		do
			l_was_running := is_running
			if is_running then
				stop
			end
			quit_signal_actions_internal := Void
			iteration_actions_internal := Void
			joystick_founded_actions_internal := Void
			joystick_removed_actions_internal := Void
			file_dropped_actions_internal := Void
			if l_was_running then
				run
			end
		end

	quit_signal_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When the application receive a quit signal.
		require
			Quit_Event_Enabled: events_controller.is_quit_signal_event_enable
		do
			if attached quit_signal_actions_internal as la_on_quit_signal_internal then
				Result := la_on_quit_signal_internal
			else
				create Result
				if is_running then
					events_controller.quit_signal_actions.extend (quit_signal_actions_callback)
				end
				quit_signal_actions_internal := Result
			end
		end

	iteration_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Called at each game loop
		do
			if attached iteration_actions_internal as la_on_iteration_internal then
				Result := la_on_iteration_internal
			else
				create Result
				if is_running then
					events_controller.iteration_actions.extend (iteration_actions_callback)
				end
				iteration_actions_internal := Result
			end
		end

	joystick_founded_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]
			-- Called when a new joystick has been founded
			-- To get the new joystick, call {GAME_LIBRARY_CONTROLLER}.`refresh_joysticks',
			-- then use the {GAME_LIBRARY_CONTROLLER}.`joysticks'.`at'(`joystick_id')
		require
			Joystick_Found_Event_Enabled: events_controller.is_joy_device_founded_event_enable
		do
			if attached joystick_founded_actions_internal as la_on_joystick_added_internal then
				Result := la_on_joystick_added_internal
			else
				create Result
				if is_running then
					events_controller.joy_device_founded_actions.extend (joystick_founded_actions_callback)
				end
				joystick_founded_actions_internal := Result
			end
		end

	joystick_removed_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]
			-- Called when a new joystick has been removed
			-- The joystick will be removed from {GAME_LIBRARY_CONTROLLER}.`joysticks' when the
			-- {GAME_LIBRARY_CONTROLLER}.`refresh_joysticks' will be called.
		require
			Joystick_Remove_Event_Enabled: events_controller.is_joy_device_removed_event_enable
		do
			if attached joystick_removed_actions_internal as la_on_joystick_removed_internal then
				Result := la_on_joystick_removed_internal
			else
				create Result
				if is_running then
					events_controller.joy_device_removed_actions.extend (joystick_removed_actions_callback)
				end
				joystick_removed_actions_internal := Result
			end
		end

	file_dropped_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]
			-- Called when the file (or any other string) `filename' is drag and drop on a {GAME_WINDOW}.
			-- The event is not enabled by default. Use `events_controller'.`enable_file_dropped_event' to enable it.
		require
			Joystick_Found_Event_Enabled: events_controller.is_joy_device_founded_event_enable
		do
			if attached file_dropped_actions_internal as la_on_file_drop_internal then
				Result := la_on_file_drop_internal
			else
				create Result
				if is_running then
					events_controller.file_dropped_actions.extend (file_dropped_actions_callback)
				end
				file_dropped_actions_internal := Result
			end
		end

feature {NONE} -- Implementation

	quit_signal_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal representation of the quit signal event

	quit_signal_actions_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]
			-- Internal callback of the quit signal event

	iteration_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Internal representation of the iteration event

	iteration_actions_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]
			-- Internal callback of the iteration event

	joystick_founded_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]
			-- Internal representation of the joystick founded event

	joystick_founded_actions_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]
			-- Internal callback of the joystick founded event

	joystick_removed_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]
			-- Internal representation of the joystick removed event

	joystick_removed_actions_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]
			-- Internal callback of the joystick removed event

	file_dropped_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]
			-- Internal representation of the file drop event

	file_dropped_actions_callback: PROCEDURE[ANY, TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]
			-- Internal callback of the file dropped event


end
