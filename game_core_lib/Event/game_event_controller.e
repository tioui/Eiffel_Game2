note
	description: "Controler for the event. It is important to call poll_event or wait_event regularly if you want events to be launch."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.2.1.1"

class
	GAME_EVENT_CONTROLLER

inherit
	DISPOSABLE

create {GAME_SDL_CONTROLLER}
	make

feature {NONE} -- Initialization

	make(a_ctrl:GAME_SDL_CONTROLLER)
			-- Initialization for `Current'.
		do
			core_ctrl:=a_ctrl
			event_ptr:={GAME_SDL_EXTERNAL}.c_event_struct_allocate
			make_iteration_event
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
		l_is_event:INTEGER
	do
		decode_iteration_event
		from l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(event_ptr)
		until l_is_event=0
		loop
			decode_event(event_ptr)
			l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(event_ptr)
		end
	end

feature -- Active event access

	on_active_actions: ACTION_SEQUENCE[TUPLE[gain,is_mouse_focus,is_keyboard_focus,minimise:BOOLEAN]]	-- When a window action come.

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

	decode_active_event(a_active_event:POINTER)
	local
		l_gain,l_state:NATURAL_8
	do
		l_gain:={GAME_SDL_EXTERNAL}.get_active_event_struct_gain(a_active_event)
		l_state:={GAME_SDL_EXTERNAL}.get_active_event_struct_state(a_active_event)
		if on_active_actions.count/=0 then
			on_active_actions.call ([l_gain=1,l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPMOUSEFOCUS)/=0,l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPINPUTFOCUS)/=0,l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPACTIVE)/=0])
		end
		if on_mouse_exit.count/=0 and l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPMOUSEFOCUS)/=0 and l_gain=0 then
			on_mouse_exit.call([])
		end
		if on_mouse_enter.count/=0 and l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPMOUSEFOCUS)/=0 and l_gain=1 then
			on_mouse_enter.call([])
		end
		if on_lost_focus.count/=0 and l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPINPUTFOCUS)/=0 and l_gain=0 then
			on_lost_focus.call([])
		end
		if on_get_focus.count/=0 and l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPINPUTFOCUS)/=0 and l_gain=1 then
			on_get_focus.call([])
		end
		if on_minimise.count/=0 and l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPACTIVE)/=0 and l_gain=0 then
			on_minimise.call([])
		end
		if on_restore.count/=0 and l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_APPACTIVE)/=0 and l_gain=1 then
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

	is_unicode_enabled:BOOLEAN
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_EnableUNICODE(-1)
		end

	enable_keyboard_unicode
		local
			unuse:BOOLEAN
		do
			unuse:={GAME_SDL_EXTERNAL}.SDL_EnableUNICODE(1)
		ensure
			Enable_Unicode_Is_Enabled: is_unicode_enabled
		end

	disable_keyboard_unicode
		local
			l_unuse:BOOLEAN
		do
			l_unuse:={GAME_SDL_EXTERNAL}.SDL_EnableUNICODE(0)
		ensure
			Enable_Unicode_Is_Not_Enabled: not is_unicode_enabled
		end

feature {NONE} -- Keyboard event Implementation

	make_keyboard_event
	do
		create on_keyboard_actions.default_create
		create on_key_down.default_create
		create on_key_up.default_create
		disable_keyboard_unicode
	end

	decode_keyboard_event(a_keyboard_event_ptr:POINTER)
	local
		l_kb_event:GAME_KEYBOARD_EVENT
		l_keysym_ptr:POINTER
		l_type,l_state,l_scancode:NATURAL_8
		l_unicode:NATURAL_16
		l_sym,l_mod:INTEGER
	do
		l_type:={GAME_SDL_EXTERNAL}.get_keyboard_event_struct_type(a_keyboard_event_ptr)
		l_state:={GAME_SDL_EXTERNAL}.get_keyboard_event_struct_state(a_keyboard_event_ptr)
		l_keysym_ptr:={GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(a_keyboard_event_ptr)
		l_scancode:={GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode(l_keysym_ptr)
		l_unicode:={GAME_SDL_EXTERNAL}.get_key_sym_struct_unicode(l_keysym_ptr)
		l_sym:={GAME_SDL_EXTERNAL}.get_key_sym_struct_sym(l_keysym_ptr)
		l_mod:={GAME_SDL_EXTERNAL}.get_key_sym_struct_mod(l_keysym_ptr)
		create l_kb_event.make (l_type, l_state, l_scancode, l_unicode, l_sym, l_mod)
		if on_keyboard_actions.count/=0 then
			on_keyboard_actions.call ([l_kb_event])
		end
		if on_key_down.count/=0 and l_kb_event.is_key_down then
			on_key_down.call([l_kb_event])
		end
		if on_key_up.count/=0 and l_kb_event.is_key_up then
			on_key_up.call([l_kb_event])
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

	decode_mouse_motion_event(a_mouse_motion_event:POINTER)
	local
		l_state:NATURAL_8
		l_x,l_y:NATURAL_16
		l_relative_x,l_relative_y:INTEGER_16
	do
		l_state:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_state(a_mouse_motion_event)
		l_x:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_x(a_mouse_motion_event)
		l_y:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_y(a_mouse_motion_event)
		l_relative_x:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_xrel(a_mouse_motion_event)
		l_relative_y:={GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_yrel(a_mouse_motion_event)
		if on_mouse_motion.count/=0 then
			on_mouse_motion.call ([l_x,l_y,l_relative_x,l_relative_y,l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_LMASK)/=0,l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_RMASK)/=0,
											l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_MMASK)/=0, l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X1MASK)/=0,l_state.bit_and ({GAME_SDL_EXTERNAL}.SDL_BUTTON_X2MASK)/=0])
		end
		if on_mouse_motion_position.count/=0 then
			on_mouse_motion_position.call ([l_x,l_y])
		end
		if on_mouse_motion_relative_position.count/=0 then
			on_mouse_motion_relative_position.call ([l_relative_x,l_relative_y])
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

	decode_mouse_button_event(a_mouse_button_event:POINTER)
	local
		l_type,l_which,l_button,l_state:NATURAL_8
		l_x,l_y:NATURAL_16
	do
		l_type:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_type(a_mouse_button_event)
		l_which:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(a_mouse_button_event)
		l_button:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(a_mouse_button_event)
		l_state:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_state(a_mouse_button_event)
		l_x:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(a_mouse_button_event)
		l_y:={GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(a_mouse_button_event)
		if on_mouse_button_actions.count/=0 then
			on_mouse_button_actions.call ([l_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN,l_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONUP,l_state={GAME_SDL_EXTERNAL}.SDL_PRESSED,l_state={GAME_SDL_EXTERNAL}.SDL_RELEASED,
											l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_LEFT,l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_RIGHT,l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_MIDDLE,
											l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELUP,l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELDOWN,l_x,l_y,l_which,l_button])
		end
		if on_mouse_button_down.count/=0 and l_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN and l_button/={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELUP and l_button/={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELDOWN then
			on_mouse_button_down.call ([l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_LEFT,l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_RIGHT,l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_MIDDLE,l_x,l_y])
		end
		if on_mouse_button_up.count/=0 and l_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONUP and l_button/={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELUP and l_button/={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELDOWN then
			on_mouse_button_up.call ([l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_LEFT,l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_RIGHT,l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_MIDDLE,l_x,l_y])
		end
		if on_mouse_wheel_down.count/=0 and l_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN and l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELDOWN then
			on_mouse_wheel_down.call ([l_x,l_y])
		end
		if on_mouse_wheel_up.count/=0 and l_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN and l_button={GAME_SDL_EXTERNAL}.SDL_BUTTON_WHEELUP then
			on_mouse_wheel_up.call ([l_x,l_y])
		end
	end

feature -- Controller Joystick event enable

	enable_joystick_event
		-- Enable the joysticks and joypads event.
		-- Must be use before using joysticks and joypads event.
		-- Use the method `enable_joystick' of the GAME_SDL_CONTROLLER enable joystick event
	local
		l_temp:INTEGER
	do
		l_temp:={GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.SDL_ENABLE)
	end

	disable_joystick_event
		-- Disable the joysticks and joypads event.
	local
		l_temp:INTEGER
	do
		l_temp:={GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.SDL_IGNORE)
	end

	is_joystick_event_enable:BOOLEAN
		-- Return true if the joysticks and joypads event are enable
	local
		l_query:INTEGER
	do
		l_query:={GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.SDL_QUERY)
		Result:=l_query={GAME_SDL_EXTERNAL}.SDL_ENABLE
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

	decode_joystick_axis_event(a_joystick_axis_event:POINTER)
	local
		l_which, l_axis:NATURAL_8
		l_value:INTEGER_16
	do
		l_which:={GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_which(a_joystick_axis_event)
		l_axis:={GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_axis(a_joystick_axis_event)
		l_value:={GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_value(a_joystick_axis_event)
		if on_joystick_axis_change.count/=0 then
			on_joystick_axis_change.call ([l_value,l_axis,l_which])
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

	decode_joystick_balls_event(a_joystick_balls_event:POINTER)
	local
		l_which, l_ball:NATURAL_8
		l_xrel,l_yrel:INTEGER_16
	do
		l_which:={GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_which(a_joystick_balls_event)
		l_ball:={GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_ball(a_joystick_balls_event)
		l_xrel:={GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_xrel(a_joystick_balls_event)
		l_yrel:={GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_yrel(a_joystick_balls_event)
		if on_joystick_balls_change.count/=0 then
			on_joystick_balls_change.call ([l_xrel,l_yrel,l_ball,l_which])
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

	decode_joystick_hats_event(a_joystick_hats_event:POINTER)
	local
		l_which, l_hat, l_value:NATURAL_8
	do
		l_which:={GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_which(a_joystick_hats_event)
		l_hat:={GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_hat(a_joystick_hats_event)
		l_value:={GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_value(a_joystick_hats_event)
		if on_joystick_hats_change.count/=0 then
			on_joystick_hats_change.call ([l_value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_UP)/=0,l_value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_DOWN)/=0,
									l_value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_LEFT)/=0,l_value.bit_and ({GAME_SDL_EXTERNAL}.SDL_HAT_RIGHT)/=0,l_hat,l_which])
		end
	end


feature -- Joystick buttons event access

	on_joystick_buttons_change: ACTION_SEQUENCE[TUPLE[is_pressed:BOOLEAN;button_id,device_id:NATURAL_8]]
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

	decode_joystick_buttons_event(a_joystick_buttons_event:POINTER)
	local
		l_which, l_button, l_state:NATURAL_8
	do
		l_which:={GAME_SDL_EXTERNAL}.get_joy_button_event_struct_which(a_joystick_buttons_event)
		l_button:={GAME_SDL_EXTERNAL}.get_joy_button_event_struct_button(a_joystick_buttons_event)
		l_state:={GAME_SDL_EXTERNAL}.get_joy_button_event_struct_state(a_joystick_buttons_event)
		if on_joystick_buttons_change.count/=0 then
			on_joystick_buttons_change.call ([l_state={GAME_SDL_EXTERNAL}.SDL_PRESSED,l_button,l_which])
		end
		if on_joystick_button_pressed.count/=0 and l_state={GAME_SDL_EXTERNAL}.SDL_PRESSED then
			on_joystick_button_pressed.call([l_button,l_which])
		end
		if on_joystick_button_released.count/=0 and l_state={GAME_SDL_EXTERNAL}.SDL_RELEASED then
			on_joystick_button_released.call([l_button,l_which])
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

	decode_resize_event(a_resize_event:POINTER)
	local
		l_width,l_height:INTEGER
	do
		l_width:={GAME_SDL_EXTERNAL}.get_resize_event_struct_w(a_resize_event)
		l_height:={GAME_SDL_EXTERNAL}.get_resize_event_struct_h(a_resize_event)
		if on_resize_window.count/=0 then
			on_resize_window.call ([l_width,l_height])
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

	on_iteration: ACTION_SEQUENCE[TUPLE[]] -- Call Each Event loop iteration.

	is_iteration_event_actions:BOOLEAN
		-- Return true if there is at least one tick event listener.
	do
		Result:=on_iteration.count/=0
	end

feature {NONE} -- Tick event implementation

	make_iteration_event
	do
		create on_iteration.default_create
	end

	decode_iteration_event
	do
		on_iteration.call ([])
	end


feature {NONE} -- Implementation

	core_ctrl:GAME_SDL_CONTROLLER

	event_ptr:POINTER

	decode_event(a_event:POINTER)
	local
		l_event_type:NATURAL_8
	do
		l_event_type:={GAME_SDL_EXTERNAL}.get_event_struct_type(a_event)
		if is_active_event_actions and l_event_type={GAME_SDL_EXTERNAL}.SDL_ACTIVEEVENT then
			decode_active_event({GAME_SDL_EXTERNAL}.get_event_struct_active_pointer(a_event))
		elseif ((l_event_type={GAME_SDL_EXTERNAL}.SDL_KEYDOWN or else l_event_type={GAME_SDL_EXTERNAL}.SDL_KEYUP)) and then is_keyboard_event_actions then
			decode_keyboard_event({GAME_SDL_EXTERNAL}.get_event_struct_key_pointer(a_event))
		elseif is_mouse_motion_event_actions and l_event_type={GAME_SDL_EXTERNAL}.SDL_MOUSEMOTION then
			decode_mouse_motion_event({GAME_SDL_EXTERNAL}.get_event_struct_motion_pointer(a_event))
		elseif is_mouse_button_event_actions and (l_event_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONDOWN or l_event_type={GAME_SDL_EXTERNAL}.SDL_MOUSEBUTTONUP) then
			decode_mouse_button_event({GAME_SDL_EXTERNAL}.get_event_struct_button_pointer(a_event))
		elseif is_joystick_axis_event_actions and l_event_type={GAME_SDL_EXTERNAL}.SDL_JOYAXISMOTION then
			decode_joystick_axis_event({GAME_SDL_EXTERNAL}.get_event_struct_jaxis_pointer(a_event))
		elseif is_joystick_balls_event_actions and l_event_type={GAME_SDL_EXTERNAL}.SDL_JOYBALLMOTION then
			decode_joystick_balls_event({GAME_SDL_EXTERNAL}.get_event_struct_jball_pointer(a_event))
		elseif is_joystick_hats_event_actions and l_event_type={GAME_SDL_EXTERNAL}.SDL_JOYHATMOTION then
			decode_joystick_hats_event({GAME_SDL_EXTERNAL}.get_event_struct_jhat_pointer(a_event))
		elseif is_joystick_buttons_event_actions and (l_event_type={GAME_SDL_EXTERNAL}.SDL_JOYBUTTONDOWN or l_event_type={GAME_SDL_EXTERNAL}.SDL_JOYBUTTONUP) then
			decode_joystick_buttons_event({GAME_SDL_EXTERNAL}.get_event_struct_jbutton_pointer(a_event))
		elseif is_resize_event_actions and l_event_type={GAME_SDL_EXTERNAL}.SDL_VIDEORESIZE then
			decode_resize_event({GAME_SDL_EXTERNAL}.get_event_struct_resize_pointer(a_event))
		elseif is_expose_event_actions and l_event_type={GAME_SDL_EXTERNAL}.SDL_VIDEOEXPOSE then
			decode_expose_event
		elseif is_quit_event_actions and l_event_type={GAME_SDL_EXTERNAL}.SDL_QUIT_CONST then
			decode_quit_event
		end
	end

	dispose
		do
			{GAME_SDL_EXTERNAL}.c_event_struct_free(event_ptr)
		end

end
