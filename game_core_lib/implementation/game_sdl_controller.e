note
	description: "Controller of the SDL library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.2.1.1"

class
	GAME_SDL_CONTROLLER

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
			initialise_library({GAME_SDL_EXTERNAL}.SDL_INIT_NOPARACHUTE)
		end

feature -- Subs Systems

	enable_video
			-- Unable the video functionalities
		require
			SDL_Controller_Enable_Video_Already_Enabled: not is_video_enable
		do
			initialise_sub_system({GAME_SDL_EXTERNAL}.SDL_INIT_VIDEO)
		ensure
			SDL_Controller_Enable_Video_Enabled: is_video_enable
		end

	disable_video
			-- Disable the video functionalities
		require
			SDL_Controller_Disable_Video_Not_Enabled: is_video_enable
		do
			quit_sub_system({GAME_SDL_EXTERNAL}.SDL_INIT_VIDEO)
		ensure
			SDL_Controller_Disable_Video_Disabled: not is_video_enable
		end

	is_video_enable:BOOLEAN
			-- Return true if the text surface functionnality is enabled.
		do
			Result:=is_sub_system_enable({GAME_SDL_EXTERNAL}.SDL_INIT_VIDEO)
		end


	enable_joystick
			-- Unable the joystick functionality
		require
			SDL_Controller_Enable_Joystick_Already_Enabled: not is_joystick_enable
		do
			initialise_sub_system({GAME_SDL_EXTERNAL}.SDL_INIT_JOYSTICK)
		--	event_controller.enable_joystick_event
			refresh_joyticks
		ensure
			SDL_Controller_Enable_Joystick_Enabled: is_joystick_enable
		--	SDL_Controller_Enable_Joystick_Event_Enable: event_controller.is_joystick_event_enable
		end

	disable_joystick
			-- Disable the joystick fonctionality
		require
			SDL_Controller_Disable_Joystick_Not_Enabled: is_joystick_enable
		do
			event_controller.disable_joystick_event
			close_all_joysticks
			quit_sub_system({GAME_SDL_EXTERNAL}.SDL_INIT_JOYSTICK)
		ensure
			SDL_Controller_Disable_Joystick_Disabled: not is_joystick_enable
		end

	is_joystick_enable:BOOLEAN
			-- Return true if the joystick functionnality is enabled.
		do
			Result:=is_sub_system_enable({GAME_SDL_EXTERNAL}.SDL_INIT_JOYSTICK)
		end

