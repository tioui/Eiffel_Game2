note
	description: "Representation of an image that can be paste on other image."
	author: "Louis Marchand"
	date: "January 18, 2014"
	revision: "2.0.0.0"

class
	GAME_SURFACE

inherit
	GAME_LIBRARY_SHARED
	GAME_SDL_CONSTANTS

create
	share_from_image_source,
	make_from_image_source,
	share_from_other,
	make_from_other,
	make_for_window,
	make_for_display,
	make_for_display_mode,
	make_for_pixel_format,
	make_with_masks

feature {NONE} -- Initialisation

	share_from_image_source(a_image_source:GAME_IMAGE_SOURCE)
			-- Create a `Current' from `a_image_source'.
			-- The image source in memory is not copied.
			-- If multiple surface is done with the same `a_image_source', every modification to surface will affect all.
		require
			Surface_Make_From_Image_Source_Is_Open: a_image_source.is_open
			Surface_Make_Video_Enabled: game_library.is_video_enable
		do
			image_source:=a_image_source
			is_open:=not has_error
		ensure
			Surface_Make_Is_Open:is_open
		end

	make_from_image_source(a_image_source:GAME_IMAGE_SOURCE)
			-- Create a `Current' from `a_image_source'.
			-- The image source in memory is copied. Slower than `share_from_image_source' and use more memory.
			-- If multiple surface is done with the same `a_image_source', every modification to surface will affect all.
		require
			Surface_Make_From_Image_Source_Is_Open: a_image_source.is_open
			Surface_Make_Video_Enabled: game_library.is_video_enable
		local
			l_source:GAME_IMAGE_SOURCE
		do
			has_error:=False
			create l_source.make_from_other (a_image_source)
			if l_source.is_openable then
				l_source.open
				if l_source.is_open then
					share_from_image_source(l_source)
				else
					image_source:=create {GAME_IMAGE_SOURCE}.own_from_pointer (create {POINTER})
					has_error:=True
				end
			else
				image_source:=create {GAME_IMAGE_SOURCE}.own_from_pointer (create {POINTER})
				has_error:=True
			end

		end

	share_from_other(a_other:GAME_SURFACE)
			-- Create a `Current' from `a_other'.
			-- The image source in memory is not copied.
			-- If multiple surface is done with the same `a_image_source', every modification to surface will affect all.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_Other_Opened: a_other.is_open
		do
			share_from_image_source(a_other.image_source)
		ensure
			Surface_Make_Is_Open:is_open
		end

	make_from_other(a_other:GAME_SURFACE)
			-- Create a `Current' from `a_other'.
			-- The image source in memory will be copied. Slower than `share_from_other' and use more memory.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_Other_Opened: a_other.is_open
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

	make_for_pixel_format(a_pixel_format:GAME_PIXEL_FORMAT_IMMUTABLE;a_width,a_height:INTEGER)
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
			is_open:=not has_error
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
					share_from_image_source(l_image_source)
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
			-- `Current' has been opened properly

	as_converted_to_pixel_format(a_pixel_format:GAME_PIXEL_FORMAT_IMMUTABLE):GAME_SURFACE
			-- Create a copy of `Current' conforming to `a_pixel_format'.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Convert_Is_Open: is_open
		local
			l_source:GAME_IMAGE_SOURCE
		do
			has_error:=False
			create l_source.own_from_pointer ({GAME_SDL_EXTERNAL}.SDL_ConvertSurfaceFormat(image_source.internal_pointer, a_pixel_format.internal_index, 0))
			if l_source.is_openable then
				l_source.open
				if l_source.is_open then
					create Result.share_from_image_source (l_source)
				else
					create Result.make_for_pixel_format (a_pixel_format, width, height)
					if Result.is_open then
						Result.draw_surface (Current, 0, 0)
					else
						has_error:=True
					end
				end
			else
				create Result.make_for_pixel_format (a_pixel_format, width, height)
				if Result.is_open then
					Result.draw_surface (Current, 0, 0)
				else
					has_error:=True
				end
			end
		end

	pixel_format:GAME_PIXEL_FORMAT_IMMUTABLE
			-- The internal format of the pixel representation in memory.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Pixel_Format_Is_Open: is_open
		do
			create Result.share_from_structure_pointer ({GAME_SDL_EXTERNAL}.get_sdl_surface_struct_format(image_source.internal_pointer))
		end

	draw_surface(a_other:GAME_SURFACE;a_x,a_y:INTEGER)
			-- Draw the whole surface `a_other' on the present surface at (`a_x',`a_y').
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Draw_Is_Open: is_open
		do
			draw_sub_surface(a_other,0,0,a_other.width,a_other.height,a_x,a_y)
		end

	draw_sub_surface(a_other:GAME_SURFACE;a_x_source,a_y_source,a_width,a_height,a_x_destination,a_y_destination:INTEGER)
			-- Draw on the present surface at (`a_x_destination',`a_y_destination') the sub surface of `a_other'
			-- starting at (`a_x_source',`a_y_source') with dimension `a_width' x `a_height'.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
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

	draw_sub_surface_with_scale(a_other:GAME_SURFACE;a_x_source,a_y_source,a_width_source,a_height_source,a_x_destination,a_y_destination, a_width_destination, a_height_destination:INTEGER)
			-- Draw on the present surface at (`a_x_destination',`a_y_destination') the sub surface of `a_other'
			-- starting at (`a_x_source',`a_y_source') with dimension `a_width' x `a_height'.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Draw_Is_Open: is_open
		local
			l_rect_src, l_rect_dst:POINTER
			l_error:INTEGER
		do
			l_rect_src:=l_rect_src.memory_calloc (1, Size_of_sdl_rect_structure)
			l_rect_dst:=l_rect_dst.memory_calloc (1, Size_of_sdl_rect_structure)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_src,a_x_source)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_src,a_y_source)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_src,a_width_source)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_src,a_height_source)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_dst,a_x_destination)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_dst,a_y_destination)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_dst,a_width_destination)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_dst,a_height_destination)
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_BlitScaled(a_other.image_source.internal_pointer ,l_rect_src, image_source.internal_pointer, l_rect_dst)
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
			Surface_Is_Video_Enable:game_library.is_video_enable
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


	transparent_color:GAME_COLOR_IMMUTABLE assign set_transparent_color
			-- The color that will be remove in the surface (the transparent color).
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Is_Open: is_open
			Surface_Transparent_Color_Is_Enable: is_transparent_enable
		local
			l_red,l_green,l_blue,l_alpha:NATURAL_8
			l_color_key:NATURAL_32
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetColorKey(image_source.internal_pointer, $l_color_key)
			if l_error<0 then
				io.error.put_string ("An error occured while getting the transparent color of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				create Result.make (0, 0, 0,0)
				has_error:=True
			else
				{GAME_SDL_EXTERNAL}.SDL_GetRGBA(l_color_key,pixel_format.structure,$l_red,$l_green,$l_blue,$l_alpha)
				create Result.make (l_red, l_green, l_blue,l_alpha)
			end

		end

	set_transparent_color(a_color:GAME_COLOR_IMMUTABLE)
			-- Change all pixel of color `color' into transparency (and enable it). The transparency by color don't work if the surface
			-- have an alpha blending activated.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Is_Open: is_open
		local
			l_key:NATURAL_32
			l_error:INTEGER
		do
			l_key:={GAME_SDL_EXTERNAL}.SDL_MapRGB(pixel_format.structure,a_color.red, a_color.green, a_color.blue)
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetColorKey(image_source.internal_pointer,Sdl_true,l_key)
			if l_error<0 then
				io.error.put_string ("An error occured while setting the transparent color to the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			else
				enable_rle_acceleration
			end
		end

	is_transparent_enable:BOOLEAN
			-- Is transparency by color key is enabled.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Is_Open: is_open
		local
			l_error:INTEGER
			l_color_key:NATURAL_32
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetColorKey(image_source.internal_pointer, $l_color_key)
			if l_error<-1 then
				io.error.put_string ("An error occured while getting the transparent color of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
			Result := (l_error /= -1)
		end

	disable_transparent
			-- Remove the transparency by color key.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Is_Open: is_open
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetColorKey(image_source.internal_pointer,Sdl_false,0)
			if l_error<0 then
				io.error.put_string ("An error occured while disabling the transparent color of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			else
				disable_rle_acceleration
			end
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
			Result:={GAME_SDL_EXTERNAL}.get_sdl_surface_struct_w(image_source.internal_pointer)
		end

	as_rotated_90_degree(a_nb_clockwise:INTEGER):GAME_SURFACE
			-- A new surface like `Current' after applying `a_nb_clockwise' times a 90 degree rotation.
			-- Note that this feature is not optimize and can be slow.
		local
			l_source_surface:GAME_SURFACE
			l_image_ptr:POINTER
		do
			if a_nb_clockwise\\4 = 0 then
				create Result.make_from_other (Current)
			else
				l_source_surface:=as_surface_8_16_or_32_bpp
				l_image_ptr:={GAME_SDL_EXTERNAL}.rotateSurface90Degrees(l_source_surface.image_source.internal_pointer ,a_nb_clockwise)
				Result:=new_similar_from_pointer(l_image_ptr)
			end
		end

	as_mirrored(a_mirror_x,a_mirror_y:BOOLEAN):GAME_SURFACE
			-- A new surface like `Current' after applying an X axis mirror when `a_mirror_x' is set ans an Y axis mirror when `a_mirror_y' is set.
			-- Note that this feature is not optimize and can be slow.
		local
			l_source_surface:GAME_SURFACE
			l_image_ptr:POINTER
		do
			if not a_mirror_x and not a_mirror_y then
				create Result.make_from_other (Current)
			elseif a_mirror_x and a_mirror_y then
				Result:=as_rotated_90_degree(2)
			else
				l_source_surface:=as_surface_8_16_or_32_bpp
				if a_mirror_x then
					l_image_ptr:={GAME_SDL_EXTERNAL}.MirrorSurfaceX(l_source_surface.image_source.internal_pointer)
				else
					l_image_ptr:={GAME_SDL_EXTERNAL}.MirrorSurfaceY(l_source_surface.image_source.internal_pointer)
				end
				Result:=new_similar_from_pointer(l_image_ptr)
			end
		end

	disable_blending
			-- Disable every blending mode to use for drawing operations.
			-- No blending mode:	dstRGBA = srcRGBA
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceBlendMode(image_source.internal_pointer, Sdl_blendmode_none)
			if l_error<0 then
				io.error.put_string ("An error occured while disabling the blending on the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

	is_blending_disabled:BOOLEAN
			-- True if no blending mode is used for drawing operations.
			-- No blending mode:	dstRGBA = srcRGBA
		local
			l_error, l_blending_mode:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetSurfaceBlendMode(image_source.internal_pointer, $l_blending_mode)
			if l_error<0 then
				io.error.put_string ("An error occured while retrieving the blending mode of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
				Result:=False
			else
				Result:=(l_blending_mode=Sdl_blendmode_none)
			end
		end

	enable_alpha_blending
			-- Set the alpha blending mode to use for drawing operations.
			-- Alpha blending:	dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA))
			--					dstA = srcA + (dstA * (1-srcA))
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceBlendMode(image_source.internal_pointer, Sdl_blendmode_blend)
			if l_error<0 then
				io.error.put_string ("An error occured while enabling alpha blending on the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

	is_alpha_blending_enabled:BOOLEAN
			-- True if the blending mode for drawing operation is alpha blending.
			-- Alpha blending:	dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA))
			--					dstA = srcA + (dstA * (1-srcA))
		local
			l_error, l_blending_mode:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetSurfaceBlendMode(image_source.internal_pointer, $l_blending_mode)
			if l_error<0 then
				io.error.put_string ("An error occured while retrieving the blending mode of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
				Result:=False
			else
				Result:=(l_blending_mode=Sdl_blendmode_blend)
			end
		end

	enable_additive_blending
			-- Set the additive blending mode to use for drawing operations.
			-- Additive blending:	dstRGB = (srcRGB * srcA) + dstRGB
			--						dstA = dstA
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceBlendMode(image_source.internal_pointer, Sdl_blendmode_add)
			if l_error<0 then
				io.error.put_string ("An error occured while enabling additive blending on the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

	is_additive_blending_enabled:BOOLEAN
			-- True if the blending mode for drawing operation is additive blending.
			-- Additive blending:	dstRGB = (srcRGB * srcA) + dstRGB
			--						dstA = dstA
		local
			l_error, l_blending_mode:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetSurfaceBlendMode(image_source.internal_pointer, $l_blending_mode)
			if l_error<0 then
				io.error.put_string ("An error occured while retrieving the blending mode of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
				Result:=False
			else
				Result:=(l_blending_mode=Sdl_blendmode_add)
			end
		end

	enable_modulate_blending
			-- Set the color modulate blending mode to use for drawing operations.
			-- Color modulate:	dstRGB = srcRGB * dstRGB
			--					dstA = dstA
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceBlendMode(image_source.internal_pointer, Sdl_blendmode_mod)
			if l_error<0 then
				io.error.put_string ("An error occured while enabling color modulate blending on the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

	is_modulate_blending_enabled:BOOLEAN
			-- True if the blending mode for drawing operation is color modulate blending.
			-- Color modulate:	dstRGB = srcRGB * dstRGB
			--					dstA = dstA
		local
			l_error, l_blending_mode:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetSurfaceBlendMode(image_source.internal_pointer, $l_blending_mode)
			if l_error<0 then
				io.error.put_string ("An error occured while retrieving the blending mode of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
				Result:=False
			else
				Result:=(l_blending_mode=Sdl_blendmode_mod)
			end
		end

	overall_alpha:NATURAL_8 assign set_overall_alpha
			-- The Additionnal alpha value to use in drawing operation.
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetSurfaceAlphaMod(image_source.internal_pointer, $Result)
			if l_error<0 then
				io.error.put_string ("An error occured while retrieving the overall alpha value of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

	set_overall_alpha(a_overall_alpha:NATURAL_8)
			-- Assign the Additionnal `overall_alpha' value to use in drawing operation to `a_overall_alpha'.
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceAlphaMod(image_source.internal_pointer, a_overall_alpha)
			if l_error<0 then
				io.error.put_string ("An error occured while setting the overall alpha value of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

	color_multiplier:TUPLE[red_multipier, green_multipier, blue_multipier:NATURAL_8]
			-- The additional color value multiplied into drawing operations
		local
			l_error:INTEGER
			l_red, l_green, l_blue:NATURAL_8
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetSurfaceColorMod(image_source.internal_pointer, $l_red, $l_green, $l_blue)
			Result:=[l_red, l_green, l_blue]
			if l_error<0 then
				io.error.put_string ("An error occured while retrieving the color multiplier value of the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

	set_color_multiplier(a_red_multiplier, a_green_multiplier, a_blue_multiplier:NATURAL_8)
			-- Assign the Additionnal `color_multiplier' value to use into drawing operation to `a_red_multiplier',
			-- `a_green_multiplier', `a_blue_multiplier'.
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceColorMod(image_source.internal_pointer, a_red_multiplier, a_green_multiplier, a_blue_multiplier)
			if l_error<0 then
				io.error.put_string ("An error occured while setting the overall alpha value on the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

	enable_rle_acceleration
			-- Enable possible optimisation when using drawing with `transparent_color' enabled or `enable_alpha_blending'.
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceRLE(image_source.internal_pointer, 1)
			if l_error<0 then
				io.error.put_string ("An error occured when enabling RLE acceleration on the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

	disable_rle_acceleration
			-- Disable the possible optimisation when using drawing with `transparent_color' enabled or `enable_alpha_blending'.
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceRLE(image_source.internal_pointer, 0)
			if l_error<0 then
				io.error.put_string ("An error occured when disabling RLE acceleration on the surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end


feature {NONE} -- Implementation

	as_surface_8_16_or_32_bpp:GAME_SURFACE
		local
			l_bpp:INTEGER
			l_masks:TUPLE[red_mask, green_mask,blue_mask, alpha_mask:NATURAL_32]
			l_pixel_fromat:GAME_PIXEL_FORMAT
		do
			l_bpp:=pixel_format.bit_per_pixel
			if l_bpp = 8 or l_bpp = 16 or l_bpp =32 then
				Result:=Current
			else
				l_masks:=pixel_format.masks
				create l_pixel_fromat.make_from_bits_per_pixel_and_masks (32, l_masks.red_mask, l_masks.green_mask, l_masks.blue_mask, l_masks.alpha_mask)
				Result:=as_converted_to_pixel_format (l_pixel_fromat)
			end
		end

	new_similar_from_pointer(a_internal_pointer:POINTER):GAME_SURFACE
		local
			l_image_source:GAME_IMAGE_SOURCE
			l_multiplier:TUPLE[red_multipier, green_multipier, blue_multipier:NATURAL_8]
		do
			create l_image_source.own_from_pointer (a_internal_pointer)
			if l_image_source.is_openable then
				l_image_source.open
				if l_image_source.is_open then
					create Result.share_from_image_source(l_image_source)
				else
					io.error.put_string ("An error ocured while rotating the surface.%N")
					create Result.make_from_other (Current)
					has_error:=True
				end
			else
				io.error.put_string ("An error ocured while rotating the surface.%N")
				create Result.make_from_other (Current)
				has_error:=True
			end
			if not has_error then
				if is_transparent_enable then
					Result.transparent_color:=transparent_color
				end
				if is_alpha_blending_enabled then
					Result.enable_alpha_blending
				elseif is_modulate_blending_enabled then
					Result.enable_modulate_blending
				elseif is_additive_blending_enabled then
					Result.enable_additive_blending
				else
					Result.disable_blending
				end
				Result.overall_alpha:=overall_alpha
				l_multiplier:=color_multiplier
				Result.set_color_multiplier (l_multiplier.red_multipier, l_multiplier.green_multipier, l_multiplier.blue_multipier)
			end
		end

invariant
	Surface_Valid: is_open implies image_source.is_open

end
