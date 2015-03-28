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
			make, red, green, blue, alpha, set_red, set_green, set_blue, set_alpha
		end
	GAME_SDL_ANY
		undefine
			out, is_equal
		end
	MEMORY_STRUCTURE
		rename
			make as make_structure,
			make_by_pointer as share_from_pointer
		export
			{GAME_SDL_ANY} item
			{NONE} make_structure, share_from_pointer, exists
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
	share_from_pointer

feature {NONE} -- Initialization

	make(a_red,a_green,a_blue,a_alpha:NATURAL_8)
		-- <Precursor>
	do
		make_structure
		Precursor(a_red,a_green,a_blue,a_alpha)
	ensure then
		SDL_Color_Make_Pointer_Valid: item /= Void and then not item.is_default_pointer
	end

	make_from_pointer(a_item:POINTER)
			-- Initialize `Current' by copying the color pointed by `a_item'.
		do
			make({GAME_SDL_EXTERNAL}.get_sdl_color_struct_r(a_item),
					{GAME_SDL_EXTERNAL}.get_sdl_color_struct_g(a_item),
					{GAME_SDL_EXTERNAL}.get_sdl_color_struct_b(a_item),
					{GAME_SDL_EXTERNAL}.get_sdl_color_struct_a(a_item))
		end

	own_from_pointer(a_item:POINTER)
			-- Initialization for `Current' using an already existing internal color pointed by `a_item'.
			-- Note that the `a_item' will be free by `Current' after it's use.
		do
			internal_item := create {POINTER}
			create managed_pointer.own_from_pointer (a_item, structure_size)
			shared := False
		ensure
			Not_Shared: not shared
		end


feature -- Access

	red:NATURAL_8 assign set_red
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_color_struct_r(item)
		end

	green:NATURAL_8 assign set_green
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_color_struct_g(item)
		end

	blue:NATURAL_8 assign set_blue
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_color_struct_b(item)
		end

	alpha:NATURAL_8 assign set_alpha
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.get_sdl_color_struct_a(item)
		end

	set_red(a_red:NATURAL_8)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_color_struct_r(item,a_red)
		end

	set_green(a_green:NATURAL_8)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_color_struct_g(item,a_green)
		end

	set_blue(a_blue:NATURAL_8)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_color_struct_b(item,a_blue)
		end

	set_alpha(a_alpha:NATURAL_8)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_color_struct_a(item,a_alpha)
		end

feature {NONE} -- Implementation

	structure_size: INTEGER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_color
		end

invariant
	Sdl_Color_Pointer_Valid: item /= Void and then not item.is_default_pointer

end