feature -- Video methods

	enable_event_thread
			-- Put the thread in an independant SDL thread. Not recommanded.
		do
			initialise_sub_system({GAME_SDL_EXTERNAL}.SDL_INIT_EVENTTHREAD)
		end

	flip_screen
			-- Show the screen surface in the window
		require
			Print_Screen_Video_Enabled: is_video_enable
		local
			l_error:INTEGER
			l_error_c:C_STRING
		do
			if not has_hardware_double_buffer then
				scr_surface.draw_surface (buffer_surface, 0, 0)
			end
			l_error:={GAME_SDL_EXTERNAL}.SDL_Flip(scr_surface.internal_pointer)
			if l_error/=0 then
				create l_error_c.make_by_pointer ({GAME_SDL_EXTERNAL}.SDL_GetError)
				io.error.put_string ("Error: Cannot flip screen.%N"+l_error_c.string)
				io.error.flush
				check false end
			end
		end

	set_window_caption(a_window_caption, a_icon_caption:STRING)
			-- Set a caption to the window header and to the system icon.
		do
			scr_surface.set_captions (a_window_caption, a_icon_caption)
		end

	create_screen_surface_with_icon_cpf(a_cpf:CPF_PACKAGE_FILE;a_cpf_index:INTEGER;a_transparent_color:GAME_COLOR;a_width,a_height,a_bits_per_pixel:INTEGER;a_in_video_memory,a_has_hardware_dbl_buf,a_is_resisable,a_with_frame,a_fullscreen:BOOLEAN)
		-- Create a window with a new screen surface and set the icon.
		-- The image in the custom package file `a_cpf' must point to a standard bmp file. On MS Windows, the bmp file must be 32x32 pixels.
		-- If `a_transparent_color' is void, the icon will be opaque. To use a transparent color, you must convert your bmp in 8 bits indexed bitmap image.
		-- The flags `a_in_video_memory' and `a_has_hardware_dbl_buf' can be use if the graphic card support them.
		-- On some exploiting system, the `a_in_video_memory' and `a_has_hardware_dbl_buf' flags are used only on `a_fullscreen' mode.
	require
		Controller_Create_Screen_Is_Video_Enable: is_video_enable
		Controller_Cpf_Index_Valid:a_cpf_index>0 and then a_cpf_index<=a_cpf.sub_files_count
	local
		l_icon:GAME_SURFACE_BMP_CPF
	do
		create l_icon.make (a_cpf,a_cpf_index)
		if a_transparent_color/=Void then
			l_icon.set_transparent_color (a_transparent_color)
		end
		{GAME_SDL_EXTERNAL}.SDL_WM_SetIcon(l_icon.internal_pointer,create {POINTER})
		create_screen_surface(a_width,a_height,a_bits_per_pixel,a_in_video_memory,a_has_hardware_dbl_buf,a_is_resisable,a_with_frame,a_fullscreen)
	ensure
		Create_Screen_Not_Void: screen_is_create
	end

	create_screen_surface_with_icon(a_icon_filename:STRING;a_transparent_color:GAME_COLOR;a_width,a_height,a_bits_per_pixel:INTEGER;a_in_video_memory,a_has_hardware_dbl_buf,a_is_resisable,a_with_frame,a_fullscreen:BOOLEAN)
		-- Create a window with a new screen surface and set the icon.
		-- The `a_icon_filename' must point to a standard bmp file. On MS Windows, the bmp file must be 32x32 pixels.
		-- If `a_transparent_color', the icon will be opaque.
		-- The flags `a_in_video_memory' and `a_has_hardware_dbl_buf' can be use if the graphic card support them.
		-- On some exploiting system, the `a_in_video_memory' and `a_has_hardware_dbl_buf' flags are used only on `a_fullscreen' mode
	require
		Controller_Create_Screen_Is_Video_Enable: is_video_enable
	local
		l_icon:GAME_SURFACE_BMP_FILE
	do
		create l_icon.make (a_icon_filename)
		if a_transparent_color/=Void then
			l_icon.set_transparent_color (a_transparent_color)
		end
		{GAME_SDL_EXTERNAL}.SDL_WM_SetIcon(l_icon.internal_pointer,create {POINTER})
		create_screen_surface(a_width,a_height,a_bits_per_pixel,a_in_video_memory,a_has_hardware_dbl_buf,a_is_resisable,a_with_frame,a_fullscreen)
	ensure
		Create_Screen_Not_Void: screen_is_create
	end

	create_screen_surface(a_width,a_height,a_bits_per_pixel:INTEGER;a_in_video_memory,a_has_hardware_dbl_buf,a_is_resisable,a_with_frame,a_fullscreen:BOOLEAN)
		-- Create a window with a new screen surface.
		-- The flags `a_in_video_memory' and `a_has_hardware_dbl_buf' can be use if the graphic card support them.
		-- On some exploiting system, the `a_in_video_memory' and `a_has_hardware_dbl_buf' flags are used only on `a_fullscreen' mode
	require
		Controller_Create_Screen_Is_Video_Enable: is_video_enable
	local
		l_flags:NATURAL_32
	do
		l_flags:=0
		has_hardware_double_buffer:=a_has_hardware_dbl_buf
		if a_in_video_memory then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_HWSURFACE
		end
		if a_has_hardware_dbl_buf then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_DOUBLEBUF
		else
			create buffer_surface.make_with_bit_per_pixel (a_width, a_height, a_bits_per_pixel, a_in_video_memory)
		end
		if a_is_resisable then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_RESIZABLE
		end
		if not a_with_frame then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_NOFRAME
		end
		if a_fullscreen then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_FULLSCREEN
		end
		scr_surface:=create {GAME_SCREEN}.make(a_width,a_height,a_bits_per_pixel,l_flags)
	ensure
		Create_Screen_Not_Void: screen_is_create
	end

	screen_surface:GAME_SURFACE
		-- Get the screen surface given by create_screen.
		-- You can print other surface on this screen.
		-- When you use the routine flip_screen, the screen is show on the window.
	require
		Get_Screen_Surface_Not_Void: screen_is_create
	do
		if has_hardware_double_buffer then
			Result := scr_surface
		else
			Result := buffer_surface
		end

	end

	screen_is_create:BOOLEAN
		-- Return true if a screen has been created and is not destroy.
	do
		Result:=scr_surface /= Void
	end

	get_available_video_mode(a_in_video_memory,a_has_hardware_dbl_buf,a_is_resisable,a_with_frame,a_fullscreen:BOOLEAN):SEQUENCE[TUPLE[width,height:INTEGER_32]]
		-- List the video modes (dimensions) availables in the system.
	local
		l_list_rect,l_rect:POINTER
		l_flags:NATURAL_32
		i:INTEGER
		l_resolution:TUPLE[width,height:INTEGER_32]
		l_list_resolution:LINKED_LIST[TUPLE[width,height:INTEGER_32]]
	do
		if a_in_video_memory then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_HWSURFACE
		end
		if a_has_hardware_dbl_buf then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_DOUBLEBUF
		end
		if a_is_resisable then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_RESIZABLE
		end
		if not a_with_frame then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_NOFRAME
		end
		if a_fullscreen then
			l_flags:=l_flags | {GAME_SDL_EXTERNAL}.SDL_FULLSCREEN
		end
		l_list_rect:= {GAME_SDL_EXTERNAL}.SDL_ListModes(create {POINTER},l_flags)
		create l_list_resolution.make
		if l_list_rect.to_integer_32=-1 then
			create l_resolution.default_create
			l_resolution.width:=-1
			l_resolution.height:=-1
			l_list_resolution.extend (l_resolution)

		elseif l_list_rect.to_integer_32/=0 then

			from
				i:=0
				l_rect:={GAME_SDL_EXTERNAL}.c_get_ListModes_Rect(l_list_rect,i)
			until
				l_rect.to_integer_32=0
			loop
				create l_resolution.default_create
				l_resolution.width:={GAME_SDL_EXTERNAL}.get_rect_struct_w(l_rect).to_integer_32
				l_resolution.height:={GAME_SDL_EXTERNAL}.get_rect_struct_h(l_rect).to_integer_32
				l_list_resolution.extend (l_resolution)
				i:=i+1
				l_rect:={GAME_SDL_EXTERNAL}.c_get_ListModes_Rect(l_list_rect,i)
			end
		end
		Result:=l_list_resolution
	end

	has_hardware_double_buffer:BOOLEAN


