note
	description: "Controler for the event. It is important to call poll_event or wait_event regularly if you want events to be launch."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_EVENT_CONTROLLER

inherit
	DISPOSABLE

create {GAME_SDL_CONTROLLER}
	make

feature {NONE} -- Initialization

	make(ctrl:GAME_SDL_CONTROLLER)
			-- Initialization for `Current'.
		do
			sdl_ctrl:=ctrl
			event_ptr:={GAME_SDL_EXTERNAL}.c_event_struct_allocate
			make_tick_event
			make_active_event
			make_keyboard_event
			make_mouse_motion_event
			make_mouse_button_event
			make_joystick_axis_event
			make_joystick_balls_event -- Not tested. Dont have a joystick with balls
			make_joystick_hats_event -- Not tested. Dont have a joystick with hats
			make_joystick_buttons_event
			make_resize_event
			make_expose_event -- Not tested. Dont know how!
			make_quit_event

		end


feature -- Access

	poll_event
		-- Execute an event validation. If no event is pending, do nothing.
	local

		is_event:INTEGER
	do
		decode_tick_event
		is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(event_ptr)
		if is_event/=0 then
			decode_event(event_ptr)
		end
	end

--	wait_event
--		-- Execute an event validation. If no event is pending, wait an event before exit.
--	local
--		event_ptr:POINTER
--		is_event:INTEGER
--	do
--		event_ptr:={GAME_SDL_EXTERNAL}.c_event_struct_allocate
--		is_event:={GAME_SDL_EXTERNAL}.SDL_WaitEvent(event_ptr)
--		if is_event/=0 then
--			decode_event(event_ptr)
--		end
--		{GAME_SDL_EXTERNAL}.c_event_struct_free(event_ptr)
--	end

feature -- Active event access

	on_active_actions: ACTION_SEQUENCE[TUPLE[Gain,is_mouse_focus,is_keyboard_focus,minimise:BOOLEAN]]	-- When a window action come.

	on_mouse_enter: ACTION_SEQUENCE[TUPLE[]]	-- When the mouse enter the window.

	on_mouse_exit: ACTION_SEQUENCE[TUPLE[]]	-- When the mouse exit the window.

	on_get_focus: ACTION_SEQUENCE[TUPLE[]]	-- When the window get the focus.

	on_lost_focus: ACTION_SEQUENCE[TUPLE[]]	-- When the window lost the focus.

	on_minimise: ACTION_SEQUENCE[TUPLE[]]	-- When the window is minimize.

	on_restore: ACTION_SEQUENCE[TUPLE[]] -- When a minimize window is restore.


	is_active_event_actions:BOOLEAN
		-- Return true if there is at least one window event listener.
	do
		Result:=on_active_actions.count/=0 or else on_mouse_enter.count/=0 or else on_mouse_exit.count/=0 or else
				on_get_focus.count/=0 or else on_lost_focus.count/=0 or else on_minimise.count/=0 or else on_restore.count/=0
	end

feature {NONE} -- Active event Implementation

	make_active_event
	do
		create on_active_actions.default_create
		create on_mouse_enter.default_create
		create on_mouse_exit.default_create
		create on_get_focus.default_create
		create on_lost_focus.default_create
		create on_minimise.default_create
		create on_restore.default_create
	end

	decode_active_event(active_event:POINTER)
	local
		gain,state:NATURAL_8
	do
		gain:={GAME_SDL_EXTERNAL}.get_active_event_struct_gain(active_event)
		state:={GAME_SDL_EXTERNAL}.get_active_event_struct_state(active_event)
		if on_active_actions.count/=0 then
			on_active_actions.call ([gain=1,state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPMOUSEFOCUS)/=0,state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPINPUTFOCUS)/=0,state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPACTIVE)/=0])
		end
		if on_mouse_exit.count/=0 and state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPMOUSEFOCUS)/=0 and gain=0 then
			on_mouse_exit.call([])
		end
		if on_mouse_enter.count/=0 and state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPMOUSEFOCUS)/=0 and gain=1 then
			on_mouse_enter.call([])
		end
		if on_lost_focus.count/=0 and state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPINPUTFOCUS)/=0 and gain=0 then
			on_lost_focus.call([])
		end
		if on_get_focus.count/=0 and state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPINPUTFOCUS)/=0 and gain=1 then
			on_get_focus.call([])
		end
		if on_minimise.count/=0 and state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPACTIVE)/=0 and gain=0 then
			on_minimise.call([])
		end
		if on_restore.count/=0 and state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPACTIVE)/=0 and gain=1 then
			on_restore.call([])
		end
	end


feature -- Keyboard event access

	on_keyboard_actions: ACTION_SEQUENCE[TUPLE[keyboard_event:GAME_KEYBOARD_EVENT]]	-- When a keyboard event come.

	on_key_down:ACTION_SEQUENCE[TUPLE[keyboard_event:GAME_KEYBOARD_EVENT]]	-- When a keyboard key as been pressed

	on_key_up:ACTION_SEQUENCE[TUPLE[keyboard_event:GAME_KEYBOARD_EVENT]]	-- When a keyboard event has been released.

	is_keyboard_event_actions:BOOLEAN
		-- Return true if there is at least one keyboard event listener.
	do
		Result:=on_keyboard_actions.count/=0 or else on_key_down.count/=0 or else on_key_up.count/=0
	end

feature {NONE} -- Keyboard event Implementation

	make_keyboard_event
	do
		create on_keyboard_actions.default_create
		create on_key_down.default_create
		create on_key_up.default_create
	end

	decode_keyboard_event(keyboard_event_ptr:POINTER)
	local
		kb_event:GAME_KEYBOARD_EVENT
		keysym_ptr:POINTER
		type,state,scancode:NATURAL_8
		unicode:NATURAL_16
		sym,mod:INTEGER
	do
		type:={GAME_SDL_EXTERNAL}.get_keyboard_event_struct_type(keyboard_event_ptr)
		state:={GAME_SDL_EXTERNAL}.get_keyboard_event_struct_state(keyboard_event_ptr)
		keysym_ptr:={GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(keyboard_event_ptr)
		scancode:={GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode(keysym_ptr)
		unicode:={GAME_SDL_EXTERNAL}.get_key_sym_struct_unicode(keysym_ptr)
		sym:={GAME_SDL_EXTERNAL}.get_key_sym_struct_sym(keysym_ptr)
		mod:={GAME_SDL_EXTERNAL}.get_key_sym_struct_mod(keysym_ptr)
		create kb_event.make (type, state, scancode, unicode, sym, mod)
		if on_keyboard_actions.count/=0 then
			on_keyboard_actions.call ([kb_event])
		end
		if on_key_down.count/=0 and kb_event.is_key_down then
			on_key_down.call([kb_event])
		end
		if on_key_up.count/=0 and kb_event.is_key_up then
			on_key_up.call([kb_event])
		end
	end

feature -- Mouse motion event access

	on_mouse_motion: ACTION_SEQUENCE[TUPLE[x,y:NATURAL_16;relative_x, relative_y:INTEGER_16; is_left_button_press,is_right_button_press,is_middle_button_press,is_x1_button_press,is_x2_button_press:BOOLEAN]]
		-- When a mouse motion has been detected in the window

	on_mouse_motion_position:ACTION_SEQUENCE[TUPLE[x,y:NATURAL_16]] -- Give the x and y position of the mouse when a motion is detected

	on_mouse_motion_relative_position:ACTION_SEQUENCE[TUPLE[relative_x,relative_y:INTEGER_16]]
		-- Give the relative x and y position of the mouse when a motion is detected

	is_mouse_motion_event_actions:BOOLEAN
		-- Return true if there is at least one mouse motion event listener.
	do
		Result:=on_mouse_motion.count/=0 or else on_mouse_motion_position.count/=0 or else on_mouse_motion_relative_position.count/=0
	end

feature {NONE} -- Mouse motion event implementation

	make_mouse_motion_event
	do
		create on_mouse_motion.default_create
		create on_mouse_motion_position.default_create
		create on_mouse_motion_relative_position.default_create
	end

	decode_mouse_motion_event(mouse_motion_event:POINTER)
	local
		state:NATURAL_8
		x,y:NATURAL_16
		relative_x,relative_y:INTEGER_16
	do
		state:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_state(mouse_motion_event)
		x:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_x(mouse_motion_event)
		y:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_y(mouse_motion_event)
		relative_x:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_xrel(mouse_motion_event)
		relative_y:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_yrel(mouse_motion_event)
		if on_mouse_motion.count/=0 then
			on_mouse_motion.call ([x,y,relative_x,relative_y,state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_LMASK)/=0,state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_RMASK)/=0,
											state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_MMASK)/=0, state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X1MASK)/=0,state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X2MASK)/=0])
		end
		if on_mouse_motion_position.count/=0 then
			on_mouse_motion_position.call ([x,y])
		end
		if on_mouse_motion_relative_position.count/=0 then
			on_mouse_motion_relative_position.call ([relative_x,relative_y])
		end
	end

feature -- Mouse button event access

	on_mouse_button_actions: ACTION_SEQUENCE[TUPLE[is_button_down,is_button_up,is_button_pressed,is_button_released,is_left_button,is_right_button,
													is_middle_button,is_wheel_up,is_wheel_down:BOOLEAN;mouse_x,mouse_y:NATURAL_16;device_id,button_id:NATURAL_8]]
			-- When a mouse button are press or release or wheel is move

	on_mouse_button_down:ACTION_SEQUENCE[TUPLE[is_left_button,is_right_button,is_middle_button:BOOLEAN;mouse_x,mouse_y:NATURAL_16]]
			-- When a mouse button is press

	on_mouse_button_up:ACTION_SEQUENCE[TUPLE[is_left_button,is_right_button,is_middle_button:BOOLEAN;mouse_x,mouse_y:NATURAL_16]]
			-- When a mouse button is release

	on_mouse_wheel_down:ACTION_SEQUENCE[TUPLE[mouse_x,mouse_y:NATURAL_16]]
			-- When the mouse wheel go down

	on_mouse_wheel_up:ACTION_SEQUENCE[TUPLE[mouse_x,mouse_y:NATURAL_16]]
			-- When the mouse wheel go up

	is_mouse_button_event_actions:BOOLEAN
		-- Return true if there is at least one mouse button event listener.
	do
		Result:=on_mouse_button_actions.count/=0 or else on_mouse_button_down.count/=0 or else on_mouse_button_up.count/=0 or else
				on_mouse_wheel_down.count/=0 or else on_mouse_wheel_up.count/=0
	end

feature {NONE} -- Mouse button event implementation

	make_mouse_button_event
	do
		create on_mouse_button_actions.default_create
		create on_mouse_button_down.default_create
		create on_mouse_button_up.default_create
		create on_mouse_wheel_down.default_create
		create on_mouse_wheel_up.default_create
	end

	decode_mouse_button_event(mouse_button_event:POINTER)
	local
		type,which,button,state:NATURAL_8
		x,y:NATURAL_16
	do
		type:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_type(mouse_button_event)
		which:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(mouse_button_event)
		button:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(mouse_button_event)
		state:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_state(mouse_button_event)
		x:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(mouse_button_event)
		y:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(mouse_button_event)
		if on_mouse_button_actions.count/=0 then
			on_mouse_button_actions.call ([type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN,type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONUP,state={GAME_SDL_EXTERNAL}.SDL_PRESSED,state={GAME_SDL_EXTERNAL}.SDL_RELEASED,
											button={GAME_SDL_EXTERNAL}.SDL_BUTTON_LEFT,button={GAME_SDL_EXTERNAL}.SDL_BUTTON_RIGHT,button={GAME_SDL_EXTERNAL}.SDL_BUTTON_MIDDLE,
											button={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELUP,button={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELDOWN,x,y,which,button])
		end
		if on_mouse_button_down.count/=0 and type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN and button/={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELUP and button/={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELDOWN then
			on_mouse_button_down.call ([button={GAME_SDL_EXTERNAL}.SDL_BUTTON_LEFT,button={GAME_SDL_EXTERNAL}.SDL_BUTTON_RIGHT,button={GAME_SDL_EXTERNAL}.SDL_BUTTON_MIDDLE,x,y])
		end
		if on_mouse_button_up.count/=0 and type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONUP and button/={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELUP and button/={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELDOWN then
			on_mouse_button_up.call ([button={GAME_SDL_EXTERNAL}.SDL_BUTTON_LEFT,button={GAME_SDL_EXTERNAL}.SDL_BUTTON_RIGHT,button={GAME_SDL_EXTERNAL}.SDL_BUTTON_MIDDLE,x,y])
		end
		if on_mouse_wheel_down.count/=0 and type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN and button={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELDOWN then
			on_mouse_wheel_down.call ([x,y])
		end
		if on_mouse_wheel_up.count/=0 and type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN and button={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELUP then
			on_mouse_wheel_up.call ([x,y])
		end
	end

feature {GAME_SDL_CONTROLLER} -- Controller Joystick event enable

	enable_joystick_event
		-- Enable the joysticks and joypads event.
		-- Must be use before using joysticks and joypads event.
		-- Use the method `enable_joystick' of the GAME_SDL_CONTROLLER enable joystick event
	local
		temp:INTEGER
	do
		temp:={GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.SDL_ENABLE)
	end

	disable_joystick_event
		-- Disable the joysticks and joypads event.
	local
		temp:INTEGER
	do
		temp:={GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.SDL_IGNORE)
	end

