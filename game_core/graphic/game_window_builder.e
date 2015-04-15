note
	description: "A builder to create {GAME_WINDOW}"
	author: "Louis Marchand"
	date: "Fri, 03 Apr 2015 02:41:42 +0000"
	revision: "2.0"

deferred class
	GAME_WINDOW_BUILDER

inherit
	GAME_LIBRARY_SHARED
		redefine
			default_create
		end

feature {NONE} -- Initialization

	default_create
			-- Initialization of `Current'
		do
			flags := 0
			title := ""
			enable_position_undefined
			set_dimension(800, 600)
		end

feature -- Access

	flags:NATURAL_32 assign set_flags
			-- The internal {GAME_WINDOW} create flags
			-- Note: Normally, you should not have to mess with this,
			-- Do it only if you know what you are doing.
			-- Default: 0

	set_flags(a_flags:NATURAL_32)
			-- Assing to `flags' the value of `a_flags'
			-- Note: Normally, you should not have to mess with this,
			-- Do it only if you know what you are doing.
		do
			flags := a_flags
		ensure
			Is_Set: flags = a_flags
		end

	is_hidden:BOOLEAN assign set_is_hidden
			-- Is the `generate_window' will be
			-- hidden at creation
			-- Default: False
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_hidden) /= 0
		end

	set_is_hidden(a_value:BOOLEAN)
			-- Assign to `is_hidden' the value of `a_value'
		do
			if a_value then
				enable_hidden
			else
				disable_hidden
			end
		ensure
			Is_Assign: is_hidden ~ a_value
		end

	enable_hidden
			-- Make the `generate_window' hidden at creation
		do
			flags := flags.bit_or({GAME_SDL_EXTERNAL}.sdl_window_hidden)
		ensure
			Is_Enabled: is_hidden
		end

	disable_hidden
			-- Make the `generate_window' showed at creation
		do
			flags := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_hidden.bit_not)
		ensure
			Is_Disabled: not is_hidden
		end

	has_border:BOOLEAN assign set_has_border
			-- Is the `generate_window' will have
			-- decoration border
			-- Default: True
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_borderless) = 0
		end

	set_has_border(a_value:BOOLEAN)
			-- Assign to `has_border' the value of `a_value'
		do
			if a_value then
				enable_border
			else
				disable_border
			end
		ensure
			Is_Assign: has_border ~ a_value
		end

	disable_border
			-- Make the `generate_window' without decoration border
		do
			flags := flags.bit_or({GAME_SDL_EXTERNAL}.sdl_window_borderless)
		ensure
			Is_Disabled: not has_border
		end

	enable_border
			-- Make the `generate_window' with decoration border
		do
			flags := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_borderless.bit_not)
		ensure
			Is_Enabled: has_border
		end

	is_minimized:BOOLEAN assign set_is_minimized
			-- Is the `generate_window' will be
			-- minimized at creation
			-- Default: False
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_minimized) /= 0
		end

	set_is_minimized(a_value:BOOLEAN)
			-- Assign to `is_minimized' the value of `a_value'
		do
			if a_value then
				enable_minimized
			else
				disable_minimized
			end
		ensure
			Is_Assign: is_minimized ~ a_value
		end

	enable_minimized
			-- Make the `generate_window' minimized at creation
		do
			flags := flags.bit_or({GAME_SDL_EXTERNAL}.sdl_window_minimized)
		ensure
			Is_Enabled: is_minimized
		end

	disable_minimized
			-- Make the `generate_window' not minimized at creation
		do
			flags := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_minimized.bit_not)
		ensure
			Is_Disabled: not is_minimized
		end

	is_maximized:BOOLEAN assign set_is_maximized
			-- Is the `generate_window' will be
			-- maximized at creation
			-- Default: False
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_maximized) /= 0
		end

	set_is_maximized(a_value:BOOLEAN)
			-- Assign to `is_maximized' the value of `a_value'
		do
			if a_value then
				enable_maximized
			else
				disable_maximized
			end
		ensure
			Is_Assign: is_maximized ~ a_value
		end

	enable_maximized
			-- Make the `generate_window' maximized at creation
		do
			flags := flags.bit_or({GAME_SDL_EXTERNAL}.sdl_window_maximized)
		ensure
			Is_Enabled: is_maximized
		end

	disable_maximized
			-- Make the `generate_window' not maximized at creation
		do
			flags := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_maximized.bit_not)
		ensure
			Is_Disabled: not is_maximized
		end

	is_input_grabbed:BOOLEAN assign set_is_input_grabbed
			-- Is the `generate_window' will grab
			-- all input
			-- Default: False
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_input_grabbed) /= 0
		end

	set_is_input_grabbed(a_value:BOOLEAN)
			-- Assign to `is_input_grabbed' the value of `a_value'
		do
			if a_value then
				enable_input_grabbed
			else
				disable_input_grabbed
			end
		ensure
			Is_Assign: is_input_grabbed ~ a_value
		end

	enable_input_grabbed
			-- Make the `generate_window' grab all input
		do
			flags := flags.bit_or({GAME_SDL_EXTERNAL}.sdl_window_input_grabbed)
		ensure
			Is_Enabled: is_input_grabbed
		end

	disable_input_grabbed
			-- Make the `generate_window' not grab all input
		do
			flags := flags.bit_and({GAME_SDL_EXTERNAL}.sdl_window_input_grabbed.bit_not)
		ensure
			Is_Disabled: not is_input_grabbed
		end

	is_resizable:BOOLEAN assign set_is_resizable
			-- Is the `generate_window' will be resizable
			-- Default: False
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_RESIZABLE) /= 0
		end

	set_is_resizable(a_value:BOOLEAN)
			-- Assign to `is_resizable' the value of `a_value'
		do
			if a_value then
				enable_resizable
			else
				disable_resizable
			end
		ensure
			Is_Assign: is_resizable ~ a_value
		end

	enable_resizable
			-- Make the `generate_window' resizable
		do
			flags := flags.bit_or({GAME_SDL_EXTERNAL}.SDL_WINDOW_RESIZABLE)
		ensure
			Is_Enabled: is_resizable
		end

	disable_resizable
			-- Make the `generate_window' not resizable
		do
			flags := flags.bit_and({GAME_SDL_EXTERNAL}.SDL_WINDOW_RESIZABLE.bit_not)
		ensure
			Is_Disabled: not is_resizable
		end

	is_fullscreen:BOOLEAN assign set_is_fullscreen
			-- Is the `generate_window' will be fullscreened
			-- Default: False
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.Sdl_window_fullscreen) /= 0
		end

	set_is_fullscreen(a_value:BOOLEAN)
			-- Assign to `is_fullscreen' the value of `a_value'
		do
			if a_value then
				enable_fullscreen
			else
				disable_fullscreen
			end
		ensure
			Is_Assign: is_fullscreen ~ a_value
		end

	enable_fullscreen
			-- Make the `generate_window' fullscreened
			-- Note: `is_fake_fullscreen' will be disable
		do
			disable_fake_fullscreen
			flags := flags.bit_or({GAME_SDL_EXTERNAL}.Sdl_window_fullscreen)
		ensure
			Is_Enabled: is_fullscreen
			Is_Fake_Fullscreen_Disabled: not is_fake_fullscreen
		end

	disable_fullscreen
			-- Make the `generate_window' windowed
		do
			flags := flags.bit_and({GAME_SDL_EXTERNAL}.Sdl_window_fullscreen.bit_not)
		ensure
			Is_Disabled: not is_fullscreen
		end

	is_fake_fullscreen:BOOLEAN assign set_is_fake_fullscreen
			-- Is the `generate_window' will be fullscreened
			-- (but without changing resolution)
			-- Default: False
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.Sdl_window_fullscreen_desktop) = {GAME_SDL_EXTERNAL}.Sdl_window_fullscreen_desktop
		end

	set_is_fake_fullscreen(a_value:BOOLEAN)
			-- Assign to `is_fake_fullscreen' the value of `a_value'
		do
			if a_value then
				enable_fake_fullscreen
			else
				disable_fake_fullscreen
			end
		ensure
			Is_Assign: is_fake_fullscreen ~ a_value
		end

	enable_fake_fullscreen
			-- Make the `generate_window' fullscreened
			-- (but without changing resolution)
			-- Note: `is_fullscreen' will be disable
		do
			disable_fullscreen
			flags := flags.bit_or({GAME_SDL_EXTERNAL}.Sdl_window_fullscreen_desktop)
		ensure
			Is_Enabled: is_fake_fullscreen
		end

	disable_fake_fullscreen
			-- Make the `generate_window' windowed
		do
			flags := flags.bit_and({GAME_SDL_EXTERNAL}.Sdl_window_fullscreen_desktop.bit_not)
		ensure
			Is_Disabled: not is_fake_fullscreen
		end

	title:READABLE_STRING_GENERAL assign set_title
			-- The caption used to represent the `generate_window'
			-- Default: Empty string

	set_title(a_title:READABLE_STRING_GENERAL)
			-- Assign to `title' the value of `a_title'
		do
			title := a_title
		ensure
			Is_Set: title ~ a_title
		end

	is_position_x_centered:BOOLEAN assign set_is_position_x_centered
			-- Is the `generate_window' will be horizontally
			-- centered in the `display'
			-- Default: False

	set_is_position_x_centered(a_value:BOOLEAN)
			-- Assign to `is_position_x_centered' the value of `a_value'
		do
			if a_value then
				enable_position_x_centered
			else
				disable_position_x_centered
			end
		ensure
			Is_Assign: is_position_x_centered ~ a_value
		end

	enable_position_x_centered
			-- On creation, center the horizontal position of the
			-- `generate_window'
		do
			disable_position_x_undefined
			is_position_x_centered := True
		ensure
			Is_Enabled: is_position_x_centered
			Is_Undefine_Not_Set: not is_position_x_undefined
		end

	disable_position_x_centered
			-- On creation, use `position_x' value for the
			-- horizontal position of the `generate_window'
		do
			is_position_x_centered := False
		ensure
			Is_Disabled: not is_position_x_centered
		end

	is_position_y_centered:BOOLEAN assign set_is_position_y_centered
			-- Is the `generate_window' will be vertically
			-- centered in the `display'
			-- Default: False

	set_is_position_y_centered(a_value:BOOLEAN)
			-- Assign to `is_position_y_centered' the value of `a_value'
		do
			if a_value then
				enable_position_y_centered
			else
				disable_position_y_centered
			end
		ensure
			Is_Assign: is_position_y_centered ~ a_value
		end

	enable_position_y_centered
			-- On creation, center the vertical position of the
			-- `generate_window'
		do
			disable_position_y_undefined
			is_position_y_centered := True
		ensure
			Is_Enabled: is_position_y_centered
			Is_Undefine_Not_Set: not is_position_y_undefined
		end

	disable_position_y_centered
			-- On creation, use `position_y' value for the
			-- vertical position of the `generate_window'
		do
			is_position_y_centered := False
		ensure
			Is_Disabled: not is_position_y_centered
		end

	is_position_centered:BOOLEAN assign set_is_position_centered
			-- Is the `generate_window' will be horizontally
			-- and vertically centered in the `display'
			-- Default: False
		do
			Result := is_position_x_centered and is_position_y_centered
		end

	set_is_position_centered(a_value:BOOLEAN)
			-- Assign to `is_position_centered' the value of `a_value'
		do
			if a_value then
				enable_position_centered
			else
				disable_position_centered
			end
		ensure
			Is_Assign: is_position_centered ~ a_value
		end

	enable_position_centered
			-- On creation, center the horizontal and vertical
			-- position of the `generate_window'
		do
			enable_position_x_centered
			enable_position_y_centered
		ensure
			Is_Enabled: is_position_centered
			Is_Undefine_Not_Set: not is_position_undefined
		end

	disable_position_centered
			-- On creation, use `position_x' and `position_y'
			-- values respectively for the horizontal and
			-- vertical position of the `generate_window'
		do
			disable_position_x_centered
			disable_position_y_centered
		ensure
			Is_Disabled: not is_position_centered
		end

	is_position_x_undefined:BOOLEAN assign set_is_position_x_undefined
			-- Is the horizontal position of `generate_window'
			-- does not matters
			-- Note: If `display' is not Void, the window will appear on it
			-- Default: True

	set_is_position_x_undefined(a_value:BOOLEAN)
			-- Assign to `is_position_x_undefined' the value of `a_value'
		do
			if a_value then
				enable_position_x_undefined
			else
				disable_position_x_undefined
			end
		ensure
			Is_Assign: is_position_x_undefined ~ a_value
		end

	enable_position_x_undefined
			-- create `generate_window' so that the horizontal position
			-- does not matter
			-- Note: If `display' is not Void, the window will appear on it
		do
			disable_position_x_centered
			is_position_x_undefined := True
		ensure
			Is_Enabled: is_position_x_undefined
			Is_Centered_Not_Set: not is_position_x_centered
		end

	disable_position_x_undefined
			-- On creation, use `position_x' value for the
			-- horizontal position of the `generate_window'
		do
			is_position_x_undefined := False
		ensure
			Is_Disabled: not is_position_x_undefined
		end

	is_position_y_undefined:BOOLEAN assign set_is_position_y_undefined
			-- Is the vertical position of `generate_window'
			-- does not matters
			-- Note: If `display' is not Void, the window will appear on it
			-- Default: True

	set_is_position_y_undefined(a_value:BOOLEAN)
			-- Assign to `is_position_y_undefined' the value of `a_value'
		do
			if a_value then
				enable_position_y_undefined
			else
				disable_position_y_undefined
			end
		ensure
			Is_Assign: is_position_y_undefined ~ a_value
		end

	enable_position_y_undefined
			-- create `generate_window' so that the vertical position
			-- does not matter
			-- Note: If `display' is not Void, the window will appear on it
		do
			disable_position_y_centered
			is_position_y_undefined := True
		ensure
			Is_Enabled: is_position_y_undefined
			Is_Centered_Not_Set: not is_position_y_centered
		end

	disable_position_y_undefined
			-- On creation, use `position_y' value for the
			-- vertical position of the `generate_window'
		do
			is_position_y_undefined := False
		ensure
			Is_Disabled: not is_position_y_undefined
		end

	is_position_undefined:BOOLEAN assign set_is_position_undefined
			-- Is the horizontal and vertical position of `generate_window'
			-- does not matters
			-- Note: If `display' is not Void, the window will appear on it
			-- Default: True
		do
			Result := is_position_x_undefined and is_position_y_undefined
		end

	set_is_position_undefined(a_value:BOOLEAN)
			-- Assign to `is_position_undefined' the value of `a_value'
		do
			if a_value then
				enable_position_undefined
			else
				disable_position_undefined
			end
		ensure
			Is_Assign: is_position_undefined ~ a_value
		end

	enable_position_undefined
			-- create `generate_window' so that the horizontal and
			-- vertical position does not matter
			-- Note: If `display' is not Void, the window will appear on it
		do
			enable_position_x_undefined
			enable_position_y_undefined
		ensure
			Is_Enabled: is_position_undefined
			Is_Centered_Not_Set: not is_position_centered
		end

	disable_position_undefined
			-- On creation, use `position_x' and `position_y'
			-- values respectively for the horizontal and
			-- vertical position of the `generate_window'
		do
			disable_position_x_undefined
			disable_position_y_undefined
		ensure
			Is_Disabled: not is_position_undefined
		end

	position_x:INTEGER assign set_position_x
			-- The vertical position that the `generate_window'
			-- will be create at.
			-- Note: If `position_x_centered' is set, this value
			-- is not used.
			-- Default: 0 (unused -> undefined by default)

	set_position_x(a_position_x:INTEGER)
			-- Assign to `position_x' the value of `a_position_x'
			-- note: disable `is_position_x_centered' and
			-- `is_position_centered'
		do
			disable_position_x_centered
			disable_position_x_undefined
			position_x := a_position_x
		ensure
			Is_Set: position_x = a_position_x
			Not_Centered: not is_position_x_centered
			Not_Undefined: not is_position_x_undefined
		end

	position_y:INTEGER assign set_position_y
			-- The horizontal position that the `generate_window'
			-- will be create at.
			-- Note: If `position_y_centered' is set, this value
			-- is not used.
			-- Default: 0 (unused -> undefined by default)

	set_position_y(a_position_y:INTEGER)
			-- Assign to `position_y' the value of `a_position_y'
			-- note: disable `is_position_y_centered' and
			-- `is_position_centered'
		do
			disable_position_y_centered
			disable_position_y_undefined
			position_y := a_position_y
		ensure
			Is_Set: position_y = a_position_y
			Not_Centered: not is_position_y_centered
			Not_Undefined: not is_position_y_undefined
		end

	position:TUPLE[x,y:INTEGER]
			-- The position of the `generate_window' at
			-- creation
			-- Default: [0,0] (unused -> undefined by default)
		do
			result := [position_x, position_y]
		end

	set_position(a_x, a_y:INTEGER)
			-- Assign to `position' the values of `a_x' and `a_y'
			-- Note: disable `is_position_x_centered',
			-- `is_position_y_centered' and `is_position_centered'
		do
			set_position_x (a_x)
			set_position_y (a_y)
		ensure
			Is_Set: position.x = a_x and position.y = a_y
			Is_Not_Centered: not is_position_x_centered and
								not is_position_y_centered
			Is_Not_Undefine: not is_position_x_undefined and
								not is_position_y_undefined
		end

	width:INTEGER assign set_width
			-- The vertical dimension of the `generate_window'
			-- at creation
			-- Default: 800

	set_width(a_width:INTEGER)
			-- Assign to `width' the value of `a_width'
		require
			Width_Valid: a_width > 0
		do
			width := a_width
		ensure
			Is_Set: width = a_width
		end

	height:INTEGER assign set_height
			-- The horizontal dimension of the `generate_window'
			-- at creation
			-- Default: 600

	set_height(a_height:INTEGER)
			-- Assign to `height' the value of `a_height'
		require
			Height_Valid: a_height > 0
		do
			height := a_height
		ensure
			Is_Set: height = a_height
		end

	dimension:TUPLE[width, height:INTEGER]
			-- The horizontal and vertical dimension of
			-- the `generate_window' at creation
			-- Default: [800, 600]
		do
			Result := [width, height]
		end

	set_dimension(a_width, a_height:INTEGER)
			-- assign to `dimension' the value of `a_width' and `a_height'
		require
			Width_Valid: a_width > 0
			Height_Valid: a_height > 0
		do
			set_width(a_width)
			set_height(a_height)
		ensure
			Is_Set: dimension.width = a_width and dimension.height = a_height
		end

	display:detachable GAME_DISPLAY assign set_display
			-- The {GAME_DISPLAY} (screen) that the
			-- `generate_window' will be drawed
			-- into at creation.
			-- Note: only useful if one of `is_position_centered',
			-- `is_position_x_centered', `is_position_y_centered',
			-- `is_position_undefined', `is_position_x_undefined' or
			-- `is_position_y_undefined' is set
			-- Default: Void

	set_display(a_display:detachable GAME_DISPLAY)
			-- assign to `display' the value of `a_display'
		do
			display := a_display
		ensure
			Is_Set: display ~ a_display
		end

	unset_display
			-- Remove the previously set `display'
		do
			set_display(Void)
		ensure
			Is_Unset: not attached display
		end

	generate_window:GAME_WINDOW
			-- The {GAME_WINDOW} that fit all attributes of `Current'
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
		deferred
		ensure
			Is_Created: Result.has_error or Result.exists
		end



invariant
	Position_is_valid: position.x = position_x and position.y = position_y
	Position_Centered_Valid: is_position_centered implies
				(is_position_x_centered and is_position_y_centered)
	Position_Undefine_Valid: is_position_undefined implies
				(is_position_x_undefined and is_position_y_undefined)
	Position_Centered_Undefined_Valid: is_position_centered implies not is_position_undefined
	Position_X_Centered_Undefined_Valid: is_position_x_centered implies not is_position_x_undefined
	Position_Y_Centered_Undefined_Valid: is_position_y_centered implies not is_position_y_undefined
	Dimension_is_valid: dimension.width = width and dimension.height = height
	Fullscreen_Valid: is_fullscreen implies not is_fake_fullscreen

end
