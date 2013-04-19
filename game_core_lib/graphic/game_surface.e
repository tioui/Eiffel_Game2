note
	description: "Representation of an image that can be paste on other image."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SURFACE

inherit
	ANY

create
	make,
	make_video_memory,
	make_with_bit_per_pixel,
	make_from_pointer,
	make_from_surface,
	make_with_flags_and_masks

feature {NONE} -- Initialisation

	make_from_pointer(the_surface_pointer:POINTER)
			-- Initialization for `Current'.
			-- Create a surface from an SDL pointer (the memory SDL surface is not duplicate).
		require
			Make_From_Pointer_Pointer_Not_Void: the_surface_pointer /= Void
			Make_From_Pointer_Pointer_Not_NULL: not the_surface_pointer.is_default_pointer
		do

			set_surface_pointer(the_surface_pointer)
			set_is_alpha_accelerated(false)
			set_is_transparent_accelerated(false)
			start_x:=0
			start_y:=0
			set_width({GAME_SDL_EXTERNAL}.get_surface_struct_w(get_surface_pointer))
			set_height({GAME_SDL_EXTERNAL}.get_surface_struct_h(get_surface_pointer))
			disable_alpha
			disable_transparent
		end

	make_from_surface(the_surface:GAME_SURFACE)
			-- Initialization for `Current'.
			-- Create a surface from another surface (the memory SDL surface is not duplicate).
		require
			Make_From_Surface_Surface_Not_Void: the_surface /= Void
			Make_From_Surface_Surface_Pointer_Not_Void: the_surface.get_surface_pointer /= Void
			Make_From_Surface_Surface_Pointer_Not_NULL: not the_surface.get_surface_pointer.is_default_pointer
		do
			make_from_pointer(the_surface.get_surface_pointer)
			set_is_alpha_accelerated(the_surface.is_alpha_accelerated)
			set_is_transparent_accelerated(the_surface.is_transparent_accelerated)
			start_x:=the_surface.start_x
			start_y:=the_surface.start_y
			set_width(the_surface.width)
			set_height(the_surface.height)
			disable_alpha
			disable_transparent
		end

	make(the_width,the_height:INTEGER)
			-- Initialization for `Current'.
			-- Create a new empty surface.
		local
			l_screen:GAME_SCREEN
		do
			if not {GAME_SDL_EXTERNAL}.sdl_getvideosurface.is_default_pointer then
				create l_screen.make_from_current_video_surface
				make_with_bit_per_pixel(the_width,the_height,l_screen.bits_per_pixel,false)
			else
				make_with_bit_per_pixel(the_width,the_height,32,false)
			end
		end

	make_video_memory(the_width,the_height:INTEGER)
			-- Initialization for `Current'.
			-- Create a new empty surface on video memory.
		local
			l_screen:GAME_SCREEN
		do
			if not {GAME_SDL_EXTERNAL}.sdl_getvideosurface.is_default_pointer then
				create l_screen.make_from_current_video_surface
				make_with_bit_per_pixel(the_width,the_height,l_screen.bits_per_pixel,true)
			else
				make_with_bit_per_pixel(the_width,the_height,32,true)
			end
		end

	make_with_bit_per_pixel(the_width,the_height,the_bits_per_pixel:INTEGER;video_memory:BOOLEAN)
			-- Initialization for `Current'.
			-- Create a new empty surface with a different `the_bits_per_pixel' and `video_memory'.
		local
			l_screen:GAME_SCREEN
			l_screen_format:POINTER
			flags, l_rmask, l_gmask, l_bmask, l_amask:NATURAL_32
		do
			if video_memory then
				flags:={GAME_SDL_EXTERNAL}.SDL_HWSURFACE
			else
				flags:={GAME_SDL_EXTERNAL}.SDL_SWSURFACE
			end
			if not {GAME_SDL_EXTERNAL}.sdl_getvideosurface.is_default_pointer then
				create l_screen.make_from_current_video_surface
				l_screen_format:=l_screen.get_format_pointer
				l_rmask:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_Rmask(l_screen_format)
				l_gmask:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_Gmask(l_screen_format)
				l_bmask:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_Bmask(l_screen_format)
				l_amask:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_Amask(l_screen_format)
			else
				l_rmask:=0
				l_gmask:=0
				l_bmask:=0
				l_amask:=0
			end
			make_with_flags_and_masks(flags,the_width,the_height,the_bits_per_pixel,l_rmask, l_gmask, l_bmask, l_amask)
		end

	make_with_flags_and_masks(flags:NATURAL_32;the_width,the_height,the_bits_per_pixel:INTEGER;Rmask,Gmask,Bmask,Amask:NATURAL_32)
			-- Initialization for `Current'.
			-- Create a new empty surface with RGBA mask and flags.
		do
			make_from_pointer({GAME_SDL_EXTERNAL}.SDL_CreateRGBSurface(flags,the_width,the_height,the_bits_per_pixel,Rmask,Gmask,Bmask,Amask))
		end

feature -- Access


	optimise_surface
		local
			screen:GAME_SCREEN
			result_ptr:POINTER
		do
			if not {GAME_SDL_EXTERNAL}.sdl_getvideosurface.is_default_pointer then
				create screen.make_from_current_video_surface
				result_ptr:={GAME_SDL_EXTERNAL}.SDL_ConvertSurface(get_surface_pointer,screen.get_format_pointer,{GAME_SDL_EXTERNAL}.get_surface_struct_flags(screen.get_format_pointer))
				if not result_ptr.is_default_pointer then
					set_surface_pointer(result_ptr)
				end
			end


		end

	bits_per_pixel:INTEGER
			-- Get the number of bits per pixel in memory of the surface.
		local
			format:POINTER
		do
			format:=get_format_pointer
			Result:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_BitsPerPixel(format)
		end

	set_format_to_video_format
			-- Transfert the surface to the same format that the one of the Screen surface.
		do
			set_surface_pointer ({GAME_SDL_EXTERNAL}.SDL_DisplayFormat(get_surface_pointer))
		end

	print_surface_on_surface(src_surface:GAME_SURFACE;x_dst,y_dst:INTEGER)
			-- Print `src_surface' on the present surface.
		do
			print_surface_part_on_surface(src_surface,0,0,x_dst,y_dst,src_surface.width,src_surface.height)
		end

	print_surface_part_on_surface(src_surface:GAME_SURFACE;x_src,y_src,x_dst,y_dst,print_width,print_height:INTEGER)
			-- Print a portion of `src_surface' on the present surface.
		require
			Print_Surface_On_Surface_src_not_void: src_surface /= Void
			Print_Surface_On_Surface_Width_Valid: print_width /=Void and then print_width>0 and then print_width<=src_surface.width
			Print_Surface_On_Surface_Width_Valid: print_height /=Void and then print_height>0 and then print_height<=src_surface.height
		local
			rect_src,rect_dst:POINTER
			error:INTEGER
		do
			rect_src:={GAME_SDL_EXTERNAL}.c_rect_struct_allocate
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(rect_src,(x_src+src_surface.start_x).to_integer_16)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(rect_src,(y_src+src_surface.start_y).to_integer_16)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(rect_src,print_width.to_natural_16)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(rect_src,print_height.to_natural_16)

			rect_dst:={GAME_SDL_EXTERNAL}.c_rect_struct_allocate
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(rect_dst,(x_dst+start_x).to_integer_16)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(rect_dst,(y_dst+start_y).to_integer_16)

			error:={GAME_SDL_EXTERNAL}.SDL_BlitSurface(src_surface.get_surface_pointer ,rect_src, get_surface_pointer, rect_dst)
			check error = 0 end
			{GAME_SDL_EXTERNAL}.c_rect_struct_free(rect_src)
			{GAME_SDL_EXTERNAL}.c_rect_struct_free(rect_dst)
		end

	get_sub_surface(from_x, from_y, sub_width, sub_height:INTEGER):GAME_SURFACE
			-- Return a new surface representing a section of the present surface (memory surface not duplicated).
		require
			Get_Sub_Surface_From_X_Valid: from_x < width
			Get_Sub_Surface_From_Y_Valid: from_y < height
			Get_Sub_Surface_From_Width_Valid: sub_width <= width-from_x
			Get_Sub_Surface_From_Height_Valid: sub_height <= height-from_y
		do
			Result := create {GAME_SUB_SURFACE}.make_from_surface (Current, from_x, from_y, sub_width, sub_height)
			Result.is_alpha_accelerated:=is_alpha_accelerated
			Result.is_transparent_accelerated:=is_transparent_accelerated
			if is_alpha_enable then
				Result.enable_alpha
			end
			if is_transparent_enable then
				Result.set_color_key (trans_color_key)
			end
		end

	get_new_surface_rotate_90_degree(nb_clockwise:INTEGER):GAME_SURFACE
			-- Create a new surface from the current surface after doing a 90*`nb_clockwise' rotation (a new memory surface will be created).
			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
		do
			create Result.make_from_pointer(get_new_surface_pointer_rotate_90_degree(nb_clockwise))
			Result.is_alpha_accelerated:=is_alpha_accelerated
			Result.is_transparent_accelerated:=is_transparent_accelerated
			if is_alpha_enable then
				Result.enable_alpha
			end
			if is_transparent_enable then
				Result.set_color_key (trans_color_key)
			end
		end

	rotate_surface_90_degree(nb_clockwise:INTEGER)
			-- Modify the current surface by doing a 90*`nb_clockwise' rotation (a new memory surface will be created)
			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
		do
			set_surface_pointer(get_new_surface_pointer_rotate_90_degree(nb_clockwise))
			set_height ({GAME_SDL_EXTERNAL}.get_surface_struct_h(get_surface_pointer))
			set_width ({GAME_SDL_EXTERNAL}.get_surface_struct_w(get_surface_pointer))
			if is_alpha_enable then
				enable_alpha
			else
				disable_alpha
			end
			if is_transparent_enable then
				set_color_key (trans_color_key)
			end
		end


--	get_new_surface_rotate_and_zoom(angle_clockwise,zoom_x,zoom_y:REAL_64;smooth:BOOLEAN):GAME_SURFACE
--			-- Create a new surface from the current surface after doing a `angle_clockwise' degree rotation
--			-- and doing a zoom (a new memory surface will be created).
--			-- The surface has to be 8 bits per pixel or 32 bits per pixel.
--		do
--			create Result.make_from_pointer (get_new_surface_pointer_rotate_and_zoom(angle_clockwise,zoom_x,zoom_y,smooth))
--			Result.is_alpha_accelerated:=is_alpha_accelerated
--			Result.is_transparent_accelerated:=is_transparent_accelerated
--			if is_alpha_enable then
--				Result.enable_alpha
--			end
--			if is_transparent_enable then
--				Result.set_color_key (trans_color_key)
--			end
--		end

