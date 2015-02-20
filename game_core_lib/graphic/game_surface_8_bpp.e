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
		share_from_image_source as share_from_image_source_surface,
		make_from_image_source as make_from_image_source_surface,
		share_from_other as share_from_other_surface,
		make_from_other as make_from_other_surface,
		make_with_masks as make_with_masks_surface,
		make_for_pixel_format as make_for_pixel_format_surface,
		make_for_display_mode as make_for_display_mode_surface,
		make_for_display as make_for_display_surface,
		make_for_window as make_for_window_surface
	end

create
	share_from_image_source,
	make_from_image_source,
	share_from_other,
	make_from_other,
	make_with_masks,
	make_for_pixel_format,
	make_for_display_mode,
	make_for_display,
	make_for_window

feature {NONE} -- Initialization

	share_from_image_source(a_image_source:GAME_IMAGE_SOURCE)
			-- Create a `Current' from `a_image_source'.
			-- The image source in memory is not copied.
			-- If multiple surface is done with the same `a_image_source',
			-- every modification to surface will affect all.
		require
			Video_Enabled: game_library.is_video_enable
			Image_Source_Is_Open: a_image_source.is_open
			Image_Source_Is_8_Bpp: a_image_source.is_8_bpp
		do
			share_from_image_source_surface(a_image_source)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_from_image_source(a_image_source:GAME_IMAGE_SOURCE)
			-- Create a `Current' from `a_image_source'.
			-- The image source in memory is copied.
			-- Slower than `share_from_image_source' and use more memory.
			-- If multiple surface is done with the same `a_image_source',
			-- every modification to surface will affect all.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_From_Image_Source_Is_Open: a_image_source.is_open
			Image_Source_Is_8_Bpp: a_image_source.is_8_bpp
		do
			make_from_image_source_surface(a_image_source)	
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	share_from_other(a_other:GAME_SURFACE)
			-- Create a `Current' from `a_other'.
			-- The image source in memory is not copied.
			-- If multiple surface is done with the same `a_image_source',
			-- every modification to surface will affect all.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_Other_Opened: a_other.is_open
			Surface_Make_Other_8_bpp: a_other.pixel_format.bits_per_pixel = 8
		do
			share_from_other_surface(a_other)
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
			Surface_Make_Other_8_bpp: a_other.pixel_format.bits_per_pixel = 8
		do
			make_from_other_surface(a_other)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_for_window(a_window:GAME_WINDOW; a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height'
			-- conforming to `a_window'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_Window_8_bpp: a_window.pixel_format.bits_per_pixel = 8
		do
			make_for_window_surface(a_window, a_width, a_height)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_for_display(a_display:GAME_DISPLAY; a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height'
			-- conforming to `a_display'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_Display_8_bpp: a_display.current_mode.pixel_format.bits_per_pixel = 8
		do
			make_for_display_surface(a_display, a_width, a_height)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_for_display_mode(a_display_mode:GAME_DISPLAY_MODE; a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height'
			-- conforming to `a_display_mode'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_Display_Mode_8_bpp: a_display_mode.pixel_format.bits_per_pixel = 8
		do
			make_for_display_mode_surface(a_display_mode, a_width, a_height)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_for_pixel_format(a_pixel_format:GAME_PIXEL_FORMAT_READABLE;a_width,a_height:INTEGER)
			-- Create an empty `Current' of dimension `a_width' x `a_height' conforming to `a_pixel_format'.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
			Surface_Make_Pixel_Format_8_bpp: a_pixel_format.bits_per_pixel = 8
		do
			make_for_pixel_format_surface(a_pixel_format, a_width, a_height)
		ensure
			Surface_Make_is_open: has_error or is_open
		end

	make_with_masks(a_width,a_height:INTEGER;a_Rmask,a_Gmask,a_Bmask,a_Amask:NATURAL_32)
			-- Initialization for `Current'.
			-- Create a new empty surface with RGBA mask and flags.
		require
			Surface_Make_Video_Enabled: game_library.is_video_enable
		do
			make_with_masks_surface(a_width, a_height, 8,a_Rmask, a_Gmask, a_Bmask, a_Amask)
		ensure
			Surface_Make_is_open: has_error or is_open
		end
end
