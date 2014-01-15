note
	description: "Representation of an image that can be paste on other image."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_SURFACE

inherit
	GAME_LIBRARY_SHARED
	GAME_SDL_CONSTANTS

create
	make_from_image_source,
	make_from_other,
	make_for_window,
	make_for_display,
	make_for_display_mode,
	make_for_pixel_format,
	make_with_masks

feature {NONE} -- Initialisation

	make_from_image_source(a_image_source:GAME_IMAGE_SOURCE)
			-- Create a `Current' from `a_image_source'.
		require
			Surface_Make_From_Image_Source_Is_Open: a_image_source.is_open
			Surface_Make_Video_Enabled: game_library.is_video_enable
		do
			image_source:=a_image_source
			is_open:=not has_error
		ensure
			Surface_Make_Is_Open:is_open
		end

	make_from_other(a_other:GAME_SURFACE)
			-- Create a `Current' from `a_other'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		do
			make_from_image_source(a_other.image_source)
		ensure
			Surface_Make_Is_Open:is_open
		end

	make_for_window(a_window:GAME_WINDOW; a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height' conforming to `a_window'.
		do
			make_for_pixel_format(a_window.pixel_format,a_width,a_height)
		ensure
			Surface_Make_Is_Open:is_open
		end

	make_for_display(a_display:GAME_DISPLAY; a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height' conforming to `a_display'.
		do
			make_for_display_mode(a_display.current_mode,a_width,a_height)
		ensure
			Surface_Make_Is_Open:is_open
		end

	make_for_display_mode(a_display_mode:GAME_DISPLAY_MODE; a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height' conforming to `a_display_mode'.
		do
			make_for_pixel_format(a_display_mode.pixel_format,a_width,a_height)
		ensure
			Surface_Make_Is_Open:is_open
		end

	make_for_pixel_format(a_pixel_format:GAME_PIXEL_FORMAT_INFO;a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height' conforming to `a_pixel_format'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		local
			l_bpp:INTEGER
			l_masks:TUPLE[red_mask, green_mask,blue_mask, alpha_mask:NATURAL_32]
			l_success:BOOLEAN
		do
			l_bpp:=a_pixel_format.bit_per_pixel
			if a_pixel_format.has_error then
				io.error.put_string ("An error occured while creating the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
				create image_source.own_from_pointer (create {POINTER})
			else
				l_masks:=a_pixel_format.masks
				if a_pixel_format.has_error then
					io.error.put_string ("An error occured while creating the surface.%N")
					io.error.put_string (get_error.to_string_8+"%N")
					has_error:=True
					create image_source.own_from_pointer (create {POINTER})
				else
					make_with_masks(a_width, a_height, l_bpp, l_masks.red_mask, l_masks.green_mask, l_masks.blue_mask, l_masks.alpha_mask)
				end
			end
		ensure
			Surface_Make_Is_Open:is_open
		end

	make_with_masks(a_width,a_height,a_bits_per_pixel:INTEGER;a_Rmask,a_Gmask,a_Bmask,a_Amask:NATURAL_32)
			-- Initialization for `Current'.
			-- Create a new empty surface with RGBA mask and flags.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		local
			l_surface_pointer:POINTER
			l_image_source:GAME_IMAGE_SOURCE
		do
			clear_error
			l_surface_pointer:={GAME_SDL_EXTERNAL}.SDL_CreateRGBSurface(0,a_width,a_height,a_bits_per_pixel,a_Rmask,a_Gmask,a_Bmask,a_Amask)
			if l_surface_pointer.is_default_pointer then
				io.error.put_string ("An error occured while creating the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
				create image_source.own_from_pointer (create {POINTER})
			else
				create l_image_source.own_from_pointer (l_surface_pointer)
				if l_image_source.is_openable then
					l_image_source.open
					make_from_image_source(l_image_source)
				else
					io.error.put_string ("An error occured while creating the surface.%N")
					has_error:=True
					create image_source.own_from_pointer (create {POINTER})
				end

			end
		end

feature {GAME_SURFACE} -- Implementation

	image_source:GAME_IMAGE_SOURCE

feature -- Access

	is_open:BOOLEAN

	convert_to_pixel_format(a_pixel_format:GAME_PIXEL_FORMAT_INFO):GAME_SURFACE
			-- Create a copy of `Current' conforming to `a_pixel_format'.
		require
			Surface_Convert_Is_Open: is_open
		local
			l_source:GAME_IMAGE_SOURCE
		do
			create l_source.own_from_pointer ({GAME_SDL_EXTERNAL}.SDL_ConvertSurfaceFormat(image_source.internal_pointer, a_pixel_format.flags, 0))
			if l_source.is_openable then
				l_source.open
			end
			create Result.make_from_image_source (l_source)
		end

	pixel_format:GAME_PIXEL_FORMAT_INFO
			-- The internal format of the pixel representation in memory.
		require
			Surface_Pixel_Format_Is_Open: is_open
		local
			l_format_struct:POINTER
		do
			l_format_struct:={GAME_SDL_EXTERNAL}.get_sdl_surface_struct_format(image_source.internal_pointer)
			create Result.make_with_flags ({GAME_SDL_EXTERNAL}.get_sdl_pixel_format_struct_format(l_format_struct))
		end

	draw_surface(a_other:GAME_SURFACE;a_x,a_y:INTEGER)
			-- Draw the whole surface `a_other' on the present surface at (`a_x',`a_y').
		require
			Surface_Draw_Is_Open: is_open
		do
			draw_sub_surface(a_other,0,0,a_x,a_y,a_other.width,a_other.height)
		end

	draw_sub_surface(a_other:GAME_SURFACE;a_x_source,a_y_source,a_x_destination,a_y_destination,a_width,a_height:INTEGER)
			-- Draw on the present surface at (`a_x_destination',`a_y_destination') the sub surface of `a_other'
			-- starting at (`a_x_source',`a_y_source') with dimension `a_width' x `a_height'.
		require
			Surface_Draw_Is_Open: is_open
		local
			l_rect_src, l_rect_dst:POINTER
			l_error:INTEGER
		do
			l_rect_src:=l_rect_src.memory_calloc (1, Size_of_sdl_rect_structure)
			l_rect_dst:=l_rect_dst.memory_calloc (1, Size_of_sdl_rect_structure)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_src,a_x_source)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_src,a_y_source)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_src,a_width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_src,a_height)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_dst,a_x_destination)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_dst,a_y_destination)
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_BlitSurface(a_other.image_source.internal_pointer ,l_rect_src, image_source.internal_pointer, l_rect_dst)
			if l_error<0 then
				io.error.put_string ("An error occured while drawing to the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
			l_rect_dst.memory_free
			l_rect_src.memory_free
		end

	fill_rect(a_color:GAME_COLOR;a_x,a_y,a_width,a_height:INTEGER)
			-- Draw a `a_color' rectangle of dimension `a_width' x `a_height' on `Current' at (`a_x',`a_y').
		require
			Surface_Draw_Is_Open: is_open
		local
			l_rect_src, l_format:POINTER
			l_error:INTEGER
			l_color_key:NATURAL_32
		do
			clear_error
			l_rect_src:=l_rect_src.memory_calloc (1, Size_of_sdl_rect_structure)
			if a_width<0 then
				{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_src,a_x+a_width)
			else
				{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_src,a_x)
			end
			if a_height<0 then
				{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_src,a_y+a_height)
			else
				{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_src,a_y)
			end
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_src,a_width.abs)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_src,a_height.abs)
			l_format:=pixel_format.structure
			if pixel_format.has_error then
				has_error:=True
			else
				l_color_key:={GAME_SDL_EXTERNAL}.SDL_MapRGBA(l_format,a_color.red,a_color.green,a_color.blue,a_color.alpha)
				l_error:={GAME_SDL_EXTERNAL}.SDL_FillRect(image_source.internal_pointer,l_rect_src,l_color_key)
				if l_error<0 then
					io.error.put_string ("An error occured while drawing rectangle to the surface.%N")
					io.error.put_string (get_error.to_string_8+"%N")
					has_error:=True
				end
			end
			l_rect_src.memory_free
		end

	height:INTEGER
			-- The `height' of `Current'.
		require
			Surface_Is_Open: is_open
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_surface_struct_h(image_source.internal_pointer)
		end

	width:INTEGER
			-- The `width' of `Current'.
		require
			Surface_Is_Open: is_open
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_surface_struct_h(image_source.internal_pointer)
		end


feature {NONE} -- Implementation


--	draw_surface(a_other:GAME_SURFACE;a_x,a_y:INTEGER)
--			-- Draw the whole surface `a_other' on the present surface at (`a_x',`a_y').
--		require
--			Draw_Surface_src_not_void: a_other /= Void
--		do
--			draw_sub_surface(a_other,0,0,a_x,a_y,a_other.width,a_other.height)
--		end

--	draw_sub_surface(a_other:GAME_SURFACE;a_x_source,a_y_source,a_x_destination,a_y_destination,a_width,a_height:INTEGER)
--			-- Draw on the present surface at (`a_x_destination',`a_y_destination') the sub surface of `a_other'
--			-- starting at (a_x_source,a_y_source) with dimension a_width x a_height.
--		require
--			Draw_Sub_Surface_src_not_void: a_other /= Void
--			Draw_Sub_Surface_Width_Valid: a_width /=Void and then a_width>0 and then a_width<=a_other.width
--			Draw_Sub_Surface_Height_Valid: a_height /=Void and then a_height>0 and then a_height<=a_other.height
--		local
--			l_rect_src,l_rect_dst:POINTER
--			l_error:INTEGER
--		do
--			l_rect_src:={GAME_SDL_EXTERNAL}.c_rect_struct_allocate
--			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_src,(a_x_source+a_other.start_x).to_integer_16)
--			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_src,(a_y_source+a_other.start_y).to_integer_16)
--			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_src,a_width.to_natural_16)
--			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_src,a_height.to_natural_16)

--			l_rect_dst:={GAME_SDL_EXTERNAL}.c_rect_struct_allocate
--			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_dst,(a_x_destination+start_x).to_integer_16)
--			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_dst,(a_y_destination+start_y).to_integer_16)

