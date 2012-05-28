note
	description: "Create a new 32 bits empty GAME_SURFACE"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SURFACE_RGB

inherit
	GAME_SURFACE

create
	make,
	make_with_bits_per_pixel_flags_and_rgba

feature {NONE} -- Initialisation

	make(the_width,the_height,the_bits_per_pixel:INTEGER;video_memory:BOOLEAN)
			-- Initialization for `Current'.
			-- Create a new empty surface.
		local
			flags:NATURAL_32
		do
			if video_memory then
				flags:={GAME_SDL_EXTERNAL}.SDL_HWSURFACE
			else
				flags:={GAME_SDL_EXTERNAL}.SDL_SWSURFACE
			end
			make_with_bits_per_pixel_flags_and_rgba(flags,the_width,the_height,the_bits_per_pixel,0,0,0,0)
		end

	make_with_bits_per_pixel_flags_and_rgba(flags:NATURAL_32;the_width,the_height,the_bits_per_pixel:INTEGER;Rmask,Gmask,Bmask,Amask:NATURAL_32)
			-- Initialization for `Current'.
			-- Create a new empty surface with RGBA mask and flags.
		do
			set_surface_pointer({GAME_SDL_EXTERNAL}.SDL_CreateRGBSurface(flags,the_width,the_height,the_bits_per_pixel,Rmask,Gmask,Bmask,Amask))
			start_x:=0
			start_y:=0
			set_width(the_width)
			set_height(the_height)
			set_is_alpha_accelerated(false)
		end

end