feature -- Access Joystick event enable

	is_joystick_event_enable:BOOLEAN
		-- Return true if the joysticks and joypads event are enable
	local
		query:INTEGER
	do
		query:={GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.SDL_QUERY)
		Result:=query={GAME_SDL_EXTERNAL}.SDL_ENABLE
	end

feature -- Joystick axis event access

	on_joystick_axis_change: ACTION_SEQUENCE[TUPLE[value:INTEGER_16;axis_id,device_id:NATURAL_8]]
		-- When joystick axis state change

	is_joystick_axis_event_actions:BOOLEAN
		-- Return true if there is at least one joystick axis event listener.
	do
		Result:=on_joystick_axis_change.count/=0
	end

feature {NONE} -- Joystick axis event emplementation

	make_joystick_axis_event
	do
		create on_joystick_axis_change.default_create
	end

	decode_joystick_axis_event(joystick_axis_event:POINTER)
	local
		which, axis:NATURAL_8
		value:INTEGER_16
	do
		which:={GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_which(joystick_axis_event)
		axis:={GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_axis(joystick_axis_event)
		value:={GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_value(joystick_axis_event)
		if on_joystick_axis_change.count/=0 then
			on_joystick_axis_change.call ([value,axis,which])
		end
	end

feature -- Joystick balls event access

	on_joystick_balls_change: ACTION_SEQUENCE[TUPLE[relative_x,relative_y:INTEGER_16;ball_id,device_id:NATURAL_8]]
		-- When the joystick balls state change.

	is_joystick_balls_event_actions:BOOLEAN
		-- Return true if there is at least one joystick balls event listener.
	do
		Result:=on_joystick_balls_change.count/=0
	end

feature {NONE} -- Joystick balls event implementation

	make_joystick_balls_event
	do
		create on_joystick_balls_change.default_create
	end

	decode_joystick_balls_event(joystick_balls_event:POINTER)
	local
		which, ball:NATURAL_8
		xrel,yrel:INTEGER_16
	do
		which:={GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_which(joystick_balls_event)
		ball:={GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_ball(joystick_balls_event)
		xrel:={GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_xrel(joystick_balls_event)
		yrel:={GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_yrel(joystick_balls_event)
		if on_joystick_balls_change.count/=0 then
			on_joystick_balls_change.call ([xrel,yrel,ball,which])
		end
	end

feature -- Joystick hats event access

	on_joystick_hats_change: ACTION_SEQUENCE[TUPLE[is_up,is_down,is_left,is_right:BOOLEAN;hat_id,device_id:NATURAL_8]]
		-- When the joystick hats state change

	is_joystick_hats_event_actions:BOOLEAN
		-- Return true if there is at least one joystick hats event listener.
	do
		Result:=on_joystick_hats_change.count/=0
	end

feature {NONE} -- Joystick hats event implementation

	make_joystick_hats_event
	do
		create on_joystick_hats_change.default_create
	end

	decode_joystick_hats_event(joystick_hats_event:POINTER)
	local
		which, hat, value:NATURAL_8
	do
		which:={GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_which(joystick_hats_event)
		hat:={GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_hat(joystick_hats_event)
		value:={GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_value(joystick_hats_event)
		if on_joystick_hats_change.count/=0 then
			on_joystick_hats_change.call ([value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_UP)/=0,value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_DOWN)/=0,
									value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_LEFT)/=0,value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_RIGHT)/=0,hat,which])
		end
	end


feature -- Joystick buttons event access

	on_joystick_buttons_change: ACTION_SEQUENCE[TUPLE[is_down,is_pressed:BOOLEAN;button_id,device_id:NATURAL_8]]
		-- When joystick buttons state change

	on_joystick_button_pressed:ACTION_SEQUENCE[TUPLE[button_id,device_id:NATURAL_8]]
		-- When a joystick button is press

	on_joystick_button_released:ACTION_SEQUENCE[TUPLE[button_id,device_id:NATURAL_8]]
		-- When a joystick button is release

	is_joystick_buttons_event_actions:BOOLEAN
		-- Return true if there is at least one joystick button event listener.
	do
		Result:=on_joystick_buttons_change.count/=0 or on_joystick_button_pressed.count/=0 or on_joystick_button_released.count/=0
	end

feature {NONE} -- Joystick buttons event implementation

	make_joystick_buttons_event
	do
		create on_joystick_buttons_change.default_create
		create on_joystick_button_pressed.default_create
		create on_joystick_button_released.default_create
	end

	decode_joystick_buttons_event(joystick_buttons_event:POINTER)
	local
		type, which, button, state:NATURAL_8
	do
		type:={GAME_SDL_EXTERNAL}.get_joy_button_event_struct_type(joystick_buttons_event)
		which:={GAME_SDL_EXTERNAL}.get_joy_button_event_struct_which(joystick_buttons_event)
		button:={GAME_SDL_EXTERNAL}.get_joy_button_event_struct_button(joystick_buttons_event)
		state:={GAME_SDL_EXTERNAL}.get_joy_button_event_struct_state(joystick_buttons_event)
		if on_joystick_buttons_change.count/=0 then
			on_joystick_buttons_change.call ([type={GAME_SDL_EXTERNAL}.SDL_JOYBUTTONDOWN,state={GAME_SDL_EXTERNAL}.SDL_PRESSED,button,which])
		end
		if on_joystick_button_pressed.count/=0 and state={GAME_SDL_EXTERNAL}.SDL_PRESSED then
			on_joystick_button_pressed.call([button,which])
		end
		if on_joystick_button_released.count/=0 and state={GAME_SDL_EXTERNAL}.SDL_RELEASED then
			on_joystick_button_released.call([button,which])
		end
	end

feature -- Resize event access

	on_resize_window: ACTION_SEQUENCE[TUPLE[width,height:INTEGER]]
		-- When the window size change

	is_resize_event_actions:BOOLEAN
		-- Return true if there is at least one window resize event listener.
	do
		Result:=on_resize_window.count/=0
	end

feature {NONE} -- Resize event implementation

	make_resize_event
	do
		create on_resize_window.default_create
	end

	decode_resize_event(resize_event:POINTER)
	local
		width,height:INTEGER
	do
		width:={GAME_SDL_EXTERNAL}.get_resize_event_struct_w(resize_event)
		height:={GAME_SDL_EXTERNAL}.get_resize_event_struct_h(resize_event)
		if on_resize_window.count/=0 then
			on_resize_window.call ([width,height])
		end
	end


feature -- Explose event access

	on_expose: ACTION_SEQUENCE[TUPLE[]]
		-- When the window is expose

	is_expose_event_actions:BOOLEAN
		-- Return true if there is at least one window expose event listener.
	do
		Result:=on_expose.count/=0
	end

feature {NONE} -- Explose event implementation

	make_expose_event
	do
		create on_expose.default_create
	end

	decode_expose_event
	do
		if on_expose.count/=0 then
			on_expose.call ([])
		end
	end

feature -- Quit event access

	on_quit_signal: ACTION_SEQUENCE[TUPLE[]]
		-- When the quit signal is received

	is_quit_event_actions:BOOLEAN
		-- Return true if there is at least one quit signal event listener.
	do
		Result:=on_quit_signal.count/=0
	end

feature {NONE} -- Quit event implementation

	make_quit_event
	do
		create on_quit_signal.default_create
	end

	decode_quit_event
	do
		if on_quit_signal.count/=0 then
			on_quit_signal.call ([])
		end
	end

feature -- Tick event

	on_tick: ACTION_SEQUENCE[TUPLE[ticks:NATURAL_32]] -- When a lap time has past (set by the `tick_delay') feature.

	tick_delay:NATURAL -- Time delay to call `on_tick' event (in millisecond)

	set_tick_delay(l_tick_delay:NATURAL)
			-- Set the time delay to call `on_tick' event (in millisecond).
		do
			tick_delay:=l_tick_delay
		end

	is_tick_event_actions:BOOLEAN
		-- Return true if there is at least one tick event listener.
	do
		Result:=on_tick.count/=0
	end

feature {NONE} -- Tick event implementation

	old_ticks:NATURAL_32

	make_tick_event
	do
		old_ticks:=0
		tick_delay:=1
		create on_tick.default_create
	end

	decode_tick_event
	local
		new_ticks:NATURAL_32
		next_tick:NATURAL_64
	do
		if on_quit_signal.count/=0 then
			new_ticks:=sdl_ctrl.get_ticks
			next_tick:=old_ticks.to_natural_64+tick_delay.to_natural_64
			next_tick:=next_tick\\(new_ticks.max_value.to_natural_64+1)
			if next_tick<=new_ticks then
				on_tick.call ([new_ticks])
				old_ticks:=new_ticks
			end
		end
	end


feature {NONE} -- Implementation

	sdl_ctrl:GAME_SDL_CONTROLLER

	event_ptr:POINTER

	decode_event(event:POINTER)
	local
		event_type:NATURAL_8
	do
		event_type:={GAME_SDL_EXTERNAL}.get_event_struct_type(event)
		if is_active_event_actions and event_type={GAME_SDL_EXTERNAL}.SDL_ACTIVEEVENT then
			decode_active_event({GAME_SDL_EXTERNAL}.get_event_struct_active_pointer(event))
		elseif ((event_type={GAME_SDL_EXTERNAL}.SDL_KEYDOWN or else event_type={GAME_SDL_EXTERNAL}.SDL_KEYUP)) and then is_keyboard_event_actions then
			decode_keyboard_event({GAME_SDL_EXTERNAL}.get_event_struct_key_pointer(event))
		elseif is_mouse_motion_event_actions and event_type={GAME_SDL_EXTERNAL}.SDL_MOUSEMOTION then
			decode_mouse_motion_event({GAME_SDL_EXTERNAL}.get_event_struct_motion_pointer(event))
		elseif is_mouse_button_event_actions and (event_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN or event_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONUP) then
			decode_mouse_button_event({GAME_SDL_EXTERNAL}.get_event_struct_button_pointer(event))
		elseif is_joystick_axis_event_actions and event_type={GAME_SDL_EXTERNAL}.SDL_JOYAXISMOTION then
			decode_joystick_axis_event({GAME_SDL_EXTERNAL}.get_event_struct_jaxis_pointer(event))
		elseif is_joystick_balls_event_actions and event_type={GAME_SDL_EXTERNAL}.SDL_JOYBALLMOTION then
			decode_joystick_balls_event({GAME_SDL_EXTERNAL}.get_event_struct_jball_pointer(event))
		elseif is_joystick_hats_event_actions and event_type={GAME_SDL_EXTERNAL}.SDL_JOYHATMOTION then
			decode_joystick_hats_event({GAME_SDL_EXTERNAL}.get_event_struct_jhat_pointer(event))
		elseif is_joystick_buttons_event_actions and (event_type={GAME_SDL_EXTERNAL}.SDL_JOYBUTTONDOWN or event_type={GAME_SDL_EXTERNAL}.SDL_JOYBUTTONUP) then
			decode_joystick_buttons_event({GAME_SDL_EXTERNAL}.get_event_struct_jbutton_pointer(event))
		elseif is_resize_event_actions and event_type={GAME_SDL_EXTERNAL}.SDL_VIDEORESIZE then
			decode_resize_event({GAME_SDL_EXTERNAL}.get_event_struct_resize_pointer(event))
		elseif is_expose_event_actions and event_type={GAME_SDL_EXTERNAL}.SDL_VIDEOEXPOSE then
			decode_expose_event
		elseif is_quit_event_actions and event_type={GAME_SDL_EXTERNAL}.SDL_QUIT_CONST then
			decode_quit_event
		end
	end

	dispose
		do
			{GAME_SDL_EXTERNAL}.c_event_struct_free(event_ptr)
		end

end
