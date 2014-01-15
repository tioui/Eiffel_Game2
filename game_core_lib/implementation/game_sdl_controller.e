note
	description: "Controller of the SDL library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.2.1.1"

class
	GAME_SDL_CONTROLLER

inherit
	GAME_SDL_CONSTANTS
	GAME_SDL_ANY

create
	make,
	make_no_parachute

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
			-- Clean up library on segfault
		do
			initialise_library(0)
		end

	make_no_parachute
			-- Initialization for `Current'.
			-- Don't clean up library on segfault
		do
			initialise_library(Sdl_init_noparachute)
		end

feature -- Subs Systems

	enable_video
			-- Unable the video functionalities
		require
			SDL_Controller_Enable_Video_Already_Enabled: not is_video_enable
		do
			initialise_sub_system(Sdl_init_video)
		ensure
			SDL_Controller_Enable_Video_Enabled: is_video_enable
		end

	disable_video
			-- Disable the video functionalities
		require
			SDL_Controller_Disable_Video_Not_Enabled: is_video_enable
		do
			quit_sub_system(Sdl_init_video)
		ensure
			SDL_Controller_Disable_Video_Disabled: not is_video_enable
		end

	is_video_enable:BOOLEAN
			-- Return true if the text surface functionnality is enabled.
		do
			Result:=is_sub_system_enable(Sdl_init_video)
		end


	enable_joystick
			-- Unable the joystick functionality
		require
			SDL_Controller_Enable_Joystick_Already_Enabled: not is_joystick_enable
		do
			initialise_sub_system(Sdl_init_joystick)
			refresh_joyticks
		ensure
			SDL_Controller_Enable_Joystick_Enabled: is_joystick_enable
		end

	disable_joystick
			-- Disable the joystick fonctionality
		require
			SDL_Controller_Disable_Joystick_Not_Enabled: is_joystick_enable
		do
			close_all_joysticks
			quit_sub_system(Sdl_init_joystick)
		ensure
			SDL_Controller_Disable_Joystick_Disabled: not is_joystick_enable
		end

	is_joystick_enable:BOOLEAN
			-- Return true if the joystick functionnality is enabled.
		do
			Result:=is_sub_system_enable(Sdl_init_joystick)
		end


	enable_haptic
			-- Unable the haptic (force feedback) functionality.
			-- Often use for Controller rumble.
		require
			SDL_Controller_Enable_Haptic_Already_Enabled: not is_haptic_enable
		do
			initialise_sub_system(Sdl_init_haptic)
		ensure
			SDL_Controller_Enable_Haptic_Enabled: is_haptic_enable
		end

	disable_haptic
			-- Disable the haptic (force feedback) fonctionality
		require
			SDL_Controller_Disable_Haptic_Not_Enabled: is_haptic_enable
		do
			quit_sub_system(Sdl_init_haptic)
		ensure
			SDL_Controller_Disable_Haptic_Disabled: not is_haptic_enable
		end

	is_haptic_enable:BOOLEAN
			-- Return true if the haptic (force feedback) functionnality is enabled.
		do
			Result:=is_sub_system_enable(Sdl_init_haptic)
		end


	enable_controller
			-- Unable the controller functionality.
		require
			SDL_Controller_Enable_Controller_Already_Enabled: not is_controller_enable
		do
			initialise_sub_system(Sdl_init_gamecontroller)
		ensure
			SDL_Controller_Enable_Events_Enabled: is_controller_enable
		end

	disable_controller
			-- Disable the controller fonctionality
		require
			SDL_Controller_Disable_controller_Not_Enabled: is_controller_enable
		do
			quit_sub_system(Sdl_init_gamecontroller)
		ensure
			SDL_Controller_Disable_Events_Disabled: not is_controller_enable
		end

	is_controller_enable:BOOLEAN
			-- Return true if the controller functionnality is enabled.
		do
			Result:=is_sub_system_enable(Sdl_init_gamecontroller)
		end


	enable_events
			-- Unable the events functionality.
		require
			SDL_Controller_Enable_Events_Already_Enabled: not is_events_enable
		do
			initialise_sub_system(Sdl_init_events)
		ensure
			SDL_Controller_Enable_Events_Enabled: is_events_enable
		end

	disable_events
			-- Disable the events fonctionality
		require
			SDL_Controller_Disable_Events_Not_Enabled: is_events_enable
		do
			quit_sub_system(Sdl_init_events)
		ensure
			SDL_Controller_Disable_Events_Disabled: not is_events_enable
		end

	is_events_enable:BOOLEAN
			-- Return true if the events functionnality is enabled.
		do
			Result:=is_sub_system_enable(Sdl_init_events)
		end

feature -- Video methods

	displays_count:INTEGER
			-- Return the number of display. 0 if error.
		require
			Displays_Count_Is_Video_Enabled: is_video_enable
		do
			clear_error
			Result:={GAME_SDL_EXTERNAL}.SDL_GetNumVideoDisplays
			if Result<0 then
				io.error.put_string ("An error occured while retriving the number of displays.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
				Result:=0
			end
		end

	displays:LIST[GAME_DISPLAY]
			-- All displays of the system. 0 display on error.
		require
			Displays_Is_Video_Enabled: is_video_enable
		local
			l_count, l_i, l_error:INTEGER
		do
			l_count:=displays_count
			create {ARRAYED_LIST[GAME_DISPLAY]} Result.make (l_count)
			from
				l_i:=0
			until
				l_i>=l_count
			loop
				Result.extend (create {GAME_DISPLAY}.make (l_i))
				l_i:=l_i+1
			end
		end

	windows:LINEAR_ITERATOR[GAME_WINDOW]
		do
			create Result.set (internal_windows)
		end


feature -- Mouse		
	show_mouse_cursor
		-- Show the mouse cursor when the mouse is on a window created by the library.
	local
		l_error:INTEGER
	do
		l_error:={GAME_SDL_EXTERNAL}.sdl_showcursor (Sdl_enable)
	ensure
		SHOW_MOUSE_CURSOR_VALID: is_cursor_visible
	end

	hide_mouse_cursor
		-- Don't show the mouse cursor when the mouse is on a window created by the library.
	local
		l_error:INTEGER
	do
		l_error:={GAME_SDL_EXTERNAL}.sdl_showcursor (Sdl_disable)
	ensure
		HIDE_MOUSE_CURSOR_VALID: not is_cursor_visible
	end

	is_cursor_visible:BOOLEAN
		-- Return true if the library is set to show the mous cursor when the mouse is on a window created by the library.
	local
		l_is_enable:INTEGER
	do
		l_is_enable:={GAME_SDL_EXTERNAL}.sdl_showcursor (Sdl_query)
		check l_is_enable=Sdl_enable or l_is_enable=Sdl_disable end
		Result:= l_is_enable=Sdl_enable
	end

feature -- Joystick methods

	get_joystick_count:INTEGER
		-- Get number of joystick detect by the library
	require
		Controller_Joystick_Count_Joystick_Enabled: is_joystick_enable
	do
		Result:={GAME_SDL_EXTERNAL}.SDL_NumJoysticks
	end

	get_joystick(index:INTEGER):GAME_JOYSTICK
		-- Use the same index used by the system.
		-- So the first joystick in at index 0
	require
		Controller_Joystick_Count_Joystick_Enabled: is_joystick_enable
		Get_Joystick_Index_Valid: index<get_joystick_count
	do
		Result:=internal_joysticks.i_th (index+1)
	end

	joysticks:LINEAR_ITERATOR[GAME_JOYSTICK]
		require
			Joysticks_is_Joystick_Enabled: is_joystick_enable
		do
			create Result.set (internal_joysticks)
		end

	refresh_joyticks
		-- Update the joystiks list (if joysticks as been add or remove)
		-- Warning: This will close all opened joysticks
	require
		Controller_Update_Joysticks_Joystick_Enabled: is_joystick_enable
	local
		i:INTEGER
	do
		close_all_joysticks
		internal_joysticks.wipe_out
		from i:=0
		until i>=get_joystick_count
		loop
			internal_joysticks.extend(create {GAME_JOYSTICK}.make(i))
			i:=i+1
		end
	end

feature {NONE} -- Joystick implementation

	internal_joysticks:ARRAYED_LIST[GAME_JOYSTICK]

	open_all_joystick
		require
			Joysticks_is_enabled: is_joystick_enable
		do
			internal_joysticks.do_all (agent (a_joystick:GAME_JOYSTICK) do
								if not a_joystick.is_opened then
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
								if a_joystick.is_opened then
									a_joystick.close
								end
							end)
	end

feature -- Other methods

	events_controller:GAME_EVENTS_CONTROLLER assign set_events_controller
			-- The event manager. Use it to have access to your event.
		require
			Events_Controller_Is_Event_Enable: is_events_enable
		do
			Result:=internal_events_controller
		end


	set_events_controller(a_events_controller:GAME_EVENTS_CONTROLLER)
		do
			internal_events_controller:=a_events_controller
		end

	clear_events_controller
		do
			create internal_events_controller.make
		end

--	update
--			-- Execute the event polling and throw the event handeler execution for each event.
--		do
--			event_controller.poll_event
--		end


	delay(a_millisecond:NATURAL_32)
			-- Pause the execution for given time in `millisecond'.
		do
			{GAME_SDL_EXTERNAL}.SDL_Delay(a_millisecond)
		end

	get_ticks:NATURAL_32
			-- Get the number of millisecond since the initialisation of the library.
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetTicks
		end

