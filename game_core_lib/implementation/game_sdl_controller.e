note
	description: "Controller of the SDL library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

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
			SDL_Controller_Enable_Video_Already_Enabled: not is_video_enabled
		do
			initialise_sub_system({GAME_SDL_EXTERNAL}.SDL_INIT_VIDEO)
		ensure
			SDL_Controller_Enable_Video_Enabled: is_video_enabled
		end

	disable_video
			-- Disable the video functionalities
		require
			SDL_Controller_Disable_Video_Not_Enabled: is_video_enabled
		do
			quit_sub_system({GAME_SDL_EXTERNAL}.SDL_INIT_VIDEO)
		ensure
			SDL_Controller_Disable_Video_Disabled: not is_video_enabled
		end

	is_video_enabled:BOOLEAN
			-- Return true if the text surface functionnality is enabled.
		do
			Result:=is_sub_system_enabled({GAME_SDL_EXTERNAL}.SDL_INIT_VIDEO)
		end


	enable_joystick
			-- Unable the joystick functionality
		require
			SDL_Controller_Enable_Joystick_Already_Enabled: not is_joystick_enabled
		do
			initialise_sub_system({GAME_SDL_EXTERNAL}.SDL_INIT_JOYSTICK)
		--	event_controller.enable_joystick_event
			refresh_joyticks
		ensure
			SDL_Controller_Enable_Joystick_Enabled: is_joystick_enabled
		--	SDL_Controller_Enable_Joystick_Event_Enable: event_controller.is_joystick_event_enable
		end

	disable_joystick
			-- Disable the joystick fonctionality
		require
			SDL_Controller_Disable_Joystick_Not_Enabled: is_joystick_enabled
		do
			event_controller.disable_joystick_event
			close_all_joysticks
			quit_sub_system({GAME_SDL_EXTERNAL}.SDL_INIT_JOYSTICK)
		ensure
			SDL_Controller_Disable_Joystick_Disabled: not is_joystick_enabled
		end

	is_joystick_enabled:BOOLEAN
			-- Return true if the joystick functionnality is enabled.
		do
			Result:=is_sub_system_enabled({GAME_SDL_EXTERNAL}.SDL_INIT_JOYSTICK)
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
			Print_Screen_Video_Enabled: is_video_enabled
		local
			error:INTEGER
			error_ptr:POINTER
			error_c:C_STRING
		do
			if not has_hardware_double_buffer then
				scr_surface.print_surface_on_surface (buffer_surface, 0, 0)
			end
			error:={GAME_SDL_EXTERNAL}.SDL_Flip(scr_surface.get_surface_pointer)
			if error/=0 then
				create error_c.make_by_pointer ({GAME_SDL_EXTERNAL}.SDL_GetError)
				io.error.put_string ("Error: Cannot flip screen.%N"+error_c.string)
				io.error.flush
				check false end
			end
		end

	set_window_caption(window_caption, icon_caption:STRING)
			-- Set a caption to the window header and to the system icon.
		do
			scr_surface.set_captions (window_caption, icon_caption)
		end

	create_screen_surface_with_icon_cpf(cpf:CPF_PACKAGE_FILE;index:INTEGER;transparent_color:GAME_COLOR;the_width,the_height,the_bits_per_pixel:INTEGER;video_memory,hardware_dbl_buf,resisable,with_frame,fullscreen:BOOLEAN)
		-- Create a window with a new screen surface and set the icon.
		-- The `icon_filename' must point to a standard bmp file. On MS Windows, the bmp file must be 32x32 pixels.
		-- If `transparent_color' is void, the icon will be opaque. To use a transparent color, you must convert your bmp in 8 bits indexed bitmap image.
		-- The flags `video_memory' and `hardware_dbl_buf' can be use if the graphic card support them.
		-- On some exploiting system, the `video_memory' and `hardware_dbl_buf' flags are used only on `fullscreen' mode
	require
		Controller_Create_Screen_Is_Video_Enable: is_video_enabled
		Controller_Cpf_Index_Valid:index>0 and then index<=cpf.sub_files_count
	local
		l_icon:GAME_SURFACE_BMP_CPF
	do
		create l_icon.make (cpf,index)
		if transparent_color/=Void then
			l_icon.set_transparent_color (transparent_color)
		end
		{GAME_SDL_EXTERNAL}.SDL_WM_SetIcon(l_icon.get_surface_pointer,create {POINTER})
		create_screen_surface(the_width,the_height,the_bits_per_pixel,video_memory,hardware_dbl_buf,resisable,with_frame,fullscreen)
	ensure
		Create_Screen_Not_Void: screen_is_create
	end

	create_screen_surface_with_icon(icon_filename:STRING;transparent_color:GAME_COLOR;the_width,the_height,the_bits_per_pixel:INTEGER;video_memory,hardware_dbl_buf,resisable,with_frame,fullscreen:BOOLEAN)
		-- Create a window with a new screen surface and set the icon.
		-- The `icon_filename' must point to a standard bmp file. On MS Windows, the bmp file must be 32x32 pixels.
		-- If `transparent_color', the icon will be opaque.
		-- The flags `video_memory' and `hardware_dbl_buf' can be use if the graphic card support them.
		-- On some exploiting system, the `video_memory' and `hardware_dbl_buf' flags are used only on `fullscreen' mode
	require
		Controller_Create_Screen_Is_Video_Enable: is_video_enabled
	local
		l_icon:GAME_SURFACE_BMP_FILE
	do
		create l_icon.make (icon_filename)
		if transparent_color/=Void then
			l_icon.set_transparent_color (transparent_color)
		end
		{GAME_SDL_EXTERNAL}.SDL_WM_SetIcon(l_icon.get_surface_pointer,create {POINTER})
		create_screen_surface(the_width,the_height,the_bits_per_pixel,video_memory,hardware_dbl_buf,resisable,with_frame,fullscreen)
	ensure
		Create_Screen_Not_Void: screen_is_create
	end

	create_screen_surface(the_width,the_height,the_bits_per_pixel:INTEGER;video_memory,hardware_dbl_buf,resisable,with_frame,fullscreen:BOOLEAN)
		-- Create a window with a new screen surface.
		-- The flags `video_memory' and `hardware_dbl_buf' can be use if the graphic card support them.
		-- On some exploiting system, the `video_memory' and `hardware_dbl_buf' flags are used only on `fullscreen' mode
	require
		Controller_Create_Screen_Is_Video_Enable: is_video_enabled
	local
		flags:NATURAL_32
	do
		flags:=0
		has_hardware_double_buffer:=hardware_dbl_buf
		if video_memory then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_HWSURFACE
		end
		if hardware_dbl_buf then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_DOUBLEBUF
		else
			create buffer_surface.make (the_width, the_height, the_bits_per_pixel, video_memory)
		end
		if resisable then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_RESIZABLE
		end
		if not with_frame then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_NOFRAME
		end
		if fullscreen then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_FULLSCREEN
		end
		scr_surface:=create {GAME_SCREEN}.make(the_width,the_height,the_bits_per_pixel,flags)
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

	get_available_video_mode(video_memory,hardware_dbl_buf,resisable,with_frame,fullscreen:BOOLEAN):SEQUENCE[TUPLE[width,height:INTEGER_32]]
		-- List the video modes (dimensions) availables in the system.
	local
		list_rect,rect:POINTER
		flags:NATURAL_32
		i:INTEGER
		resolution:TUPLE[width,height:INTEGER_32]
		list_resolution:LINKED_LIST[TUPLE[width,height:INTEGER_32]]
	do
		if video_memory then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_HWSURFACE
		end
		if hardware_dbl_buf then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_DOUBLEBUF
		end
		if resisable then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_RESIZABLE
		end
		if not with_frame then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_NOFRAME
		end
		if fullscreen then
			flags:=flags | {GAME_SDL_EXTERNAL}.SDL_FULLSCREEN
		end
		list_rect:= {GAME_SDL_EXTERNAL}.SDL_ListModes(create {POINTER},flags)
		create list_resolution.make
		if list_rect.to_integer_32=-1 then
			create resolution.default_create
			resolution.width:=-1
			resolution.height:=-1
			list_resolution.extend (resolution)

		elseif list_rect.to_integer_32/=0 then

			from
				i:=0
				rect:={GAME_SDL_EXTERNAL}.c_get_ListModes_Rect(list_rect,i)
			until
				rect.to_integer_32=0
			loop
				create resolution.default_create
				resolution.width:={GAME_SDL_EXTERNAL}.get_rect_struct_w(rect).to_integer_32
				resolution.height:={GAME_SDL_EXTERNAL}.get_rect_struct_h(rect).to_integer_32
				list_resolution.extend (resolution)
				i:=i+1
				rect:={GAME_SDL_EXTERNAL}.c_get_ListModes_Rect(list_rect,i)
			end
		end
		Result:=list_resolution
	end

	has_hardware_double_buffer:BOOLEAN


