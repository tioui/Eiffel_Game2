note
	description: "A color palette to be used in 8 bits per pixel surface"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_COLOR_PALETTE

inherit
	GAME_SDL_ANY
		redefine
			is_equal
		end
	MEMORY_STRUCTURE
		rename
			make as make_structure,
			shared as shared_structure,
			item as internal_pointer
		export
			{NONE} shared_structure, make_by_pointer, make_structure
			{GAME_SDL_ANY} internal_pointer
		redefine
			is_equal
		end
	DISPOSABLE
		redefine
			is_equal
		end
	READABLE_INDEXABLE [GAME_COLOR_READABLE]
		rename
			item as at alias "[]"
		redefine
			is_equal
		end
	BILINEAR [GAME_COLOR_READABLE]
		redefine
			is_equal
		end

create {GAME_PIXEL_FORMAT_READABLE}
	make_shared

create
	make

feature {NONE} -- Initilisation

	make(a_count:INTEGER)
			-- Initialization of `Current' containing `a_color_count' colors
		require
			Count_Strictly_Positive: a_count > 0
		local
			l_palette_pointer:POINTER
		do
			compare_objects
			l_palette_pointer := {GAME_SDL_EXTERNAL}.SDL_AllocPalette(a_count)
			if l_palette_pointer.is_default_pointer then
				manage_error_pointer(l_palette_pointer, "Cannot create palette.")
			else
				make_shared(l_palette_pointer)
				shared := False
			end
		end

	make_shared(a_item:POINTER)
			-- Initialisation of `Current' using `a_item' as internal pointer
			-- Does not free memory pointer by `a_item'
		require
			Item_Not_Null: not a_item.is_default_pointer
		do
			compare_objects
			make_by_pointer(a_item)
			shared := True
		end

feature -- Access

	count:INTEGER
			-- Number of `item'
		require
			Palette_Exist: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_palette_struct_ncolors(internal_pointer)
		end

	index_set: INTEGER_INTERVAL
			-- <Precursor>
		require else
			Palette_Exist: exists
		do
			if exists then
				create Result.make (1, count)
			else
				create Result.make (1, 0)
			end

		end

	valid_index (i: INTEGER): BOOLEAN
			-- <Precursor>
		require else
			Palette_Exist: exists
		do
			Result := (i >= index_set.lower) and (i <= index_set.upper)
		end

	at alias "[]" (a_index:INTEGER):GAME_COLOR_READABLE assign put_i_th
			-- Retreive the color at `a_index'
		require else
			Palette_Exist: exists
		local
			l_color_pointer:POINTER
			l_color:GAME_COLOR
		do
			if exists then
				l_color_pointer := {GAME_SDL_EXTERNAL}.get_sdl_palette_struct_color_i(internal_pointer, a_index)
				create {GAME_SDL_COLOR} l_color.share_from_pointer(l_color_pointer)
			else
				create l_color.make_rgb (0, 0, 0)
			end
			Result := l_color
		end

	put_i_th(a_color:GAME_COLOR_READABLE; a_index:INTEGER)
			-- Put `a_color' at `a_index'-th position.
		local
			l_color:GAME_COLOR
		do
			if attached {GAME_COLOR} at(a_index) as la_color then
				la_color.red := a_color.red
				la_color.blue := a_color.blue
				la_color.green := a_color.green
				la_color.alpha := a_color.alpha
			end
		ensure
			Is_Set: at(a_index) ~ a_color
		end

	index: INTEGER
			-- <Precursor>

	start
			-- <Precursor>
		do
			index := 1
		end

	item: GAME_COLOR_READABLE
			-- <Precursor>
		do
			Result := at(index)
		end

	is_empty:BOOLEAN
			-- <Precursor>
		do
			Result := False
		end

	forth
			-- <Precursor>
		do
			index := index + 1
		end

	finish
			-- <Precursor>
		require else
			Palette_Exist: exists
		do
			if exists then
				index := count
			end
		end

	before:BOOLEAN
			-- <Precursor>
		do
			if not exists then
				Result := True
			else
				Result := index = 0
			end
		end

	after:BOOLEAN
			-- <Precursor>
		do
			if exists then
				Result := (index = count + 1)
			else
				Result := True
			end
		end

	back
			-- <Precursor>
		do
			index := index - 1
		end

	is_equal(a_other: GAME_COLOR_PALETTE):BOOLEAN
			-- <Precursor>
		do
			from
				Result := count = a_other.count
				start
				a_other.start
			until
				not Result or off or a_other.off
			loop
				Result := Result and item ~ a_other.item
				forth
				a_other.forth
			end
		end

feature {NONE} -- Implementation

	structure_size: INTEGER_32
			-- <Precursor>
		do
			Result := 0
		end

	shared:BOOLEAN
			-- Is `Current' share it's internal pointer with other object
			-- If so, it will not free the memory on `dispose'

	dispose
			-- <Precursor>
		do
			if not shared then
				{GAME_SDL_EXTERNAL}.SDL_FreePalette(internal_pointer)
			end
		end
end