--	launch
--			-- Start the main loop. Used to get a Event-driven programming only.
--			-- Don't forget to execute the method `stop' in an event handeler.
--		local
--			l_delay:INTEGER_64
--		do
--			from
--				must_stop:=false
--				last_tick:=get_ticks
--			until
--				must_stop
--			loop
--				update
--				l_delay:=ticks_per_iteration
--				l_delay:=l_delay-(get_ticks-last_tick).to_integer_32
--				if l_delay<1 then
--					delay (1)
--				else
--					delay(l_delay.to_natural_32)
--				end
--				last_tick:=get_ticks
--			end
--		end

--	launch_with_iteration_per_second(a_iteration_per_second:NATURAL_32)
--			-- Start the main loop. Used to get a Event-driven programming only.
--			-- Don't forget to execute the method `stop' in an event handeler.
--			-- Set `iteration_per_second' to `a_iteration_per_second' before launching.
--		do
--			set_iteration_per_second(a_iteration_per_second)
--			launch
--		end

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

--	stop
--			-- Stop the main loop
--		do
--			must_stop:=true
--		end

	quit_library
			-- Close the library. Must be used before the end of the application
		local
			l_mem:MEMORY
		do
			create internal_events_controller.make ()
			create l_mem
			l_mem.full_collect
			{GAME_SDL_EXTERNAL}.SDL_Quit_lib
		end


