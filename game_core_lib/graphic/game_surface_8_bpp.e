note
	description: "A indexed 8 bits images. Give you access to the color table."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_SURFACE_8_BPP

inherit
	GAME_SURFACE
	rename
		make as make_base,
		make_video_memory as make_video_memory_base,
		make_from_surface as make_from_surface_base,
		make_from_pointer as make_from_pointer_base
	redefine
		pixel_color, put_pixel_color
	end

create
	make,
	make_video_memory,
	make_from_surface,
	make_from_pointer

feature {NONE} -- Initialization

	make(a_width,a_height:INTEGER)
			-- Initialization for `Current'.
		do
			make_with_bit_per_pixel (a_width, a_height,8, False)
		end

	make_video_memory(a_width,a_height:INTEGER)
			-- Initialization for `Current' on video memory.
		do
			make_with_bit_per_pixel (a_width, a_height,8, True)
		end
	make_from_surface(a_surface:GAME_SURFACE)
			-- Initialization for `Current'.
			-- Create a new surface from `a_surface' (the memory surface will ne be duplicated).
		require else
			Sdl_Surface_8_Make_From_Surface_Is_Not_Void: a_surface /= Void
			Sdl_Surface_8_Make_From_Surface_Is_8_Bits: a_surface.bits_per_pixel=8
		do
			make_from_pointer(a_surface.internal_pointer)
		end

	make_from_pointer(a_pointer:POINTER)
			-- Initialization for `Current'.
			-- Create a new surface from the SDL pointer `a_pointer' (the memory surface will ne be duplicated).
		require
			Make_From_Pointer_Pointer_Valid: a_pointer /= Void and then not a_pointer.is_default_pointer
		do
			make_from_pointer_base (a_pointer)
		ensure
			Make_From_Pointer_8_Is_8_Bits: bits_per_pixel=8
		end



feature -- Access

	palette_nb_color:NATURAL_8
		-- Return the number of colors in the palette.
	local
		l_palette_pointer:POINTER
	do
		l_palette_pointer:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_palette(format_pointer)
		Result:={GAME_SDL_EXTERNAL}.get_palette_struct_ncolors(l_palette_pointer).to_natural_8
	end

	get_palette_color(a_index:NATURAL_8):GAME_COLOR
		-- Change a color of the palette.
		-- `a_index' start at 1
		-- The modification of the resulting color change the color in the palette
	require
		Get_Palette_Color_Index_Valid: a_index <=palette_nb_color
	do
		create {GAME_SDL_COLOR} Result.make_from_pointer (get_palette_color_pointer(a_index.to_integer_32))
	end

	get_Pixel_index(a_x,a_y:INTEGER):NATURAL_8
		-- Get the index of the pixel at `a_x', `a_y'.
	do
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(internal_pointer)/=0 then
			if {GAME_SDL_EXTERNAL}.SDL_LockSurface(internal_pointer)=-1 then
				check false end
			end
		end
		Result:={GAME_SDL_EXTERNAL}.getPixel(internal_pointer,a_x,a_y).to_natural_8
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(internal_pointer)/=0 then
			{GAME_SDL_EXTERNAL}.SDL_UnlockSurface(internal_pointer)
		end
	end

	put_pixel_index(a_x,a_y:INTEGER;a_index_color:NATURAL_8)
		-- Replace the index of the pixel at `a_x', `a_y' by the palette index `a_index_color'.
		-- Innefficient to put lots of pixel.
		-- ToDo: Create a put_pixels that put lots of pixel with only one lock.
	require
		Put_Pixel_Index_Index_Color_Valid: a_index_color <=palette_nb_color
	do
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(internal_pointer)/=0 then
			if {GAME_SDL_EXTERNAL}.SDL_LockSurface(internal_pointer)=-1 then
				check false end
			end
		end
		{GAME_SDL_EXTERNAL}.putpixel(internal_pointer,a_x,a_y,a_index_color.to_natural_32)
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(internal_pointer)/=0 then
			{GAME_SDL_EXTERNAL}.SDL_UnlockSurface(internal_pointer)
		end
	end

	pixel_color(a_x,a_y:INTEGER):GAME_COLOR
			-- Get the color of the pixel at `a_x', `a_y'.
		do
			Result:=get_palette_color(get_Pixel_index(a_x,a_y))
		end

	put_pixel_color(a_x,a_y:INTEGER;a_color:GAME_COLOR)
			-- The color must be in the palette.
			-- Innefficient to put lots of pixel
			-- ToDo: Create a put_pixels that put lots of pixel with only one lock
		local
			i:NATURAL_8
		do
			from
				i:=1
			until
				i>palette_nb_color
			loop
				if get_palette_color(i).color_is_equal(a_color) then
					put_pixel_index(a_x,a_y,i)
				end
				i:=i+1
			end
		end


feature {NONE} -- Implementation

	get_palette_color_pointer(a_index:INTEGER):POINTER
	require
		Get_Palette_Color_Index_Valid: a_index>0 and a_index <=palette_nb_color
	local
		l_col:GAME_SDL_COLOR
		l_palette_pointer,l_color_pointer:POINTER
	do
		l_palette_pointer:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_palette(format_pointer)
		l_color_pointer:={GAME_SDL_EXTERNAL}.get_palette_struct_color_from_index(l_palette_pointer,a_index-1)
		Result:=l_color_pointer
	end

end
