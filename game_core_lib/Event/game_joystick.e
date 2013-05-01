note
	description: "Joystick manager. Not tested. It is most probable that it does not work correctly"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_JOYSTICK

inherit
	DISPOSABLE

create {GAME_SDL_CONTROLLER}
	make

feature {NONE} -- Initialization

	make(a_from_index:INTEGER)
			-- Initialization for `Current'.
		do
			index:=a_from_index
		end

feature -- Access

	name:STRING
		-- Return the Joystick Name.
	local
		l_text_return:C_STRING
	do
		create l_text_return.make_by_pointer ({GAME_SDL_EXTERNAL}.SDL_JoystickName(index))
		Result:=l_text_return.string
	end

	open
		-- Open the joystick.
	require
		Open_Joystick_Not_Open:not is_opened
	do
		joy_ptr:={GAME_SDL_EXTERNAL}.SDL_JoystickOpen(index)
	end

	close
		-- Close the joystick.
	require
		Close_Is_Open: is_opened
	do
		{GAME_SDL_EXTERNAL}.SDL_JoystickClose(joy_ptr)
	end

	is_opened:BOOLEAN
		-- Return true if the joystick is open.
	do
		Result:={GAME_SDL_EXTERNAL}.SDL_JoystickOpened(index)=1
	end

	get_axes_number:INTEGER
		-- Get the number of axes on the joystick.
	require
		Get_Axes_Number_Opened: is_opened
	do
		Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumAxes(joy_ptr)
	end

	get_balls_number:INTEGER
		-- Return the number of balls on the joystick.
	require
		Get_Balls_Number_Opened: is_opened
	do
		Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumBalls(joy_ptr)
	end

	get_hats_number:INTEGER
		-- Return the number of hats on the joystick.
	require
		Get_Hats_Number_Opened: is_opened
	do
		Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumHats(joy_ptr)
	end

	get_buttons_number:INTEGER
		-- Get the number of buttons on the joystick.
	require
		Get_Buttons_Number_Opened: is_opened
	do
		Result:={GAME_SDL_EXTERNAL}.SDL_JoystickNumButtons(joy_ptr)
	end

	get_axis_value(a_axis_id:INTEGER):INTEGER_16
		-- Get the value of an axis.
	require
		Get_Axis_Value_Opened: is_opened
		Get_Axis_Value_Axis_Id_Valid: a_axis_id<get_axes_number
	do
		{GAME_SDL_EXTERNAL}.SDL_JoystickUpdate
		Result:={GAME_SDL_EXTERNAL}.SDL_JoystickGetAxis(joy_ptr,a_axis_id)
	end

	get_hat_value(a_hat_id:INTEGER):TUPLE[up,down,right,left:BOOLEAN]
		-- Get the value of a hat.
	require
		Get_Hat_Value_Opened: is_opened
		Get_Hat_Value_Hat_Id_Valid: a_hat_id<get_hats_number
	local
		l_internal_value:NATURAL_8
	do
		{GAME_SDL_EXTERNAL}.SDL_JoystickUpdate
		l_internal_value:={GAME_SDL_EXTERNAL}.SDL_JoystickGetHat(joy_ptr,a_hat_id)
		Result:=[false,false,false,false]
		if l_internal_value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_UP)/=0 then
			Result.up:=true
		end
		if l_internal_value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_DOWN)/=0 then
			Result.down:=true
		end
		if l_internal_value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_LEFT)/=0 then
			Result.left:=true
		end
		if l_internal_value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_RIGHT)/=0 then
			Result.right:=true
		end
	end

	is_button_pushed(a_button_id:INTEGER):BOOLEAN
		-- Return true if the button is pressed.
	require
		Get_Button_State_Opened: is_opened
		GetButton_State_Button_Id_Valid: a_button_id<get_balls_number
	do
		{GAME_SDL_EXTERNAL}.SDL_JoystickUpdate
		Result:={GAME_SDL_EXTERNAL}.SDL_JoystickGetButton(joy_ptr,a_button_id)/=0
	end

	get_ball_change(a_ball_id:INTEGER):TUPLE[relative_x, relative_y:INTEGER]
		-- Return the state of the ball (relative to the last read).
	require
		Get_Ball_Value_Opened: is_opened
		Get_Ball_Value_Ball_Id_Valid: a_ball_id<get_axes_number
	local
		l_dx,l_dy,l_error:INTEGER
	do
		{GAME_SDL_EXTERNAL}.SDL_JoystickUpdate
		l_error:={GAME_SDL_EXTERNAL}.SDL_JoystickGetBall(joy_ptr,a_ball_id,$l_dx,$l_dy)
		check l_error=0 end
		Result:=[l_dx,l_dy]
	end

feature {NONE} -- Implementation

	joy_ptr:POINTER

	index:INTEGER

	dispose
	do
		if is_opened then
			close
		end
	end

end
