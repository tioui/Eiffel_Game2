note
	description: "[
						Battery/power supply informations.
						You should never take a battery status as absolute truth. 
						Batteries (especially failing batteries) are delicate hardware, 
						and the values reported here are best estimates based on what that 
						hardware reports. It's not uncommon for older batteries to lose 
						stored power much faster than it reports, or completely drain when 
						reporting it has 20 percent left, etc.

						Battery status can change at any time; if you are concerned with power state,
						you should call this function frequently, and perhaps ignore changes until
						they seem to be stable for a few seconds.
					]"
	author: "Louis Marchand"
	date: "Thu, 28 Jan 2016 02:17:06 +0000"
	revision: "2.0"

class
	GAME_BATTERY

inherit
	GAME_SDL_ANY
		redefine
			default_create
		end

create
	default_create

feature {NONE} -- Initialization

	default_create
			-- Initialization of `Current'
		do
			create null
			update
		end

feature-- Access

	update
			-- Check the battery state and life to update the features of `Current'
		local
			l_seconds, l_percentage:INTEGER
		do
			state := {GAME_SDL_EXTERNAL}.SDL_GetPowerInfo($l_seconds, $l_percentage)
			seconds_left := l_seconds
			percentage_left := l_percentage
			if l_seconds < 0 or l_percentage < 0 then
				is_life_left_valid := False
			else
				is_life_left_valid := True
			end
		end

feature -- Status Report

	is_life_left_valid:BOOLEAN
			-- The last `update' did not return any valid value for `seconds_left' and `percentage_left'.
			-- You can wait for some time and retry. If it is always not valid, maybe the system does not
			-- support battery life information or the system is not running on battery.

	seconds_left:INTEGER
			-- An approximation of the seconds of battery life left

	percentage_left:INTEGER
			-- An approximation of the percentage of battery life left

	is_state_unknown:BOOLEAN
			-- Cannot identify the state of `Current'
			-- You can wait for some time and retry.
			-- If it is always unknown, maybe the system does not support battery.
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_POWERSTATE_UNKNOWN
		end

	is_state_on_battery:BOOLEAN
			-- not plugged in, running on the battery
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_POWERSTATE_ON_BATTERY
		end

	is_state_no_battery:BOOLEAN
			-- plugged in, no battery available
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_POWERSTATE_NO_BATTERY
		end

	is_state_charging:BOOLEAN
			-- plugged in, charging battery
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_POWERSTATE_CHARGING
		end

	is_state_charged:BOOLEAN
			-- plugged in, battery charged
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_POWERSTATE_CHARGED
		end

feature {NONE} -- Implementation

	state:NATURAL
			-- The last state of `Current'  returned by `update'

	null:POINTER
			-- A default null pointer
end
