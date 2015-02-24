note
	description: "Summary description for {GAME_DISPLAY_MODE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_DISPLAY_MODE

inherit
	GAME_SDL_ANY
		redefine
			out,
			is_equal
		end
	MEMORY_STRUCTURE
		rename
			make as make_structure
		export
			{NONE} make_structure, make_by_pointer
			{GAME_SDL_ANY} item
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
			make_structure
			set_pixel_format (create {GAME_PIXEL_FORMAT}.make)
			set_width (a_width)
			set_height (a_height)
			set_refresh_rate (a_refresh_rate)
		end

	shared_from_pointer(a_mode:POINTER)
			-- Initialization for `Current' using `a_mode' pointer.
			-- Note that the `a_mode' will not be free by `Current'.
		require
			Display_Mode_Own_Pointer_Not_Null: not a_mode.is_default_pointer
		do
			make_by_pointer(a_mode)
		ensure
			Display_Mode_Own_Internal_Pointer_Not_Null: not item.is_default_pointer
		end

	own_from_pointer(a_mode:POINTER)
			-- Initialization for `Current' using `a_mode' pointer.
			-- Note that the `a_mode' pointer is owned by `Current'. The client does not have to free it.
		require
			Display_Mode_Own_Pointer_Not_Null: not a_mode.is_default_pointer
		do
			create internal_item
			create managed_pointer.own_from_pointer (a_mode, structure_size)
			shared := True
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
						create {GAME_PIXEL_FORMAT_READABLE}.make_from_flags (
									{GAME_SDL_EXTERNAL}.get_display_mode_struct_format(a_mode)
								)
					)
		end

feature -- Access

	width:INTEGER assign set_width
			-- The width of `Current'
		require
			Pointer_Exists: exists
		do
			Result:={GAME_SDL_EXTERNAL}.get_display_mode_struct_w(item)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	set_width(a_width:INTEGER)
			-- Assign `width' with the value of `a_width'.
		require
			Pointer_Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_w(item, a_width)
		ensure
			Display_Mode_Width_Changed: width=a_width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	height:INTEGER assign set_height
			-- The height of `Current
		require
			Pointer_Exists: exists
		do
			Result:={GAME_SDL_EXTERNAL}.get_display_mode_struct_h(item)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	set_height(a_height:INTEGER)
			-- Assign `height' with the value of `a_height'.
		require
			Pointer_Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_h(item, a_height)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Changed: height=a_height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	refresh_rate:INTEGER assign set_refresh_rate
			-- The frame_rate of `Current'
		require
			Pointer_Exists: exists
		do
			Result:={GAME_SDL_EXTERNAL}.get_display_mode_struct_refresh_rate (item)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	set_refresh_rate(a_refresh_rate:INTEGER)
			-- Assign `refresh_rate' with the value of `a_refresh_rate'.
		require
			Pointer_Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_refresh_rate(item, a_refresh_rate)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Changed: refresh_rate=a_refresh_rate
			Display_Mode_pixel_format_Not_Changed: pixel_format~old pixel_format
		end

	pixel_format:GAME_PIXEL_FORMAT_READABLE assign set_pixel_format
			-- The internal format of the pixel representation in memory.
		require
			Pointer_Exists: exists
		do
			create Result.make_from_flags ({GAME_SDL_EXTERNAL}.get_display_mode_struct_format(item))
		end

	set_pixel_format(a_pixel_format:like pixel_format)
			-- Assign the `pixel_format' of the pixel representation in memory to the value of `a_pixel_format'.
		require
			Pointer_Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_format(item, pixel_format.internal_index)
		end

	out:STRING_8
			-- <Precursor>
		require else
			Pointer_Exists: exists
		do
			if exists then
				Result:=width.out+"x"+height.out+", "+refresh_rate.out+"Hz, Format:"+pixel_format.out
			else
				Result := ""
			end
		end

	is_equal (a_other: like Current): BOOLEAN
			-- <Precursor>
		require else
			Pointer_Exists: exists
		do
			if exists then
				Result:= (width=a_other.width) and (height=a_other.height) and (refresh_rate=a_other.refresh_rate) and (pixel_format~a_other.pixel_format)
			else
				Result := not a_other.exists
			end
		end

feature {NONE} -- Implementation

	structure_size: INTEGER_32
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_display_mode
		end

end
