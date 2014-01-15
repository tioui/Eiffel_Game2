note
	description: "Summary description for {GAME_PIXEL_FORMAT_INFO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_PIXEL_FORMAT_INFO

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

create {GAME_SDL_ANY}
	make_with_flags

create
	make_from_other

feature {NONE} -- Initialisation

	make_with_flags(a_flags:NATURAL_32)
		do
			set_flags (a_flags)
		end

	make_from_other(a_other:GAME_PIXEL_FORMAT_INFO)
		do
			make_with_flags(a_other.flags)
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
				Result:=""
				check False end
			end
		end

	is_unknown : BOOLEAN
			-- the pixel format of `Current' is unknown
		do
			Result:=flags=Sdl_pixelformat_unknown
		end

	is_index1lsb : BOOLEAN
			-- the pixel format of `Current' is index1lsb
		do
			Result:=flags=Sdl_pixelformat_index1lsb
		end

	is_index1msb : BOOLEAN
			-- the pixel format of `Current' is index1msb
		do
			Result:=flags=Sdl_pixelformat_index1msb
		end

	is_index4lsb : BOOLEAN
			-- the pixel format of `Current' is index4lsb
		do
			Result:=flags=Sdl_pixelformat_index4lsb
		end

	is_index4msb : BOOLEAN
			-- the pixel format of `Current' is index4msb
		do
			Result:=flags=Sdl_pixelformat_index4msb
		end

	is_index8 : BOOLEAN
			-- the pixel format of `Current' is index8
		do
			Result:=flags=Sdl_pixelformat_index8
		end

	is_rgb332 : BOOLEAN
			-- the pixel format of `Current' is rgb332
		do
			Result:=flags=Sdl_pixelformat_rgb332
		end

	is_rgb444 : BOOLEAN
			-- the pixel format of `Current' is rgb444
		do
			Result:=flags=Sdl_pixelformat_rgb444
		end

	is_rgb555 : BOOLEAN
			-- the pixel format of `Current' is rgb555
		do
			Result:=flags=Sdl_pixelformat_rgb555
		end

	is_bgr555 : BOOLEAN
			-- the pixel format of `Current' is bgr555
		do
			Result:=flags=Sdl_pixelformat_bgr555
		end

	is_argb4444 : BOOLEAN
			-- the pixel format of `Current' is argb4444
		do
			Result:=flags=Sdl_pixelformat_argb4444
		end

	is_rgba4444 : BOOLEAN
			-- the pixel format of `Current' is rgba4444
		do
			Result:=flags=Sdl_pixelformat_rgba4444
		end

	is_abgr4444 : BOOLEAN
			-- the pixel format of `Current' is abgr4444
		do
			Result:=flags=Sdl_pixelformat_abgr4444
		end

	is_bgra4444 : BOOLEAN
			-- the pixel format of `Current' is bgra4444
		do
			Result:=flags=Sdl_pixelformat_bgra4444
		end

	is_argb1555 : BOOLEAN
			-- the pixel format of `Current' is argb1555
		do
			Result:=flags=Sdl_pixelformat_argb1555
		end

	is_rgba5551 : BOOLEAN
			-- the pixel format of `Current' is rgba5551
		do
			Result:=flags=Sdl_pixelformat_rgba5551
		end

	is_abgr1555 : BOOLEAN
			-- the pixel format of `Current' is abgr1555
		do
			Result:=flags=Sdl_pixelformat_abgr1555
		end

	is_bgra5551 : BOOLEAN
			-- the pixel format of `Current' is bgra5551
		do
			Result:=flags=Sdl_pixelformat_bgra5551
		end

	is_rgb565 : BOOLEAN
			-- the pixel format of `Current' is rgb565
		do
			Result:=flags=Sdl_pixelformat_rgb565
		end

	is_bgr565 : BOOLEAN
			-- the pixel format of `Current' is bgr565
		do
			Result:=flags=Sdl_pixelformat_bgr565
		end

	is_rgb24 : BOOLEAN
			-- the pixel format of `Current' is rgb24
		do
			Result:=flags=Sdl_pixelformat_rgb24
		end

	is_bgr24 : BOOLEAN
			-- the pixel format of `Current' is bgr24
		do
			Result:=flags=Sdl_pixelformat_bgr24
		end

	is_rgb888 : BOOLEAN
			-- the pixel format of `Current' is rgb888
		do
			Result:=flags=Sdl_pixelformat_rgb888
		end

	is_rgbx8888 : BOOLEAN
			-- the pixel format of `Current' is rgbx8888
		do
			Result:=flags=Sdl_pixelformat_rgbx8888
		end

	is_bgr888 : BOOLEAN
			-- the pixel format of `Current' is bgr888
		do
			Result:=flags=Sdl_pixelformat_bgr888
		end

	is_bgrx8888 : BOOLEAN
			-- the pixel format of `Current' is bgrx8888
		do
			Result:=flags=Sdl_pixelformat_bgrx8888
		end

	is_argb8888 : BOOLEAN
			-- the pixel format of `Current' is argb8888
		do
			Result:=flags=Sdl_pixelformat_argb8888
		end

	is_rgba8888 : BOOLEAN
			-- the pixel format of `Current' is rgba8888
		do
			Result:=flags=Sdl_pixelformat_rgba8888
		end

	is_abgr8888 : BOOLEAN
			-- the pixel format of `Current' is abgr8888
		do
			Result:=flags=Sdl_pixelformat_abgr8888
		end

	is_bgra8888 : BOOLEAN
			-- the pixel format of `Current' is bgra8888
		do
			Result:=flags=Sdl_pixelformat_bgra8888
		end

	is_argb2101010 : BOOLEAN
			-- the pixel format of `Current' is argb2101010
		do
			Result:=flags=Sdl_pixelformat_argb2101010
		end

	is_yv12 : BOOLEAN
			-- the pixel format of `Current' is yv12
		do
			Result:=flags=Sdl_pixelformat_yv12
		end

	is_iyuv : BOOLEAN
			-- the pixel format of `Current' is iyuv
		do
			Result:=flags=Sdl_pixelformat_iyuv
		end

	is_yuy2 : BOOLEAN
			-- the pixel format of `Current' is yuy2
		do
			Result:=flags=Sdl_pixelformat_yuy2
		end

	is_uyvy : BOOLEAN
			-- the pixel format of `Current' is uyvy
		do
			Result:=flags=Sdl_pixelformat_uyvy
		end

	is_yvyu : BOOLEAN
			-- the pixel format of `Current' is yvyu
		do
			Result:=flags=Sdl_pixelformat_yvyu
		end

	is_equal(a_other: like Current):BOOLEAN
		 	-- <Precursor>
		 do
		 	Result:=flags=a_other.flags
		 end

	bit_per_pixel:INTEGER
			-- The number of significant bits in a pixel value
		local
			l_structure:POINTER
		do
			l_structure:=structure
			if l_structure.is_default_pointer then
				Result:=0
			else
				Result:={GAME_SDL_EXTERNAL}.get_sdl_pixel_format_struct_bits_per_pixel(structure).to_integer_32
			end
		end

	masks:TUPLE[red_mask, green_mask,blue_mask, alpha_mask:NATURAL_32]
			-- Masks representing the location of the red, green, blue and alpha components of the pixel
		local
			l_structure:POINTER
			l_dummy:NATURAL_32
		do
			l_structure:=structure
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

