note
	description: "Controller manager"
	author: "Malyk Vigneault"
	date: "March 6, 2026"
	revision: "1.0"

class
	GAME_CONTROLLER
inherit
	DISPOSABLE
	GAME_LIBRARY_SHARED
	GAME_CONTROLLER_EVENTS
		rename
			make as make_events,
			id as index,
			stop as stop_events,
			run as run_events,
			is_running as is_events_running,
			clear as clear_events
		end

create
	make

feature {NONE}  -- Initialization

	make(a_joystick_id:INTEGER_32)
			-- Initialization for `Current' using `a_open_index' when `open'.
		do
			create axis.make
			create buttons.make
			joystick_id := a_joystick_id
			open_index := a_joystick_id
			events_controller := game_library.events_controller
			is_removed := false
			make_events

		end
feature -- Access

	axis:CONTROLLER_AXIS
		-- axis of the controller

	buttons:CONTROLLER_BUTTONS
		-- buttons of the controller

	index:INTEGER
		-- Internal unique identifier of 'Current'
		do
			if is_open then
				Result :=cached_instance_id
			else
				Result := -1
			end
		end

	is_removed:BOOLEAN
		-- 'Current' has been removed

	name:STRING
		-- return the gamepad name
		require
				Not_Removed: not is_removed
			local
				l_text_return:C_STRING
			do
				if is_open then
					create l_text_return.make_by_pointer ({GAME_SDL_EXTERNAL}.sdl_gamecontrollername(item))
				else
					create l_text_return.make_by_pointer ({GAME_SDL_EXTERNAL}.sdl_gamecontrollernameforindex(open_index))
				end
				Result:=l_text_return.string
			end

	guid:READABLE_STRING_GENERAL
			-- A unique hardware identifier of `Current'
		require
			Not_Removed: not is_removed
		local
			l_string_buffer:POINTER
			l_c_string:C_STRING
		do
			check joystick /= joystick.default_pointer end
			l_string_buffer := l_string_buffer.memory_alloc (50)
			if is_open then
				{GAME_SDL_EXTERNAL}.c_SDL_JoystickGetGUIDString(joystick, l_string_buffer, 50)
			else
				{GAME_SDL_EXTERNAL}.c_SDL_JoystickGetDeviceGUIDString(open_index, l_string_buffer, 50)
			end
			 create l_c_string.make_by_pointer (l_string_buffer)
 		   print("GUID: " + l_c_string.string + "%N")
  			  Result := l_c_string.string
			Result := (create {C_STRING}.make_by_pointer (l_string_buffer)).string
		end



	open
			-- Open `Current' (Allocate internal structure).
		require
			Open_Gamepad_Not_Open:not is_open
		do
			clear_error
			item := {GAME_SDL_EXTERNAL}.sdl_gamecontrolleropen(open_index)
			manage_error_pointer(item, "Error while opening the Gamepad.")
			if is_open then
                cached_instance_id := {GAME_SDL_EXTERNAL}.SDL_JoystickInstanceID(joystick)
            end
		ensure
			Is_Open_Or_Error: not has_error implies is_open
		end

	joystick:POINTER
		do
			Result := {GAME_SDL_EXTERNAL}.sdl_gamecontrollergetjoystick (item)
		end

	close
			-- Close `Current' (Free internal structure).
	--	require
	--		Close_Is_Open: is_open
		do
			internal_close
		end

	is_open:BOOLEAN
			-- True if the controller is open
		do
			Result := (not item.is_default_pointer) and then {GAME_SDL_EXTERNAL}.sdl_gamecontrollergetattached (item)
		end

	is_button_pressed(a_button_id:INTEGER_32):BOOLEAN
			-- True if the button identified by 'a_button_id' is pressed, False otherwise
			-- Note that 'a_button_id' index start at 0
		require
			Is_Buttons_Pressed_Opened: is_open
			Not_Removed: not is_removed
		do
			Result := {GAME_SDL_EXTERNAL}.sdl_gamecontrollergetbutton (item, a_button_id)
		end

	get_axis(axis_id:INTEGER):INTEGER_16
			-- get the axis for a given 'axis_id'
		do
			Result:={GAME_SDL_EXTERNAL}.sdl_gamecontrollergetaxis (item, axis_id)
		end

	cached_instance_id: INTEGER_32
        -- Instance ID mis en cache lors du open, reste valide après déconnexion

	events_controller:GAME_EVENTS_CONTROLLER
			-- Used main event manager

	joystick_id: INTEGER_32
				-- joystick identifier of the gamepad

feature  {NONE} -- Implementation


	dispose
			-- <Pecursor>
	do
		if not item.is_default_pointer then
			{GAME_SDL_EXTERNAL}.sdl_gamecontrollerclose (item)
		end
	end

feature --{GAME_SDL_ANY} -- Implementation

	item:POINTER
			-- Point to the internal C structure of `Current'

feature {GAME_LIBRARY_CONTROLLER}  -- Implementation


	open_index:INTEGER assign set_open_index
		-- The internal 'index' used by 'open'

	set_open_index(a_index:INTEGER)
			-- Assign 'a_index' to 'open_index'
		do
			open_index := a_index
		ensure
			Is_Assign: open_index = a_index
		end

	internal_close
			-- Close `Current' (Free internal structure).
		do

			{GAME_SDL_EXTERNAL}.sdl_gamecontrollerclose(item)
			create item
		end

	remove
			-- set 'is_removed' to 'True'
		do
			is_removed := true
		ensure
			Is_Removed_Set: is_removed
		end

end
