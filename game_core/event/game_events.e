note
	description: "Summary description for {GAME_EVENTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_EVENTS

inherit
	GAME_SDL_ANY

feature -- Access

	stop
			-- Put `Current' innactive.
		require
			Stop_Is_Running: is_running
		deferred
		ensure
			Is_Stopped: not is_running
		end

	run
			-- Put `Current' active.
		require
			Run_Not_Already_Running: not is_running
		deferred
		ensure
			Is_Running: is_running
		end

	set_is_running(a_value:BOOLEAN)
			-- Assign to `is_running' the value of `a_value'
		do
			if a_value then
				run
			else
				stop
			end
		ensure
			Is_Assign: is_running ~ a_value
		end

	clear
			-- Remove all events.
		deferred
		ensure
			Running_Unchanged: is_running = old is_running
		end

	is_running:BOOLEAN assign set_is_running
			-- Is `Current' active
		deferred
		end

	events_controller:GAME_EVENTS_CONTROLLER
			-- Manage every internal events
		deferred
		end

end
