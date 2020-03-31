note
	description: "Representation of an image that can be paste on other image."
	author: "Louis Marchand"
	date: "Sat, 28 Mar 2015 14:00:33 +0000"
	revision: "2.0"

class
	GAME_SURFACE

inherit
	GAME_LIBRARY_SHARED
	GAME_DRAWING_TOOLS
	GAME_BLENDABLE
		rename
			is_valid as is_open
		end


create
	make,
	share_from_image,
	make_from_image,
	share_from_other,
	make_from_other,
	make_for_window,
	make_for_display,
	make_for_display_mode,
	make_for_pixel_format,
	make_with_masks

feature {NONE} -- Initialisation

	share_from_image(a_image:GAME_IMAGE)
			-- Create a `Current' from `a_image_source'.
			-- The image source in memory is not copied.
			-- If multiple surface is done with the same `a_image',
			-- every modification to surface will affect all.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_From_Image_Source_Is_Open: a_image.is_open
		do
			image:=a_image
			is_open:=not has_error
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_from_image(a_image:GAME_IMAGE)
			-- Create a `Current' from `a_image'.
			-- The image source in memory is copied.
			-- Slower than `share_from_image' and use more memory.
			-- If multiple surface is done with the same `a_image',
			-- every modification to surface will affect all.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_From_Image_Source_Is_Open: a_image.is_open
		local
			l_source:GAME_IMAGE
		do
			has_error:=False
			create l_source.make_from_other (a_image)
			if l_source.is_openable then
				l_source.open
				if l_source.is_open then
					share_from_image(l_source)
				else
					image:=create {GAME_IMAGE}.own_from_pointer (create {POINTER})
					has_error:=True
				end
			else
				image:=create {GAME_IMAGE}.own_from_pointer (create {POINTER})
				has_error:=True
			end
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	share_from_other(a_other:GAME_SURFACE)
			-- Create a `Current' from `a_other'.
			-- The image source in memory is not copied.
			-- If multiple surface is done with the same `image',
			-- every modification to surface will affect all.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_Other_Opened: a_other.is_open
		do
			share_from_image(a_other.image)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_from_other(a_other:GAME_SURFACE)
			-- Create a `Current' from `a_other'.
			-- The image source in memory will be copied.
			-- Slower than `share_from_other' and use more memory.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_Other_Opened: a_other.is_open
		do
			make_from_image(a_other.image)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_for_window(a_window:GAME_WINDOW; a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height'
			-- conforming to `a_window'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		do
			make_for_pixel_format(a_window.pixel_format,a_width,a_height)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_for_display(a_display:GAME_DISPLAY; a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height'
			-- conforming to `a_display'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		do
			make_for_display_mode(a_display.current_mode,a_width,a_height)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make(a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height'
			-- conforming to the first founded {GAME_DISPLAY}.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		do
			if not game_library.displays.is_empty then
				make_for_display_mode(game_library.displays.first.current_mode,a_width,a_height)
			else
				create image.own_from_pointer (create {POINTER})
			end
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_for_display_mode(a_display_mode:GAME_DISPLAY_MODE; a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height'
			-- conforming to `a_display_mode'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		do
			make_for_pixel_format(a_display_mode.pixel_format,a_width,a_height)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_for_pixel_format(a_pixel_format:GAME_PIXEL_FORMAT_READABLE;a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height'
			-- conforming to `a_pixel_format'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		local
			l_bpp:INTEGER
			l_masks:TUPLE[red_mask, green_mask,blue_mask, alpha_mask:NATURAL_32]
		do
			l_bpp:=a_pixel_format.bits_per_pixel
			if a_pixel_format.has_error then
				io.error.put_string ("An error occured while creating the surface.%N")
				io.error.put_string (last_error.to_string_8+"%N")
				has_error:=True
				create image.own_from_pointer (create {POINTER})
			else
				l_masks:=a_pixel_format.masks
				if a_pixel_format.has_error then
					io.error.put_string ("An error occured while creating the surface.%N")
					io.error.put_string (last_error.to_string_8+"%N")
					has_error:=True
					create image.own_from_pointer (create {POINTER})
				else
					make_with_masks(a_width, a_height, l_bpp, l_masks.red_mask, l_masks.green_mask, l_masks.blue_mask, l_masks.alpha_mask)
				end
			end
			is_open:=not has_error
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_with_masks(a_width,a_height,a_bits_per_pixel:INTEGER;a_rmask,a_gmask,a_bmask,a_amask:NATURAL_32)
			-- Initialization for `Current'.
			-- Create a new empty surface with RGBA mask and flags.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		local
			l_surface_pointer:POINTER
			l_image_source:GAME_IMAGE
		do
			clear_error
			l_surface_pointer:={GAME_SDL_EXTERNAL}.SDL_CreateRGBSurface(0,a_width,a_height,a_bits_per_pixel,a_rmask,a_gmask,a_bmask,a_amask)
			if l_surface_pointer.is_default_pointer then
				manage_error_pointer(l_surface_pointer, "An error occured while creating the surface.")
				create image.own_from_pointer (create {POINTER})
			else
				create l_image_source.own_from_pointer (l_surface_pointer)
				if l_image_source.is_openable then
					l_image_source.open
					share_from_image(l_image_source)
				else
					put_manual_error("An error occured while creating the surface.", "Cannot read file.")
					create image.own_from_pointer (create {POINTER})
				end

			end
		ensure
			Surface_Make_is_open: has_error or is_open
		end

feature -- Access

	is_locked:BOOLEAN
			-- `Current' is locked to access `pixels'. `Current' cannot be used until `unlock' is called.
		do
			Result := attached internal_pixels
		end

	must_lock:BOOLEAN
			-- `Current' must be locked for pixel access
		do
			Result := {GAME_SDL_EXTERNAL}.sdl_mustlock (item)
		end

	lock
			-- Lock `Current' to access `pixels'.
			-- Must used `unlock' after the edition.
			-- You cannot draw on `Current' while locked.
		local
			l_error:INTEGER
		do
			clear_error
			if must_lock then
				l_error := {GAME_SDL_EXTERNAL}.sdl_locksurface (item)
				if l_error = 0 then
					create internal_pixels.make_from_pointer ({GAME_SDL_EXTERNAL}.get_sdl_surface_struct_pixels (item), pixel_format, width, height, {GAME_SDL_EXTERNAL}.get_sdl_surface_struct_pitch (item))
				else
					manage_error_code (l_error, "Cannot lock surface.")
				end
			else
				create internal_pixels.make_from_pointer ({GAME_SDL_EXTERNAL}.get_sdl_surface_struct_pixels (item), pixel_format, width, height, {GAME_SDL_EXTERNAL}.get_sdl_surface_struct_pitch (item))
			end

		ensure
			Is_Locked: not has_error implies is_locked
		end

	unlock
			-- Unlock `Current' after access `pixels'.
		require
			Is_Locked: is_locked
		do
			if must_lock then
				{GAME_SDL_EXTERNAL}.sdl_unlocksurface (item)
			end
			if attached internal_pixels as la_pixels then
				la_pixels.close
			end
			internal_pixels := Void
		ensure
			Not_Locked: not is_locked
		end

	pixels:GAME_PIXEL_READER_WRITER
			-- Used to fetch and edit pixels in `Current'
			-- Use `lock' before to access multiple pixels
		require
			Locked_If_Needed: must_lock implies is_locked
		do
			if attached internal_pixels as la_pixels then
				Result := la_pixels
			else
				create Result.make_from_pointer ({GAME_SDL_EXTERNAL}.get_sdl_surface_struct_pixels (item), pixel_format, width, height, {GAME_SDL_EXTERNAL}.get_sdl_surface_struct_pitch (item))
			end
		end

	image:GAME_IMAGE
		-- The {GAME_IMAGE} that has served for creating `Current'

	is_open:BOOLEAN
			-- `Current' has been opened properly

	as_converted_to_pixel_format(a_pixel_format:GAME_PIXEL_FORMAT_READABLE):GAME_SURFACE
			-- Create a copy of `Current' conforming to `a_pixel_format'.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Convert_is_open: is_open
			Not_Locked: not is_locked
		local
			l_source:GAME_IMAGE
		do
			has_error:=False
			create l_source.own_from_pointer ({GAME_SDL_EXTERNAL}.SDL_ConvertSurfaceFormat(item, a_pixel_format.internal_index, 0))
			if l_source.is_openable then
				l_source.open
				if l_source.is_open then
					create Result.share_from_image (l_source)
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

	pixel_format:GAME_PIXEL_FORMAT_READABLE
			-- The internal format of the pixel representation in memory.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Pixel_Format_is_open: is_open
		do
			create Result.share_from_structure_pointer ({GAME_SDL_EXTERNAL}.get_sdl_surface_struct_format(item))
		end

	draw_surface(a_other:GAME_SURFACE;a_x,a_y:INTEGER)
			-- Draw the whole surface `a_other' on `Current' at (`a_x',`a_y').
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Draw_is_open: is_open
			Not_Locked: not is_locked
		do
			draw_sub_surface(a_other,0,0,a_other.width,a_other.height,a_x,a_y)
		end

	draw_sub_surface(a_other:GAME_SURFACE;a_x_source,a_y_source,a_width,a_height,a_x_destination,a_y_destination:INTEGER)
			-- Draw on `Current' at (`a_x_destination',`a_y_destination') the portion of `a_other'
			-- starting at (`a_x_source',`a_y_source') with dimension `a_width' x `a_height'.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Draw_is_open: is_open
			Not_Locked: not is_locked
		do
			internal_draw_surface(a_other, a_x_source,a_y_source,a_width,a_height,a_x_destination,a_y_destination, a_width, a_height, False)
		end

	draw_sub_surface_with_scale(a_other:GAME_SURFACE;a_x_source,a_y_source,a_width_source,a_height_source,a_x_destination,a_y_destination, a_width_destination, a_height_destination:INTEGER)
			-- Draw on `Current' at (`a_x_destination',`a_y_destination') the portion of `a_other'
			-- starting at (`a_x_source',`a_y_source') with dimension `a_width' x `a_height'.
			-- Will scale `a_other' using `a_width_destination' and `a_height_destination'
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Draw_is_open: is_open
			Not_Locked: not is_locked
		do
			internal_draw_surface(a_other, a_x_source, a_y_source, a_width_source, a_height_source,
									a_x_destination,a_y_destination, a_width_destination,
									a_height_destination, True)
		end

	draw_rectangle(a_color:GAME_COLOR;a_x,a_y,a_width,a_height:INTEGER)
			-- Draw a `a_color' rectangle of dimension `a_width' x `a_height' on `Current' at (`a_x',`a_y').
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Draw_is_open: is_open
			Not_Locked: not is_locked
		local
			l_rect_src, l_format:POINTER
			l_error:INTEGER
			l_color_key:NATURAL_32
			l_normalized_rectangle:TUPLE[x, y, width, height:INTEGER]
		do
			clear_error
			l_format:=pixel_format.item
			if pixel_format.has_error then
				manage_error_boolean (False, "Cannot retreive the pixel format of the surface.")
			else
				l_normalized_rectangle := normalize_rectangle(a_x, a_y, a_width, a_height)
				l_rect_src:=l_rect_src.memory_calloc (1, {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect)
				{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_src,l_normalized_rectangle.x)
				{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_src,l_normalized_rectangle.y)
				{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_src,l_normalized_rectangle.width)
				{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_src,l_normalized_rectangle.height)
				l_color_key:={GAME_SDL_EXTERNAL}.SDL_MapRGBA(l_format,a_color.red,a_color.green,a_color.blue,a_color.alpha)
				l_error:={GAME_SDL_EXTERNAL}.SDL_FillRect(item,l_rect_src,l_color_key)
				manage_error_code(l_error, "An error occured while drawing rectangle to the surface.")
				l_rect_src.memory_free
			end

		end

	draw_rectangles(a_color:GAME_COLOR;a_rectangles:CHAIN[TUPLE[x, y, width, height:INTEGER]])
			-- Drawing every `a_color' rectangle in `a_rectangles'
			-- that has it's left frontier at
			-- `x', it's top frontier at `y', with
			-- dimension `width'x`height'
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Draw_is_open: is_open
			Not_Locked: not is_locked
		local
			l_array_rectangles, l_rectangle, l_format:POINTER
			l_rectangle_size, l_error:INTEGER
			l_color_key:NATURAL_32
			l_normalized_rectangle:TUPLE[x, y, width, height:INTEGER]
		do
			clear_error
			l_format:=pixel_format.item
			if pixel_format.has_error then
				manage_error_boolean (False, "Cannot retreive the pixel format of the surface.")
			else
				l_rectangle_size := {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect
				l_array_rectangles := l_array_rectangles.memory_alloc (l_rectangle_size * a_rectangles.count)
				l_rectangle := l_array_rectangles
				across a_rectangles as la_rectangles loop
					l_normalized_rectangle := normalize_rectangle(la_rectangles.item.x, la_rectangles.item.y, la_rectangles.item.width, la_rectangles.item.height)
					{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rectangle,l_normalized_rectangle.x)
					{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rectangle,l_normalized_rectangle.y)
					{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rectangle,l_normalized_rectangle.width)
					{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rectangle,l_normalized_rectangle.height)
					l_rectangle := l_rectangle.plus (l_rectangle_size)
				end
				l_color_key:={GAME_SDL_EXTERNAL}.SDL_MapRGBA(l_format,a_color.red,a_color.green,a_color.blue,a_color.alpha)
				l_error:={GAME_SDL_EXTERNAL}.SDL_FillRects(item,l_array_rectangles, a_rectangles.count, l_color_key)
				manage_error_code(l_error, "An error occured while drawing rectangles to the surface.")
				l_array_rectangles.memory_free
			end
		end

	transparent_color:GAME_COLOR_READABLE assign set_transparent_color
			-- The color that will be remove in the surface (the transparent color).
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_is_open: is_open
			Surface_Transparent_Color_Is_Enable: is_transparent_enable
			Not_Locked: not is_locked
		local
			l_red,l_green,l_blue,l_alpha:NATURAL_8
			l_color_key:NATURAL_32
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetColorKey(item, $l_color_key)
			if l_error<0 then
				manage_error_code(l_error, "An error occured while getting the transparent color of the surface.")
				create Result.make (0, 0, 0,0)
			else
				{GAME_SDL_EXTERNAL}.SDL_GetRGBA(l_color_key,pixel_format.item,$l_red,$l_green,$l_blue,$l_alpha)
				create Result.make (l_red, l_green, l_blue,l_alpha)
			end

		end

	set_transparent_color(a_color:GAME_COLOR_READABLE)
			-- Change all pixel of color `color' into transparency (and enable it). The transparency by color don't work if the surface
			-- have an alpha blending activated.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_is_open: is_open
			Not_Locked: not is_locked
		local
			l_key:NATURAL_32
			l_error:INTEGER
		do
			l_key:={GAME_SDL_EXTERNAL}.SDL_MapRGB(pixel_format.item,a_color.red, a_color.green, a_color.blue)
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetColorKey(item,{GAME_SDL_EXTERNAL}.Sdl_true,l_key)
			if l_error<0 then
				manage_error_code(l_error, "An error occured while setting the transparent color to the surface.")
			else
				enable_rle_acceleration
			end
		end

	is_transparent_enable:BOOLEAN
			-- Is transparency by color key is enabled.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_is_open: is_open
			Not_Locked: not is_locked
		local
			l_error:INTEGER
			l_color_key:NATURAL_32
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetColorKey(item, $l_color_key)
			if l_error<-1 then
				manage_error_code(l_error, "An error occured while getting the transparent color of the surface.")
			end
			Result := l_error /= -1
		end

	disable_transparent
			-- Remove the transparency by color key.
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_is_open: is_open
			Not_Locked: not is_locked
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetColorKey(item,{GAME_SDL_EXTERNAL}.Sdl_false,0)
			if l_error<0 then
				manage_error_code(l_error, "An error occured while disabling the transparent color of the surface.")
			else
				disable_rle_acceleration
			end
		end


	height:INTEGER
			-- The `height' of `Current'.
		require
			Surface_is_open: is_open
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_surface_struct_h(item)
		end

	width:INTEGER
			-- The `width' of `Current'.
		require
			Surface_is_open: is_open
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_surface_struct_w(item)
		end


	overall_alpha:NATURAL_8 assign set_overall_alpha
			-- The Additionnal alpha value to use in drawing operation.
		require
			Surface_is_open: is_open
			Not_Locked: not is_locked
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetSurfaceAlphaMod(item, $Result)
			manage_error_code(l_error, "An error occured while retrieving the overall alpha value of the surface.")
		end

	set_overall_alpha(a_overall_alpha:NATURAL_8)
			-- Assign the Additionnal `overall_alpha' value to use in drawing operation to `a_overall_alpha'.
		require
			Surface_is_open: is_open
			Not_Locked: not is_locked
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceAlphaMod(item, a_overall_alpha)
			manage_error_code(l_error, "An error occured while setting the overall alpha value of the surface.")
		end

	color_multiplier:TUPLE[red_multipier, green_multipier, blue_multipier:NATURAL_8]
			-- The additional color value multiplied into drawing operations
		require
			Surface_is_open: is_open
			Not_Locked: not is_locked
		local
			l_error:INTEGER
			l_red, l_green, l_blue:NATURAL_8
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetSurfaceColorMod(item, $l_red, $l_green, $l_blue)
			manage_error_code(l_error, "An error occured while retrieving the color multiplier value of the surface.")
			Result:=[l_red, l_green, l_blue]
		end

	set_color_multiplier(a_red_multiplier, a_green_multiplier, a_blue_multiplier:NATURAL_8)
			-- Assign the Additionnal `color_multiplier' value to use into drawing operation to `a_red_multiplier',
			-- `a_green_multiplier', `a_blue_multiplier'.
		require
			Surface_is_open: is_open
			Not_Locked: not is_locked
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceColorMod(item, a_red_multiplier, a_green_multiplier, a_blue_multiplier)
			manage_error_code(l_error, "An error occured while setting the overall alpha value on the surface.")
		end

	enable_rle_acceleration
			-- Enable possible optimisation when using drawing with `transparent_color' enabled or `enable_alpha_blending'.
		require
			Surface_is_open: is_open
			Not_Locked: not is_locked
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceRLE(item, 1)
			manage_error_code(l_error, "An error occured when enabling RLE acceleration on the surface.")
		end

	disable_rle_acceleration
			-- Disable the possible optimisation when using drawing with `transparent_color' enabled or `enable_alpha_blending'.
		require
			Surface_is_open: is_open
			Not_Locked: not is_locked
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SetSurfaceRLE(item, 0)
			manage_error_code(l_error, "An error occured when disabling RLE acceleration on the surface.")
		end

	save_bmp(a_filename:READABLE_STRING_GENERAL)
			-- Save `Current' into a BMP image file
		require
			Surface_is_open: is_open
		local
			l_error:INTEGER
			l_filename_c:C_STRING
		do
			create l_filename_c.make(a_filename)
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_SaveBMP(item, l_filename_c.item)
			manage_error_code(l_error, "An error occured when saving Surface to bmp file.")
		end

feature {GAME_SDL_ANY} -- Implementation

	item:POINTER
			-- The internal pointer to the image
		do
			Result := image.item
		end

feature {NONE} -- Implementation

	internal_draw_surface(a_other:GAME_SURFACE;a_x_source,a_y_source,a_width_source,a_height_source,a_x_destination,a_y_destination, a_width_destination, a_height_destination:INTEGER; a_must_scale:BOOLEAN)
			-- Draw on `Current' at (`a_x_destination',`a_y_destination') the portion of `a_other'
			-- starting at (`a_x_source',`a_y_source') with dimension `a_width' x `a_height'.
			-- If `a_must_scale' is set, will scale using `a_width_destination' and `a_height_destination'
		require
			Surface_Is_Video_Enable:game_library.is_video_enable
			Surface_Draw_is_open: is_open
			Not_Locked: not is_locked
		local
			l_rect_src, l_rect_dst:POINTER
			l_error:INTEGER
			l_normalized_rectangle_source, l_normalized_rectangle_destination:TUPLE[x, y, width, height:INTEGER]
		do
			l_normalized_rectangle_source := normalize_rectangle (a_x_source, a_y_source, a_width_source, a_height_source)
			l_normalized_rectangle_destination := normalize_rectangle (a_x_destination, a_y_destination, a_width_destination, a_height_destination)
			l_rect_src:=l_rect_src.memory_calloc (1, {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect)
			l_rect_dst:=l_rect_dst.memory_calloc (1, {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_src,l_normalized_rectangle_source.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_src,l_normalized_rectangle_source.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_src,l_normalized_rectangle_source.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_src,l_normalized_rectangle_source.height)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_dst,l_normalized_rectangle_destination.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_dst,l_normalized_rectangle_destination.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_dst,l_normalized_rectangle_destination.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_dst,l_normalized_rectangle_destination.height)
			clear_error
			if a_must_scale then
				l_error:={GAME_SDL_EXTERNAL}.SDL_BlitScaled(a_other.image.item ,l_rect_src, item, l_rect_dst)
			else
				l_error:={GAME_SDL_EXTERNAL}.SDL_BlitSurface(a_other.image.item ,l_rect_src, item, l_rect_dst)
			end
			manage_error_code(l_error, "An error occured while drawing to the surface.")
			l_rect_dst.memory_free
			l_rect_src.memory_free
		end

	internal_pixels:detachable GAME_PIXEL_READER_WRITER
			-- Internal representation of the `pixels' feature

feature {NONE} -- External

	c_get_blend_mode(a_item, a_blend_mode:POINTER):INTEGER
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetSurfaceBlendMode(a_item, a_blend_mode)
		end

	c_set_blend_mode(a_item:POINTER; a_blend_mode:INTEGER):INTEGER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_SetSurfaceBlendMode(a_item, a_blend_mode)
		end

invariant
	Surface_Valid: is_open implies image.is_open

end
