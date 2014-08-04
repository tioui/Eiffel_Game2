note
	description: "Summary description for {GAME_COMMON_EVENTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_COMMON_EVENTS


create
	make

feature {NONE} -- Initialisation

	make(a_events_controller:GAME_EVENTS_CONTROLLER)
		do
			is_running:=False
			events_controller := a_events_controller
			on_file_drop_callback := agent (a_timestamp:NATURAL_32; a_filename:READABLE_STRING_GENERAL) do on_file_drop.call ([a_timestamp, a_filename]) end
			on_joystick_added_callback := agent (a_timestamp:NATURAL_32; a_joystick_id:INTEGER_32) do on_joystick_added.call ([a_timestamp, a_joystick_id]) end
			on_joystick_removed_callback := agent (a_timestamp:NATURAL_32; a_joystick_id:INTEGER_32) do on_joystick_removed.call ([a_timestamp, a_joystick_id]) end
			on_quit_signal_callback := agent (a_timestamp:NATURAL_32) do on_quit_signal.call ([a_timestamp]) end
			on_iteration_callback:=agent (a_timestamp:NATURAL_32) do on_iteration.call ([a_timestamp]) end
			run
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
			events_controller.on_quit_signal.prune_all (on_quit_signal_callback)
			events_controller.on_iteration.prune_all (on_iteration_callback)
			events_controller.on_joy_device_added.prune_all (on_joystick_added_callback)
			events_controller.on_joy_device_removed.prune_all (on_joystick_removed_callback)
			events_controller.on_file_drop.prune_all (on_file_drop_callback)

		end

	run
			-- Put `Current' active.
		require
			Run_Not_Already_Running: not is_running
		do
			is_running:=True
			if attached on_quit_signal_internal as la_on_quit_signal_internal then
				events_controller.on_quit_signal.extend (on_quit_signal_callback)
			end
			if attached on_iteration_internal as la_on_iteration_internal then
				events_controller.on_iteration.extend (on_iteration_callback)
			end
			if attached on_joystick_added_internal as la_on_joystick_added_internal then
				events_controller.on_joy_device_added.extend (on_joystick_added_callback)
			end
			if attached on_joystick_removed_internal as la_on_joystick_removed_internal then
				events_controller.on_joy_device_removed.extend (on_joystick_removed_callback)
			end
			if attached on_file_drop_internal as la_on_file_drop_internal then
				events_controller.on_file_drop.extend (on_file_drop_callback)
			end

		end

	is_running:BOOLEAN
			-- Is `Current' active

	on_quit_signal: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When the application receive a quit signal.
		do
			if attached on_quit_signal_internal as la_on_quit_signal_internal then
				Result := la_on_quit_signal_internal
			else
				create Result
				events_controller.on_quit_signal.extend (on_quit_signal_callback)
				on_quit_signal_internal := Result
			end
		end

	on_iteration: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Called at each game loop
		do
			if attached on_iteration_internal as la_on_iteration_internal then
				Result := la_on_iteration_internal
			else
				create Result
				events_controller.on_iteration.extend (on_iteration_callback)
				on_iteration_internal := Result
			end
		end

	on_joystick_added: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]
			-- Called when a new joystick has been founded
			-- To get the new joystick, call {GAME_LIBRARY_CONTROLLER}.`refresh_joysticks',
			-- then use the {GAME_LIBRARY_CONTROLLER}.`joysticks'.`at'(`joystick_id')
		do
			if attached on_joystick_added_internal as la_on_joystick_added_internal then
				Result := la_on_joystick_added_internal
			else
				create Result
				events_controller.on_joy_device_added.extend (on_joystick_added_callback)
				on_joystick_added_internal := Result
			end
		end

	on_joystick_removed: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]
			-- Called when a new joystick has been removed
			-- The joystick will be removed from {GAME_LIBRARY_CONTROLLER}.`joysticks' when the
			-- {GAME_LIBRARY_CONTROLLER}.`refresh_joysticks' will be called.
		do
			if attached on_joystick_removed_internal as la_on_joystick_removed_internal then
				Result := la_on_joystick_removed_internal
			else
				create Result
				events_controller.on_joy_device_removed.extend (on_joystick_removed_callback)
				on_joystick_removed_internal := Result
			end
		end

	on_file_drop: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]
		do
			if attached on_file_drop_internal as la_on_file_drop_internal then
				Result := la_on_file_drop_internal
			else
				create Result
				events_controller.on_file_drop.extend (on_file_drop_callback)
				on_file_drop_internal := Result
			end
		end


feature {NONE} -- Implementation

	on_quit_signal_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	on_quit_signal_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]

	on_iteration_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	on_iteration_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]

	on_joystick_added_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]

	on_joystick_added_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]

	on_joystick_removed_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]

	on_joystick_removed_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32; joystick_id:INTEGER_32]]

	on_file_drop_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]

	on_file_drop_callback: PROCEDURE[ANY, TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]

	events_controller:GAME_EVENTS_CONTROLLER

end
