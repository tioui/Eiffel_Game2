note
	description: "Summary description for {GAME_EVENTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_EVENTS


create
	make

feature {NONE} -- Initialisation

	make(a_event_controller:GAME_EVENTS_CONTROLLER)
		do
			is_running:=False
			events_controller := a_event_controller
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


feature {NONE} -- Implementation

	on_quit_signal_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	on_quit_signal_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]

	on_iteration_internal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	on_iteration_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]

	events_controller:GAME_EVENTS_CONTROLLER

end
