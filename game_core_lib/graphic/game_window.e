note
	description: "[
					A window.
					You need a renderer (see: {GAME_WINDOW_RENDERED})
					or a window surface (see: {GAME_WINDOW_SURFACED})
					to put thing on the window.
				]"
	author: "Louis Marchand"
	date: "Fri, 27 Feb 2015 14:42:17 +0000"
	revision: "1.0"
	ToDo: "HighDPI"

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
		ensure
			Make_Window_Is_Open: exists
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
			Make_Window_Is_Open: exists
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
			Make_Window_Is_Open: exists
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
			Make_Window_Is_Open: exists
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
			Make_Window_Is_Open: exists
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
			Make_Window_Is_Open: exists
		end

	make_fullscreen(a_title:READABLE_STRING_GENERAL; a_width, a_height: INTEGER; a_display:GAME_DISPLAY; a_fake, a_hide, a_minimize, a_grab_input:BOOLEAN)
			-- Create a fullscreen Window titled with `a_title' of dimension (`a_width'x`a_height') on the `a_display'.
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_fake' is `True', The resolution of the display is not change to fit the `a_width' and `a_height' of `Current'.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		local
			l_flags:NATURAL_32
		do
			if a_fake then
				l_flags:={GAME_SDL_EXTERNAL}.Sdl_window_fullscreen_desktop
			else
				l_flags:={GAME_SDL_EXTERNAL}.Sdl_window_fullscreen
			end
			make_with_extra_flags(a_title, {GAME_SDL_EXTERNAL}.Sdl_windowpos_centered_display(a_display.index), {GAME_SDL_EXTERNAL}.Sdl_windowpos_centered_display(a_display.index), a_width, a_height,
						a_hide, False, a_minimize, False, a_grab_input, l_flags)
		ensure
			Make_Window_Is_Open: exists
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
			Make_Window_Is_Open: exists
		end

