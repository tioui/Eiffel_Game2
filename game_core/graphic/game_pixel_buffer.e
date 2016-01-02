note
	description: "An internal array of pixels."
	author: "Louis Marchand"
	date: "Sat, 02 Jan 2016 21:31:37 +0000"
	revision: "2.1"

class
	GAME_PIXEL_BUFFER

inherit
	GAME_SDL_ANY


create
	make

feature {NONE} -- Initialization

	make(a_item:POINTER; a_width, a_height, a_pitch:INTEGER)
			-- Initialization for `Current' using `a_item' as `item', `a_width' as `width',
			-- `a_height' as `height' and `a_pitch' as `pitch'
		require
			Exists: not a_item.is_default_pointer
		do
			internal_item := a_item
			width := a_width
			height := a_height
			pitch := a_pitch
			is_valid := True
		ensure
			Item_Not_Null: not item.is_default_pointer
			Item_Set: item ~ a_item
			Item_Valid: is_valid
		end

feature -- Access

	item:POINTER
			-- Memory pointer to the pixels array
		require
			Pointer_Valid: is_valid
		do
			Result := internal_item
		end

	width, height:INTEGER
			-- Dimensions of the pixel array

	pitch:INTEGER
			-- Length of a row of pixels in bytes

feature -- Status report

	is_valid:BOOLEAN
			-- `item' can be read/write

feature {GAME_SURFACE} -- Implementation

	close
			-- Put `item' as not valid.
		do
			is_valid := False
		end

feature {NONE} -- Implementation

	internal_item:POINTER
			-- Memory pointer to the pixels array

invariant
	Exists: not item.is_default_pointer

end
