note
	description: "A window. You need a renderer to put thing on the window."
	author: "Louis Marchand"
	date: "january 5, 2014"
	revision: "1.0"

deferred class
	GAME_WINDOW

inherit
	GAME_LIBRARY_SHARED
	DISPOSABLE
	GAME_WINDOW_EVENTS
		rename
			make as make_events,
			stop as stop_events,
			run as run_events,
			is_running as is_events_running,
			clear as clear_events,
			internal_id as id
		end

feature {NONE} -- Initialisation

	make_default(a_title:READABLE_STRING_GENERAL; a_width, a_height: INTEGER)
			-- Create a Window titled with `a_title' of dimension (`a_width'x`a_height'). The other options are the default one.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		do
			make(a_title, a_width, a_height, False, False, False, False, False)
		end

	make(a_title:READABLE_STRING_GENERAL; a_width, a_height: INTEGER; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN)
			-- Create `Current' titled with `a_title' of dimension (`a_width'x`a_height').
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_remove_border' is `True', `Current' has no decorative border at the momment of creation.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_maximize' is `True', `Current' is maximized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		do
			make_on_display(a_title, a_width, a_height, game_library.displays.first, a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input)
		ensure
			Make_Window_Is_Open: not is_closed
		end

	make_on_display(a_title:READABLE_STRING_GENERAL; a_width, a_height: INTEGER; a_display:GAME_DISPLAY; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN)
			-- Create `Current' titled with `a_title' of dimension (`a_width'x`a_height') on `a_display'.
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_remove_border' is `True', `Current' has no decorative border at the momment of creation.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_maximize' is `True', `Current' is maximized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		do
			make_with_position(a_title, {GAME_SDL_EXTERNAL}.Sdl_windowpos_undefined_display(a_display.index), {GAME_SDL_EXTERNAL}.Sdl_windowpos_undefined_display(a_display.index), a_width, a_height,
								a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input)
		ensure
			Make_Window_Is_Open: not is_closed
		end

	make_with_position(a_title:READABLE_STRING_GENERAL; a_x, a_y, a_width, a_height: INTEGER; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN)
			-- Create a Window titled with `a_title' of dimension (`a_width'x`a_height') at position (`a_x',`a_y').
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_remove_border' is `True', `Current' has no decorative border at the momment of creation.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_maximize' is `True', `Current' is maximized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		do
			make_with_extra_flags(a_title, a_x, a_y, a_width, a_height, a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input, 0)
		ensure
			Make_Window_Is_Open: not is_closed
		end



	make_centered(a_title:READABLE_STRING_GENERAL; a_width, a_height: INTEGER; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN)
			-- Create a Window titled with `a_title' of dimension (`a_width'x`a_height') centered on the primary display (sceen).
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_remove_border' is `True', `Current' has no decorative border at the momment of creation.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_maximize' is `True', `Current' is maximized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		do
			make_centered_on_display(a_title, a_width, a_height, game_library.displays.first ,a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input)
		ensure
			Make_Window_Is_Open: not is_closed
		end

	make_centered_on_display(a_title:READABLE_STRING_GENERAL; a_width, a_height: INTEGER; a_display:GAME_DISPLAY; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN)
			-- Create a Window titled with `a_title' of dimension (`a_width'x`a_height') centered on `a_display'.
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_remove_border' is `True', `Current' has no decorative border at the momment of creation.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_maximize' is `True', `Current' is maximized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		do
			make_with_position(a_title, {GAME_SDL_EXTERNAL}.Sdl_windowpos_centered_display(a_display.index), {GAME_SDL_EXTERNAL}.Sdl_windowpos_centered_display(a_display.index), a_width, a_height,
								a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input)
		ensure
			Make_Window_Is_Open: not is_closed
		end

	make_fullscreen(a_title:READABLE_STRING_GENERAL; a_width, a_height: INTEGER; a_display:GAME_DISPLAY; a_keep_resolution, a_hide, a_minimize, a_grab_input:BOOLEAN)
			-- Create a fullscreen Window titled with `a_title' of dimension (`a_width'x`a_height') on the `a_display'.
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_keep_resolution' is `True', The resolution of the display is not change to fit the `a_width' and `a_height' of `Current'.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		local
			l_flags:NATURAL_32
		do
			if a_keep_resolution then
				l_flags:={GAME_SDL_EXTERNAL}.Sdl_window_fullscreen_desktop
			else
				l_flags:={GAME_SDL_EXTERNAL}.Sdl_window_fullscreen
			end
			make_with_extra_flags(a_title, {GAME_SDL_EXTERNAL}.Sdl_windowpos_centered_display(a_display.index), {GAME_SDL_EXTERNAL}.Sdl_windowpos_centered_display(a_display.index), a_width, a_height,
						a_hide, False, a_minimize, False, a_grab_input, l_flags)
		ensure
			Make_Window_Is_Open: not is_closed
		end

	make_with_extra_flags(a_title:READABLE_STRING_GENERAL; a_x, a_y, a_width, a_height: INTEGER; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN; a_flags:NATURAL_32)
			-- Create a Window titled with `a_title' of dimension (`a_width'x`a_height') at position (`a_x',`a_y').
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_remove_border' is `True', `Current' has no decorative border at the momment of creation.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_maximize' is `True', `Current' is maximized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
			-- `a_flags' is the initial flags to start with.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		local
			l_flags:NATURAL_32
			l_utf_converter:UTF_CONVERTER
			l_title_utf_8:C_STRING
		do
			create l_utf_converter
			l_flags:=a_flags
			if a_hide then
				l_flags := l_flags.bit_or ({GAME_SDL_EXTERNAL}.sdl_window_hidden)
			end
			if a_remove_border then
				l_flags := l_flags.bit_or ({GAME_SDL_EXTERNAL}.sdl_window_borderless)
			end
			if a_minimize then
				l_flags := l_flags.bit_or ({GAME_SDL_EXTERNAL}.sdl_window_minimized)
			end
			if a_maximize then
				l_flags := l_flags.bit_or ({GAME_SDL_EXTERNAL}.sdl_window_maximized)
			end
			if a_grab_input then
				l_flags := l_flags.bit_or ({GAME_SDL_EXTERNAL}.sdl_window_input_grabbed)
			end
			create l_title_utf_8.make (l_utf_converter.string_32_to_utf_8_string_8 (a_title.to_string_32))
			item:={GAME_SDL_EXTERNAL}.SDL_CreateWindow (l_title_utf_8.item, a_x, a_y, a_width, a_height, l_flags)
			has_error:=False
			make_events
			game_library.internal_windows.extend (Current)
		ensure
			Make_Window_Is_Open: not is_closed
		end

feature -- Access

	update
		deferred
		end

	brightness:REAL_32 assign set_brightness
			-- The Gamma correction where 0.0 is completely dark and 1.0 is normal.
		require
			Window_Not_Closed: not is_closed
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetWindowBrightness(item)
		ensure
			Window_Brightness_Not_Changed: brightness = old brightness
		end

	set_brightness(a_brightness:REAL_32)
			-- Set the `brightness' (gamma correction) to `a_brightness' for `Current' where 0.0 is completely dark and 1.0 is normal.
			-- Set has_error when an error occured.
		require
			Window_Not_Closed: not is_closed
			Window_Set_Brightness_Valid: a_brightness>=0.0 and a_brightness<=1
		local
			l_error:INTEGER
		do
			clear_error
			has_error:=False
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetWindowBrightness(item, a_brightness)
			manage_error_code(l_error, "An error occured when setting the brightness of the window.")
		ensure
			Window_Set_Brightness_Changed: brightness = a_brightness
		end

	get_display_index:INTEGER
			-- Index of the display containing the center of the window.
		do
			clear_error
			has_error:=False
			Result:={GAME_SDL_EXTERNAL}.SDL_GetWindowDisplayIndex(item)
			manage_error_code(Result, "An error occured when getting the display index.")
		ensure
			Window_Display_Index_Valid: not has_error implies Result>=0
		end

	close
			-- Close `Current' (you cannot open it again).
		require
			Window_Not_Closed: not is_closed
		do
			{GAME_SDL_EXTERNAL}.SDL_DestroyWindow(item)
			item := create {POINTER}.default_create
			game_library.internal_windows.prune_all (Current)
		end

	is_closed:BOOLEAN
			-- Is `Current' has been `close'd
		do
			Result:=item.is_default_pointer
		end

	pixel_format:GAME_PIXEL_FORMAT_READABLE
			-- The internal format of the pixel representation in memory.
		do
			create Result.make_from_flags({GAME_SDL_EXTERNAL}.SDL_GetWindowPixelFormat(item))
		end

	window_manager:GAME_WINDOW_MANAGER
			-- The window manager managing `Current'.
		local
			l_wm_info:POINTER
			l_valid:BOOLEAN
		do
			l_wm_info:=l_wm_info.memory_calloc (1,{GAME_SDL_EXTERNAL}.c_sizeof_sdl_sys_wm_info)
			{GAME_SDL_EXTERNAL}.SDL_VERSION_COMPILE ({GAME_SDL_EXTERNAL}.get_sys_wm_struct_version(l_wm_info))
			clear_error
			l_valid:={GAME_SDL_EXTERNAL}.SDL_GetWindowWMInfo(item, l_wm_info)
			manage_error_boolean(l_valid, "An error occured when getting the window manager informations.")
			create Result.own_from_pointer (l_wm_info)
		end

	id:NATURAL_32
			-- The internal identifier of the Window (For logging purpose)
		require else
			Window_Not_Closed: not is_closed
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetWindowID(item)
		end

---------------------------------------------------------------------------------------------------------------------------
--------------------------------------------  Travail pour Luc  -----------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


	-- http://wiki.libsdl.org/SDL_HideWindow

	-- http://wiki.libsdl.org/SDL_ShowWindow

	-- http://wiki.libsdl.org/SDL_MaximizeWindow

	-- http://wiki.libsdl.org/SDL_MinimizeWindow

	-- http://wiki.libsdl.org/SDL_RestoreWindow

	-- http://wiki.libsdl.org/SDL_RaiseWindow

	-- http://wiki.libsdl.org/SDL_SetWindowBordered

	-- http://wiki.libsdl.org/SDL_SetWindowDisplayMode

	-- http://wiki.libsdl.org/SDL_GetWindowDisplayMode

	-- http://wiki.libsdl.org/SDL_SetWindowFullscreen

	-- http://wiki.libsdl.org/SDL_GetWindowFlags
			-- is_full_screen
			-- is_hidden
			-- etc.

	-- http://wiki.libsdl.org/SDL_GetWindowGammaRamp

	-- http://wiki.libsdl.org/SDL_SetWindowGammaRamp

	-- http://wiki.libsdl.org/SDL_GetWindowGrab

	-- http://wiki.libsdl.org/SDL_SetWindowGrab

	-- http://wiki.libsdl.org/SDL_GetWindowMaximumSize

	-- http://wiki.libsdl.org/SDL_SetWindowMaximumSize

	-- http://wiki.libsdl.org/SDL_SetWindowMinimumSize

	-- http://wiki.libsdl.org/SDL_GetWindowMinimumSize

	-- http://wiki.libsdl.org/SDL_GetWindowPosition

	-- http://wiki.libsdl.org/SDL_SetWindowPosition

	-- http://wiki.libsdl.org/SDL_GetWindowSize

	-- http://wiki.libsdl.org/SDL_SetWindowSize

	-- http://wiki.libsdl.org/SDL_GetWindowTitle

	-- http://wiki.libsdl.org/SDL_SetWindowTitle

	-- http://wiki.libsdl.org/SDL_WarpMouseInWindow


---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------  Fin du travail pour Luc  -------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


-- Todo:
		-- http://wiki.libsdl.org/SDL_SetWindowIcon




	events_controller:GAME_EVENTS_CONTROLLER
		do
			Result := game_library.events_controller
		end

feature{GAME_RENDERER}

	item:POINTER

feature {NONE} -- Implementation

	dispose
			-- Close
		do
			if not is_closed then
				close
			end
		end


end