feature {GAME_SDL_ANY} -- Implementation

	flags:NATURAL_32
			-- The internal C flags representing `Current'.

	structure:POINTER
		do
			if internal_structure.is_default_pointer then
				clear_error
				internal_structure:={GAME_SDL_EXTERNAL}.SDL_AllocFormat(flags)
				if internal_structure.is_default_pointer then
					io.error.put_string ("An error occured while getting the structure of a Pixel Format.%N")
					io.error.put_string (get_error.to_string_8+"%N")
					has_error:=True
				end
			end
			Result:=internal_structure
		end

feature {NONE} -- Implementation

	set_flags(a_flags:NATURAL_32)
			-- Assign the internal C `flags' representing `Current'.
		require
			Pixel_Formt_Set_Flags_Valid:is_flags_valid(a_flags)
		do
			flags:=a_flags
			free_structure
		ensure
			Pixel_Format_flags_Changed: flags = a_flags
		end

	free_structure
		do
			if not internal_structure.is_default_pointer then
				{GAME_SDL_EXTERNAL}.SDL_FreeFormat(internal_structure)
				internal_structure:=create {POINTER}
			end
		end

	is_flags_valid(a_flags:NATURAL_32):BOOLEAN
			-- Is `a_flags' a valid pixel format C `flags'.
		do
			Result:=a_flags = Sdl_pixelformat_unknown or
					a_flags = Sdl_pixelformat_index1lsb or
					a_flags = Sdl_pixelformat_index1msb or
					a_flags = Sdl_pixelformat_index4lsb or
					a_flags = Sdl_pixelformat_index4msb or
					a_flags = Sdl_pixelformat_index8 or
					a_flags = Sdl_pixelformat_rgb332 or
					a_flags = Sdl_pixelformat_rgb444 or
					a_flags = Sdl_pixelformat_rgb555 or
					a_flags = Sdl_pixelformat_bgr555 or
					a_flags = Sdl_pixelformat_argb4444 or
					a_flags = Sdl_pixelformat_rgba4444 or
					a_flags = Sdl_pixelformat_abgr4444 or
					a_flags = Sdl_pixelformat_bgra4444 or
					a_flags = Sdl_pixelformat_argb1555 or
					a_flags = Sdl_pixelformat_rgba5551 or
					a_flags = Sdl_pixelformat_abgr1555 or
					a_flags = Sdl_pixelformat_bgra5551 or
					a_flags = Sdl_pixelformat_rgb565 or
					a_flags = Sdl_pixelformat_bgr565 or
					a_flags = Sdl_pixelformat_rgb24 or
					a_flags = Sdl_pixelformat_bgr24 or
					a_flags = Sdl_pixelformat_rgb888 or
					a_flags = Sdl_pixelformat_rgbx8888 or
					a_flags = Sdl_pixelformat_bgr888 or
					a_flags = Sdl_pixelformat_bgrx8888 or
					a_flags = Sdl_pixelformat_argb8888 or
					a_flags = Sdl_pixelformat_rgba8888 or
					a_flags = Sdl_pixelformat_abgr8888 or
					a_flags = Sdl_pixelformat_bgra8888 or
					a_flags = Sdl_pixelformat_argb2101010 or
					a_flags = Sdl_pixelformat_yv12 or
					a_flags = Sdl_pixelformat_iyuv or
					a_flags = Sdl_pixelformat_yuy2 or
					a_flags = Sdl_pixelformat_uyvy or
					a_flags = Sdl_pixelformat_yvyu
		end

	dispose
		do
			free_structure
		end

	internal_structure:POINTER


end
