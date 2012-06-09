note
	description: "[
		The screen.Must be return by an object of type GAME_SDL_CONTROLLER
		or GAME_LIB_CONTROLLER.
		
		Use it as if it was a simple GAME_SURFACE.
		]"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SCREEN

inherit
	GAME_SURFACE
	rename
		make as make_base
	redefine
		height,width,get_sub_surface

	end

create {GAME_SDL_CONTROLLER}
	make
create
	make_from_current_video_surface

feature {NONE} -- Initialisation

	make(the_width,the_height,the_bit_per_pixel:INTEGER;flags:NATURAL_32)
			-- Initialization for `Current'.
		do
			start_x:=0
			start_y:=0
			set_width(the_width)
			set_height(the_height)
			set_surface_pointer({GAME_SDL_EXTERNAL}.SDL_SetVideoMode(the_width,the_height,the_bit_per_pixel,flags))
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
			Result:={GAME_SDL_EXTERNAL}.get_surface_struct_h(get_surface_pointer)
		end

	width:INTEGER
			-- Return the width of the screen surface.
		do
			Result:={GAME_SDL_EXTERNAL}.get_surface_struct_w(get_surface_pointer)
		end

	get_sub_surface (from_x, from_y, sub_width, sub_height: INTEGER): GAME_SURFACE
			-- Return a part of screen surface.
		local
			format:POINTER
		do
			format:={GAME_SDL_EXTERNAL}.get_surface_struct_format(get_surface_pointer)
			create Result.make_with_flags_and_masks({GAME_SDL_EXTERNAL}.SDL_HWSURFACE,sub_width, sub_height,bits_per_pixel,
						{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Rmask(format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Gmask(format),
						{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Bmask(format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Amask(format))
			Result.print_surface_part_on_surface (Current,from_x,from_y,0,0, sub_width,sub_height)
		end

	set_captions(window_caption,icon_caption:STRING)
		local
			caption_c, icon_caption_c:C_STRING
		do
			create caption_c.make (window_caption)
			create icon_caption_c.make (icon_caption)
			{GAME_SDL_EXTERNAL}.SDL_WM_SetCaption(caption_c.item,icon_caption_c.item)
		end


end
