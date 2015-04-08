note
	description: "Controller of the game library."
	author: "Louis Marchand"
	date: "Sat, 28 Mar 2015 03:42:16 +0000"
	revision: "2.1"

class
	GAME_LIBRARY_CONTROLLER

inherit
	GAME_SDL_ANY
		export
			{ANY} print_on_error, set_print_on_error, enable_print_on_error, disable_print_on_error
		redefine
			default_create
		end
	GAME_COMMON_EVENTS
		rename
			make as make_events,
			stop as stop_events,
			run as run_events,
			is_running as is_events_running,
			clear as clear_events
		redefine
			default_create
		end

create
	default_create,
	make_no_parachute

feature {NONE} -- Initialization

	default_create
			-- Initialization for `Current'.
			-- Clean up library on segfault
		do
			initialise_library(0)
		end

	make_no_parachute
			-- Initialization for `Current'.
			-- Don't clean up library on segfault
		do
			initialise_library({GAME_SDL_EXTERNAL}.Sdl_init_noparachute)
		end

	initialise_library(a_flags:NATURAL_32)
			-- Initialise the library.
		local
			l_error:INTEGER
		do
			instance_count.put (instance_count.item + 1)
			has_error:=False
			set_iteration_per_second(60)
			create internal_joysticks.make (0)
			create internal_haptics.make(0)
			l_error:={GAME_SDL_EXTERNAL}.SDL_Init(a_flags)
			if l_error < 0 then
				has_error:=True
				io.error.put_string ("Cannot initialise the game library.%N")
			end
			check l_error = 0 end
			create {LINKED_LIST[GAME_WINDOW]} internal_windows.make
			create events_controller
			make_events
			events_controller.set_game_library (Current)
		end

feature -- Subs Systems

	enable_video
			-- Unable the video functionalities
		require
			SDL_Controller_Enable_Video_Already_Enabled: not is_video_enable
		do
			initialise_sub_system({GAME_SDL_EXTERNAL}.Sdl_init_video)
		ensure
			SDL_Controller_Enable_Video_Enabled: is_video_enable
		end

	disable_video
			-- Disable the video functionalities
		require
			SDL_Controller_Disable_Video_Not_Enabled: is_video_enable
		do
			quit_sub_system({GAME_SDL_EXTERNAL}.Sdl_init_video)
		ensure
			SDL_Controller_Disable_Video_Disabled: not is_video_enable
		end

	is_video_enable:BOOLEAN assign set_is_video_enable
			-- Return true if the text surface functionnality is enabled.
		do
			Result:=is_sub_system_enable({GAME_SDL_EXTERNAL}.Sdl_init_video)
		end

	set_is_video_enable(a_value:BOOLEAN)
			-- Assign to `is_video_enable' the value of `a_value'
		do
			if a_value then
				enable_video
			else
				disable_video
			end
		ensure
			Is_Assign: is_video_enable ~ a_value
		end

	enable_joystick
			-- Unable the joystick functionality
		require
			SDL_Controller_Enable_Joystick_Already_Enabled: not is_joystick_enable
		do
			initialise_sub_system({GAME_SDL_EXTERNAL}.Sdl_init_joystick)
			refresh_joysticks
		ensure
			SDL_Controller_Enable_Joystick_Enabled: is_joystick_enable
		end

	disable_joystick
			-- Disable the joystick fonctionality
		require
			SDL_Controller_Disable_Joystick_Not_Enabled: is_joystick_enable
		do
			close_all_joysticks
			internal_joysticks.wipe_out
			quit_sub_system({GAME_SDL_EXTERNAL}.Sdl_init_joystick)
		ensure
			SDL_Controller_Disable_Joystick_Disabled: not is_joystick_enable
		end

	is_joystick_enable:BOOLEAN assign set_is_joystick_enable
			-- Return true if the joystick functionnality is enabled.
		do
			Result:=is_sub_system_enable({GAME_SDL_EXTERNAL}.Sdl_init_joystick)
		end

	set_is_joystick_enable(a_value:BOOLEAN)
			-- Assign to `is_joystick_enable' the value of `a_value'
		do
			if a_value then
				enable_joystick
			else
				disable_joystick
			end
		ensure
			Is_Assign: is_joystick_enable~ a_value
		end


	enable_haptic
			-- Unable the haptic (force feedback) functionality.
			-- Often use for Controller rumble.
		require
			SDL_Controller_Enable_Haptic_Already_Enabled: not is_haptic_enable
		do
			initialise_sub_system({GAME_SDL_EXTERNAL}.Sdl_init_haptic)
			refresh_haptics
		ensure
			SDL_Controller_Enable_Haptic_Enabled: is_haptic_enable
		end

	disable_haptic
			-- Disable the haptic (force feedback) fonctionality
		require
			SDL_Controller_Disable_Haptic_Not_Enabled: is_haptic_enable
		do
			close_all_haptics
			internal_haptics.wipe_out
			quit_sub_system({GAME_SDL_EXTERNAL}.Sdl_init_haptic)
		ensure
			SDL_Controller_Disable_Haptic_Disabled: not is_haptic_enable
		end

	is_haptic_enable:BOOLEAN assign set_is_haptic_enable
			-- Return true if the haptic (force feedback) functionnality is enabled.
		do
			Result:=is_sub_system_enable({GAME_SDL_EXTERNAL}.Sdl_init_haptic)
		end

	set_is_haptic_enable(a_value:BOOLEAN)
			-- Assign to `is_haptic_enable' the value of `a_value'
		do
			if a_value then
				enable_haptic
			else
				disable_haptic
			end
		ensure
			Is_Assign: is_haptic_enable~ a_value
		end

	enable_events
			-- Unable the events functionality.
		require
			SDL_Controller_Enable_Events_Already_Enabled: not is_events_enable
		do
			initialise_sub_system({GAME_SDL_EXTERNAL}.Sdl_init_events)
		ensure
			SDL_Controller_Enable_Events_Enabled: is_events_enable
		end

	disable_events
			-- Disable the events fonctionality
		require
			SDL_Controller_Disable_Events_Not_Enabled: is_events_enable
		do
			quit_sub_system({GAME_SDL_EXTERNAL}.Sdl_init_events)
		ensure
			SDL_Controller_Disable_Events_Disabled: not is_events_enable
		end

	is_events_enable:BOOLEAN assign set_is_events_enable
			-- Return true if the events functionnality is enabled.
		do
			Result:=is_sub_system_enable({GAME_SDL_EXTERNAL}.Sdl_init_events)
		end

	set_is_events_enable(a_value:BOOLEAN)
			-- Assign to `is_events_enable' the value of `a_value'
		do
			if a_value then
				enable_events
			else
				disable_events
			end
		ensure
			Is_Assign: is_events_enable~ a_value
		end

