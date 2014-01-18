note
	description: "Representation of a RGBA color. Not for use with SDL. For SDL, use SDL_COLOR."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_COLOR

inherit
	GAME_COLOR_IMMUTABLE
		redefine
			red, green, blue, alpha
		end
create
	make,
	make_rgb,
	make_from_hexadecimal,
	make_rgb_from_hexadecimal,
	make_from_other
	
feature -- Access

	red:NATURAL_8 assign set_red
			-- <Precursor>
		do
			Result:=Precursor
		end

	green:NATURAL_8 assign set_green
			-- <Precursor>
		do
			Result:=Precursor
		end

	blue:NATURAL_8 assign set_blue
			-- <Precursor>
		do
			Result:=Precursor
		end

	alpha:NATURAL_8 assign set_alpha
			-- <Precursor>
		do
			Result:=Precursor
		end

	set_red(a_red:NATURAL_8)
			-- Assign the `red' intensity to `a_red'.
			-- 0=no intensity and 255=maximum intensity
		do
			red_internal:=a_red
		ensure
			Set_Red_Is_Set: red=a_red
			Set_Red_Blue_Unchange: blue = old blue
			Set_Red_Green_Unchange: green = old green
			Set_Red_Alpha_Unchange: alpha = old alpha
		end

	set_green(a_green:NATURAL_8)
			-- Assign the `green' intensity to `a_green'.
			-- 0=no intensity and 255=maximum intensity
		do
			green_internal:=a_green
		ensure
			Set_Green_Is_Set: green=a_green
			Set_Green_Blue_Unchange: blue = old blue
			Set_Green_Red_Unchange: red = old red
			Set_Green_Alpha_Unchange: alpha = old alpha
		end

	set_blue(a_blue:NATURAL_8)
			-- Assign the `blue' intensity to `a_blue'.
			-- 0=no intensity and 255=maximum intensity
		do
			blue_internal:=a_blue
		ensure
			Set_Blue_Is_Set: blue=a_blue
			Set_Blue_Red_Unchange: red = old red
			Set_Blue_Green_Unchange: green = old green
			Set_Blue_Alpha_Unchange: alpha = old alpha
		end

	set_alpha(a_alpha:NATURAL_8)
			-- Assign the `alpha' (opacity) intensity to `a_alpha'.
			-- 0=no intensity and 255=maximum intensity
			-- 0=transparent and 255=opaque
		do
			alpha_internal:=a_alpha
		ensure
			Set_Alpha_Is_Set: alpha=a_alpha
			Set_Alpha_Red_Unchange: red = old red
			Set_Alpha_Green_Unchange: green = old green
			Set_Alpha_Blue_Unchange: blue = old blue
		end




end
