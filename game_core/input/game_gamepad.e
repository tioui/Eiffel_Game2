note
	description: "Summary description for {GAME_GAMEPAD}."
	author: "Malyk Vigneault"
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_GAMEPAD
inherit
	DISPOSABLE
	GAME_LIBRARY_SHARED
	GAME_GAMEPAD_EVENTS
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

feature  -- Initialization
--{NONE}
	make(a_joystick_id:INTEGER_32)
			-- Initialization for `Current' using `a_open_index' when `open'.
		do
			create axis.make
			create buttons.make
			joystick_id := a_joystick_id
			events_controller := game_library.events_controller
			is_removed := false
			make_events

		end
feature -- Access

	axis:GAMEPAD_AXIS

	buttons:GAMEPAD_BUTTONS

	index:INTEGER
		-- Internal unique identifier of 'Current'
		do
			if is_open then
				Result :=joystick_id
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

	open
			-- Open `Current' (Allocate internal structure).
		require
			Open_Gamepad_Not_Open:not is_open
		do
			clear_error
			item := {GAME_SDL_EXTERNAL}.sdl_gamecontrolleropen(joystick_id)
			manage_error_pointer(item, "Error while opening the Gamepad.")
		ensure
			Is_Open_Or_Error: not has_error implies is_open
		end

	close
			-- Close `Current' (Free internal structure).
		require
			Close_Is_Open: is_open
		do
			{GAME_SDL_EXTERNAL}.sdl_gamecontrollerclose (item)
		end

	is_open:BOOLEAN
			-- True if the joystick has been opened.
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

--	guid:READABLE_STRING_GENERAL
--			-- A unique hardware identifier of 'Current'
--		require
--			Not_Removed: not is_removed
--		do
--			Result:= {GAME_SDL_EXTERNAL}.sdl_getgamepadguidforid (instance_id)
--		end
	get_axis(axis_id:INTEGER):INTEGER_16
		do
			Result:={GAME_SDL_EXTERNAL}.sdl_gamecontrollergetaxis (item, axis_id)
		end



	events_controller:GAME_EVENTS_CONTROLLER
			-- Used main event manager

feature  {NONE} -- Implementation
	dispose
			-- <Pecursor>
	do
		if not item.is_default_pointer then
			{GAME_SDL_EXTERNAL}.sdl_gamecontrollerclose (item)
		end
	end

feature {GAME_SDL_ANY} -- Implementation

	item:POINTER
			-- Point to the internal C structure of `Current'

	joystick_id: INTEGER_32
				-- joysticks of the gamepad

feature  -- Implementation
--{GAME_LIBRARY_CONTROLLER}

	open_index:INTEGER assign set_open_index
		-- The internal 'index' used by 'open'

	set_open_index(a_index:INTEGER)
			-- Assign 'a_index' to 'open_index'
		do
			open_index := a_index
		ensure
			Is_Assign: open_index = a_index
		end

	remove
			-- set 'is_removed' to 'True'
		do
			is_removed := true
		ensure
			Is_Removed_Set: is_removed
		end

end