feature -- Mouse		
	show_mouse_cursor
		-- Show the mouse cursor when the mouse is on a window created by the library.
	local
		l_error:INTEGER
	do
		l_error:={GAME_SDL_EXTERNAL}.sdl_showcursor ({GAME_SDL_EXTERNAL}.SDL_ENABLE)
	ensure
		SHOW_MOUSE_CURSOR_VALID: is_cursor_visible
	end

	hide_mouse_cursor
		-- Don't show the mouse cursor when the mouse is on a window created by the library.
	local
		l_error:INTEGER
	do
		l_error:={GAME_SDL_EXTERNAL}.sdl_showcursor ({GAME_SDL_EXTERNAL}.SDL_DISABLE)
	ensure
		HIDE_MOUSE_CURSOR_VALID: not is_cursor_visible
	end

	is_cursor_visible:BOOLEAN
		-- Return true if the library is set to show the mous cursor when the mouse is on a window created by the library.
	local
		l_is_enable:INTEGER
	do
		l_is_enable:={GAME_SDL_EXTERNAL}.sdl_showcursor ({GAME_SDL_EXTERNAL}.SDL_QUERY)
		check l_is_enable={GAME_SDL_EXTERNAL}.SDL_ENABLE or l_is_enable={GAME_SDL_EXTERNAL}.SDL_DISABLE end
		Result:= l_is_enable={GAME_SDL_EXTERNAL}.SDL_ENABLE
	end

	wrap_mouse(a_x,a_y:NATURAL_16)
		do
			{GAME_SDL_EXTERNAL}.SDL_WarpMouse(a_x,a_y)
		end

	enable_grab_input
		local
			l_error:INTEGER
		do
			l_error:={GAME_SDL_EXTERNAL}.SDL_WM_GrabInput({GAME_SDL_EXTERNAL}.SDL_GRAB_ON)
		end

	disable_grab_input
		local
			l_error:INTEGER
		do
			l_error:={GAME_SDL_EXTERNAL}.SDL_WM_GrabInput({GAME_SDL_EXTERNAL}.SDL_GRAB_OFF)
		end

	is_grab_input_enable:BOOLEAN
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_WM_GrabInput({GAME_SDL_EXTERNAL}.SDL_GRAB_QUERY)={GAME_SDL_EXTERNAL}.SDL_GRAB_ON
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
		Result:=all_joysticks.i_th (index+1)
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
		all_joysticks.wipe_out
		from i:=0
		until i>=get_joystick_count
		loop
			all_joysticks.extend(create {GAME_JOYSTICK}.make(i))
			i:=i+1
		end
	end