feature -- Video methods

	renderer_drivers_count:INTEGER
			-- Return the number of renderer driver. 0 if error.
		require
			Video_Enabled: is_video_enable
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_GetNumRenderDrivers
			if Result<0 then
				manage_error_code(Result, "An error occured while retriving the number of renderer drivers.")
				Result:=0
			end
		end

	renderer_drivers:LIST[GAME_RENDERER_DRIVER]
			-- All renderer driver of the system. 0 driver on error.
		require
			Displays_Is_Video_Enabled: is_video_enable
		local
			l_count, i:INTEGER
		do
			l_count:=renderer_drivers_count
			create {ARRAYED_LIST[GAME_RENDERER_DRIVER]} Result.make (l_count)
			from
				i := 0
			until
				i >= l_count
			loop
				Result.extend (create {GAME_RENDERER_DRIVER}.make (i))
				i := i + 1
			end
		end

	displays_count:INTEGER
			-- Return the number of display. 0 if error.
		require
			Displays_Count_Is_Video_Enabled: is_video_enable
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_GetNumVideoDisplays
			if Result<0 then
				manage_error_code(Result, "An error occured while retriving the number of displays.")
				Result:=0
			end
		end

	displays:LIST[GAME_DISPLAY]
			-- All displays of the system. 0 display on error.
		require
			Displays_Is_Video_Enabled: is_video_enable
		local
			l_count, i:INTEGER
		do
			l_count:=displays_count
			create {ARRAYED_LIST[GAME_DISPLAY]} Result.make (l_count)
			from
				i := 0
			until
				i >= l_count
			loop
				Result.extend (create {GAME_DISPLAY}.make (i))
				i := i + 1
			end
		end

	windows:CHAIN_INDEXABLE_ITERATOR[GAME_WINDOW]
			-- Every {GAME_WINDOW} in the system.
		do
			create Result.make (internal_windows)
		end


