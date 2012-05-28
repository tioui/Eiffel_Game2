note
	description: "A indexed 8 bits images. Give you access to the color table."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SURFACE_8

inherit
	GAME_SURFACE
	rename
		make_from_surface as make_from_surface_base,
		make_from_pointer as make_from_pointer_base
	redefine
		get_pixel, put_pixel
	end

create
	make,
	make_from_surface,
	make_from_pointer

feature {NONE} -- Initialization

	make(the_width,the_height:INTEGER;video_memory:BOOLEAN)
			-- Initialization for `Current'.
		local
			temp_surface:GAME_SURFACE_RGB
		do
			make_from_surface(create {GAME_SURFACE_RGB}.make (the_width, the_height,8, video_memory))
		end

	make_from_surface(l_surface:GAME_SURFACE)
			-- Initialization for `Current'.
			-- Create a new surface from `l_surface' (the memory surface will ne be duplicated).
		require else
			Sdl_Surface_8_Make_From_Surface_Is_Not_Void: l_surface /= Void
			Sdl_Surface_8_Make_From_Surface_Is_8_Bits: l_surface.bits_per_pixel=8
		do
			make_from_pointer(l_surface.get_surface_pointer)
		end

	make_from_pointer(l_pointer:POINTER)
			-- Initialization for `Current'.
			-- Create a new surface from the SDL pointer `l_pointer' (the memory surface will ne be duplicated).
		require
			Make_From_Pointer_Pointer_Valid: l_pointer /= Void and then not l_pointer.is_default_pointer
		do
			make_from_pointer_base (l_pointer)
		ensure
			Make_From_Pointer_8_Is_8_Bits: bits_per_pixel=8
		end



feature -- Access

	palette_nb_color:NATURAL_8
		-- Return the number of colors in the palette.
	local
		format_pointer,palette_pointer:POINTER
	do
		format_pointer:={GAME_SDL_EXTERNAL}.get_surface_struct_format(get_surface_pointer)
		palette_pointer:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_palette(format_pointer)
		Result:={GAME_SDL_EXTERNAL}.get_palette_struct_ncolors(palette_pointer).to_natural_8
	end

	get_palette_color(index:NATURAL_8):GAME_COLOR
		-- Change a color of the palette.
		-- Index start at 1
		-- The modification of the resulting color change the color in the palette
	require
		Get_Palette_Color_Index_Valid: index <=palette_nb_color
	local
		col:GAME_SDL_COLOR
	do
		create col.make_from_pointer (get_palette_color_pointer(index.to_integer_32))
		Result:=col
	end

	get_Pixel_index(x,y:INTEGER):NATURAL_8
		-- Get the index of the pixel at `x', `y'.
	do
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(get_surface_pointer)/=0 then
			if {GAME_SDL_EXTERNAL}.SDL_LockSurface(get_surface_pointer)=-1 then
				check false end
			end
		end
		Result:={GAME_SDL_EXTERNAL}.getPixel(get_surface_pointer,x,y).to_natural_8
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(get_surface_pointer)/=0 then
			{GAME_SDL_EXTERNAL}.SDL_UnlockSurface(get_surface_pointer)
		end
	end

	put_pixel_index(x,y:INTEGER;index_color:NATURAL_8)
		-- Replace the index of the pixel at `x', `y' by the palette index `index_color'.
		-- Innefficient to put lots of pixel.
		-- ToDo: Create a put_pixels that put lots of pixel with only one lock.
	require
		Put_Pixel_Index_Index_Color_Valid: index_color <=palette_nb_color
	do
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(get_surface_pointer)/=0 then
			if {GAME_SDL_EXTERNAL}.SDL_LockSurface(get_surface_pointer)=-1 then
				check false end
			end
		end
		{GAME_SDL_EXTERNAL}.putpixel(get_surface_pointer,x,y,index_color.to_natural_32)
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(get_surface_pointer)/=0 then
			{GAME_SDL_EXTERNAL}.SDL_UnlockSurface(get_surface_pointer)
		end
	end

	get_Pixel(x,y:INTEGER):GAME_COLOR
			-- Get the color of the pixel at `x', `y'.
		do
			Result:=get_palette_color(get_Pixel_index(x,y))
		end

	put_pixel(x,y:INTEGER;color:GAME_COLOR)
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
				if get_palette_color(i).color_is_equal(color) then
					put_pixel_index(x,y,i)
				end
				i:=i+1
			end
		end


feature {NONE} -- Implementation

	get_palette_color_pointer(index:INTEGER):POINTER
	require
		Get_Palette_Color_Index_Valid: index>0 and index <=palette_nb_color
	local
		col:GAME_SDL_COLOR
		format_pointer,palette_pointer,color_pointer:POINTER
	do
		format_pointer:={GAME_SDL_EXTERNAL}.get_surface_struct_format(get_surface_pointer)
		palette_pointer:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_palette(format_pointer)
		color_pointer:={GAME_SDL_EXTERNAL}.get_palette_struct_color_from_index(palette_pointer,index-1)
		Result:=color_pointer
	end

end