--	rotate_and_zoom_surface(angle_clockwise,zoom_x,zoom_y:REAL_64;smooth:BOOLEAN)
--			-- Modify the current surface by doing a `angle_clockwise' degree rotation
--			-- and doing a zoom (a new memory surface will be created).
--			-- The surface has to be 8 bits per pixel or 32 bits per pixel.
--		do
--			set_surface_pointer(get_new_surface_pointer_rotate_and_zoom(angle_clockwise,zoom_x,zoom_y,smooth))
--			if is_alpha_enable then
--				enable_alpha
--			else
--				disable_alpha
--			end
--			if is_transparent_enable then
--				set_color_key (trans_color_key)
--			end
--			set_height ({GAME_SDL_EXTERNAL}.get_surface_struct_h(get_surface_pointer))
--			set_width ({GAME_SDL_EXTERNAL}.get_surface_struct_w(get_surface_pointer))
--		end

	get_new_surface_mirror(mirror_x,mirror_y:BOOLEAN):GAME_SURFACE
			-- Create a new surface from the current surface after doing a mirror (a new memory surface will be created).
			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
		do
			create Result.make_from_pointer(get_new_surface_pointer_mirror(mirror_x,mirror_y))
			Result.is_alpha_accelerated:=is_alpha_accelerated
			Result.is_transparent_accelerated:=is_transparent_accelerated
			if is_alpha_enable then
				Result.enable_alpha
			end
			if is_transparent_enable then
				Result.set_color_key (trans_color_key)
			end
		end

	mirror_surface(mirror_x,mirror_y:BOOLEAN)
			-- Modify the present surface by doing a mirror (a new memory surface will be created).
			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
		do
			set_surface_pointer(get_new_surface_pointer_mirror(mirror_x,mirror_y))
			if is_alpha_enable then
				enable_alpha
			else
				disable_alpha
			end
			if is_transparent_enable then
				set_color_key (trans_color_key)
			end


		end


	height:INTEGER assign set_height
	do
		Result:=srf_height
	end

	width:INTEGER assign set_width
	do
		Result:=srf_width
	end

	get_Pixel(x,y:INTEGER):GAME_COLOR
		-- Get the color of the pixel at `x', `y'.
	require
		Get_Pixel_X_Valid: x>=0 and x<width
		Get_Pixel_Y_Valid: y>=0 and y<width
	local
		color_index:NATURAL_32
		r,g,b,a:NATURAL_8
		format:POINTER
	do
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(get_surface_pointer)/=0 then
			if {GAME_SDL_EXTERNAL}.SDL_LockSurface(get_surface_pointer)=-1 then
				check false end
			end
		end
		color_index:={GAME_SDL_EXTERNAL}.getPixel(get_surface_pointer,x,y)
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(get_surface_pointer)/=0 then
			{GAME_SDL_EXTERNAL}.SDL_UnlockSurface(get_surface_pointer)
		end
		format:=get_format_pointer
		{GAME_SDL_EXTERNAL}.SDL_GetRGBA(color_index,format,$r,$g,$b,$a)
		create Result.make (r, g, b,a)
	end


	put_pixel(x,y:INTEGER;color:GAME_COLOR)
		-- Innefficient to put lots of pixel
		-- ToDo: Create a put_pixels that put lots of pixel with only one lock
	require
		Put_Pixel_X_Valid: x>=0 and x<width
		Put_Pixel_Y_Valid: y>=0 and y<width
	local
		format:POINTER
		color_index:NATURAL_32
	do
		format:=get_format_pointer
		color_index:={GAME_SDL_EXTERNAL}.SDL_MapRGBA(format,color.red,color.green,color.blue,color.alpha)
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(get_surface_pointer)/=0 then
			if {GAME_SDL_EXTERNAL}.SDL_LockSurface(get_surface_pointer)=-1 then
				check false end
			end
		end
		{GAME_SDL_EXTERNAL}.putpixel(get_surface_pointer,x,y,color_index)
		if {GAME_SDL_EXTERNAL}.SDL_MUSTLOCK(get_surface_pointer)/=0 then
			{GAME_SDL_EXTERNAL}.SDL_UnlockSurface(get_surface_pointer)
		end
	end

	enable_alpha
		-- Enable the alpha blending for the surface.
		-- It is not necessary to call this if you use set_overall_alpha_value
	local
		error:INTEGER
		flags:NATURAL_32
	do
		flags:={GAME_SDL_EXTERNAL}.SDL_SRCALPHA
		if is_alpha_accelerated then
			flags:=flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RLEACCEL)
		end
		error:={GAME_SDL_EXTERNAL}.SDL_SetAlpha(get_surface_pointer,flags,get_overall_alpha_value)
		check error=0 end
		is_alpha_enable:=true
	end

	is_alpha_enable:BOOLEAN

	is_alpha_accelerated:BOOLEAN assign set_is_alpha_accelerated

	is_transparent_accelerated:BOOLEAN assign set_is_transparent_accelerated

	disable_alpha
			-- Disable the alpha blending for the surface.
		local
			error:INTEGER
		do
			error:={GAME_SDL_EXTERNAL}.SDL_SetAlpha(get_surface_pointer,0,get_overall_alpha_value)
			check error=0 end
			is_alpha_enable:=false
		end

	get_overall_alpha_value:NATURAL_8
			-- Return the value of the overall alpha blending value.
		local
			format:POINTER
		do
			format:=get_format_pointer
			Result:={GAME_SDL_EXTERNAL}.get_pixel_format_struct_alpha(format)
		end

	set_overall_alpha_value(a:NATURAL_8)
			-- Set the value of the overall alpha blending.
		local
			error:INTEGER
			flags:NATURAL_32
		do
			flags:={GAME_SDL_EXTERNAL}.SDL_SRCALPHA
			if is_alpha_accelerated then
				flags:=flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RLEACCEL)
			end
			error:={GAME_SDL_EXTERNAL}.SDL_SetAlpha(get_surface_pointer,flags,a)
			check error=0 end
		end

	fill_rect(color:GAME_COLOR;l_x,l_y,l_w,l_h:INTEGER)
			-- Draw a rectangle of the color `color' on the surface.
		require
			Fill_Rect_Color_Not_Void: color /=Void
			Fill_Rect_X_Valid:
					(l_w<0 and then (l_x+l_w)+start_x >= (create {INTEGER_16}).Min_value and then (l_x+l_w)+start_x <= (create {INTEGER_16}).Max_value) or else
					(l_w>=0 and then l_x+start_x >= (create {INTEGER_16}).Min_value and then l_x+start_x <= (create {INTEGER_16}).Max_value)
			Fill_Rect_Y_Valid:
					(l_h<0 and then (l_y+l_h)+start_y >= (create {INTEGER_16}).Min_value and then ((l_y+l_h)+start_y) <= (create {INTEGER_16}).Max_value) or else
					(l_h>=0 and then l_y+start_y >= (create {INTEGER_16}).Min_value and then (l_y+start_y) <= (create {INTEGER_16}).Max_value)
			Fill_Rect_W_Valid: l_w.abs <= (create {NATURAL_16}).Max_value
			Fill_Rect_H_Valid: l_h.abs <= (create {NATURAL_16}).Max_value
		local
			rect_src:POINTER
			error:INTEGER
			color_key:NATURAL_32

			r,g,b,a:NATURAL_8
			test:GAME_COLOR
		do
			rect_src:={GAME_SDL_EXTERNAL}.c_rect_struct_allocate
			if l_w<0 then
				{GAME_SDL_EXTERNAL}.set_rect_struct_x(rect_src,((l_x+l_w)+start_x).to_integer_16)
			else
				{GAME_SDL_EXTERNAL}.set_rect_struct_x(rect_src,(l_x+start_x).to_integer_16)
			end
			if l_h<0 then
				{GAME_SDL_EXTERNAL}.set_rect_struct_y(rect_src,((l_y+l_h)+start_y).to_integer_16)
			else
				{GAME_SDL_EXTERNAL}.set_rect_struct_y(rect_src,(l_y+start_y).to_integer_16)
			end
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(rect_src,l_w.abs.to_natural_16)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(rect_src,l_h.abs.to_natural_16)
			color_key:={GAME_SDL_EXTERNAL}.SDL_MapRGBA(get_format_pointer,color.red,color.green,color.blue,color.alpha)
			{GAME_SDL_EXTERNAL}.SDL_GetRGBA(color_key,get_format_pointer,$r,$g,$b,$a)
			create test.make (r, g, b,a)
			if color_key = 0 then
				color_key := 0xFF000000
			end
			error:={GAME_SDL_EXTERNAL}.SDL_FillRect(get_surface_pointer,rect_src,color_key)
			check error=0 end
		end

	set_transparent_color(color:GAME_COLOR)
			-- Change all pixel of color `color' into transparency (and enable it). The transparency by color don't work if the surface
			-- have an alpha blending activated.
		local
			key:NATURAL_32
		do
			optimise_surface
			key:={GAME_SDL_EXTERNAL}.SDL_MapRGB(get_format_pointer,color.red, color.green, color.blue)
			set_color_key(key)
		end

	is_transparent_enable:BOOLEAN  -- Is transparency by color key is enabled.

	disable_transparent
			-- Remove the transparency by color key.
		local
			error:INTEGER
			key:NATURAL_32
		do
			error:={GAME_SDL_EXTERNAL}.SDL_SetColorKey(get_surface_pointer,0,0)
			check error=0 end
			is_transparent_enable:=false
		end

	start_x:INTEGER
	start_y:INTEGER



