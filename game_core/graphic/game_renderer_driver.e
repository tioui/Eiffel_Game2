note
	description: "Information about a renderer driver."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_RENDERER_DRIVER

inherit
	MEMORY_STRUCTURE
		rename
			make as make_structure
		export
			{NONE} shared, item, make_structure, make_by_pointer
		redefine
			out
		end
	GAME_SDL_ANY
		redefine
			out
		end

create
	make,
	make_from_renderer

feature {NONE} -- Initialization

	make(a_index:INTEGER)
			-- Initialization for `Current' using `a_index' as internal `index'.
		local
			l_error_code:INTEGER
		do
			index := a_index
			make_structure
			clear_error
			l_error_code := {GAME_SDL_EXTERNAL}.SDL_GetRenderDriverInfo(index, item)
			manage_error_code(l_error_code, "Cannot get renderer driver with the index " + index.out)
		end

	make_from_renderer(a_renderer:GAME_RENDERER)
			-- Initialization of `Current' using the internal driver used by `a_renderer'
		local
			l_error_code:INTEGER
		do
			index := -1
			make_structure
			clear_error
			l_error_code := {GAME_SDL_EXTERNAL}.SDL_GetRendererInfo(a_renderer.item, item)
			manage_error_code(l_error_code, "Cannot get renderer driver")
		end

feature -- Access

	name:READABLE_STRING_GENERAL
			-- A text identifier of `Current'
		local
			l_name_c:C_STRING
		do
			create l_name_c.make_by_pointer({GAME_SDL_EXTERNAL}.get_sdl_renderer_info_name(item))
			Result := l_name_c.string
		end

	texture_formats_count:INTEGER
			-- The number of `texture_formats' usable in `Current'
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_renderer_info_num_texture_formats(item).to_integer_32
		end

	texture_formats:LIST[GAME_PIXEL_FORMAT_READABLE]
			-- All formats usable for texture using `Current'
		local
			l_index:INTEGER
			l_pixel_format_flags:NATURAL_32
		do
			create {ARRAYED_LIST[GAME_PIXEL_FORMAT_READABLE]} Result.make(texture_formats_count)
			from
				l_index := 0
			until
				l_index >= texture_formats_count
			loop
				l_pixel_format_flags := {GAME_SDL_EXTERNAL}.get_sdl_renderer_info_texture_formats(item, l_index)
				Result.extend(create {GAME_PIXEL_FORMAT_READABLE}.make_from_flags(l_pixel_format_flags))
				l_index := l_index + 1
			end
		end

	maximum_texture_width:INTEGER
			-- The maximum number of pixel in a line of a single texture if using `Current'
			-- (0 for unknown)
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_renderer_info_max_texture_width(item)
		end

	maximum_texture_height:INTEGER
			-- The maximum number of pixel in a row of a single texture if using `Current'
			-- (0 for unknown)
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_renderer_info_max_texture_height(item)
		end

	index:INTEGER
			-- The internal index of `Current'
			-- If negative, the index is unknown

	is_software_rendering_supported:BOOLEAN
			-- `Current' can do software rendering
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.SDL_RENDERER_SOFTWARE) /= 0
		end

	is_hardware_rendering_supported:BOOLEAN
			-- `Current' can do hardware accelerated rendering
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.SDL_RENDERER_ACCELERATED) /= 0
		end

	is_present_synchronized_supported:BOOLEAN
			-- `Current' have present that is synchronized with the refresh rate
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.SDL_RENDERER_PRESENTVSYNC) /= 0
		end

	is_rendering_on_texture_supported:BOOLEAN
			-- `Current' can use a texture as target of rendering (see: {GAME_RENDERER}.`set_render_target')
		do
			Result := flags.bit_and({GAME_SDL_EXTERNAL}.SDL_RENDERER_PRESENTVSYNC) /= 0
		end

	out:STRING_8
			-- <Precursor>
		do
			Result := "Renderer driver: " + name.to_string_8 + "%N"
			Result := Result + "Number: " + index.out + "%N"
			if maximum_texture_height > 0 or maximum_texture_width > 0 then
				Result := Result + "Maximum texture dimension: ("
				Result := Result + maximum_texture_width.out + " , "
				Result := Result + maximum_texture_height.out+ ")%N"
			end
			if is_software_rendering_supported then
				Result := Result + "Software rendering supported%N"
			else
				Result := Result + "Software rendering not supported%N"
			end
			if is_hardware_rendering_supported then
				Result := Result + "Hardware accelerated rendering supported%N"
			else
				Result := Result + "Hardware accelerated rendering not supported%N"
			end
			if is_present_synchronized_supported then
				Result := Result + "Present synchronisation with refresh rate supported%N"
			else
				Result := Result + "Present synchronisation with refresh rate not supported%N"
			end
			if is_rendering_on_texture_supported then
				Result := Result + "Rendering on texture supported%N"
			else
				Result := Result + "Rendering on texture not supported%N"
			end
			Result := Result + "Supported format:%N"
			across texture_formats as la_formats loop
				Result := Result + la_formats.item.out + " "
			end
		end

feature {NONE} -- Measurement

	structure_size: INTEGER_32
			-- Size to allocate (in bytes)
		do
			Result := {GAME_SDL_EXTERNAL}.c_sizeof_sdl_renderer_info
		end

feature {NONE} -- Implementation

	flags:NATURAL_32
			-- Every supported flags supported by `Current.
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_renderer_info_flags(item)
		end

end