feature {GAME_SDL_ANY}

	internal_windows:LIST[GAME_WINDOW]


feature{NONE} -- Implementation - Methods

	initialise_library(a_flags:NATURAL_32)
			-- Initialise the library.
		local
			l_error:INTEGER
		do
			has_error:=False
			set_iteration_per_second(60)
			create internal_joysticks.make (0)
			l_error:={GAME_SDL_EXTERNAL}.SDL_Init(a_flags)
			if l_error < 0 then
				has_error:=True
				io.error.put_string ("Cannot initialise the game library.%N")
			end
			check l_error = 0 end
			create internal_events_controller.make
			create {LINKED_LIST[GAME_WINDOW]} internal_windows.make
		end

	initialise_sub_system(a_flags:NATURAL_32)
			-- Initialise SDL sub-systems defined by `a_flags'.
		local
			l_error:INTEGER
		do
			l_error:={GAME_SDL_EXTERNAL}.SDL_InitSubSystem(a_flags)
			check l_error = 0 end
		end

	quit_sub_system(a_flags:NATURAL_32)
			-- Disable all SDL sub-system defined by `a_flags'.
		local
			l_error:INTEGER
		do
			l_error:={GAME_SDL_EXTERNAL}.SDL_InitSubSystem(a_flags)
			check l_error = 0 end
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

--	must_stop:BOOLEAN

--	last_tick:NATURAL_32

	ticks_per_iteration:NATURAL_32

	internal_events_controller:GAME_EVENTS_CONTROLLER

end