feature -- Mouse		
	show_mouse_cursor
		-- Show the mouse cursor when the mouse is on a window created by the library.
	local
		l_error:INTEGER
	do
		l_error:={GAME_SDL_EXTERNAL}.sdl_showcursor ({GAME_SDL_EXTERNAL}.Sdl_enable)
	ensure
		SHOW_MOUSE_CURSOR_VALID: is_cursor_visible
	end

	hide_mouse_cursor
		-- Don't show the mouse cursor when the mouse is on a window created by the library.
	local
		l_error:INTEGER
	do
		l_error:={GAME_SDL_EXTERNAL}.sdl_showcursor ({GAME_SDL_EXTERNAL}.Sdl_disable)
	ensure
		HIDE_MOUSE_CURSOR_VALID: not is_cursor_visible
	end

	is_cursor_visible:BOOLEAN assign set_is_cursor_visible
		-- Return true if the library is set to show the mous cursor when the mouse is on a window created by the library.
	local
		l_is_enable:INTEGER
	do
		l_is_enable:={GAME_SDL_EXTERNAL}.sdl_showcursor ({GAME_SDL_EXTERNAL}.Sdl_query)
		check l_is_enable={GAME_SDL_EXTERNAL}.Sdl_enable or l_is_enable={GAME_SDL_EXTERNAL}.Sdl_disable end
		Result:= l_is_enable={GAME_SDL_EXTERNAL}.Sdl_enable
	end

	set_is_cursor_visible(a_value:BOOLEAN)
			-- Assign to `is_cursor_visible' the value of `a_value'
		do
			if a_value then
				show_mouse_cursor
			else
				hide_mouse_cursor
			end
		ensure
			Is_Assign: is_cursor_visible ~ a_value
		end

feature -- Joystick methods

	joysticks:CHAIN_INDEXABLE_ITERATOR[GAME_JOYSTICK]
			-- Every {GAME_JOYSTICK} detected by `Current'
		require
			Joysticks_is_Joystick_Enabled: is_joystick_enable
		do
			create Result.make (internal_joysticks)
		end

	refresh_joysticks
		-- Update the joystiks list (if joysticks as been add or remove)
		-- Warning: This will close all opened joysticks
	require
		Controller_Update_Joysticks_Joystick_Enabled: is_joystick_enable
	local
		i, l_joystick_count:INTEGER
	do
		close_all_joysticks
		internal_joysticks.wipe_out
		l_joystick_count := {GAME_SDL_EXTERNAL}.SDL_NumJoysticks
		from i:=0
		until i>=l_joystick_count
		loop
			internal_joysticks.extend(create {GAME_JOYSTICK}.make(i))
			i:=i+1
		end
	end

	update_joysticks_state
			-- Update the state of all opened joystick. This procedure is
			-- Called at each game loop instead you disable every joystick event
			-- with {GAME_EVENTS_CONTROLLER}.`disable_joy_*_event' or with
			-- {GAME_EVENTS_CONTROLLER}.`disable_every_joy_events'
		do
			{GAME_SDL_EXTERNAL}.SDL_JoystickUpdate
		end

feature {NONE} -- Joystick implementation

	internal_joysticks:ARRAYED_LIST[GAME_JOYSTICK]
			-- Every {GAME_JOYSTICK} connected to the system.

	open_all_joystick
			-- Open all joystick that is not already open.
		require
			Joysticks_is_enabled: is_joystick_enable
		do
			internal_joysticks.do_all (agent (a_joystick:GAME_JOYSTICK) do
								if not a_joystick.is_open then
									a_joystick.open
								end
							end)
		end


	close_all_joysticks
		-- Close the joystick that has been opened
	require
		Controller_Close_All_Joysticks_Joystick_Enabled: is_joystick_enable
		Close_All_Joystick_Attach: internal_joysticks /= Void
	do
		internal_joysticks.do_all (agent (a_joystick:GAME_JOYSTICK) do
								if a_joystick.is_open then
									a_joystick.close
								end
							end)
	end

feature -- Haptic methods

	haptics:CHAIN_INDEXABLE_ITERATOR[GAME_HAPTIC_DEVICE]
			-- Every haptic devices on the system
		require
			Haptic_is_Haptic_Enabled: is_haptic_enable
		do
			create Result.make (internal_haptics)
		end

	refresh_haptics
			-- Update the haptics list (if haptics as been add or remove)
			-- Warning: This will close all opened haptics
		require
			Controller_Update_Haptics_Haptic_Enabled: is_haptic_enable
		local
			i, l_haptic_count:INTEGER
		do
			close_all_haptics
			internal_haptics.wipe_out
			l_haptic_count := {GAME_SDL_EXTERNAL}.SDL_NumHaptics
			from i:=0
			until i>=l_haptic_count
			loop
				internal_haptics.extend(create {GAME_HAPTIC_DEVICE}.make(i))
				i:=i+1
			end
		end

	haptic_maximum_gain:INTEGER assign set_haptic_maximum_gain
			-- The maximum gain used by haptics in the system.
			-- The {GAME_HAPTIC}.`set_gain' always take 0-100
			-- gain value, but the real value is scaled
		require
			Haptic_Enabled: is_haptic_enable
		local
			l_value_text:READABLE_STRING_GENERAL
		do
			l_value_text := library_variable("SDL_HAPTIC_GAIN_MAX")
			Result := 100
			if l_value_text.is_integer_32 then
				Result := l_value_text.to_integer_32
				if Result < 0 then
					Result := 0
				elseif Result > 100 then
					Result := 100
				end
			end
		ensure
			Result_Valid: Result >= 0 and Result <= 100
		end

	set_haptic_maximum_gain(a_gain:INTEGER)
			-- Assign `haptic_maximum_gain' with the value of `a_gain'
		require
			Haptic_Enabled: is_haptic_enable
			Gain_Is_Valid: a_gain >= 0 and a_gain <= 100
		do
			set_library_variable ("SDL_HAPTIC_GAIN_MAX", a_gain.out)
		ensure
			Is_Assign: not has_error implies haptic_maximum_gain = a_gain
		end

