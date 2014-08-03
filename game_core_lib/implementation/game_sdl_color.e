note
	description: "GAME_COLOR to use with SDL"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SDL_COLOR

inherit
	GAME_COLOR
		redefine
			out, is_equal,make,red,green,blue, alpha,set_red,set_green,set_blue, set_alpha
		end
	DISPOSABLE
		undefine
			out, is_equal
		end
	GAME_SDL_ANY
		undefine
			out, is_equal
		end

create
	make,
	make_rgb,
	make_from_hexadecimal,
	make_rgb_from_hexadecimal,
	make_from_other,
	make_from_pointer,
	share_from_pointer,
	own_from_pointer

feature {NONE} -- Initialization

	make(a_red,a_green,a_blue,a_alpha:NATURAL_8)
		-- <Precursor>
	do
		internal_pointer:=internal_pointer.memory_alloc ({GAME_SDL_EXTERNAL}.c_Sizeof_sdl_color)
		must_free:=True
		Precursor(a_red,a_green,a_blue,a_alpha)
	ensure then
		SDL_Color_Make_Pointer_Valid: internal_pointer /= Void and then not internal_pointer.is_default_pointer
	end

	make_from_pointer(a_internal_pointer:POINTER)
			-- Initialize `Current' by copying the color pointed by `a_internal_pointer'.
		do
			make({GAME_SDL_EXTERNAL}.get_sdl_color_struct_r(a_internal_pointer),
					{GAME_SDL_EXTERNAL}.get_sdl_color_struct_g(a_internal_pointer),
					{GAME_SDL_EXTERNAL}.get_sdl_color_struct_b(a_internal_pointer),
					{GAME_SDL_EXTERNAL}.get_sdl_color_struct_a(a_internal_pointer))
		end

	share_from_pointer(a_internal_pointer:POINTER)
			-- Initialization for `Current' using an already existing internal color pointed by `a_internal_pointer'.
			-- Note that the `a_internal_pointer' will not be free by `Current'.
		do
			internal_pointer:=a_internal_pointer
			must_free:=False
		end

	own_from_pointer(a_internal_pointer:POINTER)
			-- Initialization for `Current' using an already existing internal color pointed by `a_internal_pointer'.
			-- Note that the `a_internal_pointer' will be free by `Current' after it's use.
		do
			internal_pointer:=a_internal_pointer
			must_free:=True
		end


feature -- Access

	red:NATURAL_8 assign set_red
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_color_struct_r(internal_pointer)
		end

	green:NATURAL_8 assign set_green
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_color_struct_g(internal_pointer)
		end

	blue:NATURAL_8 assign set_blue
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_color_struct_b(internal_pointer)
		end

	alpha:NATURAL_8 assign set_alpha
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_color_struct_a(internal_pointer)
		end

	set_red(a_red:NATURAL_8)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_color_struct_r(internal_pointer,a_red)
		end

	set_green(a_green:NATURAL_8)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_color_struct_g(internal_pointer,a_green)
		end

	set_blue(a_blue:NATURAL_8)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_color_struct_b(internal_pointer,a_blue)
		end

	set_alpha(a_alpha:NATURAL_8)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_color_struct_a(internal_pointer,a_alpha)
		end

	out:STRING_8
			-- <Precursor>
		do
			Result:=Precursor {GAME_COLOR}
		end

	is_equal(a_other:like Current):BOOLEAN
			-- <Precursor>
		do
			Result:=Precursor {GAME_COLOR}(a_other)
		end

feature {GAME_SURFACE} -- Internal

	internal_pointer:POINTER

feature {NONE} -- Implementation

	must_free:BOOLEAN

	dispose
	do
		if must_free then
			internal_pointer.memory_free
		end
	end

invariant
	Sdl_Color_Pointer_Valid: internal_pointer /= Void and then not internal_pointer.is_default_pointer

end