--			l_error:={GAME_SDL_EXTERNAL}.SDL_BlitSurface(a_other.internal_pointer ,l_rect_src, internal_pointer, l_rect_dst)
--			check l_error = 0 end
--			{GAME_SDL_EXTERNAL}.c_rect_struct_free(l_rect_src)
--			{GAME_SDL_EXTERNAL}.c_rect_struct_free(l_rect_dst)
--		end

--	sub_surface(a_start_x, a_start_y, a_width, a_height:INTEGER):GAME_SURFACE
--			-- A new surface representing a part of the present surface (memory surface not duplicated).
--		require
--			Get_Sub_Surface_From_X_Valid: a_start_x < width
--			Get_Sub_Surface_From_Y_Valid: a_start_y < height
--			Get_Sub_Surface_From_Width_Valid: a_width <= width-a_start_x
--			Get_Sub_Surface_From_Height_Valid: a_height <= height-a_start_y
--		do
--			Result := create {GAME_SUB_SURFACE}.make_from_surface (Current, a_start_x, a_start_y, a_width, a_height)
--			Result.is_alpha_accelerated:=is_alpha_accelerated
--			Result.is_transparent_accelerated:=is_transparent_accelerated
--			if is_alpha_enable then
--				Result.enable_alpha
--			end
--			if is_transparent_enable then
--				Result.set_color_key (transparent_color_key)
--			end
--		end

