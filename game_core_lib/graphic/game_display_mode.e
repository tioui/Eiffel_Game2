note
	description: "Summary description for {GAME_DISPLAY_MODE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_DISPLAY_MODE

inherit
	GAME_SDL_CONSTANTS
		redefine
			out,
			is_equal
		end

	DISPOSABLE
		redefine
			out,
			is_equal
		end

create
	make,
	make_with_refresh_rate

create {GAME_SDL_ANY}
	own_from_pointer,
	shared_from_pointer


feature {NONE} -- Initialization

	make(a_width, a_height:INTEGER)
			-- Initialization for `Current' using only `a_width' and `a_height'.
		require
			Display_Mode_Make_Width_Valid: a_width>0
			Display_Mode_Make_Height_Valid: a_height>0
		do
			make_with_refresh_rate(a_width,a_height,0)
		end

	make_with_refresh_rate(a_width, a_height, a_refresh_rate:INTEGER)
			-- Initialization for `Current' using `a_width', `a_height' and `a_refresh_rate'.
		require
			Display_Mode_Make_Refresh_Rate_Valid: a_refresh_rate>=0
			Display_Mode_Make_Width_Valid: a_width>0
			Display_Mode_Make_Height_Valid: a_height>0
		local
			l_pixel_format:GAME_PIXEL_FORMAT
		do
			internal_pointer:=internal_pointer.memory_calloc (1, Size_of_sdl_display_mode_structure)
			set_pixel_format (create {GAME_PIXEL_FORMAT}.make)
			set_width (a_width)
			set_height (a_height)
			set_refresh_rate (a_refresh_rate)
			must_free:=True
		end

	shared_from_pointer(a_mode:POINTER)
			-- Initialization for `Current' using `a_mode' pointer.
			-- Note that the `a_mode' will not be free by `Current'.
		require
			Display_Mode_Own_Pointer_Not_Null: not a_mode.is_default_pointer
		do
			internal_pointer:=a_mode
			must_free:=False
		ensure
			Display_Mode_Own_Internal_Pointer_Not_Null: not internal_pointer.is_default_pointer
		end

	own_from_pointer(a_mode:POINTER)
			-- Initialization for `Current' using `a_mode' pointer.
			-- Note that the `a_mode' pointer is owned by `Current'. The client does not have to free it.
		require
			Display_Mode_Own_Pointer_Not_Null: not a_mode.is_default_pointer
		do
			internal_pointer:=a_mode
			must_free:=True
		ensure
			Display_Mode_Own_Internal_Pointer_Not_Null: not internal_pointer.is_default_pointer
		end

	make_from_pointer(a_mode:POINTER)
			-- Initialization for `Current' using a copy of the internal mode pointed by `a_mode' pointer.
			-- Note that the `a_mode' will not be free by `Current'.
		require
			Display_Mode_Own_Pointer_Not_Null: not a_mode.is_default_pointer
		do
			make_with_refresh_rate(
						{GAME_SDL_EXTERNAL}.get_display_mode_struct_w(a_mode),
						{GAME_SDL_EXTERNAL}.get_display_mode_struct_h(a_mode),
						{GAME_SDL_EXTERNAL}.get_display_mode_struct_refresh_rate (a_mode)
					)
			set_pixel_format(
						create {GAME_PIXEL_FORMAT_IMMUTABLE}.make_from_flags (
									{GAME_SDL_EXTERNAL}.get_display_mode_struct_format(a_mode)
								)
					)
		ensure
			Display_Mode_Own_Internal_Pointer_Not_Null: not internal_pointer.is_default_pointer
		end

feature -- Access

	width:INTEGER assign set_width
			-- The width of `Current'
		do
			Result:={GAME_SDL_EXTERNAL}.get_display_mode_struct_w(internal_pointer)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	set_width(a_width:INTEGER)
			-- Assign `width' with the value of `a_width'.
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_w(internal_pointer, a_width)
		ensure
			Display_Mode_Width_Changed: width=a_width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	height:INTEGER assign set_height
			-- The height of `Current
		do
			Result:={GAME_SDL_EXTERNAL}.get_display_mode_struct_h(internal_pointer)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	set_height(a_height:INTEGER)
			-- Assign `height' with the value of `a_height'.
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_h(internal_pointer, a_height)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Changed: height=a_height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	refresh_rate:INTEGER assign set_refresh_rate
			-- The frame_rate of `Current'
		do
			Result:={GAME_SDL_EXTERNAL}.get_display_mode_struct_refresh_rate (internal_pointer)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	set_refresh_rate(a_refresh_rate:INTEGER)
			-- Assign `refresh_rate' with the value of `a_refresh_rate'.
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_refresh_rate(internal_pointer, a_refresh_rate)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Changed: refresh_rate=a_refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	pixel_format:GAME_PIXEL_FORMAT_IMMUTABLE assign set_pixel_format
			-- The internal format of the pixel representation in memory.
		do
			create Result.make_from_flags ({GAME_SDL_EXTERNAL}.get_display_mode_struct_format(internal_pointer))
		end

	set_pixel_format(a_pixel_format:like pixel_format)
			-- Assign the `pixel_format' of the pixel representation in memory to the value of `a_pixel_format'.
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_format(internal_pointer, pixel_format.internal_index)
		end

	out:STRING_8
			-- <Precursor>
		do
			Result:=width.out+"x"+height.out+", "+refresh_rate.out+"Hz, Format:"+pixel_format.out
		end

	is_equal (a_other: like Current): BOOLEAN
			-- <Precursor>
		do
			Result:= (width=a_other.width) and (height=a_other.height) and (refresh_rate=a_other.refresh_rate) and (pixel_format~a_other.pixel_format)
		end

feature {NONE} -- Implementation

	must_free:BOOLEAN

	dispose
		do
			internal_pointer.memory_free
		end


feature {GAME_DISPLAY}

	internal_pointer:POINTER

invariant
	Display_Mode_Internal_Pointer_Not_Null: not internal_pointer.is_default_pointer

end