feature {NONE} -- Haptic implementation

	internal_haptics:ARRAYED_LIST[GAME_HAPTIC_DEVICE]
			-- Every {GAME_HAPTIC} connected to the system.

	open_all_haptic
			-- Open all haptic that is not already open.
		require
			Haptic_is_enabled: is_haptic_enable
		do
			internal_haptics.do_all (agent (a_haptic:GAME_HAPTIC_DEVICE) do
								if not a_haptic.is_open then
									a_haptic.open
								end
							end)
		end


	close_all_haptics
		-- Close the haptic that has been opened
	require
		Controller_Close_All_Haptics_Haptic_Enabled: is_haptic_enable
		Close_All_Haptic_Attach: internal_haptics /= Void
	do
		internal_haptics.do_all (agent (a_haptic:GAME_HAPTIC_DEVICE) do
								if a_haptic.is_open then
									a_haptic.close
								end
							end)
	end

feature -- Other methods

	library_variable(a_variable:READABLE_STRING_GENERAL):READABLE_STRING_GENERAL assign set_library_variable
			-- Retreive the internal variable `a_variable' or an empty text if it does not exist.
		local
			l_c_name, l_c_value:C_STRING
			l_text_ptr:POINTER
		do
			create l_c_name.make(a_variable)
			l_text_ptr := {GAME_SDL_EXTERNAL}.SDL_getenv(l_c_name.item)
			if l_text_ptr.is_default_pointer then
				Result := ""
			else
				create l_c_value.make_by_pointer(l_text_ptr)
				Result := l_c_value.string
			end
		end

	set_library_variable(a_variable, a_value:READABLE_STRING_GENERAL)
			-- Assign the internal variable `a_variable' with the value `a_value'.
		local
			l_c_name, l_c_value:C_STRING
			l_error:INTEGER
		do
			create l_c_name.make(a_variable)
			create l_c_value.make(a_value)
			l_error := {GAME_SDL_EXTERNAL}.SDL_setenv(l_c_name.item, l_c_value.item, True)
			manage_error_code(l_error, "Cannot set the environment variable " + a_variable + " with value " + a_value + ".")
		end

	events_controller:GAME_EVENTS_CONTROLLER
			-- <Precursor>

	update_events
			-- Execute the event polling and throw the event handeler execution for each event.
		do
			events_controller.poll_event
		end

	delay(a_millisecond:NATURAL_32)
			-- Pause the execution for given time in `millisecond'.
		do
			{GAME_SDL_EXTERNAL}.SDL_Delay(a_millisecond)
		end

	time_since_create:NATURAL_32
			-- Number of millisecond since the initialisation of the library.
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetTicks
		end

	launch
			-- Start the main loop. Used to get a Event-driven programming only.
			-- Don't forget to execute the method `stop' in an event handeler.
		local
			l_delay:INTEGER_64
		do
			from
				must_stop:=false
				last_tick:=time_since_create
			until
				must_stop
			loop
				update_events
				l_delay:=ticks_per_iteration
				l_delay:=l_delay-(time_since_create-last_tick).to_integer_32
				if l_delay<1 then
					delay (1)
				else
					delay(l_delay.to_natural_32)
				end
				last_tick:=time_since_create
			end
		end

	launch_with_iteration_per_second(a_iteration_per_second:NATURAL_32)
			-- Start the main loop. Used to get a Event-driven programming only.
			-- Don't forget to execute the method `stop' in an event handeler.
			-- Set `iteration_per_second' to `a_iteration_per_second' before launching.
		do
			set_iteration_per_second(a_iteration_per_second)
			launch
		end

	iteration_per_second:NATURAL_32 assign set_iteration_per_second
			-- An approximation of the number of event loop iteration per second.
		do
			Result:=1000//ticks_per_iteration
		end

	set_iteration_per_second(a_iteration_per_second:NATURAL_32)
			-- Set `iteration_per_second' to `a_iteration_per_second'
			-- Note that this is an aproximation.
		do
			ticks_per_iteration:=1000//a_iteration_per_second
		end

	stop
			-- Stop the main loop
		do
			must_stop:=true
		end

	quit_library
			-- Close the library. Must be used before the end of the application
		local
			l_mem:MEMORY
		do
			clear_events
			if is_joystick_enable then
				disable_joystick
			end
			create events_controller
			events_controller.set_game_library (Current)
			create l_mem
			l_mem.full_collect
			{GAME_SDL_EXTERNAL}.SDL_Quit_lib
		end

	mouse_has_haptic:BOOLEAN
			-- Has the mouse have an internal haptic device
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_MouseIsHaptic
		end

	mouse_haptic:GAME_HAPTIC_MOUSE
			-- The haptic device inside the mouse
		require
			Mouse_Has_Haptic: mouse_has_haptic
		do
			if attached internal_mouse_haptic as la_internal_mouse_haptic then
				Result := la_internal_mouse_haptic
			else
				create Result.make
				internal_mouse_haptic := Result
			end
		end