--	surface_rotated_90_degree(a_nb_clockwise:INTEGER):GAME_SURFACE
--			-- Create a new surface from the current surface after doing a 90*`nb_clockwise' rotation (a new memory surface will be created).
--			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
--		do
--			create Result.make_from_pointer(internal_pointer_rotated_90_degree(a_nb_clockwise))
--			Result.is_alpha_accelerated:=is_alpha_accelerated
--			Result.is_transparent_accelerated:=is_transparent_accelerated
--			if is_alpha_enable then
--				Result.enable_alpha
--			end
--			if is_transparent_enable then
--				Result.set_color_key (transparent_color_key)
--			end
--		end

--	rotate_90_degree(a_nb_clockwise:INTEGER)
--			-- Modify the current surface by doing a 90*`nb_clockwise' rotation (a new memory surface will be created)
--			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
--		do
--			set_surface_pointer(internal_pointer_rotated_90_degree(a_nb_clockwise))
--			set_height ({GAME_SDL_EXTERNAL}.get_surface_struct_h(internal_pointer))
--			set_width ({GAME_SDL_EXTERNAL}.get_surface_struct_w(internal_pointer))
--			if is_alpha_enable then
--				enable_alpha
--			else
--				disable_alpha
--			end
--			if is_transparent_enable then
--				set_color_key (transparent_color_key)
--			end
--		end


