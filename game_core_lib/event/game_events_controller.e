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

create {GAME_SDL_CONTROLLER}
	default_create

feature {NONE} -- Initialization

	default_create
		do
			event_ptr:=event_ptr.memory_calloc (1, {GAME_SDL_EXTERNAL}.C_sizeof_sdl_event)
			create on_iteration
			create on_quit_signal
			create on_dollar_gesture
			create on_window_event
			create on_key_down
			create on_key_up
			create on_text_editing
			create on_text_input
			create on_mouse_motion
			create on_mouse_button_down
			create on_mouse_button_up
			create on_mouse_wheel_move
			create on_joy_axis_motion
			create on_joy_ball_motion
			create on_joy_hat_motion
			create on_joy_button_up
			create on_joy_button_down
			create on_joy_device_added
			create on_joy_device_removed
			create on_finger_motion
			create on_finger_up
			create on_finger_down
			create on_finger_gesture
			create on_file_drop
		end



feature -- Access

	poll_event
			-- Execute an event validation. If no event is pending, do nothing.
		local
			l_is_event:INTEGER
		do
			if not on_iteration.is_empty then
				if attached game_library as la_game_library then
					on_iteration.call ([la_game_library.ticks])
				else
					on_iteration.call ([(0).as_natural_32])
				end
			end
			from l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(event_ptr)
			until l_is_event=0
			loop
				decode_event
				l_is_event:={GAME_SDL_EXTERNAL}.SDL_PollEvent(event_ptr)
			end
		end

	on_quit_signal: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- When the application receive a quit signal.

	on_iteration: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32]]
			-- Called at each game loop

	on_dollar_gesture: ACTION_SEQUENCE[TUPLE[	timestamp:NATURAL_32;touch_device_id:NATURAL_64;
												gesture_id:INTEGER_64;number_of_fingers:NATURAL_32;
												x,y,error:REAL_32]]
			-- When a $1 gesture has been recognize on the touch device `touch_device_id'.
			-- The gesture is uniquely identified by `gesture_id'. I use `number_of_fingers' fingers
			-- and is centered at (`x',`y') where `x' and `y' are normalized (between 0 and 1).
			-- The `error' indicate the difference between the current gesture and the template.
			-- Todo: templating (SDL_RecordGesture, SDL_DOLLARRECORD event, SDL_SaveDollarTemplate, etc.)

	on_window_event: ACTION_SEQUENCE[TUPLE[timestamp,window_id:NATURAL_32;event_type:NATURAL_8;data1,data2:INTEGER_32]]
			-- When the window identified by `window_id' is changing state. `event_type' may take the following value:
			-- SDL_WINDOWEVENT_SHOWN: The window has been shown
			-- SDL_WINDOWEVENT_HIDDEN: The window has been hidden
			-- SDL_WINDOWEVENT_EXPOSED: The window has been exposed and should be redraw
			-- SDL_WINDOWEVENT_MOVED: window has been moved to coordinate (`data1',`data2')
			-- SDL_WINDOWEVENT_RESIZED: window has been resized to dimension `data1'x`data2'
			--                          this event is always preceded by SDL_WINDOWEVENT_SIZE_CHANGED
			-- SDL_WINDOWEVENT_SIZE_CHANGED: window size has changed
			--                               Always followed by SDL_WINDOWEVENT_RESIZED
			-- SDL_WINDOWEVENT_MINIMIZED: window has been minimized
			-- SDL_WINDOWEVENT_MAXIMIZED: window has been maximized
			-- SDL_WINDOWEVENT_RESTORED: window has been restored to normal size and position
			-- SDL_WINDOWEVENT_ENTER: window has gained mouse focus
			-- SDL_WINDOWEVENT_LEAVE: window has lost mouse focus
			-- SDL_WINDOWEVENT_FOCUS_GAINED: window has gained keyboard focus
			-- SDL_WINDOWEVENT_FOCUS_LOST: window has lost keyboard focus
			-- SDL_WINDOWEVENT_CLOSE: the window manager requests that the window be closed

	on_key_down: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;repeat:NATURAL_8;
												scancode,keycode:INTEGER_32;modifier:NATURAL_16]]
			-- When a user presses a button on a keyboard. The current focused window
			-- is identified by `window_id'. `repeat' is non zero if the event is a key repeat.
			-- The key pressed has the physical code `scancode', the virtual code `keycode' and
			-- has the current `modifier' (CTRL, SHIFT, ALT, etc.) in effect.

	on_key_up: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;repeat:NATURAL_8;
												scancode,keycode:INTEGER_32;modifier:NATURAL_16]]
			-- When a user releases a button on a keyboard. The current focused window
			-- is identified by `window_id'. `repeat' is non zero if the event is a key repeat.
			-- The key released has the physical code `scancode', the virtual code `keycode' and
			-- has the current `modifier' (CTRL, SHIFT, ALT, etc.) in effect.

	on_text_editing: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;text:STRING_32;
												start,lenght:INTEGER_32]]
			-- When a `text' has been edited in the window identified by `window_id'.
			-- The text must be edited from the `start' character for `lenght' characters.

	on_text_input: ACTION_SEQUENCE[TUPLE[	timestamp,window_id:NATURAL_32;text:STRING_32]]
			-- When a `text' has been input in the window identified by `window_id'.

	on_mouse_motion: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,which, state:NATURAL_32;
													x,y,x_relative,y_relative:INTEGER_32]]
			-- When the mouse identified by `which' has been moved to the coordinate (`x',`y')
			-- in the window identified by `window_id'. The mouse has been move of `x_relative'
			-- position on the x axis and `y_relative' position on the y axis since the last call
			-- of the `on_mouse_motion' event. The `state' of the mouse indicate which buttons is
			-- currently pressed. It is check with the following mask:
			-- SDL_BUTTON_LMASK: Left button
			-- SDL_BUTTON_MMASK: Middle button
			-- SDL_BUTTON_RMASK: Right button
			-- SDL_BUTTON_X1MASK: First optionnal button
			-- SDL_BUTTON_X2MASK: Second optionnal button
			-- Note: `which' may be SDL_TOUCH_MOUSEID

	on_mouse_button_down: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,which:NATURAL_32;
													button, state,clicks: NATURAL_8;x,y:INTEGER_32]]

	on_mouse_button_up: ACTION_SEQUENCE[TUPLE[	timestamp,window_id,which:NATURAL_32;
													button, state,clicks: NATURAL_8;x,y:INTEGER_32]]

	on_mouse_wheel_move: ACTION_SEQUENCE[TUPLE[timestamp,window_id,which:NATURAL_32;x,y:INTEGER_32]]

	on_joy_axis_motion: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;which:INTEGER_32;axis:NATURAL_8;value:INTEGER_16]]

	on_joy_ball_motion: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;which:INTEGER_32;ball:NATURAL_8;x_rel, y_rel:INTEGER_16]]

	on_joy_hat_motion: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;which:INTEGER_32;hat, value:NATURAL_8]]

	on_joy_button_down: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;which:INTEGER_32;button:NATURAL_8]]

	on_joy_button_up: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;which:INTEGER_32;button:NATURAL_8]]

	on_joy_device_added: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;which:INTEGER_32]]

	on_joy_device_removed: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;which:INTEGER_32]]

	on_finger_motion: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;touchId, fingerId:INTEGER_64; x, y, dx, dy, pressure:REAL_32]]

	on_finger_up: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;touchId, fingerId:INTEGER_64; x, y, dx, dy, pressure:REAL_32]]

	on_finger_down: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;touchId, fingerId:INTEGER_64; x, y, dx, dy, pressure:REAL_32]]

	on_finger_gesture: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;touchId:INTEGER_64; number_of_finger:NATURAL_16; center_x, center_y, theta, distance:REAL_32]]

	on_file_drop: ACTION_SEQUENCE[TUPLE[timestamp:NATURAL_32;file:READABLE_STRING_GENERAL]]

	enable_quit_signal_event
			-- Process the `on_quit_signal' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_quit, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_quit_signal_event
			-- Ignore the `on_quit_signal' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_quit, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_quit_signal_event_enable:BOOLEAN
			-- Is the `on_quit_signal' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_quit, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_window_event
			-- Process the `on_window_event' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_windowevent, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_window_event
			-- Ignore the `on_window_event' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_windowevent, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_window_event_enable:BOOLEAN
			-- Is the `on_window_event' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_windowevent, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_key_down_event
			-- Process the `on_key_down' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keydown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_key_down_event
			-- Ignore the `on_key_down' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keydown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_key_down_event_enable:BOOLEAN
			-- Is the `on_key_down' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keydown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_key_up_event
			-- Process the `on_key_up' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keyup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_key_up_event
			-- Ignore the `on_key_up' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keyup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_key_up_event_enable:BOOLEAN
			-- Is the `on_key_up' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_keyup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_text_editing_event
			-- Process the `on_text_editing' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textediting, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_text_editing_event
			-- Ignore the `on_text_editing' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textediting, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_text_editing_event_enable:BOOLEAN
			-- Is the `on_text_editing' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textediting, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_text_input_event
			-- Process the `on_text_input' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textinput, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_text_input_event
			-- Ignore the `on_text_input' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textinput, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_text_input_event_enable:BOOLEAN
			-- Is the `on_text_input' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_textinput, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_mouse_motion_event
			-- Process the `on_mouse_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousemotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_mouse_motion_event
			-- Ignore the `on_mouse_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousemotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_mouse_motion_event_enable:BOOLEAN
			-- Is the `on_mouse_motion' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousemotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_mouse_button_down_event
			-- Process the `on_mouse_button_down' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttondown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_mouse_button_down_event
			-- Ignore the `on_mouse_button_down' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttondown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_mouse_button_down_event_enable:BOOLEAN
			-- Is the `on_mouse_button_down' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttondown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_mouse_button_up_event
			-- Process the `on_mouse_button_up' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttonup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_mouse_button_up_event
			-- Ignore the `on_mouse_button_up' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttonup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_mouse_button_up_event_enable:BOOLEAN
			-- Is the `on_mouse_button_up' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousebuttonup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_mouse_wheel_event
			-- Process the `on_mouse_wheel_move' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousewheel, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_mouse_wheel_event
			-- Ignore the `on_mouse_wheel_move' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousewheel, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_mouse_wheel_event_enable:BOOLEAN
			-- Is the `on_mouse_wheel_move' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_mousewheel, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_axis_motion_event
			-- Process the `on_joy_axis_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyaxismotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_joy_axis_motion_event
			-- Ignore the `on_joy_axis_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyaxismotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_joy_axis_motion_event_enable:BOOLEAN
			-- Is the `on_joy_axis_motion' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyaxismotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_ball_motion_event
			-- Process the `on_joy_ball_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyballmotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_joy_ball_motion_event
			-- Ignore the `on_joy_ball_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyballmotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_joy_ball_motion_event_enable:BOOLEAN
			-- Is the `on_joy_ball_motion' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyballmotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_hat_motion_event
			-- Process the `on_joy_hat_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyhatmotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_joy_hat_motion_event
			-- Ignore the `on_joy_hat_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyhatmotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_joy_hat_motion_event_enable:BOOLEAN
			-- Is the `on_joy_hat_motion' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joyhatmotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_button_down_event
			-- Process the `on_joy_button_down' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttondown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_joy_button_down_event
			-- Ignore the `on_joy_button_down' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttondown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_joy_button_down_event_enable:BOOLEAN
			-- Is the `on_joy_button_down' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttondown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_button_up_event
			-- Process the `on_joy_button_up' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttonup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_joy_button_up_event
			-- Ignore the `on_joy_button_up' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttonup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_joy_button_up_event_enable:BOOLEAN
			-- Is the `on_joy_button_up' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joybuttonup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_device_added_event
			-- Process the `on_joy_device_added' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceadded, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_joy_device_added_event
			-- Ignore the `on_joy_device_added' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceadded, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_joy_device_added_event_enable:BOOLEAN
			-- Is the `on_joy_device_added' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceadded, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_joy_device_removed_event
			-- Process the `on_joy_device_removed' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceremoved, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_joy_device_removed_event
			-- Ignore the `on_joy_device_removed' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceremoved, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_joy_device_removed_event_enable:BOOLEAN
			-- Is the `on_joy_device_removed' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_joydeviceremoved, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_finger_down_event
			-- Process the `on_finger_down' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerdown, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_finger_down_event
			-- Ignore the `on_finger_down' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerdown, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_finger_down_event_enable:BOOLEAN
			-- Is the `on_finger_down' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerdown, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_finger_up_event
			-- Process the `on_finger_up' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerup, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_finger_up_event
			-- Ignore the `on_finger_up' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerup, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_finger_up_event_enable:BOOLEAN
			-- Is the `on_finger_up' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingerup, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_finger_motion_event
			-- Process the `on_finger_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingermotion, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_finger_motion_event
			-- Ignore the `on_finger_motion' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingermotion, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_finger_motion_event_enable:BOOLEAN
			-- Is the `on_finger_motion' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_fingermotion, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_finger_gesture_event
			-- Process the `on_finger_gesture' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_multigesture, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_finger_gesture_event
			-- Ignore the `on_finger_gesture' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_multigesture, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_finger_gesture_event_enable:BOOLEAN
			-- Is the `on_finger_gesture' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_multigesture, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_dollar_gesture_event
			-- Process the `on_dollar_gesture' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dollargesture, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_dollar_gesture_event
			-- Ignore the `on_dollar_gesture' event.
			-- Enabled by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dollargesture, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_dollar_gesture_event_enable:BOOLEAN
			-- Is the `on_dollar_gesture' event has to be process.
			-- Enabled by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dollargesture, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end

	enable_file_drop_event
			-- Process the `on_file_drop' event.
			-- Disable by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dropfile, {GAME_SDL_EXTERNAL}.sdl_enable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_enable end
		end

	disable_file_drop_event
			-- Ignore the `on_file_drop' event.
			-- Disable by default
		local
			l_error:NATURAL_8
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dropfile, {GAME_SDL_EXTERNAL}.sdl_disable)
			check l_error = {GAME_SDL_EXTERNAL}.sdl_disable end
		end

	is_file_drop_event_enable:BOOLEAN
			-- Is the `on_file_drop' event has to be process.
			-- Disable by default
		local
			l_query:NATURAL_8
		do
			l_query := {GAME_SDL_EXTERNAL}.SDL_EventState({GAME_SDL_EXTERNAL}.sdl_dropfile, {GAME_SDL_EXTERNAL}.sdl_query)
			Result := l_query = {GAME_SDL_EXTERNAL}.sdl_enable
		end



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
		if l_event_type={GAME_SDL_EXTERNAL}.Sdl_quit and not on_quit_signal.is_empty then
			on_quit_signal.call ([{GAME_SDL_EXTERNAL}.get_quit_event_struct_timestamp(event_ptr)])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_windowevent and then not on_window_event.is_empty then
			on_window_event.call ([
										{GAME_SDL_EXTERNAL}.get_window_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_event(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_data1(event_ptr),
										{GAME_SDL_EXTERNAL}.get_window_event_struct_data2(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_keydown and then not on_key_down.is_empty then
			on_key_down.call ([
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_repeat(event_ptr),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_sym({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_mod({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr))
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_keyup and then not on_key_up.is_empty then
			on_key_up.call ([
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_keyboard_event_struct_repeat(event_ptr),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_scancode({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_sym({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_key_sym_struct_mod({GAME_SDL_EXTERNAL}.get_keyboard_event_struct_keysym_pointer(event_ptr))
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_textediting and then not on_text_editing.is_empty then
			on_text_editing.call ([
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_window_id(event_ptr),
										pointer_utf8_to_string_32({GAME_SDL_EXTERNAL}.get_text_editing_event_struct_text(event_ptr)),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_start(event_ptr),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_length(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_textinput and then not on_text_input.is_empty then
			on_text_input.call ([
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_text_editing_event_struct_window_id(event_ptr),
										pointer_utf8_to_string_32({GAME_SDL_EXTERNAL}.get_text_editing_event_struct_text(event_ptr))
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousemotion and then not on_mouse_motion.is_empty then
			on_mouse_motion.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_state(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_y(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_xrel(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_motion_event_struct_yrel(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousebuttondown and then not on_mouse_button_down.is_empty then
			on_mouse_button_down.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_state(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_clicks(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousebuttonup and then not on_mouse_button_up.is_empty then
			on_mouse_button_up.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_button(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_state(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_clicks(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_button_event_struct_y(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_mousewheel and then not on_mouse_wheel_move.is_empty then
			on_mouse_wheel_move.call ([
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_timestamp(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_window_id(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_which(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_x(event_ptr),
										{GAME_SDL_EXTERNAL}.get_mouse_wheel_event_struct_y(event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joyaxismotion and then not on_joy_axis_motion.is_empty  then
			on_joy_axis_motion.call ([
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_axis (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_axis_event_struct_value (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joyballmotion and then not on_joy_ball_motion.is_empty  then
			on_joy_ball_motion.call ([
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_ball (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_xrel (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_ball_event_struct_yrel (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joyhatmotion and then not on_joy_hat_motion.is_empty  then
			on_joy_hat_motion.call ([
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_hat (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_hat_event_struct_value (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joybuttondown and then not on_joy_button_down.is_empty  then
			on_joy_button_down.call ([
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_button (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joybuttonup and then not on_joy_button_up.is_empty  then
			on_joy_button_up.call ([
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_which (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_button_event_struct_button (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joydeviceadded and then not on_joy_device_added.is_empty  then
			on_joy_device_added.call ([
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_which (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_joydeviceremoved and then not on_joy_device_removed.is_empty  then
			on_joy_device_removed.call ([
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_joy_device_event_struct_which (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_multigesture and then not on_finger_gesture.is_empty  then
			on_finger_gesture.call ([
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_touch_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_num_fingers (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_x (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_y (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_dtheta (event_ptr),
											{GAME_SDL_EXTERNAL}.get_multi_gesture_event_struct_ddist (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_fingermotion and then not on_finger_motion.is_empty  then
			on_finger_motion.call ([
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_touch_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_finger_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_x (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_y (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dx (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dy (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_pressure (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_fingerup and then not on_finger_up.is_empty  then
			on_finger_up.call ([
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_touch_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_finger_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_x (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_y (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dx (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dy (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_pressure (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.sdl_fingerdown and then not on_finger_down.is_empty  then
			on_finger_down.call ([
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_timestamp (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_touch_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_finger_id (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_x (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_y (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dx (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_dy (event_ptr),
											{GAME_SDL_EXTERNAL}.get_touch_finger_event_struct_pressure (event_ptr)
									])
		elseif l_event_type = {GAME_SDL_EXTERNAL}.Sdl_dollargesture and not on_dollar_gesture.is_empty then
			on_dollar_gesture.call ([
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
			if not on_file_drop.is_empty then
				create l_string.make_from_c (l_string_pointer)
				on_file_drop.call ([
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

	game_library: detachable GAME_SDL_CONTROLLER



--To Remember:

--Common:

--On_Iteration
--SDL_QuitEvent
--SDL_JoyDeviceEvent
--SDL_ControllerDeviceEvent
--SDL_DropEvent

--Window Events:

--SDL_WindowEvent
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
