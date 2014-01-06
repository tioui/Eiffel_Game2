note
	description: "Summary description for {GAME_DISPLAY_MODE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_DISPLAY_MODE

inherit
	GAME_SDL_CONSTANTS
		export
			{GAME_DISPLAY_MODE} all
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

create {GAME_DISPLAY}
	own_from_pointer

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
		do
			internal_pointer:=internal_pointer.memory_calloc (1, Size_of_sdl_display_mode_structure)
			set_width (a_width)
			set_height (a_height)
			set_refresh_rate (a_refresh_rate)
			set_format_unknown
		end

	own_from_pointer(a_mode:POINTER)
			-- Initialization for `Current' using `a_mode' pointer.
			-- Note that the `a_mode' pointer is owned by `Current'. The client does not have to free it.
		require
			Display_Mode_Own_Pointer_Not_Null: not a_mode.is_default_pointer
		do
			internal_pointer:=a_mode
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
			Display_Mode_Internal_Format_Not_Changed: internal_format=old internal_format
		end

	set_width(a_width:INTEGER)
			-- Assign `width' with the value of `a_width'.
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_w(internal_pointer, a_width)
		ensure
			Display_Mode_Width_Changed: width=a_width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Not_Changed: internal_format=old internal_format
		end

	height:INTEGER assign set_height
			-- The height of `Current
		do
			Result:={GAME_SDL_EXTERNAL}.get_display_mode_struct_h(internal_pointer)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Not_Changed: internal_format=old internal_format
		end

	set_height(a_height:INTEGER)
			-- Assign `height' with the value of `a_height'.
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_h(internal_pointer, a_height)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Changed: height=a_height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Not_Changed: internal_format=old internal_format
		end

	refresh_rate:INTEGER assign set_refresh_rate
			-- The frame_rate of `Current'
		do
			Result:={GAME_SDL_EXTERNAL}.get_display_mode_struct_refresh_rate (internal_pointer)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Not_Changed: internal_format=old internal_format
		end

	set_refresh_rate(a_refresh_rate:INTEGER)
			-- Assign `refresh_rate' with the value of `a_refresh_rate'.
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_refresh_rate(internal_pointer, a_refresh_rate)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Changed: refresh_rate=a_refresh_rate
			Display_Mode_Internal_Format_Not_Changed: internal_format=old internal_format
		end

	format:READABLE_STRING_GENERAL
			-- A text representation of the format of `Current'
		do
			if is_format_unknown then
				Result:="unknown"
			elseif is_format_index1lsb then
				Result:="index1lsb"
			elseif is_format_index1msb then
				Result:="index1msb"
			elseif is_format_index4lsb then
				Result:="index4lsb"
			elseif is_format_index4msb then
				Result:="index4msb"
			elseif is_format_index8 then
				Result:="index8"
			elseif is_format_rgb332 then
				Result:="rgb332"
			elseif is_format_rgb444 then
				Result:="rgb444"
			elseif is_format_rgb555 then
				Result:="rgb555"
			elseif is_format_bgr555 then
				Result:="bgr555"
			elseif is_format_argb4444 then
				Result:="argb4444"
			elseif is_format_rgba4444 then
				Result:="rgba4444"
			elseif is_format_abgr4444 then
				Result:="abgr4444"
			elseif is_format_bgra4444 then
				Result:="bgra4444"
			elseif is_format_argb1555 then
				Result:="argb1555"
			elseif is_format_rgba5551 then
				Result:="rgba5551"
			elseif is_format_abgr1555 then
				Result:="abgr1555"
			elseif is_format_bgra5551 then
				Result:="bgra5551"
			elseif is_format_rgb565 then
				Result:="rgb565"
			elseif is_format_bgr565 then
				Result:="bgr565"
			elseif is_format_rgb24 then
				Result:="rgb24"
			elseif is_format_bgr24 then
				Result:="bgr24"
			elseif is_format_rgb888 then
				Result:="rgb888"
			elseif is_format_rgbx8888 then
				Result:="rgbx8888"
			elseif is_format_bgr888 then
				Result:="bgr888"
			elseif is_format_bgrx8888 then
				Result:="bgrx8888"
			elseif is_format_argb8888 then
				Result:="argb8888"
			elseif is_format_rgba8888 then
				Result:="rgba8888"
			elseif is_format_abgr8888 then
				Result:="abgr8888"
			elseif is_format_bgra8888 then
				Result:="bgra8888"
			elseif is_format_argb2101010 then
				Result:="argb2101010"
			elseif is_format_yv12 then
				Result:="yv12"
			elseif is_format_iyuv then
				Result:="iyuv"
			elseif is_format_yuy2 then
				Result:="yuy2"
			elseif is_format_uyvy then
				Result:="uyvy"
			elseif is_format_yvyu then
				Result:="yvyu"
			else
				Result:=""
				check False end
			end
		end

	is_format_unknown : BOOLEAN
			-- the pixel format of `Current' is unknown
		do
			Result:=internal_format=Sdl_pixelformat_unknown
		end

	is_format_index1lsb : BOOLEAN
			-- the pixel format of `Current' is index1lsb
		do
			Result:=internal_format=Sdl_pixelformat_index1lsb
		end

	is_format_index1msb : BOOLEAN
			-- the pixel format of `Current' is index1msb
		do
			Result:=internal_format=Sdl_pixelformat_index1msb
		end

	is_format_index4lsb : BOOLEAN
			-- the pixel format of `Current' is index4lsb
		do
			Result:=internal_format=Sdl_pixelformat_index4lsb
		end

	is_format_index4msb : BOOLEAN
			-- the pixel format of `Current' is index4msb
		do
			Result:=internal_format=Sdl_pixelformat_index4msb
		end

	is_format_index8 : BOOLEAN
			-- the pixel format of `Current' is index8
		do
			Result:=internal_format=Sdl_pixelformat_index8
		end

	is_format_rgb332 : BOOLEAN
			-- the pixel format of `Current' is rgb332
		do
			Result:=internal_format=Sdl_pixelformat_rgb332
		end

	is_format_rgb444 : BOOLEAN
			-- the pixel format of `Current' is rgb444
		do
			Result:=internal_format=Sdl_pixelformat_rgb444
		end

	is_format_rgb555 : BOOLEAN
			-- the pixel format of `Current' is rgb555
		do
			Result:=internal_format=Sdl_pixelformat_rgb555
		end

	is_format_bgr555 : BOOLEAN
			-- the pixel format of `Current' is bgr555
		do
			Result:=internal_format=Sdl_pixelformat_bgr555
		end

	is_format_argb4444 : BOOLEAN
			-- the pixel format of `Current' is argb4444
		do
			Result:=internal_format=Sdl_pixelformat_argb4444
		end

	is_format_rgba4444 : BOOLEAN
			-- the pixel format of `Current' is rgba4444
		do
			Result:=internal_format=Sdl_pixelformat_rgba4444
		end

	is_format_abgr4444 : BOOLEAN
			-- the pixel format of `Current' is abgr4444
		do
			Result:=internal_format=Sdl_pixelformat_abgr4444
		end

	is_format_bgra4444 : BOOLEAN
			-- the pixel format of `Current' is bgra4444
		do
			Result:=internal_format=Sdl_pixelformat_bgra4444
		end

	is_format_argb1555 : BOOLEAN
			-- the pixel format of `Current' is argb1555
		do
			Result:=internal_format=Sdl_pixelformat_argb1555
		end

	is_format_rgba5551 : BOOLEAN
			-- the pixel format of `Current' is rgba5551
		do
			Result:=internal_format=Sdl_pixelformat_rgba5551
		end

	is_format_abgr1555 : BOOLEAN
			-- the pixel format of `Current' is abgr1555
		do
			Result:=internal_format=Sdl_pixelformat_abgr1555
		end

	is_format_bgra5551 : BOOLEAN
			-- the pixel format of `Current' is bgra5551
		do
			Result:=internal_format=Sdl_pixelformat_bgra5551
		end

	is_format_rgb565 : BOOLEAN
			-- the pixel format of `Current' is rgb565
		do
			Result:=internal_format=Sdl_pixelformat_rgb565
		end

	is_format_bgr565 : BOOLEAN
			-- the pixel format of `Current' is bgr565
		do
			Result:=internal_format=Sdl_pixelformat_bgr565
		end

	is_format_rgb24 : BOOLEAN
			-- the pixel format of `Current' is rgb24
		do
			Result:=internal_format=Sdl_pixelformat_rgb24
		end

	is_format_bgr24 : BOOLEAN
			-- the pixel format of `Current' is bgr24
		do
			Result:=internal_format=Sdl_pixelformat_bgr24
		end

	is_format_rgb888 : BOOLEAN
			-- the pixel format of `Current' is rgb888
		do
			Result:=internal_format=Sdl_pixelformat_rgb888
		end

	is_format_rgbx8888 : BOOLEAN
			-- the pixel format of `Current' is rgbx8888
		do
			Result:=internal_format=Sdl_pixelformat_rgbx8888
		end

	is_format_bgr888 : BOOLEAN
			-- the pixel format of `Current' is bgr888
		do
			Result:=internal_format=Sdl_pixelformat_bgr888
		end

	is_format_bgrx8888 : BOOLEAN
			-- the pixel format of `Current' is bgrx8888
		do
			Result:=internal_format=Sdl_pixelformat_bgrx8888
		end

	is_format_argb8888 : BOOLEAN
			-- the pixel format of `Current' is argb8888
		do
			Result:=internal_format=Sdl_pixelformat_argb8888
		end

	is_format_rgba8888 : BOOLEAN
			-- the pixel format of `Current' is rgba8888
		do
			Result:=internal_format=Sdl_pixelformat_rgba8888
		end

	is_format_abgr8888 : BOOLEAN
			-- the pixel format of `Current' is abgr8888
		do
			Result:=internal_format=Sdl_pixelformat_abgr8888
		end

	is_format_bgra8888 : BOOLEAN
			-- the pixel format of `Current' is bgra8888
		do
			Result:=internal_format=Sdl_pixelformat_bgra8888
		end

	is_format_argb2101010 : BOOLEAN
			-- the pixel format of `Current' is argb2101010
		do
			Result:=internal_format=Sdl_pixelformat_argb2101010
		end

	is_format_yv12 : BOOLEAN
			-- the pixel format of `Current' is yv12
		do
			Result:=internal_format=Sdl_pixelformat_yv12
		end

	is_format_iyuv : BOOLEAN
			-- the pixel format of `Current' is iyuv
		do
			Result:=internal_format=Sdl_pixelformat_iyuv
		end

	is_format_yuy2 : BOOLEAN
			-- the pixel format of `Current' is yuy2
		do
			Result:=internal_format=Sdl_pixelformat_yuy2
		end

	is_format_uyvy : BOOLEAN
			-- the pixel format of `Current' is uyvy
		do
			Result:=internal_format=Sdl_pixelformat_uyvy
		end

	is_format_yvyu : BOOLEAN
			-- the pixel format of `Current' is yvyu
		do
			Result:=internal_format=Sdl_pixelformat_yvyu
		end

	set_format_unknown
			-- Set the pixel format of `Current' to unknown
		do
			set_internal_format(Sdl_pixelformat_unknown)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_unknown
		end

	set_format_index1lsb
			-- Set the pixel format of `Current' to index1lsb
		do
			set_internal_format(Sdl_pixelformat_index1lsb)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_index1lsb
		end

	set_format_index1msb
			-- Set the pixel format of `Current' to index1msb
		do
			set_internal_format(Sdl_pixelformat_index1msb)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_index1msb
		end

	set_format_index4lsb
			-- Set the pixel format of `Current' to index4lsb
		do
			set_internal_format(Sdl_pixelformat_index4lsb)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_index4lsb
		end

	set_format_index4msb
			-- Set the pixel format of `Current' to index4msb
		do
			set_internal_format(Sdl_pixelformat_index4msb)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_index4msb
		end

	set_format_index8
			-- Set the pixel format of `Current' to index8
		do
			set_internal_format(Sdl_pixelformat_index8)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_index8
		end

	set_format_rgb332
			-- Set the pixel format of `Current' to rgb332
		do
			set_internal_format(Sdl_pixelformat_rgb332)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgb332
		end

	set_format_rgb444
			-- Set the pixel format of `Current' to rgb444
		do
			set_internal_format(Sdl_pixelformat_rgb444)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgb444
		end

	set_format_rgb555
			-- Set the pixel format of `Current' to rgb555
		do
			set_internal_format(Sdl_pixelformat_rgb555)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgb555
		end

	set_format_bgr555
			-- Set the pixel format of `Current' to bgr555
		do
			set_internal_format(Sdl_pixelformat_bgr555)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_bgr555
		end

	set_format_argb4444
			-- Set the pixel format of `Current' to argb4444
		do
			set_internal_format(Sdl_pixelformat_argb4444)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_argb4444
		end

	set_format_rgba4444
			-- Set the pixel format of `Current' to rgba4444
		do
			set_internal_format(Sdl_pixelformat_rgba4444)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgba4444
		end

	set_format_abgr4444
			-- Set the pixel format of `Current' to abgr4444
		do
			set_internal_format(Sdl_pixelformat_abgr4444)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_abgr4444
		end

	set_format_bgra4444
			-- Set the pixel format of `Current' to bgra4444
		do
			set_internal_format(Sdl_pixelformat_bgra4444)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_bgra4444
		end

	set_format_argb1555
			-- Set the pixel format of `Current' to argb1555
		do
			set_internal_format(Sdl_pixelformat_argb1555)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_argb1555
		end

	set_format_rgba5551
			-- Set the pixel format of `Current' to rgba5551
		do
			set_internal_format(Sdl_pixelformat_rgba5551)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgba5551
		end

	set_format_abgr1555
			-- Set the pixel format of `Current' to abgr1555
		do
			set_internal_format(Sdl_pixelformat_abgr1555)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_abgr1555
		end

	set_format_bgra5551
			-- Set the pixel format of `Current' to bgra5551
		do
			set_internal_format(Sdl_pixelformat_bgra5551)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_bgra5551
		end

	set_format_rgb565
			-- Set the pixel format of `Current' to rgb565
		do
			set_internal_format(Sdl_pixelformat_rgb565)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgb565
		end

	set_format_bgr565
			-- Set the pixel format of `Current' to bgr565
		do
			set_internal_format(Sdl_pixelformat_bgr565)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_bgr565
		end

	set_format_rgb24
			-- Set the pixel format of `Current' to rgb24
		do
			set_internal_format(Sdl_pixelformat_rgb24)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgb24
		end

	set_format_bgr24
			-- Set the pixel format of `Current' to bgr24
		do
			set_internal_format(Sdl_pixelformat_bgr24)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_bgr24
		end

	set_format_rgb888
			-- Set the pixel format of `Current' to rgb888
		do
			set_internal_format(Sdl_pixelformat_rgb888)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgb888
		end

	set_format_rgbx8888
			-- Set the pixel format of `Current' to rgbx8888
		do
			set_internal_format(Sdl_pixelformat_rgbx8888)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgbx8888
		end

	set_format_bgr888
			-- Set the pixel format of `Current' to bgr888
		do
			set_internal_format(Sdl_pixelformat_bgr888)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_bgr888
		end

	set_format_bgrx8888
			-- Set the pixel format of `Current' to bgrx8888
		do
			set_internal_format(Sdl_pixelformat_bgrx8888)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_bgrx8888
		end

	set_format_argb8888
			-- Set the pixel format of `Current' to argb8888
		do
			set_internal_format(Sdl_pixelformat_argb8888)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_argb8888
		end

	set_format_rgba8888
			-- Set the pixel format of `Current' to rgba8888
		do
			set_internal_format(Sdl_pixelformat_rgba8888)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_rgba8888
		end

	set_format_abgr8888
			-- Set the pixel format of `Current' to abgr8888
		do
			set_internal_format(Sdl_pixelformat_abgr8888)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_abgr8888
		end

	set_format_bgra8888
			-- Set the pixel format of `Current' to bgra8888
		do
			set_internal_format(Sdl_pixelformat_bgra8888)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_bgra8888
		end

	set_format_argb2101010
			-- Set the pixel format of `Current' to argb2101010
		do
			set_internal_format(Sdl_pixelformat_argb2101010)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_argb2101010
		end

	set_format_yv12
			-- Set the pixel format of `Current' to yv12
		do
			set_internal_format(Sdl_pixelformat_yv12)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_yv12
		end

	set_format_iyuv
			-- Set the pixel format of `Current' to iyuv
		do
			set_internal_format(Sdl_pixelformat_iyuv)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_iyuv
		end

	set_format_yuy2
			-- Set the pixel format of `Current' to yuy2
		do
			set_internal_format(Sdl_pixelformat_yuy2)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_yuy2
		end

	set_format_uyvy
			-- Set the pixel format of `Current' to uyvy
		do
			set_internal_format(Sdl_pixelformat_uyvy)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_uyvy
		end

	set_format_yvyu
			-- Set the pixel format of `Current' to yvyu
		do
			set_internal_format(Sdl_pixelformat_yvyu)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=Sdl_pixelformat_yvyu
		end

	out:STRING_8
			-- <Precursor>
		do
			Result:=width.out+"x"+height.out+", "+refresh_rate.out+"Hz, Format:"+format
		end

	is_equal (a_other: like Current): BOOLEAN
			-- <Precursor>
		do
			Result:= (width=a_other.width) and (height=a_other.height) and (refresh_rate=a_other.refresh_rate) and (internal_format=a_other.internal_format)
		end


feature {GAME_DISPLAY_MODE} -- Implementation

	dispose
		do
			internal_pointer.memory_free
		end

	internal_format:NATURAL_32 assign set_internal_format
		do
			Result:={GAME_SDL_EXTERNAL}.get_display_mode_struct_format(internal_pointer)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Not_Changed: internal_format=old internal_format
		end

	set_internal_format(a_internal_format:NATURAL_32)
		require
			Display_Mode_Set_Internal_Format_Valid:
						a_internal_format = Sdl_pixelformat_unknown or
						a_internal_format = Sdl_pixelformat_index1lsb or
						a_internal_format = Sdl_pixelformat_index1msb or
						a_internal_format = Sdl_pixelformat_index4lsb or
						a_internal_format = Sdl_pixelformat_index4msb or
						a_internal_format = Sdl_pixelformat_index8 or
						a_internal_format = Sdl_pixelformat_rgb332 or
						a_internal_format = Sdl_pixelformat_rgb444 or
						a_internal_format = Sdl_pixelformat_rgb555 or
						a_internal_format = Sdl_pixelformat_bgr555 or
						a_internal_format = Sdl_pixelformat_argb4444 or
						a_internal_format = Sdl_pixelformat_rgba4444 or
						a_internal_format = Sdl_pixelformat_abgr4444 or
						a_internal_format = Sdl_pixelformat_bgra4444 or
						a_internal_format = Sdl_pixelformat_argb1555 or
						a_internal_format = Sdl_pixelformat_rgba5551 or
						a_internal_format = Sdl_pixelformat_abgr1555 or
						a_internal_format = Sdl_pixelformat_bgra5551 or
						a_internal_format = Sdl_pixelformat_rgb565 or
						a_internal_format = Sdl_pixelformat_bgr565 or
						a_internal_format = Sdl_pixelformat_rgb24 or
						a_internal_format = Sdl_pixelformat_bgr24 or
						a_internal_format = Sdl_pixelformat_rgb888 or
						a_internal_format = Sdl_pixelformat_rgbx8888 or
						a_internal_format = Sdl_pixelformat_bgr888 or
						a_internal_format = Sdl_pixelformat_bgrx8888 or
						a_internal_format = Sdl_pixelformat_argb8888 or
						a_internal_format = Sdl_pixelformat_rgba8888 or
						a_internal_format = Sdl_pixelformat_abgr8888 or
						a_internal_format = Sdl_pixelformat_bgra8888 or
						a_internal_format = Sdl_pixelformat_argb2101010 or
						a_internal_format = Sdl_pixelformat_yv12 or
						a_internal_format = Sdl_pixelformat_iyuv or
						a_internal_format = Sdl_pixelformat_yuy2 or
						a_internal_format = Sdl_pixelformat_uyvy or
						a_internal_format = Sdl_pixelformat_yvyu
		do
			{GAME_SDL_EXTERNAL}.set_display_mode_struct_format(internal_pointer,a_internal_format)
		ensure
			Display_Mode_Width_Not_Changed: width=old width
			Display_Mode_Height_Not_Changed: height=old height
			Display_Mode_Refresh_Rate_Not_Changed: refresh_rate=old refresh_rate
			Display_Mode_Internal_Format_Changed: internal_format=a_internal_format
		end

feature {GAME_DISPLAY}

	internal_pointer:POINTER

invariant
	Display_Mode_Internal_Pointer_Not_Null: not internal_pointer.is_default_pointer

end