feature -- Access

	update
			-- Print the visual buffer modification to the screen
		require
			Window_Not_Closed: exists
		deferred
		end

	brightness:REAL_32 assign set_brightness
			-- The Gamma correction where 0.0 is completely dark and 1.0 is normal.
		require
			Window_Not_Closed: exists
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetWindowBrightness(item)
		ensure
			Window_Brightness_Not_Changed: brightness = old brightness
		end

	set_brightness(a_brightness:REAL_32)
			-- Set the `brightness' (gamma correction) to `a_brightness' for `Current' where 0.0 is completely dark and 1.0 is normal.
			-- Set has_error when an error occured.
		require
			Window_Not_Closed: exists
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

	display_index:INTEGER
			-- Index of the display containing the center of the window.
		require
			Window_Not_Closed: exists
		do
			clear_error
			has_error:=False
			Result:={GAME_SDL_EXTERNAL}.SDL_GetWindowDisplayIndex(item)
			manage_error_code(Result, "An error occured when getting the display index.")
		ensure
			Window_Display_Index_Valid: not has_error implies Result>=0
		end

	display:GAME_DISPLAY
			-- display containing the center of the window.
		require
			Window_Not_Closed: exists
		local
			l_index:INTEGER
		do
			l_index := display_index
			if l_index >= 0 then
				create Result.make (l_index)
			else
				create Result.make (0)
			end
		end


	close
			-- Close `Current' (you cannot open it again).
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_DestroyWindow(item)
			item := create {POINTER}.default_create
			game_library.internal_windows.prune_all (Current)
		end

	exists:BOOLEAN
			-- Is `Current' has been `close'd
		do
			Result:=not item.is_default_pointer
		end

	pixel_format:GAME_PIXEL_FORMAT_READABLE
			-- The internal format of the pixel representation in memory.
		require
			Window_Not_Closed: exists
		do
			create Result.make_from_flags({GAME_SDL_EXTERNAL}.SDL_GetWindowPixelFormat(item))
		end

	window_manager:GAME_WINDOW_MANAGER
			-- The window manager managing `Current'.
		require
			Window_Not_Closed: exists
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
			Window_Not_Closed: exists
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetWindowID(item)
		end

	hide
			-- Remove the visibility of `Current'
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_HideWindow(item)
		end

	show
			-- Active the visibility of `Current' (previously removed by `hide')
		do
			{GAME_SDL_EXTERNAL}.SDL_ShowWindow(item)
		end

	maximize
			-- Change the dimension of `Current' to fill the screen
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_MaximizeWindow(item)
		end

	minimize
			-- Put `Current' in an iconic representation
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_MinimizeWindow(item)
		end

	restore
			-- Get the original dimension of `Current' (previously change with `maximize' or `minimize')
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_RestoreWindow(item)
		end

	raise
			-- Put `Current' to the front
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_RaiseWindow(item)
		end

	put_border
			-- Put border decoration to `Current'
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_SetWindowBordered(item, True)
		end

	remove_border
			-- Remove border decoration to `Current'
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_SetWindowBordered(item, False)
		end

	display_mode:GAME_DISPLAY_MODE assign set_display_mode
			-- The display mode of `Current' in fullscreen mode
		require
			Window_Not_Closed: exists
		local
			l_error:INTEGER
		do
			create Result.make(1,1)
			l_error := {GAME_SDL_EXTERNAL}.SDL_GetWindowDisplayMode(item, Result.item)
			manage_error_code(l_error, "Cannot retreive the display mode of a window.")
		end

	set_display_mode(a_display_mode:GAME_DISPLAY_MODE)
			-- Assign `display_mode' with the value of `a_display_mode'
		require
			Window_Not_Closed: exists
		local
			l_error:INTEGER
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_SetWindowDisplayMode(item, a_display_mode.item)
			manage_error_code(l_error, "Cannot assign a display mode to a window.")
		end

	set_fullscreen
			-- Activate the "true" fullscreen mode (changing resolution if necessary)
		require
			Window_Not_Closed: exists
		local
			l_error:INTEGER
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_SetWindowFullscreen(item, {GAME_SDL_EXTERNAL}.SDL_WINDOW_FULLSCREEN)
			manage_error_code(l_error, "Cannot set window to full screen (true)")
		end

	set_fake_fullscreen
			-- Activate the "fake" fullscreen mode (setting a not bordered maximized window)
		require
			Window_Not_Closed: exists
		local
			l_error:INTEGER
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_SetWindowFullscreen(item, {GAME_SDL_EXTERNAL}.SDL_WINDOW_FULLSCREEN_DESKTOP)
			manage_error_code(l_error, "Cannot set window to full screen (fake)")
		end

	set_windowed
			-- Desactivate any fullscreen mode
		require
			Window_Not_Closed: exists
		local
			l_error:INTEGER
		do
			l_error := {GAME_SDL_EXTERNAL}.SDL_SetWindowFullscreen(item, 0)
			manage_error_code(l_error, "Cannot set window to not fullscreen")
		end

	is_fullscreen:BOOLEAN
			-- Is `Current' in fullscreen mode
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_FULLSCREEN) /= 0
		end

	is_fake_fullscreen:BOOLEAN
			-- Is `Current' in fullscreen mode
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_FULLSCREEN_DESKTOP) /= 0
		end

	is_opengl_compatible:BOOLEAN
			-- Is `Current' can be used in an OpenGL context
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_OPENGL) /= 0
		end

	is_visible:BOOLEAN
			-- Is `Current' in can be seen in the screen (not hidden)
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_SHOWN) /= 0
		end

	is_hidden:BOOLEAN
			-- Is `Current' in invisible
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_HIDDEN) /= 0
		end

	has_border:BOOLEAN
			-- Is `Current' has border decoration
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_BORDERLESS) = 0
		end

	is_resizable:BOOLEAN
			-- Can `Current' be resized by the user
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_RESIZABLE) /= 0
		end

	is_minimized:BOOLEAN
			-- Is `Current' in iconized representation
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_MINIMIZED) /= 0
		end

	is_maximized:BOOLEAN
			-- Is `Current' in maximized mode (to fill the screen)
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_MAXIMIZED) /= 0
		end

	has_input_focus:BOOLEAN
			-- Is `Current' having the focus for keyboard input
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_INPUT_FOCUS) /= 0
		end

	is_mouse_focus:BOOLEAN
			-- Is `Current' having the focus of the mouse
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_MOUSE_FOCUS) /= 0
		end

	is_foreign:BOOLEAN
			-- Is `Current' not created by the present library
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_FOREIGN) /= 0
		end

	gamma_correction:TUPLE[red, green, blue:ARRAYED_LIST[NATURAL_16]]
			-- The gamma encoding of `Current'
		require
			Window_Not_Closed: exists
		local
			l_red, l_green, l_blue:ARRAY[NATURAL_16]
			l_error:INTEGER
		do
			create l_red.make(1, 256)
			create l_green.make(1, 256)
			create l_blue.make(1, 256)
			l_error := {GAME_SDL_EXTERNAL}.SDL_GetWindowGammaRamp(item, $l_red, $l_green, $l_blue)
			manage_error_code(l_error, "Cannot get gamma correction values.")
			Result := [create {ARRAYED_LIST[NATURAL_16]}.make_from_array (l_red), create {ARRAYED_LIST[NATURAL_16]}.make_from_array (l_green), create {ARRAYED_LIST[NATURAL_16]}.make_from_array (l_blue)]
		end

	set_gamma_correction(a_red, a_green, a_blue:ARRAYED_LIST[NATURAL_16])
			-- Assign the `gamma_correction' values using `a_red', `a_green', `a_blue'.
		require
			Window_Not_Closed: exists
			Red_Arrays_Count_Valid: a_red.count = 256
			Green_Arrays_Count_Valid: a_green.count = 256
			Blue_Arrays_Count_Valid: a_blue.count = 256
		local
			l_red, l_green, l_blue:ARRAY[NATURAL_16]
			l_error:INTEGER
		do
			l_red := a_red.to_array
			l_green := a_green.to_array
			l_blue := a_blue.to_array
			l_error := {GAME_SDL_EXTERNAL}.SDL_SetWindowGammaRamp(item, $l_red, $l_green, $l_blue)
			manage_error_code(l_error, "Cannot set gamma correction values.")
		ensure
			Is_Assign: attached gamma_correction as la_gamma_correction and then (
							la_gamma_correction.red ~ a_red and
							la_gamma_correction.green ~ a_green and
							la_gamma_correction.blue ~ a_blue
						)
		end

	is_input_grabbed:BOOLEAN
			-- Is `Current' grabbing all input
		require
			Window_Not_Closed: exists
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowGrab(item)
		end

	grab_input
			-- Force every input in `Current'
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_SetWindowGrab(item, True)
		ensure
			Is_Grabbed: is_input_grabbed
		end

	release_input
			-- Release the input previously forced into `Current'
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_SetWindowGrab(item, False)
		ensure
			Is_Not_Grabbed: not is_input_grabbed
		end

	maximum_size:TUPLE[width, height:INTEGER]
			-- The maximum dimension that `Current' can take
		require
			Window_Not_Closed: exists
		local
			l_width, l_height:INTEGER
		do
			 {GAME_SDL_EXTERNAL}.SDL_GetWindowMaximumSize(item,$l_width, $l_height)
			 Result := [l_width, l_height]
		end

	set_maximum_size(a_width, a_height:INTEGER)
			-- Assign the values of `maximum_size' with the values `a_width', `a_height'
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_SetWindowMaximumSize(item, a_width, a_height)
		end

	minimum_size:TUPLE[width, height:INTEGER]
			-- The minimum dimension that `Current' can take
		require
			Window_Not_Closed: exists
		local
			l_width, l_height:INTEGER
		do
			 {GAME_SDL_EXTERNAL}.SDL_GetWindowMinimumSize(item,$l_width, $l_height)
			 Result := [l_width, l_height]
		end

	set_minimum_size(a_width, a_height:INTEGER)
			-- Assign the values of `minimum_size' with the values `a_width', `a_height'
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_SetWindowMinimumSize(item, a_width, a_height)
		end

	size:TUPLE[width, height:INTEGER]
			-- The present dimension of `Current'
		require
			Window_Not_Closed: exists
		local
			l_width, l_height:INTEGER
		do
			 {GAME_SDL_EXTERNAL}.SDL_GetWindowSize(item,$l_width, $l_height)
			 Result := [l_width, l_height]
		end

	set_size(a_width, a_height:INTEGER)
			-- Assign the values of `size' with the values `a_width', `a_height'
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_SetWindowSize(item, a_width, a_height)
		ensure
			Is_Assign: attached size as la_size and then (
							la_size.width ~ a_width and
							la_size.height ~ a_height
						)
		end

	height:INTEGER assign set_height
			-- The vertical length of `Current'
		require
			Window_Not_Closed: exists
		do
			Result := size.height
		end

	set_height(a_height:INTEGER)
			-- Assign `height' with the value of `a_height'
		require
			Window_Not_Closed: exists
		do
			set_size(width, a_height)
		ensure
			Is_Assign: height = a_height
			Width_Not_Changed: width = old width
		end

	width:INTEGER assign set_width
			-- The horizontal length of `Current'
		require
			Window_Not_Closed: exists
		do
			Result := size.width
		end

	set_width(a_width:INTEGER)
			-- Assign `width' with the value of `a_width'
		require
			Window_Not_Closed: exists
		do
			set_size(a_width, height)
		ensure
			Is_Assign: width = a_width
			Height_Not_Changed: height = old height
		end

	position:TUPLE[x, y:INTEGER]
			-- The coordinate (`x',`y') of the position of `Current' in the screen.
		require
			Window_Not_Closed: exists
		local
			l_x, l_y:INTEGER
		do
			{GAME_SDL_EXTERNAL}. SDL_GetWindowPosition(item, $l_x, $l_y)
			Result := [l_x, l_y]
		end

	set_position(a_x, a_y:INTEGER)
			-- Assign `position' with the values `a_x' and `a_y'
		require
			Window_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_SetWindowPosition(item, a_x, a_y)
		end

	x:INTEGER assign set_x
			-- The horizontal coordinate of the position of `Current'
		require
			Window_Not_Closed: exists
		do
			Result := position.x
		end

	set_x(a_x:INTEGER)
			-- assign `x' with the value of `a_x'
		require
			Window_Not_Closed: exists
		do
			set_position(a_x, y)
		ensure
			Is_Assign: x = a_x
		end

	center_horizontally
			-- Change `x' so that `Current' became centered in the screen
		require
			Window_Not_Closed: exists
		do
			set_x({GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_CENTERED)
		end

	center_horizontally_on_display_index(a_index:INTEGER)
			-- Change `x' so that `Current' became centered in the screen number `a_index'
		require
			Window_Not_Closed: exists
			Index_Valid: a_index >= 0 and a_index < Game_library.displays_count
		do
			set_x({GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_CENTERED_DISPLAY(a_index))
		end

	center_horizontally_on_display(a_display:GAME_DISPLAY)
			-- Change `x' so that `Current' became centered in the screen `a_display'
		require
			Window_Not_Closed: exists
		do
			center_horizontally_on_display_index(a_display.index)
		end

	y:INTEGER assign set_y
			-- The vertical coordinate of the position of `Current'
		require
			Window_Not_Closed: exists
		do
			Result := position.x
		end

	set_y(a_y:INTEGER)
			-- assign `y' with the value of `a_y'
		require
			Window_Not_Closed: exists
		do
			set_position(x, a_y)
		ensure
			Is_Assign: y = a_y
		end

	center_vertically
			-- Change `y' so that `Current' became centered in the screen
		require
			Window_Not_Closed: exists
		do
			set_y({GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_CENTERED)
		end

	center_vertically_on_display_index(a_index:INTEGER)
			-- Change `y' so that `Current' became centered in the screen number `a_index'
		require
			Window_Not_Closed: exists
			Index_Valid: a_index >= 0 and a_index < Game_library.displays_count
		do
			set_y({GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_CENTERED_DISPLAY(a_index))
		end

	center_vertically_on_display(a_display:GAME_DISPLAY)
			-- Change `y' so that `Current' became centered in the screen `a_display'
		require
			Window_Not_Closed: exists
		do
			center_vertically_on_display_index(a_display.index)
		end

	center_position
			-- Change `position' so that `Current' became centered on the screen
		require
			Window_Not_Closed: exists
		do
			set_position({GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_CENTERED, {GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_CENTERED)
		end

	center_on_display_index(a_index:INTEGER)
			-- Change `position' so that `Current' became centered in the screen number `a_index'
		require
			Window_Not_Closed: exists
			Index_Valid: a_index >= 0 and a_index < Game_library.displays_count
		do
			set_position({GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_CENTERED_DISPLAY(a_index), {GAME_SDL_EXTERNAL}.SDL_WINDOWPOS_CENTERED_DISPLAY(a_index))
		end

	center_on_display(a_display:GAME_DISPLAY)
			-- Change `position' so that `Current' became centered in the screen `a_display'
		require
			Window_Not_Closed: exists
		do
			center_on_display_index(a_display.index)
		end


	title: READABLE_STRING_GENERAL assign set_title
			-- The text to write in the title bar of `Current' (part of the decoration)
		require
			Window_Not_Closed: exists
		local
			l_text_ptr:POINTER
			l_text_c:C_STRING
			l_utf_converter:UTF_CONVERTER
		do
			l_text_ptr := {GAME_SDL_EXTERNAL}.SDL_GetWindowTitle(item)
			create l_text_c.make_by_pointer(l_text_ptr)
			create l_utf_converter
			Result := l_utf_converter.utf_8_string_8_to_string_32(l_text_c.string)
		end

	set_title(a_title: READABLE_STRING_GENERAL)
			-- Assign `title' using the value of `a_title'
		require
			Window_Not_Closed: exists
		local
			l_utf_converter:UTF_CONVERTER
			l_text_m_ptr:MANAGED_POINTER
			l_count:INTEGER
		do
			create l_utf_converter
			l_count := l_utf_converter.utf_8_bytes_count(a_title, 1, a_title.count) + 1
			create l_text_m_ptr.make (l_count)
			l_utf_converter.string_32_into_utf_8_0_pointer(a_title.as_string_32, l_text_m_ptr, 0, Void)
			check
				Pointer_Not_Null: l_text_m_ptr.item.is_default_pointer
				Pointer_Not_Shared: l_text_m_ptr.is_shared
			end
			{GAME_SDL_EXTERNAL}.SDL_SetWindowTitle(item, l_text_m_ptr.item)
		end

	move_mouse_to_position(a_x, a_y:INTEGER)
			-- Place the mouse at position (`a_x',`a_y') into `Current'
		require
			Windows_Not_Closed: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_WarpMouseInWindow(item, a_x, a_y)
		end

	set_icon(a_surface:GAME_SURFACE)
			-- Place the icon represented by `a_surface' as `Current' icon (in the decoration)
		require
			Windows_Not_Closed: exists
			Surface_Exists: a_surface.is_open
		do
			{GAME_SDL_EXTERNAL}.SDL_SetWindowIcon(item, a_surface.item)
		end


--	is_high_dpi_compatible:BOOLEAN
--			-- Can `Current' be used in a High DPI display
--		do
--			Result := {GAME_SDL_EXTERNAL}.SDL_GetWindowFlags(item).bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_ALLOW_HIGHDPI) /= 0
--		end

	events_controller:GAME_EVENTS_CONTROLLER
		do
			Result := game_library.events_controller
		end

feature {GAME_RENDERER}

	item:POINTER

feature {NONE} -- Implementation

	dispose
			-- Close
		do
			if exists then
				close
			end
		end


end
