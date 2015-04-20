note
	description: "[
					Controler for the event. 
					It is important to call poll_event or wait_event regularly 
					if you want events to be launch.
				]"
	author: "Louis Marchand"
	date: "Sat, 28 Mar 2015 03:44:41 +0000"
	revision: "2.0"

class
	GAME_EVENTS_CONTROLLER

inherit
	GAME_SDL_ANY
		redefine
			default_create
		end
	MEMORY_STRUCTURE
		export
			{GAME_SDL_ANY} item
			{NONE} make, make_by_pointer, exists
		redefine
			default_create
		end
	MEMORY
		redefine
			default_create
		end

create {GAME_LIBRARY_CONTROLLER}
	default_create

feature {NONE} -- Initialization

	default_create
			-- Initialization of `Current'
		do
			make
			initialize_actions
			create clear_actions
		end

	initialize_actions
			-- Create any `*_actions' attributes
		do
			create iteration_actions
			create quit_signal_actions
			create dollar_gesture_actions
			create window_event_actions
			create key_pressed_actions
			create key_released_actions
			create text_editing_actions
			create text_input_actions
			create mouse_motion_actions
			create mouse_button_pressed_actions
			create mouse_button_released_actions
			create mouse_wheel_move_actions
			create joy_axis_motion_actions
			create joy_ball_motion_actions
			create joy_hat_motion_actions
			create joy_button_released_actions
			create joy_button_pressed_actions
			create joy_device_founded_actions
			create joy_device_removed_actions
			create finger_motion_actions
			create finger_released_actions
			create finger_touched_actions
			create fingers_gesture_actions
			create dollar_record_actions
			create file_dropped_actions
		end



