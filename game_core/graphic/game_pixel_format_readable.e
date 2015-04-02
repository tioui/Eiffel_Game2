note
	description: "Read-only version of a {GAME_PIXEL_FORMAT}."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_PIXEL_FORMAT_READABLE

inherit
	DISPOSABLE
		redefine
			out,
			is_equal
		end
	GAME_SDL_ANY
		redefine
			out,
			is_equal
		end

create {GAME_SDL_ANY}
	make_from_flags,
	make_from_structure_pointer,
	share_from_structure_pointer,
	own_from_structure_pointer,
	make_from_bits_per_pixel_and_masks

create
	make_from_other

feature {NONE} -- Initialisation

	make_from_flags(a_enum:NATURAL_32)
			-- Initialization for `Current' usign the internal format index.
		do
			set_internal_index (a_enum)
		end

	make_from_other(a_other:GAME_PIXEL_FORMAT_READABLE)
			-- Initialization for `Current' by copying `a_other's values.
		do
			make_from_flags(a_other.internal_index)
			set_color_palette(a_other.color_palette)
		end

	make_from_structure_pointer(a_structure:POINTER)
			-- Initialize usign the copy of `a_structure' format C pointer.
			-- `a_structure' is not freed by `Current'
		require
			Pixel_Format_Info_Structure_Not_Null: not a_structure.is_default_pointer
		local
			l_temp_palette:detachable GAME_COLOR_PALETTE
		do
			share_from_structure_pointer(a_structure)
			l_temp_palette := color_palette
			internal_item:= create {POINTER}
			if attached l_temp_palette then
				set_color_palette(l_temp_palette)
			end
		end

	own_from_structure_pointer(a_structure:POINTER)
			-- Initialize usign `a_structure' format C pointer.
			-- `a_structure' will be freed by `Current'
		require
			Pixel_Format_Info_Structure_Not_Null: not a_structure.is_default_pointer
		do
			share_from_structure_pointer(a_structure)
			must_free_structure:=True
		end

	share_from_structure_pointer(a_structure:POINTER)
			-- Initialize usign `a_structure' format C pointer.
			-- `a_structure' is not freed by `Current'
		require
			Pixel_Format_Info_Structure_Not_Null: not a_structure.is_default_pointer
		do
			make_from_flags ({GAME_SDL_EXTERNAL}.get_sdl_pixel_format_struct_format(a_structure))
			internal_item:=a_structure
			must_free_structure:=False
		end

	make_from_bits_per_pixel_and_masks(a_bits_per_pixel:INTEGER; a_red_mask, a_green_mask, a_blue_mask, a_alpha_mask:NATURAL_32)
			-- Initialize `Current' usign `a_bits_per_pixel' value and pixel masks: `a_red_mask', `a_green_mask', `a_blue_mask' and `a_alpha_mask'.
		do
			make_from_flags ({GAME_SDL_EXTERNAL}.SDL_MasksToPixelFormatEnum(a_bits_per_pixel, a_red_mask, a_green_mask, a_blue_mask, a_alpha_mask))
		end

