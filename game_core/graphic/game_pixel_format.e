note
	description: "The way the pixels are store in memory."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_PIXEL_FORMAT

inherit
	GAME_PIXEL_FORMAT_READABLE
		redefine
			default_create
		end

create
	default_create,
	make_from_other

create {GAME_SDL_ANY}
	make_from_flags,
	make_from_structure_pointer,
	share_from_structure_pointer,
	own_from_structure_pointer,
	make_from_bits_per_pixel_and_masks

feature {NONE} -- Initialisation

	default_create
			-- Initialization of `Current'
		do
			set_unknown
		end

feature -- Access

	set_unknown
			-- Set the pixel format of `Current' to unknown
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_unknown)
		ensure
			Pixel_Format_Changed: is_unknown
		end

	set_index1lsb
			-- Set the pixel format of `Current' to index1lsb
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_index1lsb)
		ensure
			Pixel_Format_Changed: is_index1lsb
		end

	set_index1msb
			-- Set the pixel format of `Current' to index1msb
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_index1msb)
		ensure
			Pixel_Format_Changed: is_index1msb
		end

	set_index4lsb
			-- Set the pixel format of `Current' to index4lsb
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_index4lsb)
		ensure
			Pixel_Format_Changed: is_index4lsb
		end

	set_index4msb
			-- Set the pixel format of `Current' to index4msb
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_index4msb)
		ensure
			Pixel_Format_Changed: is_index4msb
		end

	set_index8
			-- Set the pixel format of `Current' to index8
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_index8)
		ensure
			Pixel_Format_Changed: is_index8
		end

	set_rgb332
			-- Set the pixel format of `Current' to rgb332
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb332)
		ensure
			Pixel_Format_Changed: is_rgb332
		end

	set_rgb444
			-- Set the pixel format of `Current' to rgb444
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb444)
		ensure
			Pixel_Format_Changed: is_rgb444
		end

	set_rgb555
			-- Set the pixel format of `Current' to rgb555
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb555)
		ensure
			Pixel_Format_Changed: is_rgb555
		end

	set_bgr555
			-- Set the pixel format of `Current' to bgr555
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr555)
		ensure
			Pixel_Format_Changed: is_bgr555
		end

	set_argb4444
			-- Set the pixel format of `Current' to argb4444
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb4444)
		ensure
			Pixel_Format_Changed: is_argb4444
		end

	set_rgba4444
			-- Set the pixel format of `Current' to rgba4444
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgba4444)
		ensure
			Pixel_Format_Changed: is_rgba4444
		end

	set_abgr4444
			-- Set the pixel format of `Current' to abgr4444
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_abgr4444)
		ensure
			Pixel_Format_Changed: is_abgr4444
		end

	set_bgra4444
			-- Set the pixel format of `Current' to bgra4444
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgra4444)
		ensure
			Pixel_Format_Changed: is_bgra4444
		end

	set_argb1555
			-- Set the pixel format of `Current' to argb1555
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb1555)
		ensure
			Pixel_Format_Changed: is_argb1555
		end

	set_rgba5551
			-- Set the pixel format of `Current' to rgba5551
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgba5551)
		ensure
			Pixel_Format_Changed: is_rgba5551
		end

	set_abgr1555
			-- Set the pixel format of `Current' to abgr1555
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_abgr1555)
		ensure
			Pixel_Format_Changed: is_abgr1555
		end

	set_bgra5551
			-- Set the pixel format of `Current' to bgra5551
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgra5551)
		ensure
			Pixel_Format_Changed: is_bgra5551
		end

	set_rgb565
			-- Set the pixel format of `Current' to rgb565
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb565)
		ensure
			Pixel_Format_Changed: is_rgb565
		end

	set_bgr565
			-- Set the pixel format of `Current' to bgr565
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr565)
		ensure
			Pixel_Format_Changed: is_bgr565
		end

	set_rgb24
			-- Set the pixel format of `Current' to rgb24
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb24)
		ensure
			Pixel_Format_Changed: is_rgb24
		end

	set_bgr24
			-- Set the pixel format of `Current' to bgr24
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr24)
		ensure
			Pixel_Format_Changed: is_bgr24
		end

	set_rgb888
			-- Set the pixel format of `Current' to rgb888
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgb888)
		ensure
			Pixel_Format_Changed: is_rgb888
		end

	set_rgbx8888
			-- Set the pixel format of `Current' to rgbx8888
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgbx8888)
		ensure
			Pixel_Format_Changed: is_rgbx8888
		end

	set_bgr888
			-- Set the pixel format of `Current' to bgr888
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgr888)
		ensure
			Pixel_Format_Changed: is_bgr888
		end

	set_bgrx8888
			-- Set the pixel format of `Current' to bgrx8888
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgrx8888)
		ensure
			Pixel_Format_Changed: is_bgrx8888
		end

	set_argb8888
			-- Set the pixel format of `Current' to argb8888
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb8888)
		ensure
			Pixel_Format_Changed: is_argb8888
		end

	set_rgba8888
			-- Set the pixel format of `Current' to rgba8888
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_rgba8888)
		ensure
			Pixel_Format_Changed: is_rgba8888
		end

	set_abgr8888
			-- Set the pixel format of `Current' to abgr8888
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_abgr8888)
		ensure
			Pixel_Format_Changed: is_abgr8888
		end

	set_bgra8888
			-- Set the pixel format of `Current' to bgra8888
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_bgra8888)
		ensure
			Pixel_Format_Changed: is_bgra8888
		end

	set_argb2101010
			-- Set the pixel format of `Current' to argb2101010
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_argb2101010)
		ensure
			Pixel_Format_Changed: is_argb2101010
		end

	set_yv12
			-- Set the pixel format of `Current' to yv12
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_yv12)
		ensure
			Pixel_Format_Changed: is_yv12
		end

	set_iyuv
			-- Set the pixel format of `Current' to iyuv
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_iyuv)
		ensure
			Pixel_Format_Changed: is_iyuv
		end

	set_yuy2
			-- Set the pixel format of `Current' to yuy2
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_yuy2)
		ensure
			Pixel_Format_Changed: is_yuy2
		end

	set_uyvy
			-- Set the pixel format of `Current' to uyvy
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_uyvy)
		ensure
			Pixel_Format_Changed: is_uyvy
		end

	set_yvyu
			-- Set the pixel format of `Current' to yvyu
		do
			set_internal_index({GAME_SDL_EXTERNAL}.Sdl_pixelformat_yvyu)
		ensure
			Pixel_Format_Changed: is_yvyu
		end

end
