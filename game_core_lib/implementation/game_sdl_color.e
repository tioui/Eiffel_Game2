note
	description: "GAME_COLOR to use with SDL"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SDL_COLOR

inherit
	GAME_COLOR
	rename
		make as make_color,
		make_rgb as make_color_rgb
	redefine
		red,green,blue,set_red,set_green,set_blue
	end

	DISPOSABLE
	export
		{NONE} all
	end

create
	make,
	make_rgb,
	make_from_pointer,
	make_from_pointer_and_alpha,
	make_from_rgba_color

feature {NONE} -- Initialization

	make(a_red,a_green,a_blue,a_alpha:NATURAL_8)
	do
		sdl_color_pointer:={GAME_SDL_EXTERNAL}.c_color_struct_allocate
		make_color(a_red,a_green,a_blue,a_alpha)
	ensure
		SDL_Color_Make_Pointer_Valid: sdl_color_pointer /= Void and then not sdl_color_pointer.is_default_pointer
	end

	make_rgb(a_red,a_green,a_blue:NATURAL_8)
		do
			make(a_red,a_green,a_blue,255)
		end

	make_from_pointer(a_ptr:POINTER)
			-- Initialization for `Current'.
		do
			make_from_pointer_and_alpha(a_ptr,{GAME_SDL_EXTERNAL}.SDL_ALPHA_OPAQUE)
		end

	make_from_pointer_and_alpha(a_ptr:POINTER;a_alpha:NATURAL_8)
		do
			make({GAME_SDL_EXTERNAL}.get_color_struct_r(a_ptr),
					{GAME_SDL_EXTERNAL}.get_color_struct_r(a_ptr),
					{GAME_SDL_EXTERNAL}.get_color_struct_r(a_ptr),
					a_alpha)
		end

	make_from_rgba_color(a_other:GAME_COLOR)
		require
			SDL_Color_Make_From_RGBA_Color_Color_Not_Void: a_other/=Void
		do
			make(a_other.red,a_other.green,a_other.blue,a_other.alpha)
		ensure
			SDL_Color_Make_From_RGBA_Color_Pointer_Valid: sdl_color_pointer /= Void and then not sdl_color_pointer.is_default_pointer
		end


feature -- Access

	red:NATURAL_8
	do
		Result:={GAME_SDL_EXTERNAL}.get_color_struct_r(sdl_color_pointer)
	end

	green:NATURAL_8
	do
		Result:={GAME_SDL_EXTERNAL}.get_color_struct_g(sdl_color_pointer)
	end

	blue:NATURAL_8
	do
		Result:={GAME_SDL_EXTERNAL}.get_color_struct_b(sdl_color_pointer)
	end

feature {GAME_SURFACE} -- Internal

	sdl_color_pointer:POINTER

feature {NONE} -- Implementation

	set_red(a_red:NATURAL_8)
	do
		{GAME_SDL_EXTERNAL}.set_color_struct_r(sdl_color_pointer,a_red)
	end

	set_green(a_green:NATURAL_8)
	do
		{GAME_SDL_EXTERNAL}.set_color_struct_g(sdl_color_pointer,a_green)
	end

	set_blue(a_blue:NATURAL_8)
	do
		{GAME_SDL_EXTERNAL}.set_color_struct_b(sdl_color_pointer,a_blue)
	end


	dispose
	do
		{GAME_SDL_EXTERNAL}.c_color_struct_free(sdl_color_pointer)
	end

invariant
	Sdl_Color_Pointer_Valid: sdl_color_pointer /= Void and then not sdl_color_pointer.is_default_pointer
end
