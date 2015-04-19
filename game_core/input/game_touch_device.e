note
	description: "A touch input device that can detect finger pressure"
	author: "Louis Marchand"
	date: "Thu, 16 Apr 2015 19:47:44 +0000"
	revision: "2.0"

class
	GAME_TOUCH_DEVICE

inherit
	GAME_TOUCH_DEVICE_EVENTS
		rename
			id as index
		end
	GAME_LIBRARY_SHARED
		undefine
			default_create
		end
	GAME_DOLLAR_GESTURE_MANAGER
		export
			{NONE} save_all_dollar_gesture_template, append_all_dollar_gesture_template
		undefine
			default_create
		end

create
	make

feature {NONE} -- Initialization

	make(a_number:INTEGER)
			-- Initialization of `Current' being the `a_number'nd touch device in the system
		do
			index := {GAME_SDL_EXTERNAL}.SDL_GetTouchDevice(a_number)
			events_controller := game_library.events_controller
			default_create
		end

feature -- Access

	finger_count:INTEGER
			-- The number of `fingers' presently detect by `Current'
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetNumTouchFingers(index)
		end

	finger_with_number(a_number:INTEGER):GAME_FINGER_STATE
			-- Retreive a snapshot of the finger state at `a_number' in `fingers'
		require
			Number_Strictly_Positive: a_number > 0
		do
			create Result.make(Current, a_number)
		end

	fingers:ARRAYED_LIST[GAME_FINGER_STATE]
			-- A snapshot of the states of every finger that is applied on `Current'
		local
			l_number:INTEGER
		do
			create Result.make(finger_count)
			from l_number := 1 until l_number > finger_count loop
				Result.extend(finger_with_number(l_number))
				l_number := l_number + 1
			end
		end

	index:INTEGER_64
			-- The unique internal identifier of `Current'

	events_controller: GAME_EVENTS_CONTROLLER
			-- <Precursor>

end
