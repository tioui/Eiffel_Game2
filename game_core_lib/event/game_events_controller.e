note
	description: "Controler for the event. It is important to call poll_event or wait_event regularly if you want events to be launch."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.2.1.1"

class
	GAME_EVENTS_CONTROLLER

inherit
	DISPOSABLE
		redefine
			default_create
		end
	GAME_SDL_ANY
		redefine
			default_create
		end

create {GAME_SDL_CONTROLLER}
	default_create

feature {NONE} -- Initialization

	default_create
		do
			event_ptr:=event_ptr.memory_calloc (1, {GAME_SDL_EXTERNAL}.C_sizeof_sdl_event)
			create iteration_actions
			create quit_signal_actions
			create dollar_gesture_actions
			create window_event_actions
			create key_down_actions
			create key_up_actions
			create text_editing_actions
			create text_input_actions
			create mouse_motion_actions
			create mouse_button_down_actions
			create mouse_button_up_actions
			create mouse_wheel_move_actions
			create joy_axis_motion_actions
			create joy_ball_motion_actions
			create joy_hat_motion_actions
			create joy_button_up_actions
			create joy_button_down_actions
			create joy_device_found_actions
			create joy_device_remove_actions
			create finger_motion_actions
			create finger_up_actions
			create finger_down_actions
			create finger_gesture_actions
			create file_drop_actions
		end



