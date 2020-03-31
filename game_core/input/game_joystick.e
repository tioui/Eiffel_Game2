note
	description: "Joystick manager. Not tested. It is most probable that it does not work correctly"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_JOYSTICK

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


create {GAME_LIBRARY_CONTROLLER}
	make

feature {NONE} -- Initialization

	make(a_from_index:INTEGER)
			-- Initialization for `Current'.
		do
			events_controller := game_library.events_controller
			index:=a_from_index
			is_removed := False
			make_events
		end

feature -- Access

	is_removed:BOOLEAN
			-- `Current' has been removed

	name:STRING
			-- Return the Joystick Name.
		require
			Not_Removed: not is_removed
		local
			l_text_return:C_STRING
		do
			if is_open then
				create l_text_return.make_by_pointer ({GAME_SDL_EXTERNAL}.SDL_JoystickName(item))
			else
				create l_text_return.make_by_pointer ({GAME_SDL_EXTERNAL}.SDL_JoystickNameForIndex(index))
			end
			Result:=l_text_return.string
		end

	open
			-- Open `Current' (Allocate internal structure).
		require
			Open_Joystick_Not_Open:not is_open
		do
			clear_error
			item:={GAME_SDL_EXTERNAL}.SDL_JoystickOpen(index)
			manage_error_pointer(item, "Error while opening the Joystick.")
		ensure
			Is_Open_Or_Error: not has_error implies is_open
		end

	close
			-- Close `Current' (Free internal structure).
		require
			Close_Is_Open: is_open
		do
			if
				attached internal_haptic_controller as la_internal_haptic_controller and then
				la_internal_haptic_controller.is_open
			then
				la_internal_haptic_controller.close
			end
			{GAME_SDL_EXTERNAL}.SDL_JoystickClose(item)
			create item
		end

	is_open:BOOLEAN
			-- True if the joystick has been opened.
		do
			Result := (not item.is_default_pointer) and then {GAME_SDL_EXTERNAL}.SDL_JoystickGetAttached(item)
		end

	index:INTEGER
		-- The internal `index' representing `Current'

	axes_count:INTEGER
			-- Get the number of axes on the joystick.
		require
			Get_Axes_Number_Opened: is_open
			Not_Removed: not is_removed
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumAxes(item)
			manage_error_code(Result, "Error while querying the number of joystick axes.")
		end

	axes_number:INTEGER
			-- Get the number of axes on the joystick.
		obsolete
			"Use `axes_count' instead"
		require
			Get_Axes_Number_Opened: is_open
			Not_Removed: not is_removed
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumAxes(item)
			manage_error_code(Result, "Error while querying the number of joystick axes.")
		end

	axis_value(a_axis_id:INTEGER):INTEGER_16
			-- Get the value of the axis identified by `a_axis_id'.
			-- Note that `a_axis_id' index start at 0
		require
			Get_Axis_Value_Opened: is_open
			Not_Removed: not is_removed
			Get_Axis_Value_Axis_Id_Valid: a_axis_id<axes_number
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickGetAxis(item,a_axis_id)
		end

	balls_count:INTEGER
			-- Return the number of balls on the joystick.
		require
			Get_Balls_Number_Opened: is_open
			Not_Removed: not is_removed
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumBalls(item)
			manage_error_code(Result, "Error while querying the number of joystick balls.")
		end

	balls_number:INTEGER
			-- Return the number of balls on the joystick.
		obsolete
			"Use `balls_count' instead"
		require
			Get_Balls_Number_Opened: is_open
			Not_Removed: not is_removed
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumBalls(item)
			manage_error_code(Result, "Error while querying the number of joystick balls.")
		end

	ball_change(a_ball_id:INTEGER):TUPLE[x_relative, y_relative:INTEGER]
			-- Return the state of the ball identified by `a_ball_id' (relative to the last read).
			-- Note that `a_ball_id' index start at 0
		require
			Get_Ball_Value_Opened: is_open
			Get_Ball_Value_Ball_Id_Valid: a_ball_id<axes_number
			Not_Removed: not is_removed
		local
			l_dx,l_dy,l_error:INTEGER
		do
			clear_error
			{GAME_SDL_EXTERNAL}.SDL_JoystickUpdate
			l_error:={GAME_SDL_EXTERNAL}.SDL_JoystickGetBall(item,a_ball_id,$l_dx,$l_dy)
			Result:=[l_dx,l_dy]
			manage_error_code(l_error, "Error while querying the state change of joystick ball.")
		end

	buttons_count:INTEGER
			-- Return the number of buttons on the joystick.
		require
			Get_Buttons_Number_Opened: is_open
			Not_Removed: not is_removed
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumButtons(item)
			manage_error_code(Result, "Error while querying the number of joystick buttons.")
		end

	buttons_number:INTEGER
			-- Return the number of buttons on the joystick.
		obsolete
			"Use `buttons_count' instead"
		require
			Get_Buttons_Number_Opened: is_open
			Not_Removed: not is_removed
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumButtons(item)
			manage_error_code(Result, "Error while querying the number of joystick buttons.")
		end

	is_button_pressed(a_button_id:INTEGER):BOOLEAN
			-- True if the button identified by `a_button_id' is pressed, False otherwise
			-- Note that `a_button_id' index start at 0
		require
			Is_Buttons_Pressed_Opened: is_open
			Is_Button_Pressed_Button_Id_Valid: a_button_id<buttons_number
			Not_Removed: not is_removed
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickGetButton(item, a_button_id)
		end

	hats_count:INTEGER
			-- Return the number of hats on the joystick.
		require
			Get_Hats_Number_Opened: is_open
			Not_Removed: not is_removed
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumHats(item)
			manage_error_code(Result, "Error while querying the number of joystick hats.")
		end

	hats_number:INTEGER
			-- Return the number of hats on the joystick.
		obsolete
			"Use `hats_count' instead"
		require
			Get_Hats_Number_Opened: is_open
			Not_Removed: not is_removed
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumHats(item)
			manage_error_code(Result, "Error while querying the number of joystick hats.")
		end

	hat_state(a_hat_id:INTEGER):GAME_JOYSTICK_HAT_STATE
			-- The state of the hat identified by `a_hat_id'
			-- Note that `a_hat_id' index start at 0
		require
			Get_Hat_State_Opened: is_open
			Not_Removed: not is_removed
			Get_Hat_State_Hat_Id_Valid: a_hat_id<hats_number
		do
			create Result.make ({GAME_SDL_EXTERNAL}.SDL_JoystickGetHat(item, a_hat_id))
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
				{GAME_SDL_EXTERNAL}.c_SDL_JoystickGetDeviceGUIDString(index, l_string_buffer, 50)
			end
			Result := (create {C_STRING}.own_from_pointer (l_string_buffer)).string
		end

	instance_id:INTEGER_32
			-- Identifier of `Current' used in event handeling
		require
			Is_Buttons_Pressed_Opened: is_open
			Not_Removed: not is_removed
		do
			clear_error
			Result := {GAME_SDL_EXTERNAL}.SDL_JoystickInstanceID(item)
			manage_error_code(Result, "Error while querying the joystick's instance ID.")
		end

	is_haptic_capable:BOOLEAN
			-- Is `Current' has haptic features
		require
			Is_Buttons_Pressed_Opened: is_open
			Not_Removed: not is_removed
			Is_Haptic_Enable: Game_library.is_haptic_enable
		local
			l_error : INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_JoystickIsHaptic(item)
			manage_error_code(l_error, "Error while querying if the joystick has haptic functionnalities.")
			Result := l_error = 1
		end

	haptic_controller:GAME_HAPTIC_JOYSTICK
			-- Used to manage the haptic (force feedback) of `Current'
		require
			Is_Buttons_Pressed_Opened: is_open
			Not_Removed: not is_removed
			Is_Haptic_Capable: is_haptic_capable
			Is_Haptic_Enable: Game_library.is_haptic_enable
		do
			if attached internal_haptic_controller as la_internal_haptic_controller then
				Result := la_internal_haptic_controller
			else
				create Result.make(Current)
				internal_haptic_controller := Result
			end
		end

	events_controller:GAME_EVENTS_CONTROLLER
			-- Used main event manager

feature {GAME_SDL_ANY} -- Implementation

	item:POINTER
			-- Point to the internal C structure of `Current'

feature {NONE} -- Implementation

	internal_haptic_controller: detachable GAME_HAPTIC_JOYSTICK
			-- Value of the lazy evaluated attribute `haptic_controller'

	dispose
			-- <Pecursor>
	do
		if is_open then
			close
		end
	end

feature {GAME_LIBRARY_CONTROLLER} -- Implementation

	remove
			-- set `is_removed' to `True'
		do
			is_removed := True
		ensure
			Is_Removed_Set: is_removed
		end

end