----	get_new_surface_rotate_and_zoom(angle_clockwise,zoom_x,zoom_y:REAL_64;smooth:BOOLEAN):GAME_SURFACE
----			-- Create a new surface from the current surface after doing a `angle_clockwise' degree rotation
----			-- and doing a zoom (a new memory surface will be created).
----			-- The surface has to be 8 bits per pixel or 32 bits per pixel.
----		do
----			create Result.make_from_pointer (get_new_surface_pointer_rotate_and_zoom(angle_clockwise,zoom_x,zoom_y,smooth))
----			Result.is_alpha_accelerated:=is_alpha_accelerated
----			Result.is_transparent_accelerated:=is_transparent_accelerated
----			if is_alpha_enable then
----				Result.enable_alpha
----			end
----			if is_transparent_enable then
----				Result.set_color_key (trans_color_key)
----			end
----		end

----	rotate_and_zoom_surface(angle_clockwise,zoom_x,zoom_y:REAL_64;smooth:BOOLEAN)
----			-- Modify the current surface by doing a `angle_clockwise' degree rotation
----			-- and doing a zoom (a new memory surface will be created).
----			-- The surface has to be 8 bits per pixel or 32 bits per pixel.
----		do
----			set_surface_pointer(get_new_surface_pointer_rotate_and_zoom(angle_clockwise,zoom_x,zoom_y,smooth))
----			if is_alpha_enable then
----				enable_alpha
----			else
----				disable_alpha
----			end
----			if is_transparent_enable then
----				set_color_key (trans_color_key)
----			end
----			set_height ({GAME_SDL_EXTERNAL}.get_surface_struct_h(get_surface_pointer))
----			set_width ({GAME_SDL_EXTERNAL}.get_surface_struct_w(get_surface_pointer))
----		end

--	surface_mirrored(a_mirror_x,a_mirror_y:BOOLEAN):GAME_SURFACE
--			-- Create a new surface from the current surface after doing a mirror (a new memory surface will be created).
--			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
--		do
--			create Result.make_from_pointer(internal_pointer_mirrored(a_mirror_x,a_mirror_y))
--			Result.is_alpha_accelerated:=is_alpha_accelerated
--			Result.is_transparent_accelerated:=is_transparent_accelerated
--			if is_alpha_enable then
--				Result.enable_alpha
--			end
--			if is_transparent_enable then
--				Result.set_color_key (transparent_color_key)
--			end
--		end

--	mirror(a_mirror_x,a_mirror_y:BOOLEAN)
--			-- Modify the present surface by doing a mirror (a new memory surface will be created).
--			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
--		do
--			set_surface_pointer(internal_pointer_mirrored(a_mirror_x,a_mirror_y))
--			if is_alpha_enable then
--				enable_alpha
--			else
--				disable_alpha
--			end
--			if is_transparent_enable then
--				set_color_key (transparent_color_key)
--			end


--		end

--	pixel_color(a_x,a_y:INTEGER):GAME_COLOR
--		-- Get the color of the pixel at `x', `y'.
--	require
--		Get_Pixel_X_Valid: a_x>=0 and a_x<width
--		Get_Pixel_Y_Valid: a_y>=0 and a_y<width
--	local
--		l_color_index:NATURAL_32
--		l_red,l_green,l_blue,l_alpha:NATURAL_8
--	do
--		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(internal_pointer)/=0 then
--			if {GAME_SDL_EXTERNAL}.SDL_LockSurface(internal_pointer)=-1 then
--				check false end
--			end
--		end
--		l_color_index:={GAME_SDL_EXTERNAL}.getPixel(internal_pointer,a_x,a_y)
--		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(internal_pointer)/=0 then
--			{GAME_SDL_EXTERNAL}.SDL_UnlockSurface(internal_pointer)
--		end
--		{GAME_SDL_EXTERNAL}.SDL_GetRGBA(l_color_index,format_pointer,$l_red,$l_green,$l_blue,$l_alpha)
--		create Result.make (l_red, l_green, l_blue,l_alpha)
--	end