feature -- Access

	poll_event
			-- Execute an event validation. If no event is pending, do nothing.
		require
			attached game_library as la_game_library and then
				la_game_library.is_events_enable
		local
			l_is_event:INTEGER
		do
			if not iteration_actions.is_empty then
				if attached game_library as la_game_library then
					iteration_actions.call ([la_game_library.ticks])
				else
					iteration_actions.call ([(0).as_natural_32])
				end
			end
			from l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(event_ptr)
			until l_is_event=0
			loop
				decode_event
				l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(event_ptr)
			end
		end

	quit_signal_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When the application receive a quit signal.

	iteration_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Called at each game loop

	window_event_actions: ACTION_SEQUENCE[TUPLE[timestamp,window_id:NATURAL_32;event_type:NATURAL_8;data1,data2:INTEGER_32]]
			-- When the window identified by `window_id' is changing state. `event_type' may take the following value:
			-- SDL_WINDOWEVENT_SHOWN: The window has been shown
			-- SDL_WINDOWEVENT_HIDDEN: The window has been hidden
			-- SDL_WINDOWEVENT_EXPOSED: The window has been exposed and should be redraw
			-- SDL_WINDOWEVENT_MOVED: window has been moved to coordinate (`data1',`data2')
			-- SDL_WINDOWEVENT_RESIZED: window has been resized to dimension `data1'x`data2'
			--                          this event is always preceded by SDL_WINDOWEVENT_SIZE_CHANGED
			-- SDL_WINDOWEVENT_SIZE_CHANGED: window size has changed
			-- SDL_WINDOWEVENT_MINIMIZED: window has been minimized
			-- SDL_WINDOWEVENT_MAXIMIZED: window has been maximized
			-- SDL_WINDOWEVENT_RESTORED: window has been restored to normal size and position
			-- SDL_WINDOWEVENT_ENTER: window has gained mouse focus
			-- SDL_WINDOWEVENT_LEAVE: window has lost mouse focus
			-- SDL_WINDOWEVENT_FOCUS_GAINED: window has gained keyboard focus
			-- SDL_WINDOWEVENT_FOCUS_LOST: window has lost keyboard focus
			-- SDL_WINDOWEVENT_CLOSE: the window manager requests that the window be closed

	key_down_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;repeat:NATURAL_8;
												scancode,keycode:INTEGER_32;modifier:NATURAL_16]]
			-- When a user presses a button on a keyboard. The current focused window
			-- is identified by `window_id'. `repeat' is non zero if the event is a key repeat.
			-- The key pressed has the physical code `scancode', the virtual code `keycode' and
			-- has the current `modifier' (CTRL, SHIFT, ALT, etc.) in effect.

	key_up_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;repeat:NATURAL_8;
												scancode,keycode:INTEGER_32;modifier:NATURAL_16]]
			-- When a user releases a button on a keyboard. The current focused window
			-- is identified by `window_id'. `repeat' is non zero if the event is a key repeat.
			-- The key released has the physical code `scancode', the virtual code `keycode' and
			-- has the current `modifier' (CTRL, SHIFT, ALT, etc.) in effect.

	text_editing_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;text:STRING_32;
												start,lenght:INTEGER_32]]
			-- When a `text' has been edited in the window identified by `window_id'.
			-- The text must be edited from the `start' character for `lenght' characters.

	text_input_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;text:STRING_32]]
			-- When a `text' has been input in the window identified by `window_id'.

	mouse_motion_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,mouse_id, state:NATURAL_32;
													x,y,x_relative,y_relative:INTEGER_32]]
			-- When the mouse identified by `mouse_id' has been moved to the coordinate (`x',`y')
			-- in the window identified by `window_id'. The mouse has been move of `x_relative'
			-- position on the x axis and `y_relative' position on the y axis since the last call
			-- of the `mouse_motion_actions' event. The `state' of the mouse indicate which buttons is
			-- currently pressed. It is check with the following mask:
			-- SDL_BUTTON_LMASK: Left button
			-- SDL_BUTTON_MMASK: Middle button
			-- SDL_BUTTON_RMASK: Right button
			-- SDL_BUTTON_X1MASK: First optionnal button
			-- SDL_BUTTON_X2MASK: Second optionnal button
			-- Note: `which' may be SDL_TOUCH_MOUSEID

	mouse_button_down_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,mouse_id:NATURAL_32;
													button,clicks: NATURAL_8;x,y:INTEGER_32]]
			-- When a button of the mouse identified by `mouse_id' at coordinate (`x',`y') in the window
			-- identified by `window_id' has been pressed. The `clicks' show how much successive clicks
			-- has been made (1 for simple click, 2 for double click, etc.). The `button' say what
			-- mouse button has been pressed. The value can be:
			-- SDL_BUTTON_LEFT: Left button
			-- SDL_BUTTON_MIDDLE: Middle button
			-- SDL_BUTTON_RIGHT: Right button
			-- SDL_BUTTON_X1: First optionnal button
			-- SDL_BUTTON_X2: Second optionnal button
			-- Note: `which' may be SDL_TOUCH_MOUSEID

	mouse_button_up_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,mouse_id:NATURAL_32;
													button, clicks: NATURAL_8;x,y:INTEGER_32]]
			-- When a button of the mouse identified by `mouse_id' at coordinate (`x',`y') in the window
			-- identified by `window_id' has been released. The `clicks' show how much successive clicks
			-- has been made (1 for simple click, 2 for double click, etc.). The `button' say what
			-- mouse button has been released. The value can be:
			-- SDL_BUTTON_LEFT: Left button
			-- SDL_BUTTON_MIDDLE: Middle button
			-- SDL_BUTTON_RIGHT: Right button
			-- SDL_BUTTON_X1: First optionnal button
			-- SDL_BUTTON_X2: Second optionnal button
			-- Note: `which' may be SDL_TOUCH_MOUSEID

	mouse_wheel_move_actions: ACTION_SEQUENCE[TUPLE[timestamp,window_id,mouse_id:NATURAL_32;x,y:INTEGER_32]]
			-- When the wheel of the mouse identified by `mouse_id' in the window identified by
			-- `window_id' has been moved. A positive `x' indicate a move to the right and a negative
			-- `x' indicate a move to the left. A positive `y' indicate a move up and a
			-- negative `x' indicate a move down.

	joy_axis_motion_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32;axis_id:NATURAL_8;value:INTEGER_16]]
			-- When the axis identified by `axis_id' of the joystick identified by `joystick_id' has
			-- been moved to a certain `value'.

	joy_ball_motion_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;joystick_id:INTEGER_32;ball_id:NATURAL_8;
												x_relative, y_relative:INTEGER_16]]
			-- When the ball identified by `ball_id' of the joystick identified by `joystick_id' has
			-- been moved. The `x_relative' and `y_relative' indicate the move relative to the last
			-- call of the `joy_ball_motion_actions' event.

	joy_hat_motion_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32;hat_id, value:NATURAL_8]]
			-- When the hat identified by `hat_id' of the joystick identified by `joystick_id' has
			-- been moved to a certain `value'. The `value' can be one of the following:
			-- SDL_HAT_LEFTUP
			-- SDL_HAT_UP
			-- SDL_HAT_RIGHTUP
			-- SDL_HAT_LEFT
			-- SDL_HAT_CENTERED
			-- SDL_HAT_RIGHT
			-- SDL_HAT_LEFTDOWN
			-- SDL_HAT_DOWN
			-- SDL_HAT_RIGHTDOWN

	joy_button_down_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32;button_id:NATURAL_8]]
			-- When the button identified by `button_id' of the joystick identified by `joystick_id' has
			-- been pressed.

	joy_button_up_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32;button_id:NATURAL_8]]
			-- When the button identified by `button_id' of the joystick identified by `joystick_id' has
			-- been released.

	joy_device_found_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]
			-- When a new joystick device identified by `joystick_id' has been founded.

	joy_device_remove_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]
			-- When a new joystick device identified by `joystick_id' has been removed.

	finger_motion_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id, finger_id:INTEGER_64;
												x, y, x_relative, y_relative, pressure:REAL_32]]
			-- When a finger identified by `finger_id' in the touch device identified by
			-- `touch_id' has been moved to (`x',`y') with a certain `pressure'. The
			-- `x_relative' and `y_relative' indicate the move relative to the last
			-- call of the `finger_motion_actions' event.
			-- Note that `x', `y', `x_relative', `y_relative' and `pressure' are normalize
			-- between 0 and 1.

	finger_up_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id, finger_id:INTEGER_64;
											x, y, x_relative, y_relative, pressure:REAL_32]]
			-- When a finger identified by `finger_id' in the touch device identified by
			-- `touch_id' has been released at (`x',`y') with a certain `pressure'. The
			-- `x_relative' and `y_relative' indicate the move relative to the last
			-- call of the `finger_motion_actions' event.
			-- Note that `x', `y', `x_relative', `y_relative' and `pressure' are normalize
			-- between 0 and 1.

	finger_down_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id, finger_id:INTEGER_64;
											x, y, x_relative, y_relative, pressure:REAL_32]]
			-- When a finger identified by `finger_id' in the touch device identified by
			-- `touch_id' has been pressed at (`x',`y') with a certain `pressure'. The
			-- `x_relative' and `y_relative' indicate the move relative to the last
			-- call of the `finger_motion_actions' event.
			-- Note that `x', `y', `x_relative', `y_relative' and `pressure' are normalize
			-- between 0 and 1.

	finger_gesture_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id:INTEGER_64;
												number_of_fingers:NATURAL_16; center_x, center_y,
												theta, distance:REAL_32]]
			-- When a gesture has been made on the touch device identified by `touch_id'.
			-- The gesture has a certain `number_of_fingers', is centered at (`center_x', `center_y').
			-- The fingers used a rotation of `theta' degree and have a `distance' of pinch.

	dollar_gesture_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_device_id:NATURAL_64;
												gesture_id:INTEGER_64;number_of_fingers:NATURAL_32;
												x,y,error:REAL_32]]
			-- When a $1 gesture has been recognize on the touch device `touch_device_id'.
			-- The gesture is uniquely identified by `gesture_id'. I use `number_of_fingers' fingers
			-- and is centered at (`x',`y') where `x' and `y' are normalized (between 0 and 1).
			-- The `error' indicate the difference between the current gesture and the template.
			-- Todo: templating (SDL_RecordGesture, SDL_DOLLARRECORD event, SDL_SaveDollarTemplate, etc.)

	file_drop_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]
			-- The file pointed by `filename' has been dropped on a window of the game.
			-- This event is disabled by default. use {GAME_EVENTS_CONTROLLER}.`enable_file_drop_event'
			-- to activate it.

	enable_quit_signal_event
			-- Process the `quit_signal_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_quit, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_quit_signal_event_enable
		end

	disable_quit_signal_event
			-- Ignore the `quit_signal_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_quit, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_quit_signal_event_enable
		end

	is_quit_signal_event_enable:BOOLEAN
			-- Is the `quit_signal_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_quit, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_window_event
			-- Process the `window_event_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_windowevent, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_window_event_enable
		end

	disable_window_event
			-- Ignore the `window_event_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_windowevent, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_window_event_enable
		end

	is_window_event_enable:BOOLEAN
			-- Is the `window_event_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_windowevent, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_key_down_event
			-- Process the `key_down_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keydown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_key_down_event_enable
		end

	disable_key_down_event
			-- Ignore the `key_down_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keydown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_key_down_event_enable
		end

	is_key_down_event_enable:BOOLEAN
			-- Is the `key_down_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keydown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_key_up_event
			-- Process the `key_up_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keyup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_key_up_event_enable
		end

	disable_key_up_event
			-- Ignore the `key_up_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keyup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_key_up_event_enable
		end

	is_key_up_event_enable:BOOLEAN
			-- Is the `key_up_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keyup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_text_editing_event
			-- Process the `text_editing_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textediting, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_text_editing_event_enable
		end

	disable_text_editing_event
			-- Ignore the `text_editing_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textediting, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_text_editing_event_enable
		end

	is_text_editing_event_enable:BOOLEAN
			-- Is the `text_editing_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textediting, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_text_input_event
			-- Process the `text_input_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textinput, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_text_input_event_enable
		end

	disable_text_input_event
			-- Ignore the `text_input_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textinput, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_text_input_event_enable
		end

	is_text_input_event_enable:BOOLEAN
			-- Is the `text_input_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textinput, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_mouse_motion_event
			-- Process the `mouse_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousemotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_mouse_motion_event_enable
		end

	disable_mouse_motion_event
			-- Ignore the `mouse_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousemotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_mouse_motion_event_enable
		end

	is_mouse_motion_event_enable:BOOLEAN
			-- Is the `mouse_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousemotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_mouse_button_down_event
			-- Process the `mouse_button_down_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttondown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_mouse_button_down_event_enable
		end

	disable_mouse_button_down_event
			-- Ignore the `mouse_button_down_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttondown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_mouse_button_down_event_enable
		end

	is_mouse_button_down_event_enable:BOOLEAN
			-- Is the `mouse_button_down_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttondown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_mouse_button_up_event
			-- Process the `mouse_button_up_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttonup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_mouse_button_up_event_enable
		end

	disable_mouse_button_up_event
			-- Ignore the `mouse_button_up_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttonup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_mouse_button_up_event_enable
		end

	is_mouse_button_up_event_enable:BOOLEAN
			-- Is the `mouse_button_up_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttonup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_mouse_wheel_event
			-- Process the `mouse_wheel_move_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousewheel, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_mouse_wheel_event_enable
		end

	disable_mouse_wheel_event
			-- Ignore the `mouse_wheel_move_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousewheel, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_mouse_wheel_event_enable
		end

	is_mouse_wheel_event_enable:BOOLEAN
			-- Is the `mouse_wheel_move_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousewheel, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_axis_motion_event
			-- Process the `joy_axis_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyaxismotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_axis_motion_event_enable
		end

	disable_joy_axis_motion_event
			-- Ignore the `joy_axis_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyaxismotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_axis_motion_event_enable
		end

	is_joy_axis_motion_event_enable:BOOLEAN
			-- Is the `joy_axis_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyaxismotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_ball_motion_event
			-- Process the `joy_ball_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyballmotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_ball_motion_event_enable
		end

	disable_joy_ball_motion_event
			-- Ignore the `joy_ball_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyballmotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_ball_motion_event_enable
		end

	is_joy_ball_motion_event_enable:BOOLEAN
			-- Is the `joy_ball_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyballmotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_hat_motion_event
			-- Process the `joy_hat_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyhatmotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_hat_motion_event_enable
		end

	disable_joy_hat_motion_event
			-- Ignore the `joy_hat_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyhatmotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_hat_motion_event_enable
		end

	is_joy_hat_motion_event_enable:BOOLEAN
			-- Is the `joy_hat_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyhatmotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_button_down_event
			-- Process the `joy_button_down_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttondown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_button_down_event_enable
		end

	disable_joy_button_down_event
			-- Ignore the `joy_button_down_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttondown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_button_down_event_enable
		end

	is_joy_button_down_event_enable:BOOLEAN
			-- Is the `joy_button_down_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttondown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_button_up_event
			-- Process the `joy_button_up_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttonup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_button_up_event_enable
		end

	disable_joy_button_up_event
			-- Ignore the `joy_button_up_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttonup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_button_up_event_enable
		end

	is_joy_button_up_event_enable:BOOLEAN
			-- Is the `joy_button_up_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttonup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_device_found_event
			-- Process the `joy_device_found_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceadded, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_device_found_event_enable
		end

	disable_joy_device_found_event
			-- Ignore the `joy_device_found_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceadded, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_device_found_event_enable
		end

	is_joy_device_found_event_enable:BOOLEAN
			-- Is the `joy_device_found_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceadded, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_device_remove_event
			-- Process the `joy_device_remove_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceremoved, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_device_remove_event_enable
		end

	disable_joy_device_remove_event
			-- Ignore the `joy_device_remove_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceremoved, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_device_remove_event_enable
		end

	is_joy_device_remove_event_enable:BOOLEAN
			-- Is the `joy_device_remove_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceremoved, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_every_joy_events
			-- Enable every joystick events.
			-- Enabled by default
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.sdl_enable)
			has_error := l_error < 0
		ensure
			Is_Events_Enabled: 	is_joy_axis_motion_event_enable and is_joy_ball_motion_event_enable and
								is_joy_hat_motion_event_enable and is_joy_button_down_event_enable and
								is_joy_button_up_event_enable and is_joy_device_found_event_enable and
								is_joy_device_remove_event_enable
		end

	disable_every_joy_events
			-- Ignore every joystick events.
			-- Enabled by default
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.sdl_disable)
			has_error := l_error < 0
		ensure
			Is_Events_Disabled:	not (is_joy_axis_motion_event_enable or is_joy_ball_motion_event_enable or
								is_joy_hat_motion_event_enable or is_joy_button_down_event_enable or
								is_joy_button_up_event_enable or is_joy_device_found_event_enable or
								is_joy_device_remove_event_enable)
		end

	is_any_joy_event_enable:BOOLEAN
			-- Is there any joystick event that is enable
			-- Enabled by default
		local
			l_query:INTEGER
		do
			clear_error
			l_query := {GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.sdl_query)
			has_error := l_query < 0
		end

	enable_finger_down_event
			-- Process the `finger_down_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerdown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_finger_down_event_enable
		end

	disable_finger_down_event
			-- Ignore the `finger_down_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerdown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_finger_down_event_enable
		end

	is_finger_down_event_enable:BOOLEAN
			-- Is the `finger_down_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerdown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_finger_up_event
			-- Process the `finger_up_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_finger_up_event_enable
		end

	disable_finger_up_event
			-- Ignore the `finger_up_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_finger_up_event_enable
		end

	is_finger_up_event_enable:BOOLEAN
			-- Is the `finger_up_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_finger_motion_event
			-- Process the `finger_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingermotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_finger_motion_event_enable
		end

	disable_finger_motion_event
			-- Ignore the `finger_motion_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingermotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_finger_motion_event_enable
		end

	is_finger_motion_event_enable:BOOLEAN
			-- Is the `finger_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingermotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_finger_gesture_event
			-- Process the `finger_gesture_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_multigesture, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_finger_gesture_event_enable
		end

	disable_finger_gesture_event
			-- Ignore the `finger_gesture_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_multigesture, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_finger_gesture_event_enable
		end

	is_finger_gesture_event_enable:BOOLEAN
			-- Is the `finger_gesture_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_multigesture, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_dollar_gesture_event
			-- Process the `dollar_gesture_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dollargesture, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_dollar_gesture_event_enable
		end

	disable_dollar_gesture_event
			-- Ignore the `dollar_gesture_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dollargesture, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_dollar_gesture_event_enable
		end

	is_dollar_gesture_event_enable:BOOLEAN
			-- Is the `dollar_gesture_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dollargesture, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_file_drop_event
			-- Process the `file_drop_actions' event.
			-- Disable by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dropfile, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_file_drop_event_enable
		end

	disable_file_drop_event
			-- Ignore the `file_drop_actions' event.
			-- Disable by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dropfile, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_file_drop_event_enable
		end

	is_file_drop_event_enable:BOOLEAN
			-- Is the `file_drop_actions' event has to be process.
			-- Disable by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dropfile, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end


	game_library: detachable GAME_SDL_CONTROLLER

feature {GAME_SDL_CONTROLLER}

	set_game_library(a_game_library:GAME_SDL_CONTROLLER)
		do
			game_library := a_game_library
		end

feature {NONE} -- Implementation

	decode_event
		-- Analyse the event and launch the appropriate action.
		-- For optimisation purpose, this routine is quite long.
	local
		l_event_type:NATURAL_32
	do
		l_event_type:={GAME_SDL_EXTERNAL}.get_event_struct_type(event_ptr)
		if l_event_type={GAME_SDL_EXTERNAL}.Sdl_quit and not quit_signal_actions.is_empty then
			quit_signal_actions.call ([{GAME_SDL_EXTERNAL}.get_quit_event_struct_timestamp(event_ptr)])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_windowevent and then not window_event_actions.is_empty then
			window_event_actions.call ([
										{GAME_SDL_EXTERNAL}.get_window_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_event(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_data1(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_data2(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_keydown and then not key_down_actions.is_empty then
			key_down_actions.call ([
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_repeat(event_ptr),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_sym({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_mod({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr))
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_keyup and then not key_up_actions.is_empty then
			key_up_actions.call ([
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_repeat(event_ptr),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_sym({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_mod({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr))
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_textediting and then not text_editing_actions.is_empty then
			text_editing_actions.call ([
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_window_id(event_ptr),
										pointer_utf8_to_string_32({GAME_SDL_EXTERNAL}.get_text_editing_event_struct_text(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_start(event_ptr),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_length(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_textinput and then not text_input_actions.is_empty then
			text_input_actions.call ([
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_window_id(event_ptr),
										pointer_utf8_to_string_32({GAME_SDL_EXTERNAL}.get_text_editing_event_struct_text(event_ptr))
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousemotion and then not mouse_motion_actions.is_empty then
			mouse_motion_actions.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_state(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_y(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_xrel(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_yrel(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousebuttondown and then not mouse_button_down_actions.is_empty then
			mouse_button_down_actions.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_clicks(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousebuttonup and then not mouse_button_up_actions.is_empty then
			mouse_button_up_actions.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_clicks(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousewheel and then not mouse_wheel_move_actions.is_empty then
			mouse_wheel_move_actions.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_y(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joyaxismotion and then not joy_axis_motion_actions.is_empty  then
			joy_axis_motion_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_axis (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_value (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joyballmotion and then not joy_ball_motion_actions.is_empty  then
			joy_ball_motion_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_ball (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_xrel (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_yrel (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joyhatmotion and then not joy_hat_motion_actions.is_empty  then
			joy_hat_motion_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_hat (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_value (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joybuttondown and then not joy_button_down_actions.is_empty  then
			joy_button_down_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_button (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joybuttonup and then not joy_button_up_actions.is_empty  then
			joy_button_up_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_button (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joydeviceadded and then not joy_device_found_actions.is_empty  then
			joy_device_found_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_which (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joydeviceremoved and then not joy_device_remove_actions.is_empty  then
			joy_device_remove_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_which (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_multigesture and then not finger_gesture_actions.is_empty  then
			finger_gesture_actions.call ([
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_touch_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_num_fingers (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_x (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_y (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_dtheta (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_ddist (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_fingermotion and then not finger_motion_actions.is_empty  then
			finger_motion_actions.call ([
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_touch_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_finger_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_x (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_y (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dx (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dy (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_pressure (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_fingerup and then not finger_up_actions.is_empty  then
			finger_up_actions.call ([
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_touch_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_finger_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_x (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_y (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dx (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dy (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_pressure (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_fingerdown and then not finger_down_actions.is_empty  then
			finger_down_actions.call ([
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_touch_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_finger_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_x (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_y (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dx (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dy (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_pressure (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.Sdl_dollargesture and not dollar_gesture_actions.is_empty then
			dollar_gesture_actions.call ([
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_touch_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_gesture_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_num_fingers(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_y(event_ptr),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_error(event_ptr)
										])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_dropfile then
			manage_drop_file
		end
	end

	manage_drop_file
		local
			l_string:STRING_8
			l_string_pointer:POINTER
		do
			l_string_pointer := {GAME_SDL_EXTERNAL}.get_drop_event_struct_file (event_ptr)
			if not file_drop_actions.is_empty then
				create l_string.make_from_c (l_string_pointer)
				file_drop_actions.call ([
											{GAME_SDL_EXTERNAL}.get_drop_event_struct_timestamp (event_ptr),
											create {STRING_8}.make_from_string (l_string)
									])
			end
			{GAME_SDL_EXTERNAL}.sdl_free (l_string_pointer)
		end

	pointer_utf8_to_string_32(l_utf8_pointer:POINTER):STRING_32
		local
			l_to_covert:STRING_8
			l_utf_converter:UTF_CONVERTER
		do
			create l_utf_converter
			create l_to_covert.make_from_c (l_utf8_pointer)
			Result := l_utf_converter.utf_8_string_8_to_escaped_string_32 (l_to_covert)
		end

	dispose
		do
			event_ptr.memory_free
		end

	event_ptr:POINTER




--To Remember:

--Common:

--On_Iteration					X
--SDL_QuitEvent					X
--SDL_JoyDeviceEvent			X
--SDL_ControllerDeviceEvent		Not used
--SDL_DropEvent					X

--Window Events:

--SDL_WindowEvent				X
--SDL_KeyboardEvent
--SDL_TextEditingEvent
--SDL_TextInputEvent
--SDL_MouseMotionEvent
--SDL_MouseButtonEvent
--SDL_MouseWheelEvent

--Joystick Events:

--SDL_JoyAxisEvent
--SDL_JoyBallEvent
--SDL_JoyHatEvent
--SDL_JoyButtonEvent

--Controller Events:

--SDL_ControllerAxisEvent
--SDL_ControllerButtonEvent

--To Test:

--SDL_TouchFingerEvent
--SDL_MultiGestureEvent
--SDL_DollarGestureEvent


end
