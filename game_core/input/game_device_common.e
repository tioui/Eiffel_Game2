note
	description: "Common ancestor to objects that can manage physical devices for inputs"
	author: "Malyk Vigneault"
	date: "12 avril 2026"
	revision: "1.0"

deferred class
	GAME_DEVICE_COMMON

inherit
	DISPOSABLE
	GAME_JOYSTICK_EVENTS
		rename
			make as make_events,
			id as index,
			stop as stop_events,
			run as run_events,
			is_running as is_events_running,
			clear as clear_events
		end
	GAME_LIBRARY_SHARED

feature {NONE} -- Initialization

	make(a_open_index:INTEGER)
			-- Initialization for `Current' using `a_open_index' when `open'.
		do
			events_controller := game_library.events_controller
			open_index := a_open_index
			is_removed := False
			make_events
		end

feature -- Access

	index:INTEGER
			-- Internal unique identifier of `Current'
		deferred
		end

	is_removed:BOOLEAN
			-- `Current' has been removed

	name:STRING
			-- Return the Device Name.
		require
			Not_Removed: not is_removed
		deferred
		end

	open
			-- Open `Current' (Allocate internal structure).
		require
			Open_Device_Not_Open:not is_open
		deferred
		ensure
			Is_Open_Or_Error: not has_error implies is_open
		end

	close
			-- Close `Current' (Free internal structure).
		do
			internal_close
		end

	is_open:BOOLEAN
			-- True if the device has been opened.
		deferred
		end

	is_button_pressed(a_button_id:INTEGER):BOOLEAN
	require
			Is_Buttons_Pressed_Opened: is_open
			Not_Removed: not is_removed
	deferred
	end

	guid:READABLE_STRING_GENERAL
			-- A unique hardware identifier of `Current'
		require
			Not_Removed: not is_removed
		local
			l_string_buffer:POINTER
		do
			l_string_buffer := l_string_buffer.memory_alloc (50)
			if is_open then
				{GAME_SDL_EXTERNAL}.c_SDL_JoystickGetGUIDString(item, l_string_buffer, 50)
			else
				{GAME_SDL_EXTERNAL}.c_SDL_JoystickGetDeviceGUIDString(open_index, l_string_buffer, 50)
			end
			Result := (create {C_STRING}.own_from_pointer (l_string_buffer)).string
		end

	events_controller:GAME_EVENTS_CONTROLLER
			-- Used main event manager

feature {GAME_SDL_ANY} -- Implementation

	item:POINTER
			-- Point to the internal C structure of `Current'

feature {NONE} -- Implementation

	dispose
			-- <Pecursor>
	do
		if not item.is_default_pointer then
			{GAME_SDL_EXTERNAL}.SDL_JoystickClose(item)
		end
	end

feature {GAME_LIBRARY_CONTROLLER} -- Implementation

	open_index:INTEGER assign set_open_index
		-- The internal `index' usedby `open'

	set_open_index(a_index:INTEGER)
			-- Assign `a_index' to `open_index'
		do
			open_index := a_index
		ensure
			Is_Assign: open_index = a_index
		end

	internal_close
			-- Close `Current' (Free internal structure).
		deferred
		end

	remove
			-- set `is_removed' to `True'
		do
			is_removed := True
		ensure
			Is_Removed_Set: is_removed
		end
end