--	put_pixel_color(a_x,a_y:INTEGER;a_color:GAME_COLOR)
--		-- Innefficient to put lots of pixel
--		-- ToDo: Create a put_pixels that put lots of pixel with only one lock
--	require
--		Put_Pixel_X_Valid: a_x>=0 and a_x<width
--		Put_Pixel_Y_Valid: a_y>=0 and a_y<width
--	local
--		l_color_index:NATURAL_32
--	do
--		l_color_index:={GAME_SDL_EXTERNAL}.SDL_MapRGBA(format_pointer,a_color.red,a_color.green,a_color.blue,a_color.alpha)
--		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(internal_pointer)/=0 then
--			if {GAME_SDL_EXTERNAL}.SDL_LockSurface(internal_pointer)=-1 then
--				check false end
--			end
--		end
--		{GAME_SDL_EXTERNAL}.putpixel(internal_pointer,a_x,a_y,l_color_index)
--		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(internal_pointer)/=0 then
--			{GAME_SDL_EXTERNAL}.SDL_UnlockSurface(internal_pointer)
--		end
--	end

--	enable_alpha
--		-- Enable the alpha blending for the surface.
--		-- It is not necessary to call this if you use set_overall_alpha_value
--	local
--		l_error:INTEGER
--		l_flags:NATURAL_32
--	do
--		l_flags:={GAME_SDL_EXTERNAL}.SDL_SRCALPHA
--		if is_alpha_accelerated then
--			l_flags:=l_flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RLEACCEL)
--		end
--		l_error:={GAME_SDL_EXTERNAL}.SDL_SetAlpha(internal_pointer,l_flags,overall_alpha_value)
--		check l_error=0 end
--		is_alpha_enable:=true
--	end

--	is_alpha_enable:BOOLEAN

--	is_alpha_accelerated:BOOLEAN assign set_is_alpha_accelerated

--	is_transparent_accelerated:BOOLEAN assign set_is_transparent_accelerated

--	disable_alpha
--			-- Disable the alpha blending for the surface.
--		local
--			l_error:INTEGER
--		do
--			l_error:={GAME_SDL_EXTERNAL}.SDL_SetAlpha(internal_pointer,0,overall_alpha_value)
--			check l_error=0 end
--			is_alpha_enable:=false
--		end

--	overall_alpha_value:NATURAL_8
--			-- Return the value of the overall alpha blending value.
--		local
--			l_format:POINTER
--		do
--			l_format:=format_pointer
--			Result:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_alpha(l_format)
--		end

--	set_overall_alpha_value(a_alpha:NATURAL_8)
--			-- Set the value of the overall alpha blending.
--		local
--			l_error:INTEGER
--			l_flags:NATURAL_32
--		do
--			l_flags:={GAME_SDL_EXTERNAL}.SDL_SRCALPHA
--			if is_alpha_accelerated then
--				l_flags:=l_flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RLEACCEL)
--			end
--			l_error:={GAME_SDL_EXTERNAL}.SDL_SetAlpha(internal_pointer,l_flags,a_alpha)
--			check l_error=0 end
--		end

