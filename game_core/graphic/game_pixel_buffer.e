note
	description: "An internal array of pixels."
	author: "Louis Marchand"
	date: "Sat, 02 Jan 2016 21:31:37 +0000"
	revision: "2.1"

class
	GAME_PIXEL_BUFFER

inherit
	GAME_SDL_ANY
	PLATFORM
		export
			{NONE} all
		end


create
	make

feature {NONE} -- Initialization

	make(a_item:POINTER; a_format:GAME_PIXEL_FORMAT_READABLE; a_width, a_height, a_pitch:INTEGER)
			-- Initialization for `Current' using `a_item' as `item', `a_format' as `pixel_format',
			-- `a_width' as `width', `a_height' as `height' and `a_pitch' as `pitch'
		require
			Exists: not a_item.is_default_pointer
			Not_Indexed: not a_format.is_indexed
		local
			l_mask_information:TUPLE[position, bit_count:INTEGER]
			l_masks:TUPLE[red, green, blue, alpha:NATURAL_32]
		do
			create internal_item.share_from_pointer (a_item, a_height * a_pitch)
			width := a_width
			height := a_height
			pitch := a_pitch
			pixel_format := a_format
			bytes_per_pixel := pixel_format.bytes_per_pixel
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
			Result := internal_item.item
		end

	width, height:INTEGER
			-- Dimensions of the pixel array

	pitch:INTEGER
			-- Length of a row of pixels in bytes

	pixel_format: GAME_PIXEL_FORMAT_READABLE

feature -- Status report

	is_valid:BOOLEAN
			-- `item' can be accessed

feature {GAME_SURFACE} -- Implementation

	close
			-- Put `item' as not valid.
		do
			is_valid := False
		end

feature {NONE} -- Implementation

	internal_item:MANAGED_POINTER
			-- Memory pointer to the pixels array

	bytes_per_pixel:INTEGER_32

invariant
	Exists: not has_error implies not item.is_default_pointer

end
