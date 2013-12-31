note
	description: "[
		The screen.Must be return by an object of type GAME_SDL_CONTROLLER
		or GAME_LIB_CONTROLLER.
		
		Use it as if it was a simple GAME_SURFACE.
		]"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_WINDOW

inherit
	GAME_LIBRARY_SHARED
	GAME_SDL_CONSTANTS

create
	make,
	make_default,
	make_on_display,
	make_with_position,
	make_centered,
	make_fullscreen,
	make_with_extra_flags

feature {NONE} -- Initialisation

	make_default(a_title:READABLE_STRING_GENERAL; a_width, a_height: INTEGER)
			-- Create a Window titled with `a_title' of dimension (`a_width'x`a_height'). The other option are the default one.
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
			make_on_display(a_title, a_width, a_height, 1, a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input)
		end

	make_on_display(a_title:READABLE_STRING_GENERAL; a_width, a_height, a_on_display: INTEGER; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN)
			-- Create `Current' titled with `a_title' of dimension (`a_width'x`a_height') on the display (sceen) with ID `a_on_display'.
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_remove_border' is `True', `Current' has no decorative border at the momment of creation.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_maximize' is `True', `Current' is maximized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Window_Make_On_Display_Valid: a_on_display>0 and a_on_display<=game_library.displays_count
			Game_Screen_Video_Enabled: game_library.is_video_enable
		do
			make_with_position(a_title, Sdl_windowpos_undefined_display(a_on_display-1), Sdl_windowpos_undefined_display(a_on_display), a_width, a_height,
								a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input)
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
		end

	make_centered(a_title:READABLE_STRING_GENERAL; a_width, a_height, a_on_display: INTEGER; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN)
			-- Create a Window titled with `a_title' of dimension (`a_width'x`a_height') centered on the display (sceen) with ID `a_on_display'.
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_remove_border' is `True', `Current' has no decorative border at the momment of creation.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_maximize' is `True', `Current' is maximized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Window_Make_On_Display_Valid: a_on_display>0 and a_on_display<=game_library.displays_count
			Game_Screen_Video_Enabled: game_library.is_video_enable
		do
			make_with_position(a_title, Sdl_windowpos_centered_display(a_on_display-1), Sdl_windowpos_centered_display(a_on_display), a_width, a_height,
								a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input)
		end

	make_fullscreen(a_title:READABLE_STRING_GENERAL; a_width, a_height, a_on_display: INTEGER; a_keep_resolution, a_hide, a_minimize, a_grab_input:BOOLEAN)
			-- Create a fullscreen Window titled with `a_title' of dimension (`a_width'x`a_height') on the display (screen) with ID `a_on_display'.
			-- If `a_hide' is `True', `Current' is hidden at the momment of creation.
			-- If `a_keep_resolution' is `True', The resolution of the display is not change to fit the `a_width' and `a_height' of `Current'.
			-- If `a_minimize' is `True', `Current' is minimized at the momment of creation.
			-- If `a_grab_input' is `True', All input are grab by `Current' at the momment of creation.
		require
			Game_Window_Make_On_Display_Valid: a_on_display>0 and a_on_display<=game_library.displays_count
			Game_Screen_Video_Enabled: game_library.is_video_enable
		local
			l_flags:NATURAL_32
		do
			if a_keep_resolution then
				l_flags:=Sdl_window_fullscreen_desktop
			else
				l_flags:=Sdl_window_fullscreen
			end
			make_with_extra_flags(a_title, Sdl_windowpos_centered_display(a_on_display-1), Sdl_windowpos_centered_display(a_on_display), a_width, a_height,
						a_hide, False, a_minimize, False, a_grab_input, l_flags)
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
				l_flags := l_flags.bit_or (sdl_window_hidden)
			end
			if a_remove_border then
				l_flags := l_flags.bit_or (sdl_window_borderless)
			end
			if a_minimize then
				l_flags := l_flags.bit_or (sdl_window_minimized)
			end
			if a_maximize then
				l_flags := l_flags.bit_or (sdl_window_maximized)
			end
			if a_grab_input then
				l_flags := l_flags.bit_or (sdl_window_input_grabbed)
			end
			create l_title_utf_8.make (l_utf_converter.string_32_to_utf_8_string_8 (a_title.to_string_32))
			screen_pointer:={GAME_SDL_EXTERNAL}.SDL_CreateWindow (l_title_utf_8.item, a_x, a_y, a_width, a_height, l_flags)
		end


feature {NONE} -- Implementation

	screen_pointer:POINTER

invariant
	Screen_Pointer_Not_Void: not screen_pointer.is_default_pointer
end