feature {NONE} -- Joystick implementation

	all_joysticks:ARRAYED_LIST[GAME_JOYSTICK]

	close_all_joysticks
		-- Close the joystick that has been opened
	require
		Controller_Close_All_Joysticks_Joystick_Enabled: is_joystick_enable
		Close_All_Joystick_Attach: all_joysticks /= Void
	do
		from all_joysticks.start
		until all_joysticks.off
		loop
			if all_joysticks.item.is_opened then
				all_joysticks.item.close
			end
			all_joysticks.forth
		end
	end




feature -- Other methods

	event_controller:GAME_EVENT_CONTROLLER -- The event manager. Use it to have access to your event.

	replace_event_controller(a_other_event_controller:GAME_EVENT_CONTROLLER)
		require
			SDL_Controller_Replace_Event_Controller_Not_Void:a_other_event_controller/=Void
		do
			event_controller:=a_other_event_controller
		end

	clear_event_controller
		do
			create event_controller.make (Current)
		end

	update
			-- Execute the event polling and throw the event handeler execution for each event.
		do
			event_controller.poll_event
		end


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

	launch
			-- Start the main loop. Used to get a Event-driven programming only.
			-- Don't forget to execute the method `stop' in an event handeler.
		local
			l_delay:INTEGER_64
		do
			from
				must_stop:=false
				last_tick:=get_ticks
			until
				must_stop
			loop
				update
				l_delay:=ticks_per_iteration
				l_delay:=l_delay-(get_ticks-last_tick).to_integer_32
				if l_delay<1 then
					delay (1)
				else
					delay(l_delay.to_natural_32)
				end
				last_tick:=get_ticks
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
			event_controller:=Void
			all_joysticks:=void
			create l_mem
			l_mem.full_collect
			{GAME_SDL_EXTERNAL}.SDL_Quit
		end




feature{NONE} -- Implementation - Methods

	initialise_library(a_flags:NATURAL_32)
			-- Initialise the library.
		local
			l_error:INTEGER
		once
			set_iteration_per_second(60)
			create all_joysticks.make (0)
			l_error:={GAME_SDL_EXTERNAL}.SDL_Init(a_flags)
			check l_error = 0 end
			create event_controller.make (Current)
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

	scr_surface:GAME_SCREEN

	buffer_surface:GAME_SURFACE

	must_stop:BOOLEAN

	last_tick:NATURAL_32

	ticks_per_iteration:NATURAL_32

end
