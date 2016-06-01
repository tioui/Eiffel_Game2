note
	description: "Read and write access to an internal array of pixels."
	author: "Louis Marchand"
	date: "Tue, 26 Jan 2016 19:34:13 +0000"
	revision: "2.1"

class
	GAME_PIXEL_READER_WRITER

inherit
	GAME_PIXEL_READER
		rename
			make as make_from_pointer
		redefine
			pixel, index
		end

	GAME_PIXEL_WRITER
		rename
			make as make_from_pointer
		end

create
	make_from_pointer,
	make

feature {NONE} -- Implementation

	make(a_format:GAME_PIXEL_FORMAT_READABLE; a_width, a_height:INTEGER)
			-- Initialization for `Current' allocating `item' using `a_format' as `pixel_format',
			-- `a_width' as `width' and `a_height' as `height'
		do
			bytes_per_pixel := a_format.bytes_per_pixel
			pixel_format := a_format
			width := a_width
			height := a_height
			pitch := a_width * bytes_per_pixel
			create internal_item.make(a_width * a_height * bytes_per_pixel)
			is_valid := not internal_item.item.is_default_pointer
			if not is_valid then
				put_manual_error("No more memory", "Cannot allocate a pixel buffer")
			end
		ensure
			Is_Created: not has_error implies not item.is_default_pointer
		end

feature -- Access

	pixel(a_line, a_column:INTEGER):GAME_COLOR_READABLE assign set_pixel
			-- <Precursor>
		do
			Result := Precursor(a_line, a_column)
		end

	index(a_line, a_column:INTEGER):NATURAL_8 assign set_index
			-- <Precursor>
		do
			Result := Precursor(a_line, a_column)
		end

invariant
	Null_Means_Invalid: internal_item.item.is_default_pointer implies not is_valid

end
