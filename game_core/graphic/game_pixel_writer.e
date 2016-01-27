note
	description: "Write access to an internal array of pixels."
	author: "Louis Marchand"
	date: "Tue, 26 Jan 2016 19:34:13 +0000"
	revision: "2.1"

class
	GAME_PIXEL_WRITER

inherit
	GAME_PIXEL_BUFFER

create
	make

feature -- Access

	set_pixel(a_color:GAME_COLOR_READABLE; a_line, a_column:INTEGER)
			-- Set the color of the pixel at line `a_line' and column `a_column' to `a_color'
		require
			Is_Item_Valid: is_valid
			Is_Line_Valid: a_line >= 1 and then a_line <= height
			Is_Column_Valid: a_line >= 1 and then a_column <= width
		local
			l_color_index:NATURAL_32
			l_red, l_green, l_blue, l_alpha:NATURAL_8
			l_position:INTEGER
		do
			l_position := (a_line - 1) * pitch + (a_column - 1) * bytes_per_pixel
			l_color_index := {GAME_SDL_EXTERNAL}.SDL_MapRGBA(pixel_format.item, a_color.red, a_color.green, a_color.blue, a_color.alpha)
			if bytes_per_pixel = 1 then
				internal_item.put_natural_8 (l_color_index.to_natural_8, l_position)
			elseif bytes_per_pixel = 2 then
				internal_item.put_natural_16 (l_color_index.to_natural_16, l_position)
			elseif bytes_per_pixel = 3 then
				if is_little_endian then
					internal_item.put_natural_8 (l_color_index.bit_and (0xFF).to_natural_8, l_position)
					internal_item.put_natural_8 (l_color_index.bit_shift_right (8).bit_and (0xFF).to_natural_8, l_position + 1)
					internal_item.put_natural_8 (l_color_index.bit_shift_right (16).bit_and (0xFF).to_natural_8, l_position + 2)
				else
					internal_item.put_natural_8 (l_color_index.bit_shift_right (16).bit_and (0xFF).to_natural_8, l_position)
					internal_item.put_natural_8 (l_color_index.bit_shift_right (8).bit_and (0xFF).to_natural_8, l_position + 1)
					internal_item.put_natural_8 (l_color_index.bit_and (0xFF).to_natural_8, l_position + 2)
				end
			elseif bytes_per_pixel = 4 then
				internal_item.put_natural_32 (l_color_index, l_position)
			end
		end


end