feature{GAME_SURFACE,GAME_SDL_CONTROLLER} -- Implementation

	set_color_key(key:NATURAL_32)
		local
			error:INTEGER
			flags:NATURAL_32
		do
			trans_color_key:=key
			flags:={GAME_SDL_EXTERNAL}.SDL_SRCCOLORKEY
			if is_transparent_accelerated then
				flags:=flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RLEACCEL)
			end
			disable_alpha
			error:={GAME_SDL_EXTERNAL}.SDL_SetColorKey(get_surface_pointer,flags,trans_color_key)
			check error=0 end
			is_transparent_enable:=true
		end

	get_format_pointer:POINTER
			-- Get the SDL format structure pointer.
		do
			Result:={GAME_SDL_EXTERNAL}.get_surface_struct_format(get_surface_pointer)
		end

	get_surface_pointer:POINTER
			-- Get the SDL suface memory pointer.
		require
			Get_Surface_Pointer_Surface_Imp_Exist:surface_imp /= Void
		do
			Result:=surface_imp.surface_pointer
		end

	set_surface_pointer(the_surface:POINTER)
		require
			Set_Surface_Pointer_Pointer_Not_Void: the_surface /= Void
			Set_Surface_Pointer_Pointer_Not_NULL: the_surface.to_integer_32 /= 0
		do
			create surface_imp.make (the_surface)
		end

	set_is_alpha_accelerated(val:BOOLEAN)
	do
		is_alpha_accelerated:=val
	end

	set_is_transparent_accelerated(val:BOOLEAN)
	do
		is_transparent_accelerated:=val
	end

	srf_height:INTEGER
	srf_width:INTEGER

	set_height(l_height:INTEGER)
		do
			srf_height:=l_height
		end

	set_width(l_width:INTEGER)
		do
			srf_width:=l_width
		end

	set_start_x(l_start_x:INTEGER)
		do
			start_x:=l_start_x
		end

	set_start_y(l_start_y:INTEGER)
		do
			start_y:=l_start_y
		end



	surface_imp:GAME_SDL_SURFACE_IMP

	is_make:BOOLEAN

	trans_color_key:NATURAL_32