feature {GAME_SDL_ANY}

	internal_windows:LIST[GAME_WINDOW]
			-- Every {GAME_WINDOW} of the system.


feature{NONE} -- Implementation - Methods

	initialise_sub_system(a_flags:NATURAL_32)
			-- Initialise SDL sub-systems defined by `a_flags'.
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_InitSubSystem(a_flags)
			manage_error_code (l_error, "Cannot initialize library sub system.")
		end

	quit_sub_system(a_flags:NATURAL_32)
			-- Disable all SDL sub-system defined by `a_flags'.
		do
			{GAME_SDL_EXTERNAL}.SDL_QuitSubSystem(a_flags)
		end

	is_sub_system_enable(a_flags:NATURAL_32):BOOLEAN
			-- Return true if the sub-systems defined by the `a_flags' are enable.
		local
			l_return_value:NATURAL_32
		do
			l_return_value:={GAME_SDL_EXTERNAL}.SDL_WasInit(a_flags)
			Result := l_return_value = a_flags
		end


feature {NONE} -- Implementation - Variables

	must_stop:BOOLEAN
			-- When true, the launching process must stop

	last_tick:NATURAL_32
			-- The `time_since_create' value on the last iteration

	ticks_per_iteration:NATURAL_32
			-- Minimum number of ticks to pass between each iteration

	internal_mouse_haptic: detachable GAME_HAPTIC_MOUSE
			-- The haptic mouse

	instance_count:CELL[INTEGER]
			-- The number of time the `Current's class has been created
			-- Since it is a singleton, it must be always 0 or 1
		once
			create Result.put(0)
		end

invariant
	Is_Singleton: instance_count.item = 1

end