--	fill_rect(a_color:GAME_COLOR;a_x,a_y,a_width,a_height:INTEGER)
--			-- Draw a rectangle of the color `color' on the surface.
--		require
--			Fill_Rect_Color_Not_Void: a_color /=Void
--			Fill_Rect_X_Valid:
--					(a_width<0 and then (a_x+a_width)+start_x >= (create {INTEGER_16}).Min_value and then (a_x+a_width)+start_x <= (create {INTEGER_16}).Max_value) or else
--					(a_width>=0 and then a_x+start_x >= (create {INTEGER_16}).Min_value and then a_x+start_x <= (create {INTEGER_16}).Max_value)
--			Fill_Rect_Y_Valid:
--					(a_height<0 and then (a_y+a_height)+start_y >= (create {INTEGER_16}).Min_value and then ((a_y+a_height)+start_y) <= (create {INTEGER_16}).Max_value) or else
--					(a_height>=0 and then a_y+start_y >= (create {INTEGER_16}).Min_value and then (a_y+start_y) <= (create {INTEGER_16}).Max_value)
--			Fill_Rect_W_Valid: a_width.abs <= (create {NATURAL_16}).Max_value
--			Fill_Rect_H_Valid: a_height.abs <= (create {NATURAL_16}).Max_value
--		local
--			rect_src:POINTER
--			error:INTEGER
--			color_key:NATURAL_32
--		do
--			rect_src:={GAME_SDL_EXTERNAL}.c_rect_struct_allocate
--			if a_width<0 then
--				{GAME_SDL_EXTERNAL}.set_rect_struct_x(rect_src,((a_x+a_width)+start_x).to_integer_16)
--			else
--				{GAME_SDL_EXTERNAL}.set_rect_struct_x(rect_src,(a_x+start_x).to_integer_16)
--			end
--			if a_height<0 then
--				{GAME_SDL_EXTERNAL}.set_rect_struct_y(rect_src,((a_y+a_height)+start_y).to_integer_16)
--			else
--				{GAME_SDL_EXTERNAL}.set_rect_struct_y(rect_src,(a_y+start_y).to_integer_16)
--			end
--			{GAME_SDL_EXTERNAL}.set_rect_struct_w(rect_src,a_width.abs.to_natural_16)
--			{GAME_SDL_EXTERNAL}.set_rect_struct_h(rect_src,a_height.abs.to_natural_16)
--			color_key:={GAME_SDL_EXTERNAL}.SDL_MapRGBA(format_pointer,a_color.red,a_color.green,a_color.blue,a_color.alpha)
--			error:={GAME_SDL_EXTERNAL}.SDL_FillRect(internal_pointer,rect_src,color_key)
--			check error=0 end
--		end

--	transparent_color:GAME_COLOR assign set_transparent_color
--			-- The color that will be remove in the surface (the transparent color).
--		local
--			l_red,l_green,l_blue,l_alpha:NATURAL_8
--		do
--			{GAME_SDL_EXTERNAL}.SDL_GetRGBA(transparent_color_key,format_pointer,$l_red,$l_green,$l_blue,$l_alpha)
--			create Result.make (l_red, l_green, l_blue,l_alpha)
--		end

--	set_transparent_color(a_color:GAME_COLOR)
--			-- Change all pixel of color `color' into transparency (and enable it). The transparency by color don't work if the surface
--			-- have an alpha blending activated.
--		local
--			l_key:NATURAL_32
--		do
--			optimise_surface
--			l_key:={GAME_SDL_EXTERNAL}.SDL_MapRGB(format_pointer,a_color.red, a_color.green, a_color.blue)
--			set_color_key(l_key)
--		end

--	is_transparent_enable:BOOLEAN  -- Is transparency by color key is enabled.

--	disable_transparent
--			-- Remove the transparency by color key.
--		local
--			l_error:INTEGER
--		do
--			l_error:={GAME_SDL_EXTERNAL}.SDL_SetColorKey(internal_pointer,0,0)
--			check l_error=0 end
--			is_transparent_enable:=false
--		end

--	start_x:INTEGER
--	start_y:INTEGER



--feature{GAME_SURFACE,GAME_SDL_CONTROLLER} -- Implementation

--	set_color_key(a_key:NATURAL_32)
--		local
--			l_error:INTEGER
--			l_flags:NATURAL_32
--		do
--			transparent_color_key:=a_key
--			l_flags:={GAME_SDL_EXTERNAL}.SDL_SRCCOLORKEY
--			if is_transparent_accelerated then
--				l_flags:=l_flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RLEACCEL)
--			end
--			disable_alpha
--			l_error:={GAME_SDL_EXTERNAL}.SDL_SetColorKey(internal_pointer,l_flags,transparent_color_key)
--			check l_error=0 end
--			is_transparent_enable:=true
--		end

--	format_pointer:POINTER
--			-- Get the SDL format structure pointer.
--		do
--			Result:={GAME_SDL_EXTERNAL}.get_surface_struct_format(internal_pointer)
--		end

--	internal_pointer:POINTER
--			-- Get the SDL suface memory pointer.
--		require
--			Get_Surface_Pointer_Surface_Imp_Exist:surface_imp /= Void
--		do
--			Result:=surface_imp.surface_pointer
--		end

--	set_surface_pointer(a_internal_surface:POINTER)
--		require
--			Set_Surface_Pointer_Pointer_Not_Void: a_internal_surface /= Void
--			Set_Surface_Pointer_Pointer_Not_NULL: a_internal_surface.to_integer_32 /= 0
--		do
--			create surface_imp.make (a_internal_surface)
--		end

--	set_is_alpha_accelerated(a_val:BOOLEAN)
--	do
--		is_alpha_accelerated:=a_val
--	end

--	set_is_transparent_accelerated(a_val:BOOLEAN)
--	do
--		is_transparent_accelerated:=a_val
--	end

--	transparent_color_key:NATURAL_32


--feature {NONE} -- Implemenation routine

