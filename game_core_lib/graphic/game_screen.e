note
	description: "[
		The screen.Must be return by an object of type GAME_SDL_CONTROLLER
		or GAME_LIB_CONTROLLER.
		
		Use it as if it was a simple GAME_SURFACE.
		]"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_SCREEN

inherit
	GAME_SURFACE
	rename
		make as make_base
	redefine
		height,width,sub_surface
	end

create {GAME_SDL_CONTROLLER}
	make
create
	make_from_current_video_surface

feature {NONE} -- Initialisation

	make(a_width,a_height,a_bit_per_pixel:INTEGER;a_flags:NATURAL_32)
			-- Initialization for `Current'.
		do
			start_x:=0
			start_y:=0
			set_width(a_width)
			set_height(a_height)
			set_surface_pointer({GAME_SDL_EXTERNAL}.SDL_SetVideoMode(a_width,a_height,a_bit_per_pixel,a_flags))
			surface_imp.set_not_disposable
			set_is_alpha_accelerated(false)
			disable_alpha
		end

	make_from_current_video_surface
			-- Initialization for `Current'.
			-- Duplicate the video surface
		do
			start_x:=0
			start_y:=0
			set_surface_pointer ({GAME_SDL_EXTERNAL}.SDL_GetVideoSurface)
			set_height(height)
			set_width(width)
			surface_imp.set_not_disposable
			set_is_alpha_accelerated(false)
			disable_alpha
		end

feature -- Access

	height:INTEGER
			-- Return the height of the screen surface.
		do
			Result:={GAME_SDL_EXTERNAL}.get_surface_struct_h(internal_pointer)
		end

	width:INTEGER
			-- Return the width of the screen surface.
		do
			Result:={GAME_SDL_EXTERNAL}.get_surface_struct_w(internal_pointer)
		end

	sub_surface (a_start_x, a_start_y, a_width, a_height: INTEGER): GAME_SURFACE
			-- Return a part of screen surface.
		local
			l_format:POINTER
		do
			l_format:={GAME_SDL_EXTERNAL}.get_surface_struct_format(internal_pointer)
			create Result.make_with_flags_and_masks({GAME_SDL_EXTERNAL}.SDL_HWSURFACE,a_width, a_height,bits_per_pixel,
						{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Rmask(l_format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Gmask(l_format),
						{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Bmask(l_format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Amask(l_format))
			Result.draw_sub_surface (Current,a_start_x,a_start_y,0,0, a_width,a_height)
		end

	set_captions(a_window_caption,a_icon_caption:STRING)
		local
			l_caption_c, l_icon_caption_c:C_STRING
		do
			create l_caption_c.make (a_window_caption)
			create l_icon_caption_c.make (a_icon_caption)
			{GAME_SDL_EXTERNAL}.SDL_WM_SetCaption(l_caption_c.item,l_icon_caption_c.item)
		end


end
