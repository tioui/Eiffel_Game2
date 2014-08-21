note
	description: "Summary description for {GAME_COMMON_EVENTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_COMMON_EVENTS


feature {NONE} -- Initialisation

	make
		do
			is_running:=True
			file_drop_actions_callback := agent (a_timestamp:NATURAL_32; a_filename:READABLE_STRING_GENERAL) do
											file_drop_actions.call ([a_timestamp, a_filename])
										end
			joystick_found_actions_callback := agent (a_timestamp:NATURAL_32; a_joystick_id:INTEGER_32) do
												joystick_found_actions.call ([a_timestamp, a_joystick_id])
											end
			joystick_remove_actions_callback := agent (a_timestamp:NATURAL_32; a_joystick_id:INTEGER_32) do
												joystick_remove_actions.call ([a_timestamp, a_joystick_id])
											end
			quit_signal_actions_callback := agent (a_timestamp:NATURAL_32) do
											quit_signal_actions.call ([a_timestamp])
										end
			iteration_actions_callback:=agent (a_timestamp:NATURAL_32) do
										iteration_actions.call ([a_timestamp])
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
			events_controller.quit_signal_actions.prune_all (quit_signal_actions_callback)
			events_controller.iteration_actions.prune_all (iteration_actions_callback)
			events_controller.joy_device_found_actions.prune_all (joystick_found_actions_callback)
			events_controller.joy_device_remove_actions.prune_all (joystick_remove_actions_callback)
			events_controller.file_drop_actions.prune_all (file_drop_actions_callback)
		end

	run
			-- Put `Current' active.
		require
			Run_Not_Already_Running: not is_running
		do
			is_running:=True
			if attached quit_signal_actions_internal as la_on_quit_signal_internal then
				events_controller.quit_signal_actions.extend (quit_signal_actions_callback)
			end
			if attached iteration_actions_internal as la_on_iteration_internal then
				events_controller.iteration_actions.extend (iteration_actions_callback)
			end
			if attached joystick_found_actions_internal as la_on_joystick_added_internal then
				events_controller.joy_device_found_actions.extend (joystick_found_actions_callback)
			end
			if attached joystick_remove_actions_internal as la_on_joystick_removed_internal then
				events_controller.joy_device_remove_actions.extend (joystick_remove_actions_callback)
			end
			if attached file_drop_actions_internal as la_on_file_drop_internal then
				events_controller.file_drop_actions.extend (file_drop_actions_callback)
			end
		end

	clear
			-- Remove all events.
		do
			if is_running then
				stop
			end
			quit_signal_actions_internal := Void
			iteration_actions_internal := Void
			joystick_found_actions_internal := Void
			joystick_remove_actions_internal := Void
			file_drop_actions_internal := Void
		end

	is_running:BOOLEAN
			-- Is `Current' active

	quit_signal_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When the application receive a quit signal.
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

	joystick_found_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]
			-- Called when a new joystick has been founded
			-- To get the new joystick, call {GAME_LIBRARY_CONTROLLER}.`refresh_joysticks',
			-- then use the {GAME_LIBRARY_CONTROLLER}.`joysticks'.`at'(`joystick_id')
		do
			if attached joystick_found_actions_internal as la_on_joystick_added_internal then
				Result := la_on_joystick_added_internal
			else
				create Result
				if is_running then
					events_controller.joy_device_found_actions.extend (joystick_found_actions_callback)
				end
				joystick_found_actions_internal := Result
			end
		end

	joystick_remove_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]
			-- Called when a new joystick has been removed
			-- The joystick will be removed from {GAME_LIBRARY_CONTROLLER}.`joysticks' when the
			-- {GAME_LIBRARY_CONTROLLER}.`refresh_joysticks' will be called.
		do
			if attached joystick_remove_actions_internal as la_on_joystick_removed_internal then
				Result := la_on_joystick_removed_internal
			else
				create Result
				if is_running then
					events_controller.joy_device_remove_actions.extend (joystick_remove_actions_callback)
				end
				joystick_remove_actions_internal := Result
			end
		end

	file_drop_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]
		do
			if attached file_drop_actions_internal as la_on_file_drop_internal then
				Result := la_on_file_drop_internal
			else
				create Result
				if is_running then
					events_controller.file_drop_actions.extend (file_drop_actions_callback)
				end
				file_drop_actions_internal := Result
			end
		end


feature {NONE} -- Implementation

	quit_signal_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	quit_signal_actions_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]

	iteration_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	iteration_actions_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]

	joystick_found_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]

	joystick_found_actions_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]

	joystick_remove_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]

	joystick_remove_actions_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]

	file_drop_actions_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]

	file_drop_actions_callback: PROCEDURE[ANY, TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]

	events_controller:GAME_EVENTS_CONTROLLER
		deferred
		end

end