feature -- Access

	out:STRING_8
			-- A text representation of the pixel format of `Current'.
		do
			if is_unknown then
				Result:="unknown"
			elseif is_index1lsb then
				Result:="index1lsb"
			elseif is_index1msb then
				Result:="index1msb"
			elseif is_index4lsb then
				Result:="index4lsb"
			elseif is_index4msb then
				Result:="index4msb"
			elseif is_index8 then
				Result:="index8"
			elseif is_rgb332 then
				Result:="rgb332"
			elseif is_rgb444 then
				Result:="rgb444"
			elseif is_rgb555 then
				Result:="rgb555"
			elseif is_bgr555 then
				Result:="bgr555"
			elseif is_argb4444 then
				Result:="argb4444"
			elseif is_rgba4444 then
				Result:="rgba4444"
			elseif is_abgr4444 then
				Result:="abgr4444"
			elseif is_bgra4444 then
				Result:="bgra4444"
			elseif is_argb1555 then
				Result:="argb1555"
			elseif is_rgba5551 then
				Result:="rgba5551"
			elseif is_abgr1555 then
				Result:="abgr1555"
			elseif is_bgra5551 then
				Result:="bgra5551"
			elseif is_rgb565 then
				Result:="rgb565"
			elseif is_bgr565 then
				Result:="bgr565"
			elseif is_rgb24 then
				Result:="rgb24"
			elseif is_bgr24 then
				Result:="bgr24"
			elseif is_rgb888 then
				Result:="rgb888"
			elseif is_rgbx8888 then
				Result:="rgbx8888"
			elseif is_bgr888 then
				Result:="bgr888"
			elseif is_bgrx8888 then
				Result:="bgrx8888"
			elseif is_argb8888 then
				Result:="argb8888"
			elseif is_rgba8888 then
				Result:="rgba8888"
			elseif is_abgr8888 then
				Result:="abgr8888"
			elseif is_bgra8888 then
				Result:="bgra8888"
			elseif is_argb2101010 then
				Result:="argb2101010"
			elseif is_yv12 then
				Result:="yv12"
			elseif is_iyuv then
				Result:="iyuv"
			elseif is_yuy2 then
				Result:="yuy2"
			elseif is_uyvy then
				Result:="uyvy"
			elseif is_yvyu then
				Result:="yvyu"
			else
				Result:="Unsuported"
			end
		end

	is_indexed : BOOLEAN
			-- The pixel format of `Current' used an indexed color system
		do
			Result := is_index1lsb or is_index1msb or is_index4lsb or is_index4msb or is_index8
		end

	is_unknown : BOOLEAN
			-- the pixel format of `Current' is unknown
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_unknown
		end

	is_index1lsb : BOOLEAN
			-- the pixel format of `Current' is index1lsb
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_index1lsb
		end

	is_index1msb : BOOLEAN
			-- the pixel format of `Current' is index1msb
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_index1msb
		end

	is_index4lsb : BOOLEAN
			-- the pixel format of `Current' is index4lsb
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_index4lsb
		end

	is_index4msb : BOOLEAN
			-- the pixel format of `Current' is index4msb
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_index4msb
		end

	is_index8 : BOOLEAN
			-- the pixel format of `Current' is index8
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_index8
		end

	is_rgb332 : BOOLEAN
			-- the pixel format of `Current' is rgb332
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb332
		end

	is_rgb444 : BOOLEAN
			-- the pixel format of `Current' is rgb444
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb444
		end

	is_rgb555 : BOOLEAN
			-- the pixel format of `Current' is rgb555
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb555
		end

	is_bgr555 : BOOLEAN
			-- the pixel format of `Current' is bgr555
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr555
		end

	is_argb4444 : BOOLEAN
			-- the pixel format of `Current' is argb4444
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb4444
		end

	is_rgba4444 : BOOLEAN
			-- the pixel format of `Current' is rgba4444
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgba4444
		end

	is_abgr4444 : BOOLEAN
			-- the pixel format of `Current' is abgr4444
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_abgr4444
		end

	is_bgra4444 : BOOLEAN
			-- the pixel format of `Current' is bgra4444
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgra4444
		end

	is_argb1555 : BOOLEAN
			-- the pixel format of `Current' is argb1555
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb1555
		end

	is_rgba5551 : BOOLEAN
			-- the pixel format of `Current' is rgba5551
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgba5551
		end

	is_abgr1555 : BOOLEAN
			-- the pixel format of `Current' is abgr1555
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_abgr1555
		end

	is_bgra5551 : BOOLEAN
			-- the pixel format of `Current' is bgra5551
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgra5551
		end

	is_rgb565 : BOOLEAN
			-- the pixel format of `Current' is rgb565
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb565
		end

	is_bgr565 : BOOLEAN
			-- the pixel format of `Current' is bgr565
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr565
		end

	is_rgb24 : BOOLEAN
			-- the pixel format of `Current' is rgb24
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb24
		end

	is_bgr24 : BOOLEAN
			-- the pixel format of `Current' is bgr24
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr24
		end

	is_rgb888 : BOOLEAN
			-- the pixel format of `Current' is rgb888
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb888
		end

	is_rgbx8888 : BOOLEAN
			-- the pixel format of `Current' is rgbx8888
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgbx8888
		end

	is_bgr888 : BOOLEAN
			-- the pixel format of `Current' is bgr888
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr888
		end

	is_bgrx8888 : BOOLEAN
			-- the pixel format of `Current' is bgrx8888
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgrx8888
		end

	is_argb8888 : BOOLEAN
			-- the pixel format of `Current' is argb8888
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb8888
		end

	is_rgba8888 : BOOLEAN
			-- the pixel format of `Current' is rgba8888
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgba8888
		end

	is_abgr8888 : BOOLEAN
			-- the pixel format of `Current' is abgr8888
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_abgr8888
		end

	is_bgra8888 : BOOLEAN
			-- the pixel format of `Current' is bgra8888
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgra8888
		end

	is_argb2101010 : BOOLEAN
			-- the pixel format of `Current' is argb2101010
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb2101010
		end

	is_yv12 : BOOLEAN
			-- the pixel format of `Current' is yv12
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_yv12
		end

	is_iyuv : BOOLEAN
			-- the pixel format of `Current' is iyuv
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_iyuv
		end

	is_yuy2 : BOOLEAN
			-- the pixel format of `Current' is yuy2
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_yuy2
		end

	is_uyvy : BOOLEAN
			-- the pixel format of `Current' is uyvy
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_uyvy
		end

	is_yvyu : BOOLEAN
			-- the pixel format of `Current' is yvyu
		do
			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_yvyu
		end

	is_unsuported : BOOLEAN
			-- the pixel format of `Current' is not currently supported
		do
			Result:=not is_internal_index_supported (internal_index)
		end

--	is_nv12 : BOOLEAN
--			-- the pixel format of `Current' is nv12
--		do
--			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_nv12
--		end

