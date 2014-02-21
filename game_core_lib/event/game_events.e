note
	description: "Summary description for {GAME_EVENTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_EVENTS

inherit
	ANY
		redefine
			default_create
		end

create
	default_create

feature {NONE} -- Initialisation

	default_create
		do
			is_running:=True
		end

feature -- Access

	stop
			-- Put `Current' innactive.
		do
			if 	attached game_library as la_game_library and then
					attached la_game_library.events_controller as la_events_controller  then
				is_running:=False
				if attached internal_on_quit_signal as la_event then
					la_events_controller.on_quit_signal.prune_all (on_quit_signal_callback)
				end
				if attached internal_on_iteration as la_event then
					la_events_controller.on_quit_signal.prune_all (on_iteration_callback)
				end
			else
				check Game_Library_Not_Set:False end
			end
		end

	run
			-- Put `Current' active.
		do
			if 	attached game_library as la_game_library and then
					attached la_game_library.events_controller as la_events_controller  then
				is_running:=True
				if attached internal_on_quit_signal as la_event then
					la_events_controller.on_quit_signal.extend (on_quit_signal_callback)
				end
				if attached internal_on_iteration as la_event then
					la_events_controller.on_quit_signal.extend (on_iteration_callback)
				end
			else
				check Game_Library_Not_Set:False end
			end

		end

	is_running:BOOLEAN
			-- Is `Current' active



	on_quit_signal: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When the application receive a quit signal.
		do
			if attached internal_on_quit_signal as la_on_quit_signal then
				Result:=la_on_quit_signal
			else
				create Result
				if 	attached game_library as la_game_library and then
					attached la_game_library.events_controller as la_events_controller  then
					la_events_controller.on_quit_signal.extend (on_quit_signal_callback)
				else
					check Game_Library_Not_Set:False end
				end
				internal_on_quit_signal:=Result
			end
		end

	on_iteration: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Called at each game loop
		do
			if attached internal_on_iteration as la_on_iteration then
				Result:=la_on_iteration
			else
				create Result
				if 	attached game_library as la_game_library and then
					attached la_game_library.events_controller as la_events_controller  then
					la_events_controller.on_iteration.extend (on_iteration_callback)
				else
					check Game_Library_Not_Set:False end
				end
				internal_on_iteration:=Result
			end
		end

feature {GAME_SDL_CONTROLLER}

	set_game_library(a_game_library:GAME_SDL_CONTROLLER)
		do
			game_library := a_game_library
		end

feature {NONE} -- Implementation

	internal_on_quit_signal: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	on_quit_signal_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]
		do
			result:=agent (a_timestamp:NATURAL_32) do on_quit_signal.call ([a_timestamp]) end
		end

	internal_on_iteration: detachable ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]

	on_iteration_callback:PROCEDURE [ANY, TUPLE[timestamp:NATURAL_32]]
		do
			result:=agent (a_timestamp:NATURAL_32) do on_iteration.call ([a_timestamp]) end
		end

	game_library:detachable GAME_SDL_CONTROLLER

end