feature -- Mouse		
	show_mouse_cursor
		-- Show the mouse cursor when the mouse is on a window created by the library.
	local
		error:INTEGER
	do
		error:={GAME_SDL_EXTERNAL}.sdl_showcursor ({GAME_SDL_EXTERNAL}.SDL_ENABLE)
	ensure
		SHOW_MOUSE_CURSOR_VALID: is_cursor_visible
	end

	hide_mouse_cursor
		-- Don't show the mouse cursor when the mouse is on a window created by the library.
	local
		error:INTEGER
	do
		error:={GAME_SDL_EXTERNAL}.sdl_showcursor ({GAME_SDL_EXTERNAL}.SDL_DISABLE)
	ensure
		HIDE_MOUSE_CURSOR_VALID: not is_cursor_visible
	end

	is_cursor_visible:BOOLEAN
		-- Return true if the library is set to show the mous cursor when the mouse is on a window created by the library.
	local
		is_enable:INTEGER
	do
		is_enable:={GAME_SDL_EXTERNAL}.sdl_showcursor ({GAME_SDL_EXTERNAL}.SDL_QUERY)
		check is_enable={GAME_SDL_EXTERNAL}.SDL_ENABLE or is_enable={GAME_SDL_EXTERNAL}.SDL_DISABLE end
		Result:= is_enable={GAME_SDL_EXTERNAL}.SDL_ENABLE
	end

