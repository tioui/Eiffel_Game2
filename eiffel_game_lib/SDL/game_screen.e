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
	redefine
		height,width,get_surface_pointer,get_sub_surface
	end

create {GAME_SDL_CONTROLLER}
	make,
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
		end

	make_from_current_video_surface
			-- Initialization for `Current'.
			-- Duplicate the video surface
		do
			start_x:=0
			start_y:=0
			set_height(height)
			set_width(width)
			set_surface_pointer (get_surface_pointer)
			surface_imp.set_not_disposable
			set_is_alpha_accelerated(false)
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
			Result:=create {GAME_SURFACE_RGB}.make_with_bits_per_pixel_flags_and_rgba({GAME_SDL_EXTERNAL}.SDL_HWSURFACE,sub_width, sub_height,bits_per_pixel,
						{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Rmask(format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Gmask(format),
						{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Bmask(format),{GAME_SDL_EXTERNAL}.get_pixel_format_struct_Amask(format))
			Result.print_surface_part_on_surface (Current,from_x,from_y,0,0, sub_width,sub_height)
		end

--	update_screen
--			-- Flip the screen
--		require
--			Update_Screen_Video_Enable: {GAME_SDL_EXTERNAL}.SDL_WasInit({GAME_SDL_EXTERNAL}.SDL_INIT_VIDEO)={GAME_SDL_EXTERNAL}.SDL_INIT_VIDEO
--		local
--			error:INTEGER
--		do
--			error:={GAME_SDL_EXTERNAL}.SDL_Flip(get_surface_pointer)
--			check error = 0 end
--		end

feature{GAME_SURFACE,GAME_SDL_CONTROLLER} -- Implementation

	get_surface_pointer:POINTER
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetVideoSurface
		end

end
