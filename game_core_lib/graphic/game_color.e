note
	description: "Representation of a RGBA color. Not for use with SDL. For SDL, use SDL_COLOR."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_COLOR

create
	make,
	make_rgb,
	make_from_hex_string,
	make_from_hex_string_rgb

feature {NONE} -- Initialization

	make(a_red,a_green,a_blue,a_alpha:NATURAL_8)
			-- Initialization for `Current'.
			-- Assignation of the default red, green, blue and alpha values.
		do
			set_red(a_red)
			set_green(a_green)
			set_blue(a_blue)
			set_alpha(a_alpha)
		end

	make_rgb(a_red,a_green,a_blue:NATURAL_8)
			-- Initialization for `Current'.
			-- Assignation of the default red, green, blue values (with Alpha value set to 255).
		do
			make(a_red,a_green,a_blue,255)
		end

	make_from_hex_string(a_hex_string:STRING)
		require
			a_hex_string.count=8
		local
			l_string_red,l_string_green,l_string_blue,l_string_alpha:STRING
			l_red,l_green,l_blue,l_alpha:NATURAL_8
			l_convertor:HEXADECIMAL_STRING_TO_INTEGER_CONVERTER
		do
			create l_convertor.make
			l_string_red:="0x"+a_hex_string.substring (1, 2)
			l_string_green:="0x"+a_hex_string.substring (3, 4)
			l_string_blue:="0x"+a_hex_string.substring (5, 6)
			l_string_alpha:="0x"+a_hex_string.substring (7, 8)
			l_convertor.parse_string_with_type (l_string_red,l_convertor.type_natural_8)
			l_red:=l_convertor.parsed_natural_8
			l_convertor.parse_string_with_type (l_string_green,l_convertor.type_natural_8)
			l_green:=l_convertor.parsed_natural_8
			l_convertor.parse_string_with_type (l_string_blue,l_convertor.type_natural_8)
			l_blue:=l_convertor.parsed_natural_8
			l_convertor.parse_string_with_type (l_string_alpha,l_convertor.type_natural_8)
			l_alpha:=l_convertor.parsed_natural_8
			make(l_red,l_green,l_blue,l_alpha)
		end

	make_from_hex_string_rgb(a_hex_string:STRING)
		require
			a_hex_string.count=6
		do
			make_from_hex_string(a_hex_string+"ff")
		end


feature -- Access

	red:NATURAL_8 assign set_red
		-- Red intensity of the color (0=no intensity and 255=all intensity)
	do
		Result:=red_internal
	end

	green:NATURAL_8 assign set_green
		-- Green intensity of the color (0=no intensity and 255=all intensity)
	do
		Result:=green_internal
	end

	blue:NATURAL_8 assign set_blue
		-- Blue intensity of the color (0=no intensity and 255=all intensity)
	do
		Result:=blue_internal
	end

	alpha:NATURAL_8 assign set_alpha
		-- The transparency (aplha channel) intensity (0=transparent and 255=opaque)
		-- The value 128 is optimize in the library
	do
		Result:=alpha_internal
	end


	set_red(a_red:NATURAL_8)
	do
		red_internal:=a_red
	ensure
		Set_Red_Is_Set: red=a_red
		Set_Red_Blue_Unchange: blue = old blue
		Set_Red_Green_Unchange: green = old green
		Set_Red_Alpha_Unchange: alpha = old alpha
	end

	set_green(a_green:NATURAL_8)
	do
		green_internal:=a_green
	ensure
		Set_Green_Is_Set: green=a_green
		Set_Green_Blue_Unchange: blue = old blue
		Set_Green_Red_Unchange: red = old red
		Set_Green_Alpha_Unchange: alpha = old alpha
	end

	set_blue(a_blue:NATURAL_8)
	do
		blue_internal:=a_blue
	ensure
		Set_Blue_Is_Set: blue=a_blue
		Set_Blue_Red_Unchange: red = old red
		Set_Blue_Green_Unchange: green = old green
		Set_Blue_Alpha_Unchange: alpha = old alpha
	end

	set_alpha(a_alpha:NATURAL_8)
	do
		alpha_internal:=a_alpha
	ensure
		Set_Alpha_Is_Set: alpha=a_alpha
		Set_Alpha_Red_Unchange: red = old red
		Set_Alpha_Green_Unchange: green = old green
		Set_Alpha_Blue_Unchange: blue = old blue
	end

	color_is_equal(a_color:GAME_COLOR):BOOLEAN
			-- Return true if the current color has the same RGBA value than the `a_color'
		do
			result:=color_is_equal_RGB(a_color) and then a_color.alpha=alpha
		end

	color_is_equal_RGB(a_color:GAME_COLOR):BOOLEAN
			-- Return true if the current color has the same RGB value than the `a_color'
		do
			result:=a_color.red=red and then a_color.green=green and then a_color.blue=blue
		end

feature {NONE} -- Implementation

	red_internal:NATURAL_8
	green_internal:NATURAL_8
	blue_internal:NATURAL_8
	alpha_internal:NATURAL_8


end