feature -- Access

	clear
			-- Remove every event in the system
		do
			clear_actions.call
			initialize_actions
		end

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
					iteration_actions.call ([la_game_library.time_since_create])
				else
					iteration_actions.call ([(0).as_natural_32])
				end
			end
			from l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(item)
			until l_is_event=0
			loop
				decode_event
				l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(item)
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

	key_pressed_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;repeat:NATURAL_8;
												scancode,keycode:INTEGER_32;modifier:NATURAL_16]]
			-- When a user presses a button on a keyboard. The current focused window
			-- is identified by `window_id'. `repeat' is non zero if the event is a key repeat.
			-- The key pressed has the physical code `scancode', the virtual code `keycode' and
			-- has the current `modifier' (CTRL, SHIFT, ALT, etc.) in effect.

	key_released_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;repeat:NATURAL_8;
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
			-- Note: `mouse_id' may be SDL_TOUCH_MOUSEID

	mouse_button_pressed_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,mouse_id:NATURAL_32;
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
			-- Note: `mouse_id' may be SDL_TOUCH_MOUSEID

	mouse_button_released_actions: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,mouse_id:NATURAL_32;
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
			-- Note: `mouse_id' may be SDL_TOUCH_MOUSEID

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

	joy_button_pressed_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32;button_id:NATURAL_8]]
			-- When the button identified by `button_id' of the joystick identified by `joystick_id' has
			-- been pressed.

	joy_button_released_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32;button_id:NATURAL_8]]
			-- When the button identified by `button_id' of the joystick identified by `joystick_id' has
			-- been released.

	joy_device_founded_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]
			-- When a new joystick device identified by `joystick_id' has been founded.

	joy_device_removed_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;joystick_id:INTEGER_32]]
			-- When a new joystick device identified by `joystick_id' has been removed.

	finger_motion_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id, finger_id:INTEGER_64;
												x, y, x_relative, y_relative, pressure:REAL_32]]
			-- When a finger identified by `finger_id' in the touch device identified by
			-- `touch_id' has been moved to (`x',`y') with a certain `pressure'. The
			-- `x_relative' and `y_relative' indicate the move relative to the last
			-- call of the `finger_motion_actions' event.
			-- Note that `x', `y', `x_relative', `y_relative' and `pressure' are normalize
			-- between 0 and 1.

	finger_released_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id, finger_id:INTEGER_64;
											x, y, x_relative, y_relative, pressure:REAL_32]]
			-- When a finger identified by `finger_id' in the touch device identified by
			-- `touch_id' has been released at (`x',`y') with a certain `pressure'. The
			-- `x_relative' and `y_relative' indicate the move relative to the last
			-- call of the `finger_motion_actions' event.
			-- Note that `x', `y', `x_relative', `y_relative' and `pressure' are normalize
			-- between 0 and 1.

	finger_touched_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id, finger_id:INTEGER_64;
											x, y, x_relative, y_relative, pressure:REAL_32]]
			-- When a finger identified by `finger_id' in the touch device identified by
			-- `touch_id' has been pressed at (`x',`y') with a certain `pressure'. The
			-- `x_relative' and `y_relative' indicate the move relative to the last
			-- call of the `finger_motion_actions' event.
			-- Note that `x', `y', `x_relative', `y_relative' and `pressure' are normalize
			-- between 0 and 1.

	fingers_gesture_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id:INTEGER_64;
												fingers_count:NATURAL_16; center_x, center_y,
												theta, distance:REAL_32]]
			-- When a gesture has been made on the touch device identified by `touch_id'.
			-- The gesture has a certain `fingers_count', is centered at (`center_x', `center_y').
			-- The fingers used a rotation of `theta' degree and have a `distance' of pinch.

	dollar_gesture_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id:INTEGER_64;
												gesture_id:INTEGER_64;fingers_count:NATURAL_32;
												x,y,error:REAL_32]]
			-- When a $1 gesture has been recognize on the touch device `touch_id'.
			-- The gesture is uniquely identified by `gesture_id'. I use `fingers_count' fingers
			-- and is centered at (`x',`y') where `x' and `y' are normalized (between 0 and 1).
			-- The `error' indicate the difference between the current gesture and the template.

	dollar_record_actions: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_id, gesture_id:INTEGER_64]]
			-- When a $1 gesture has been recorded on the touch device `touch_id'.
			-- The gesture is uniquely identified by `gesture_id'.

	file_dropped_actions: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;filename:READABLE_STRING_GENERAL]]
			-- The file pointed by `filename' has been dropped on a window of the game.
			-- This event is disabled by default. use {GAME_EVENTS_CONTROLLER}.`enable_file_dropped_event'
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

	is_quit_signal_event_enable:BOOLEAN assign set_is_quit_signal_event_enable
			-- Is the `quit_signal_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_quit, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_quit_signal_event_enable(a_value:BOOLEAN)
			-- Assign to `is_quit_signal_event_enable' the value of `a_value'
		do
			if a_value then
				enable_quit_signal_event
			else
				disable_quit_signal_event
			end
		ensure
			Is_Assign: is_quit_signal_event_enable ~ a_value
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

	is_window_event_enable:BOOLEAN assign set_is_window_event_enable
			-- Is the `window_event_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_windowevent, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_window_event_enable(a_value:BOOLEAN)
			-- Assign to `is_window_event_enable' the value of `a_value'
		do
			if a_value then
				enable_window_event
			else
				disable_window_event
			end
		ensure
			Is_Assign: is_window_event_enable ~ a_value
		end

	enable_key_pressed_event
			-- Process the `key_pressed_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keydown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_key_pressed_event_enable
		end

	disable_key_pressed_event
			-- Ignore the `key_pressed_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keydown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_key_pressed_event_enable
		end

	is_key_pressed_event_enable:BOOLEAN assign set_is_key_pressed_event_enable
			-- Is the `key_pressed_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keydown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_key_pressed_event_enable(a_value:BOOLEAN)
			-- Assign to `is_key_pressed_event_enable' the value of `a_value'
		do
			if a_value then
				enable_key_pressed_event
			else
				disable_key_pressed_event
			end
		ensure
			Is_Assign: is_key_pressed_event_enable ~ a_value
		end

	enable_key_released_event
			-- Process the `key_released_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keyup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_key_released_event_enable
		end

	disable_key_released_event
			-- Ignore the `key_released_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keyup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_key_released_event_enable
		end

	is_key_released_event_enable:BOOLEAN assign set_is_key_released_event_enable
			-- Is the `key_released_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keyup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_key_released_event_enable(a_value:BOOLEAN)
			-- Assign to `is_key_released_event_enable' the value of `a_value'
		do
			if a_value then
				enable_key_released_event
			else
				disable_key_released_event
			end
		ensure
			Is_Assign: is_key_released_event_enable ~ a_value
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

	is_text_editing_event_enable:BOOLEAN assign set_is_text_editing_event_enable
			-- Is the `text_editing_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textediting, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_text_editing_event_enable(a_value:BOOLEAN)
			-- Assign to `is_text_editing_event_enable' the value of `a_value'
		do
			if a_value then
				enable_text_editing_event
			else
				disable_text_editing_event
			end
		ensure
			Is_Assign: is_text_editing_event_enable ~ a_value
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

	is_text_input_event_enable:BOOLEAN assign set_is_text_input_event_enable
			-- Is the `text_input_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textinput, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_text_input_event_enable(a_value:BOOLEAN)
			-- Assign to `is_text_input_event_enable' the value of `a_value'
		do
			if a_value then
				enable_text_input_event
			else
				disable_text_input_event
			end
		ensure
			Is_Assign: is_text_input_event_enable ~ a_value
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

	is_mouse_motion_event_enable:BOOLEAN assign set_is_mouse_motion_event_enable
			-- Is the `mouse_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousemotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_mouse_motion_event_enable(a_value:BOOLEAN)
			-- Assign to `is_text_input_event_enable' the value of `a_value'
		do
			if a_value then
				enable_mouse_motion_event
			else
				disable_mouse_motion_event
			end
		ensure
			Is_Assign: is_mouse_motion_event_enable ~ a_value
		end

	enable_mouse_button_pressed_event
			-- Process the `mouse_button_pressed_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttondown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_mouse_button_pressed_event_enable
		end

	disable_mouse_button_pressed_event
			-- Ignore the `mouse_button_pressed_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttondown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_mouse_button_pressed_event_enable
		end

	is_mouse_button_pressed_event_enable:BOOLEAN assign set_is_mouse_button_pressed_event_enable
			-- Is the `mouse_button_pressed_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttondown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_mouse_button_pressed_event_enable(a_value:BOOLEAN)
			-- Assign to `is_mouse_button_pressed_event_enable' the value of `a_value'
		do
			if a_value then
				enable_mouse_button_pressed_event
			else
				disable_mouse_button_pressed_event
			end
		ensure
			Is_Assign: is_mouse_button_pressed_event_enable ~ a_value
		end

	enable_mouse_button_released_event
			-- Process the `mouse_button_released_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttonup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_mouse_button_released_event_enable
		end

	disable_mouse_button_released_event
			-- Ignore the `mouse_button_released_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttonup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_mouse_button_released_event_enable
		end

	is_mouse_button_released_event_enable:BOOLEAN assign set_is_mouse_button_released_event_enable
			-- Is the `mouse_button_released_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttonup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_mouse_button_released_event_enable(a_value:BOOLEAN)
			-- Assign to `is_mouse_button_released_event_enable' the value of `a_value'
		do
			if a_value then
				enable_mouse_button_released_event
			else
				disable_mouse_button_released_event
			end
		ensure
			Is_Assign: is_mouse_button_released_event_enable ~ a_value
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

	is_mouse_wheel_event_enable:BOOLEAN assign set_is_mouse_wheel_event_enable
			-- Is the `mouse_wheel_move_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousewheel, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_mouse_wheel_event_enable(a_value:BOOLEAN)
			-- Assign to `is_mouse_wheel_event_enable' the value of `a_value'
		do
			if a_value then
				enable_mouse_wheel_event
			else
				disable_mouse_wheel_event
			end
		ensure
			Is_Assign: is_mouse_wheel_event_enable ~ a_value
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

	is_joy_axis_motion_event_enable:BOOLEAN assign set_is_joy_axis_motion_event_enable
			-- Is the `joy_axis_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyaxismotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_joy_axis_motion_event_enable(a_value:BOOLEAN)
			-- Assign to `is_joy_axis_motion_event_enable' the value of `a_value'
		do
			if a_value then
				enable_joy_axis_motion_event
			else
				disable_joy_axis_motion_event
			end
		ensure
			Is_Assign: is_joy_axis_motion_event_enable ~ a_value
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

	is_joy_ball_motion_event_enable:BOOLEAN assign set_is_joy_ball_motion_event_enable
			-- Is the `joy_ball_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyballmotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_joy_ball_motion_event_enable(a_value:BOOLEAN)
			-- Assign to `is_joy_ball_motion_event_enable' the value of `a_value'
		do
			if a_value then
				enable_joy_ball_motion_event
			else
				disable_joy_ball_motion_event
			end
		ensure
			Is_Assign: is_joy_ball_motion_event_enable ~ a_value
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

	is_joy_hat_motion_event_enable:BOOLEAN assign set_is_joy_hat_motion_event_enable
			-- Is the `joy_hat_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyhatmotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_joy_hat_motion_event_enable(a_value:BOOLEAN)
			-- Assign to `is_joy_hat_motion_event_enable' the value of `a_value'
		do
			if a_value then
				enable_joy_hat_motion_event
			else
				disable_joy_hat_motion_event
			end
		ensure
			Is_Assign: is_joy_hat_motion_event_enable ~ a_value
		end

	enable_joy_button_pressed_event
			-- Process the `joy_button_pressed_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttondown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_button_pressed_event_enable
		end

	disable_joy_button_pressed_event
			-- Ignore the `joy_button_pressed_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttondown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_button_pressed_event_enable
		end

	is_joy_button_pressed_event_enable:BOOLEAN assign set_is_joy_button_pressed_event_enable
			-- Is the `joy_button_pressed_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttondown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_joy_button_pressed_event_enable(a_value:BOOLEAN)
			-- Assign to `is_joy_button_pressed_event_enable' the value of `a_value'
		do
			if a_value then
				enable_joy_button_pressed_event
			else
				disable_joy_button_pressed_event
			end
		ensure
			Is_Assign: is_joy_button_pressed_event_enable ~ a_value
		end

	enable_joy_button_released_event
			-- Process the `joy_button_released_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttonup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_button_released_event_enable
		end

	disable_joy_button_released_event
			-- Ignore the `joy_button_released_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttonup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_button_released_event_enable
		end

	is_joy_button_released_event_enable:BOOLEAN assign set_is_joy_button_released_event_enable
			-- Is the `joy_button_released_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttonup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_joy_button_released_event_enable(a_value:BOOLEAN)
			-- Assign to `is_joy_button_released_event_enable' the value of `a_value'
		do
			if a_value then
				enable_joy_button_released_event
			else
				disable_joy_button_released_event
			end
		ensure
			Is_Assign: is_joy_button_released_event_enable ~ a_value
		end

	enable_joy_device_founded_event
			-- Process the `joy_device_founded_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceadded, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_device_founded_event_enable
		end

	disable_joy_device_founded_event
			-- Ignore the `joy_device_founded_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceadded, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_device_founded_event_enable
		end

	is_joy_device_founded_event_enable:BOOLEAN assign set_is_joy_device_founded_event_enable
			-- Is the `joy_device_founded_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceadded, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_joy_device_founded_event_enable(a_value:BOOLEAN)
			-- Assign to `is_joy_device_founded_event_enable' the value of `a_value'
		do
			if a_value then
				enable_joy_device_founded_event
			else
				disable_joy_device_founded_event
			end
		ensure
			Is_Assign: is_joy_device_founded_event_enable ~ a_value
		end

	enable_joy_device_removed_event
			-- Process the `joy_device_removed_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceremoved, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_joy_device_removed_event_enable
		end

	disable_joy_device_removed_event
			-- Ignore the `joy_device_removed_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceremoved, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_joy_device_removed_event_enable
		end

	is_joy_device_removed_event_enable:BOOLEAN assign set_is_joy_device_removed_event_enable
			-- Is the `joy_device_removed_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceremoved, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_joy_device_removed_event_enable(a_value:BOOLEAN)
			-- Assign to `is_joy_device_removed_event_enable' the value of `a_value'
		do
			if a_value then
				enable_joy_device_removed_event
			else
				disable_joy_device_removed_event
			end
		ensure
			Is_Assign: is_joy_device_removed_event_enable ~ a_value
		end

	enable_every_joy_events
			-- Enable every joystick events.
			-- Enabled by default
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.sdl_enable)
			manage_error_code(l_error, "Error while enabling joystick events.")
		ensure
			Is_Events_Enabled: is_joy_axis_motion_event_enable and is_joy_ball_motion_event_enable and
								is_joy_hat_motion_event_enable and is_joy_button_pressed_event_enable and
								is_joy_button_released_event_enable and is_joy_device_founded_event_enable and
								is_joy_device_removed_event_enable
		end

	disable_every_joy_events
			-- Ignore every joystick events.
			-- Enabled by default
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.sdl_disable)
			manage_error_code(l_error, "Error while disabling joystick events.")
		ensure
			Is_Events_Disabled:	not (is_joy_axis_motion_event_enable or is_joy_ball_motion_event_enable or
								is_joy_hat_motion_event_enable or is_joy_button_pressed_event_enable or
								is_joy_button_released_event_enable or is_joy_device_founded_event_enable or
								is_joy_device_removed_event_enable)
		end

	is_any_joy_event_enable:BOOLEAN assign set_is_any_joy_event_enable
			-- Is there any joystick event that is enable
			-- Enabled by default
		local
			l_query:INTEGER
		do
			clear_error
			l_query := {GAME_SDL_EXTERNAL}.SDL_JoystickEventState({GAME_SDL_EXTERNAL}.sdl_query)
			manage_error_code(l_query, "Error while querying joystick events activation.")
			Result := l_query = 1
		end

	set_is_any_joy_event_enable(a_value:BOOLEAN)
			-- Assign to `is_any_joy_event_enable' the value of `a_value'
		do
			if a_value then
				enable_every_joy_events
			else
				disable_every_joy_events
			end
		ensure
			Is_Assign: is_any_joy_event_enable ~ a_value
		end

	enable_finger_touched_event
			-- Process the `finger_touched_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerdown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_finger_touched_event_enable
		end

	disable_finger_touched_event
			-- Ignore the `finger_touched_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerdown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_finger_touched_event_enable
		end

	is_finger_touched_event_enable:BOOLEAN assign set_is_finger_touched_event_enable
			-- Is the `finger_touched_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerdown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_finger_touched_event_enable(a_value:BOOLEAN)
			-- Assign to `is_finger_touched_event_enable' the value of `a_value'
		do
			if a_value then
				enable_finger_touched_event
			else
				disable_finger_touched_event
			end
		ensure
			Is_Assign: is_finger_touched_event_enable ~ a_value
		end

	enable_finger_released_event
			-- Process the `finger_released_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_finger_released_event_enable
		end

	disable_finger_released_event
			-- Ignore the `finger_released_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_finger_released_event_enable
		end

	is_finger_released_event_enable:BOOLEAN assign set_is_finger_released_event_enable
			-- Is the `finger_released_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_finger_released_event_enable(a_value:BOOLEAN)
			-- Assign to `is_finger_released_event_enable' the value of `a_value'
		do
			if a_value then
				enable_finger_released_event
			else
				disable_finger_released_event
			end
		ensure
			Is_Assign: is_finger_released_event_enable ~ a_value
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

	is_finger_motion_event_enable:BOOLEAN assign set_is_finger_motion_event_enable
			-- Is the `finger_motion_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingermotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_finger_motion_event_enable(a_value:BOOLEAN)
			-- Assign to `is_finger_motion_event_enable' the value of `a_value'
		do
			if a_value then
				enable_finger_motion_event
			else
				disable_finger_motion_event
			end
		ensure
			Is_Assign: is_finger_motion_event_enable ~ a_value
		end

	enable_fingers_gesture_event
			-- Process the `fingers_gesture_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_multigesture, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_fingers_gesture_event_enable
		end

	disable_fingers_gesture_event
			-- Ignore the `fingers_gesture_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_multigesture, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_fingers_gesture_event_enable
		end

	is_fingers_gesture_event_enable:BOOLEAN assign set_is_fingers_gesture_event_enable
			-- Is the `fingers_gesture_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_multigesture, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_fingers_gesture_event_enable(a_value:BOOLEAN)
			-- Assign to `is_fingers_gesture_event_enable' the value of `a_value'
		do
			if a_value then
				enable_fingers_gesture_event
			else
				disable_fingers_gesture_event
			end
		ensure
			Is_Assign: is_fingers_gesture_event_enable ~ a_value
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

	is_dollar_gesture_event_enable:BOOLEAN assign set_is_dollar_gesture_event_enable
			-- Is the `dollar_gesture_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dollargesture, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_dollar_gesture_event_enable(a_value:BOOLEAN)
			-- Assign to `is_dollar_gesture_event_enable' the value of `a_value'
		do
			if a_value then
				enable_dollar_gesture_event
			else
				disable_dollar_gesture_event
			end
		ensure
			Is_Assign: is_dollar_gesture_event_enable ~ a_value
		end

	enable_dollar_record_event
			-- Process the `dollar_record_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.SDL_DOLLARRECORD, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_dollar_record_event_enable
		end

	disable_dollar_record_event
			-- Ignore the `dollar_record_actions' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.SDL_DOLLARRECORD, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_dollar_record_event_enable
		end

	is_dollar_record_event_enable:BOOLEAN assign set_is_dollar_record_event_enable
			-- Is the `dollar_record_actions' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.SDL_DOLLARRECORD, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_dollar_record_event_enable(a_value:BOOLEAN)
			-- Assign to `is_dollar_record_event_enable' the value of `a_value'
		do
			if a_value then
				enable_dollar_record_event
			else
				disable_dollar_record_event
			end
		ensure
			Is_Assign: is_dollar_record_event_enable ~ a_value
		end

	enable_file_dropped_event
			-- Process the `file_dropped_actions' event.
			-- Disable by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dropfile, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		ensure
			Is_Event_Enabled: is_file_dropped_event_enable
		end

	disable_file_dropped_event
			-- Ignore the `file_dropped_actions' event.
			-- Disable by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dropfile, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		ensure
			Is_Event_Disabled: not is_file_dropped_event_enable
		end

	is_file_dropped_event_enable:BOOLEAN assign set_is_file_dropped_event_enable
			-- Is the `file_dropped_actions' event has to be process.
			-- Disable by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dropfile, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	set_is_file_dropped_event_enable(a_value:BOOLEAN)
			-- Assign to `is_file_dropped_event_enable' the value of `a_value'
		do
			if a_value then
				enable_file_dropped_event
			else
				disable_file_dropped_event
			end
		ensure
			Is_Assign: is_file_dropped_event_enable ~ a_value
		end


	game_library: detachable GAME_LIBRARY_CONTROLLER
			-- The library controller used by `Current'

feature {GAME_SDL_ANY} -- Implementation

	clear_actions:ACTION_SEQUENCE[TUPLE]
			-- Trigger before `clear' is execute.