feature {NONE} -- Implemenation routine

		get_surface_copy_8_16_32:GAME_SURFACE
			-- Get a copy of the current surface
		local
			temp_surface:GAME_SURFACE
			bbp:INTEGER
			format:POINTER
			is_temp_surface:BOOLEAN
		do
			if bits_per_pixel=8 or bits_per_pixel=16 or bits_per_pixel=32 then
				bbp:=bits_per_pixel
			else
				bbp:=(create {GAME_SCREEN}.make_from_current_video_surface).bits_per_pixel
				if bits_per_pixel=8 or bits_per_pixel=16 or bits_per_pixel=32 then
					bbp:=32
				end
			end

			if start_x = 0 and start_y = 0 and width={GAME_SDL_EXTERNAL}.get_surface_struct_w(get_surface_pointer) and height={GAME_SDL_EXTERNAL}.get_surface_struct_w(get_surface_pointer) then
				Result:=Current
			else
				is_temp_surface:=true
				format:=get_format_pointer
				if bbp=bits_per_pixel then
					create Result.make_with_flags_and_masks ({GAME_SDL_EXTERNAL}.get_surface_struct_flags(get_surface_pointer),width, height,bbp,
											{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Rmask(format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Gmask(format),
											{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Bmask(format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Amask(format))
				else
					create Result.make_with_flags_and_masks ({GAME_SDL_EXTERNAL}.get_surface_struct_flags(get_surface_pointer),width, height,bbp,
											0,0,0,0)
				end

				if bits_per_pixel=8 then
					{GAME_SDL_EXTERNAL}.copyPalette(get_surface_pointer,Result.get_surface_pointer)
				end
				Result.is_transparent_accelerated:=is_transparent_accelerated
				Result.is_alpha_accelerated:=is_alpha_accelerated
				if is_transparent_enable then
					Result.set_color_key (trans_color_key)
				end
				if is_alpha_enable then

					disable_alpha
					Result.print_surface_on_surface (Current, 0, 0)
					enable_alpha
					Result.enable_alpha
				else
					Result.print_surface_on_surface (Current, 0, 0)
				end


			end
		end


	get_new_surface_pointer_mirror(mirror_x,mirror_y:BOOLEAN):POINTER
			-- Create a new surface from the current surface after doing a mirror (a new memory surface will be created).
			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
		local
			temp_surface:GAME_SURFACE
		do
			temp_surface:=get_surface_copy_8_16_32
			if mirror_x and then mirror_y then
				Result:={GAME_SDL_EXTERNAL}.rotateSurface90Degrees(temp_surface.get_surface_pointer,2)
			elseif mirror_x then
				Result:={GAME_SDL_EXTERNAL}.MirrorSurfaceX(temp_surface.get_surface_pointer)
			elseif mirror_y then
				Result:={GAME_SDL_EXTERNAL}.MirrorSurfaceY(temp_surface.get_surface_pointer)
			else
				Result:=temp_surface.get_surface_pointer
			end


		end

--	get_new_surface_pointer_rotate_and_zoom(angle_clockwise,zoom_x,zoom_y:REAL_64;smooth:BOOLEAN):POINTER
--			-- Create a new surface from the current surface after doing a `angle_clockwise' degree rotation
--			-- and doing a zoom (a new memory surface will be created).
--			-- The surface has to be 8 bits per pixel or 32 bits per pixel.
--		local
--			temp_surface:GAME_SURFACE
--		do
--			temp_surface:=get_surface_copy_8_16_32

--			Result:={GAME_SDL_EXTERNAL}.rotozoomSurfaceXY(temp_surface.get_surface_pointer ,-angle_clockwise,zoom_x,zoom_y,smooth)
--		end

	get_new_surface_pointer_rotate_90_degree(nb_clockwise:INTEGER):POINTER
			-- Create a new surface from the current surface after doing a 90*`nb_clockwise' rotation (a new memory surface will be created).
			-- The surface has to be 8 bits per pixel, 16 bits per pixel or 32 bits per pixel.
		local
			temp_surface:GAME_SURFACE
		do
			temp_surface:=get_surface_copy_8_16_32

			Result:={GAME_SDL_EXTERNAL}.rotateSurface90Degrees(temp_surface.get_surface_pointer ,nb_clockwise)
		end




invariant
	Surface_Imp_Ok: surface_imp = Void or surface_imp.is_surface_ok
	Surface_Width_Consistent: srf_width = width
	Surface_Height_Consistent: srf_height = height

end