--		surface_copy_8_16_32:GAME_SURFACE
--			-- A copy of the current surface
--		local
--			l_temp_surface:GAME_SURFACE
--			l_bbp:INTEGER
--			l_format:POINTER
--			l_is_temp_surface:BOOLEAN
--		do
--			if bits_per_pixel=8 or bits_per_pixel=16 or bits_per_pixel=32 then
--				l_bbp:=bits_per_pixel
--			else
--				l_bbp:=(create {GAME_SCREEN}.make_from_current_video_surface).bits_per_pixel
--				if bits_per_pixel=8 or bits_per_pixel=16 or bits_per_pixel=32 then
--					l_bbp:=32
--				end
--			end

--			if start_x = 0 and start_y = 0 and width={GAME_SDL_EXTERNAL}.get_surface_struct_w(internal_pointer) and height={GAME_SDL_EXTERNAL}.get_surface_struct_w(internal_pointer) then
--				Result:=Current
--			else
--				l_is_temp_surface:=true
--				l_format:=format_pointer
--				if l_bbp=bits_per_pixel then
--					create Result.make_with_flags_and_masks ({GAME_SDL_EXTERNAL}.get_surface_struct_flags(internal_pointer),width, height,l_bbp,
--											{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Rmask(l_format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Gmask(l_format),
--											{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Bmask(l_format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Amask(l_format))
--				else
--					create Result.make_with_flags_and_masks ({GAME_SDL_EXTERNAL}.get_surface_struct_flags(internal_pointer),width, height,l_bbp,
--											0,0,0,0)
--				end

--				if bits_per_pixel=8 then
--					{GAME_SDL_EXTERNAL}.copyPalette(internal_pointer,Result.internal_pointer)
--				end
--				Result.is_transparent_accelerated:=is_transparent_accelerated
--				Result.is_alpha_accelerated:=is_alpha_accelerated
--				if is_transparent_enable then
--					Result.set_color_key (transparent_color_key)
--				end
--				if is_alpha_enable then

--					disable_alpha
--					Result.draw_surface (Current, 0, 0)
--					enable_alpha
--					Result.enable_alpha
--				else
--					Result.draw_surface (Current, 0, 0)
--				end


--			end
--		end


--	internal_pointer_mirrored(a_mirror_x,a_mirror_y:BOOLEAN):POINTER
--			-- Create a new surface from the current surface after doing a mirror (a new memory surface will be created).
--			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
--		local
--			l_temp_surface:GAME_SURFACE
--		do
--			l_temp_surface:=surface_copy_8_16_32
--			if a_mirror_x and then a_mirror_y then
--				Result:={GAME_SDL_EXTERNAL}.rotateSurface90Degrees(l_temp_surface.internal_pointer,2)
--			elseif a_mirror_x then
--				Result:={GAME_SDL_EXTERNAL}.MirrorSurfaceX(l_temp_surface.internal_pointer)
--			elseif a_mirror_y then
--				Result:={GAME_SDL_EXTERNAL}.MirrorSurfaceY(l_temp_surface.internal_pointer)
--			else
--				Result:=l_temp_surface.internal_pointer
--			end


--		end

----	get_new_surface_pointer_rotate_and_zoom(angle_clockwise,zoom_x,zoom_y:REAL_64;smooth:BOOLEAN):POINTER
----			-- Create a new surface from the current surface after doing a `angle_clockwise' degree rotation
----			-- and doing a zoom (a new memory surface will be created).
----			-- The surface has to be 8 bits per pixel or 32 bits per pixel.
----		local
----			temp_surface:GAME_SURFACE
----		do
----			temp_surface:=get_surface_copy_8_16_32

----			Result:={GAME_SDL_EXTERNAL}.rotozoomSurfaceXY(temp_surface.get_surface_pointer ,-angle_clockwise,zoom_x,zoom_y,smooth)
----		end

--	internal_pointer_rotated_90_degree(a_nb_clockwise:INTEGER):POINTER
--			-- Create a new surface from the current surface after doing a 90*`nb_clockwise' rotation (a new memory surface will be created).
--			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
--		local
--			l_temp_surface:GAME_SURFACE
--		do
--			l_temp_surface:=surface_copy_8_16_32

--			Result:={GAME_SDL_EXTERNAL}.rotateSurface90Degrees(l_temp_surface.internal_pointer ,a_nb_clockwise)
--		end




--invariant
--	Surface_Imp_Ok: surface_imp = Void or surface_imp.is_surface_ok
--	Surface_Width_Consistent: srf_width = width
--	Surface_Height_Consistent: srf_height = height

end
