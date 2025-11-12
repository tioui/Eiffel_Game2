note
	description: "A read only {GAME_COLOR}"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_COLOR_READABLE

inherit
	ANY
		redefine
			is_equal,
			out
		end

create
	make,
	make_rgb,
	make_from_hexadecimal,
	make_rgb_from_hexadecimal,
	make_from_other

feature {NONE} -- Initialization

	make(a_red,a_green,a_blue,a_alpha:NATURAL_8)
			-- Initialization for `Current' using `a_red', `a_green', `a_blue' as primary color intensity and `a_alpha' as opacity intensity.
			-- For primary color intensity, 0=no intensity and 255=maximum intensity
			-- For opacity intensity, 0=transparent and 255=opaque
		do
			red_internal:=a_red
			green_internal:=a_green
			blue_internal:=a_blue
			alpha_internal:=a_alpha
		end

	make_rgb(a_red,a_green,a_blue:NATURAL_8)
			-- Initialization for `Current' using `a_red', `a_green', `a_blue' as primary color intensity.
			-- 0=no intensity and 255=maximum intensity
		do
			make(a_red,a_green,a_blue,255)
		end

	make_from_hexadecimal(a_hexadecimal:READABLE_STRING_GENERAL)
			-- Initialization for `Current' using `a_hexadecimal' encoded value as primary color intensity and opacity intensity.
			-- For primary color intensity, 00=no intensity and FF=maximum intensity
			-- For opacity intensity, 0=transparent and 255=opaque
		require
			a_hexadecimal.count=8
		local
			l_string_red,l_string_green,l_string_blue,l_string_alpha:READABLE_STRING_GENERAL
			l_red,l_green,l_blue,l_alpha:NATURAL_8
			l_convertor:HEXADECIMAL_STRING_TO_INTEGER_CONVERTER
		do
			create l_convertor.make
			l_string_red:={STRING_32}"0x"+a_hexadecimal.substring (1, 2).to_string_32
			l_string_green:={STRING_32}"0x"+a_hexadecimal.substring (3, 4).to_string_32
			l_string_blue:={STRING_32}"0x"+a_hexadecimal.substring (5, 6).to_string_32
			l_string_alpha:={STRING_32}"0x"+a_hexadecimal.substring (7, 8).to_string_32
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

	make_rgb_from_hexadecimal(a_hexadecimal:READABLE_STRING_GENERAL)
			-- Initialization for `Current' using `a_hexadecimal' encoded value as primary color intensity.
			-- 00=no intensity and FF=maximum intensity
		require
			a_hexadecimal.count=6
		do
			make_from_hexadecimal(a_hexadecimal.to_string_32+{STRING_32}"ff")
		end

	make_from_other(a_other:GAME_COLOR_READABLE)
			-- Initialization for `Current' using primary color and opacity intensity of `a_other'.
		do
			make(a_other.red, a_other.green, a_other.blue, a_other.alpha)
		end


feature -- Access

	red:NATURAL_8
			-- Red intensity of the color
			-- 0=no intensity and 255=maximum intensity
		do
			Result:=red_internal
		end

	green:NATURAL_8
			-- Green intensity of the color
			-- 0=no intensity and 255=maximum intensity
		do
			Result:=green_internal
		end

	blue:NATURAL_8
			-- Blue intensity of the color
			-- 0=no intensity and 255=maximum intensity
		do
			Result:=blue_internal
		end

	alpha:NATURAL_8
			-- The opacity (alpha channel) intensity
			-- 0=transparent and 255=opaque
		do
			Result:=alpha_internal
		end

	is_equal(a_color:like Current):BOOLEAN
			-- <Precursor>
		do
			result:=is_equal_ignore_alpha(a_color) and a_color.alpha=alpha
		end

	is_equal_ignore_alpha(a_color:like Current):BOOLEAN
			-- Are `Current' and `a_other' identical, regardless of alpha?
		do
			result:=a_color.red=red and a_color.green=green and a_color.blue=blue
		end

	out:STRING_8
			-- <Precursor>
		do
			Result:="rgba("+red.out+","+green.out+","+blue.out+","+alpha.out+")"
		end

	out_rgb:STRING_8
			-- New string containing terce printable representation
			-- of `Current' using Web `red', `green' and `blue' annotation.
		do
			Result:="rgb("+red.out+","+green.out+","+blue.out+")"
		end

	to_hex_string:STRING_8
			-- New string containing terce printable representation
			-- of `Current's RGBA value using Web Hexadecimal annotation.
		do
			Result:=to_rgb_hex_string+alpha.to_hex_string
		end

	to_rgb_hex_string:STRING_8
			-- New string containing terce printable representation
			-- of `Current's RGB value using Web Hexadecimal annotation.
		do
			Result:=red.to_hex_string+green.to_hex_string+blue.to_hex_string
		end

	Opaque_alpha_value: NATURAL_8 = 255
			-- The value to set to `alpha' to have `Current' fully opaque.

	Transparent_alpha_value: NATURAL_8 = 0
			-- The value to set to `alpha' to have `Current' fully transparent.

feature {NONE} -- Implementation

	red_internal:NATURAL_8
			-- The internal value of `red'

	green_internal:NATURAL_8
			-- The internal value of `green'

	blue_internal:NATURAL_8
			-- The internal value of `blue'

	alpha_internal:NATURAL_8
			-- The internal value of `alpha'

end