feature {GAME_LIBRARY_CONTROLLER} -- Implementation

	set_game_library(a_game_library:GAME_LIBRARY_CONTROLLER)
			-- Assign `game_library' with the provided `a_game_library'
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
		l_event_type:={GAME_SDL_EXTERNAL}.get_event_struct_type(item)
		if l_event_type={GAME_SDL_EXTERNAL}.Sdl_quit and not quit_signal_actions.is_empty then
			quit_signal_actions.call ([{GAME_SDL_EXTERNAL}.get_quit_event_struct_timestamp(item)])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_windowevent and then not window_event_actions.is_empty then
			window_event_actions.call ([
										{GAME_SDL_EXTERNAL}.get_window_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_window_id(item),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_event(item),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_data1(item),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_data2(item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_keydown and then not key_pressed_actions.is_empty then
			key_pressed_actions.call ([
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_window_id(item),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_repeat(item),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(item)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_sym({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(item)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_mod({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(item))
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_keyup and then not key_released_actions.is_empty then
			key_released_actions.call ([
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_window_id(item),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_repeat(item),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(item)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_sym({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(item)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_mod({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(item))
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_textediting and then not text_editing_actions.is_empty then
			text_editing_actions.call ([
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_window_id(item),
										pointer_utf8_to_string_32({GAME_SDL_EXTERNAL}.get_text_editing_event_struct_text(item)),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_start(item),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_length(item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_textinput and then not text_input_actions.is_empty then
			text_input_actions.call ([
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_window_id(item),
										pointer_utf8_to_string_32({GAME_SDL_EXTERNAL}.get_text_editing_event_struct_text(item))
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousemotion and then not mouse_motion_actions.is_empty then
			mouse_motion_actions.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_window_id(item),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_which(item),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_state(item),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_x(item),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_y(item),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_xrel(item),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_yrel(item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousebuttondown and then not mouse_button_pressed_actions.is_empty then
			mouse_button_pressed_actions.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_window_id(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_clicks(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousebuttonup and then not mouse_button_released_actions.is_empty then
			mouse_button_released_actions.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_window_id(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_clicks(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(item),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousewheel and then not mouse_wheel_move_actions.is_empty then
			mouse_wheel_move_actions.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_window_id(item),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_which(item),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_x(item),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_y(item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joyaxismotion and then not joy_axis_motion_actions.is_empty  then
			joy_axis_motion_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_which (item),
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_axis (item),
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_value (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joyballmotion and then not joy_ball_motion_actions.is_empty  then
			joy_ball_motion_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_which (item),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_ball (item),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_xrel (item),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_yrel (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joyhatmotion and then not joy_hat_motion_actions.is_empty  then
			joy_hat_motion_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_which (item),
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_hat (item),
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_value (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joybuttondown and then not joy_button_pressed_actions.is_empty  then
			joy_button_pressed_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_which (item),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_button (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joybuttonup and then not joy_button_released_actions.is_empty  then
			joy_button_released_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_which (item),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_button (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joydeviceadded and then not joy_device_founded_actions.is_empty  then
			joy_device_founded_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_which (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joydeviceremoved and then not joy_device_removed_actions.is_empty  then
			joy_device_removed_actions.call ([
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_which (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_multigesture and then not fingers_gesture_actions.is_empty  then
			fingers_gesture_actions.call ([
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_touch_id (item),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_num_fingers (item),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_x (item),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_y (item),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_dtheta (item),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_ddist (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_fingermotion and then not finger_motion_actions.is_empty  then
			finger_motion_actions.call ([
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_touch_id (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_finger_id (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_x (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_y (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dx (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dy (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_pressure (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_fingerup and then not finger_released_actions.is_empty  then
			finger_released_actions.call ([
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_touch_id (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_finger_id (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_x (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_y (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dx (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dy (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_pressure (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_fingerdown and then not finger_touched_actions.is_empty  then
			finger_touched_actions.call ([
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_timestamp (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_touch_id (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_finger_id (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_x (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_y (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dx (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dy (item),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_pressure (item)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.Sdl_dollargesture and not dollar_gesture_actions.is_empty then
			dollar_gesture_actions.call ([
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_touch_id(item),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_gesture_id(item),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_num_fingers(item),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_x(item),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_y(item),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_error(item)
										])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.SDL_DOLLARRECORD and not dollar_record_actions.is_empty then
			dollar_record_actions.call ([
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_timestamp(item),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_touch_id(item),
										{GAME_SDL_EXTERNAL}.get_dollar_gesture_event_struct_gesture_id(item)
										])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_dropfile then
			manage_drop_file
		end
	end

	manage_drop_file
			-- Event that happen when a file is drag and dropped on the application
		local
			l_string:STRING_8
			l_string_pointer:POINTER
		do
			l_string_pointer := {GAME_SDL_EXTERNAL}.get_drop_event_struct_file (item)
			if not file_dropped_actions.is_empty then
				create l_string.make_from_c (l_string_pointer)
				file_dropped_actions.call ([
											{GAME_SDL_EXTERNAL}.get_drop_event_struct_timestamp (item),
											create {STRING_8}.make_from_string (l_string)
									])
			end
			{GAME_SDL_EXTERNAL}.sdl_free (l_string_pointer)
		end

	pointer_utf8_to_string_32(l_utf8_pointer:POINTER):STRING_32
			-- Generate a {STRING_32} from the UTF8 C string pointed by `l_utf8_pointer'
		local
			l_to_covert:STRING_8
			l_utf_converter:UTF_CONVERTER
		do
			create l_utf_converter
			create l_to_covert.make_from_c (l_utf8_pointer)
			Result := l_utf_converter.utf_8_string_8_to_escaped_string_32 (l_to_covert)
		end


	structure_size: INTEGER_32
			-- <Preucrsor>
		do
			Result := {GAME_SDL_EXTERNAL}.C_sizeof_sdl_event
		end

end