feature -- Joystick methods

	get_joystick_count:INTEGER
		-- Get number of joystick detect by the library
	require
		Controller_Joystick_Count_Joystick_Enabled: is_joystick_enabled
	do
		Result:={GAME_SDL_EXTERNAL}.SDL_NumJoysticks
	end

	get_joystick(index:INTEGER):GAME_JOYSTICK
		-- Use the same index used by the system.
		-- So the first joystick in at index 0
	require
		Controller_Joystick_Count_Joystick_Enabled: is_joystick_enabled
		Get_Joystick_Index_Valid: index<get_joystick_count
	do
		Result:=all_joysticks.i_th (index+1)
	end

	refresh_joyticks
		-- Update the joystiks list (if joysticks as been add or remove)
		-- Warning: This will close all opened joysticks
	require
		Controller_Update_Joysticks_Joystick_Enabled: is_joystick_enabled
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
		Controller_Close_All_Joysticks_Joystick_Enabled: is_joystick_enabled
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

	replace_event_controller(new_event_controller:GAME_EVENT_CONTROLLER)
		require
			SDL_Controller_Replace_Event_Controller_Not_Void:new_event_controller/=Void
		do
			event_controller:=new_event_controller
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


	delay(millisecond:NATURAL_32)
			-- Pause the execution for given time in `millisecond'.
		do
			{GAME_SDL_EXTERNAL}.SDL_Delay(millisecond)
		end

	get_ticks:NATURAL_32
			-- Get the number of millisecond since the initialisation of the library.
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetTicks
		end

	launch
			-- Start the main loop. Used to get a Event-driven programming only.
			-- Don't forget to execute the method `stop' in an event handeler.
		do
			from
				must_stop:=false
			until
				must_stop
			loop
				update
				delay (loop_delay)
			end
		end

	loop_delay:NATURAL_32	-- Change it if to change the frequency of the event.

	stop
			-- Stop the main loop
		do
			must_stop:=true
		end

	quit_library
			-- Close the library. Must be used before the end of the application
		local
			mem:MEMORY
		do
			event_controller:=Void
			all_joysticks:=void
			create mem
			mem.full_collect
			{GAME_SDL_EXTERNAL}.SDL_Quit
		end




feature{NONE} -- Implementation - Methods

	initialise_library(flags:NATURAL_32)
			-- Initialise the library.
		local
			error,img_flags:INTEGER
		once
			loop_delay:=1
			create all_joysticks.make (0)
			error:={GAME_SDL_EXTERNAL}.SDL_Init(flags)
			check error = 0 end
			create event_controller.make (Current)
		end

	initialise_sub_system(flags:NATURAL_32)
			-- Initialise SDL sub-systems defined by `flags'.
		local
			error:INTEGER
		do
			error:={GAME_SDL_EXTERNAL}.SDL_InitSubSystem(flags)
			check error = 0 end
		end

	quit_sub_system(flags:NATURAL_32)
			-- Disable all SDL sub-system defined by `flags'.
		local
			error:INTEGER
		do
			error:={GAME_SDL_EXTERNAL}.SDL_InitSubSystem(flags)
			check error = 0 end
		end

	is_sub_system_enabled(flags:NATURAL_32):BOOLEAN
			-- Return true if the sub-systems defined by the `flags' are enable.
		local
			return_value:NATURAL_32
		do
			return_value:={GAME_SDL_EXTERNAL}.SDL_WasInit(flags)
			if return_value = flags then
				Result:=true
			else
				Result:=false
			end
		end

feature {NONE} -- Implementation - Variables

	scr_surface:GAME_SCREEN

	buffer_surface:GAME_SURFACE

	must_stop:BOOLEAN

end