--	is_nv21 : BOOLEAN
--			-- the pixel format of `Current' is nv21
--		do
--			Result:=internal_index={GAME_SDL_EXTERNAL}.Sdl_pixelformat_nv21
--		end

	is_equal(a_other: like Current):BOOLEAN
		 	-- <Precursor>
		 do
		 	Result:=internal_index=a_other.internal_index
		 end

	bits_per_pixel:INTEGER
			-- The number of significant bits in a pixel value
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_pixel_format_struct_bits_per_pixel(item).to_integer_32
		end

	masks:TUPLE[red_mask, green_mask,blue_mask, alpha_mask:NATURAL_32]
			-- Masks representing the location of the red, green, blue and alpha components of the pixel
		local
			l_structure:POINTER
			l_dummy:NATURAL_32
		do
			l_structure:=item
			if l_structure.is_default_pointer then
				l_dummy:=0
				Result:=[l_dummy,l_dummy,l_dummy,l_dummy]
			else
				Result:=[
						{GAME_SDL_EXTERNAL}.get_sdl_pixel_format_struct_rmask(l_structure),
						{GAME_SDL_EXTERNAL}.get_sdl_pixel_format_struct_gmask(l_structure),
						{GAME_SDL_EXTERNAL}.get_sdl_pixel_format_struct_bmask(l_structure),
						{GAME_SDL_EXTERNAL}.get_sdl_pixel_format_struct_amask(l_structure)
					]
			end
		end

	color_palette:detachable GAME_COLOR_PALETTE assign set_color_palette
			-- The palette of color used in the indexed pixel format
		require
			Is_Indexed: is_indexed
		local
			l_palette:POINTER
		do
			Result := Void
			if not internal_item.is_default_pointer then
				l_palette := {GAME_SDL_EXTERNAL}.get_sdl_pixel_format_struct_palette(item)
				create Result.make_shared(l_palette)
			end
		end

	set_color_palette(a_color_palette:detachable GAME_COLOR_PALETTE)
			-- Assign the `color_palette' with the value of `a_color_palette'
		require
			Is_Indexed: is_indexed
			Has_Valid_Color_number: attached a_color_palette implies
									a_color_palette.count = (1).bit_shift_left(bits_per_pixel)
		local
			l_error: INTEGER
		do
			if attached a_color_palette then
				l_error := {GAME_SDL_EXTERNAL}.SDL_SetPixelFormatPalette(item,
							a_color_palette.internal_pointer)
			else
				l_error := {GAME_SDL_EXTERNAL}.SDL_SetPixelFormatPalette(item,
							create {POINTER})
			end
			manage_error_code(l_error, "Cannot assign color palette.")
		ensure
			Is_Set: not has_error implies color_palette ~ a_color_palette
		end

feature {GAME_SDL_ANY} -- Implementation

	internal_index:NATURAL_32
			-- The internal C flags representing `Current'.

	item:POINTER
			-- A C structure pointer that is representing `Current'
		do
			if internal_item.is_default_pointer then
				clear_error
				internal_item:={GAME_SDL_EXTERNAL}.SDL_AllocFormat(internal_index)
				manage_error_pointer(internal_item, "An error occured while getting the structure of a Pixel Format.")
				must_free_structure:=True
			end
			Result:=internal_item
		end

feature {NONE} -- Implementation

	set_internal_index(a_internal_index:NATURAL_32)
			-- Assign the internal C `internal_index' representing `Current'.
		do
			if a_internal_index /= internal_index then
				internal_index:=a_internal_index
				dispose
			end
		ensure
			Pixel_Format_flags_Changed: internal_index = a_internal_index
		end

	dispose
			-- <Precursor>
		do
			if not internal_item.is_default_pointer then
				if must_free_structure then
					{GAME_SDL_EXTERNAL}.SDL_FreeFormat(internal_item)
				end
				internal_item:=create {POINTER}
			end
		end

	is_internal_index_supported(a_internal_index:NATURAL_32):BOOLEAN
			-- Is `a_internal_index' a valid pixel format C `internal_index'.
		do
			Result:=a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_unknown or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_index1lsb or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_index1msb or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_index4lsb or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_index4msb or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_index8 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb332 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb444 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb555 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr555 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb4444 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgba4444 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_abgr4444 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgra4444 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb1555 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgba5551 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_abgr1555 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgra5551 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb565 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr565 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb24 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr24 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb888 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgbx8888 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr888 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgrx8888 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb8888 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgba8888 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_abgr8888 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgra8888 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb2101010 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_yv12 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_iyuv or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_yuy2 or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_uyvy or
					a_internal_index = {GAME_SDL_EXTERNAL}.Sdl_pixelformat_yvyu
		end

	internal_item:POINTER
			-- The internal value of the lazy evaluated `item' attribute

	must_free_structure:BOOLEAN
			-- Is the responsability or `Current' to free `item'


end
