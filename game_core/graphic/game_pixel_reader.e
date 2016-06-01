note
	description: "Read access to an internal array of pixels."
	author: "Louis Marchand"
	date: "Tue, 26 Jan 2016 19:34:13 +0000"
	revision: "2.1"

class
	GAME_PIXEL_READER

inherit
	GAME_PIXEL_BUFFER

create
	make

feature -- Access

	pixel(a_line, a_column:INTEGER):GAME_COLOR_READABLE
			-- Get the color of the pixel at line `a_line' and column `a_column'
		require
			Is_Item_Valid: is_valid
			Is_Line_Valid: a_line >= 1 and then a_line <= height
			Is_Column_Valid: a_line >= 1 and then a_column <= width
			Not_Indexed: not pixel_format.is_indexed
		local
			l_color_index:NATURAL_32
			l_red, l_green, l_blue, l_alpha:NATURAL_8
		do
			if bytes_per_pixel = 1 then
				l_color_index := internal_item.read_natural_8 ((a_line - 1) * pitch + (a_column - 1) * bytes_per_pixel).to_natural_32
			elseif bytes_per_pixel = 2 then
				l_color_index := internal_item.read_natural_16 ((a_line - 1) * pitch + (a_column - 1) * bytes_per_pixel).to_natural_32
			elseif bytes_per_pixel = 3 then
				if is_little_endian then
					l_color_index := internal_item.read_natural_32_le ((a_line - 1) * pitch + (a_column - 1) * bytes_per_pixel).bit_and (0x00FFFFFF)
				else
					l_color_index := internal_item.read_natural_32_be ((a_line - 1) * pitch + (a_column - 1) * bytes_per_pixel).bit_shift_right (8)
				end
			elseif bytes_per_pixel = 4 then
				l_color_index := internal_item.read_natural_32 ((a_line - 1) * pitch + (a_column - 1) * bytes_per_pixel)
			end
			print("Color: " + l_color_index.to_hex_string + "%N")
			{GAME_SDL_EXTERNAL}.SDL_GetRGBA(l_color_index, pixel_format.item, $l_red, $l_green, $l_blue, $l_alpha)
			create Result.make(l_red, l_green, l_blue, l_alpha)
		end

	index(a_line, a_column:INTEGER):NATURAL_8
			-- Get the index of the indexed pixel at line `a_line' and column `a_column'
		require
			Is_Item_Valid: is_valid
			Is_Line_Valid: a_line >= 1 and then a_line <= height
			Is_Column_Valid: a_line >= 1 and then a_column <= width
			Indexed: pixel_format.is_indexed
			bits_per_pixel_valid: pixel_format.bits_per_pixel = 8
		do
			Result := internal_item.read_natural_8 ((a_line - 1) * pitch + (a_column - 1))
		end


end
