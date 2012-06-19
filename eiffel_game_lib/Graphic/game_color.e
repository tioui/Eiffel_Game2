note
	description: "Representation of a RGBA color. Not for use with SDL. For SDL, use SDL_COLOR."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_COLOR

create
	make,
	make_rgb

feature {NONE} -- Initialization

	make(r,g,b,a:NATURAL_8)
			-- Initialization for `Current'.
			-- Assignation of the default red, green, blue and alpha values.
		do
			set_red(r)
			set_green(g)
			set_blue(b)
			set_alpha(a)
		end

	make_rgb(r,g,b:NATURAL_8)
			-- Initialization for `Current'.
			-- Assignation of the default red, green, blue values (with Alpha value set to 255).
		do
			make(r,g,b,255)
		end


feature -- Access

	red:NATURAL_8 assign set_red
		-- Red intensity of the color (0=no intensity and 255=all intensity)
	do
		Result:=l_red
	end

	green:NATURAL_8 assign set_green
		-- Green intensity of the color (0=no intensity and 255=all intensity)
	do
		Result:=l_green
	end

	blue:NATURAL_8 assign set_blue
		-- Blue intensity of the color (0=no intensity and 255=all intensity)
	do
		Result:=l_blue
	end

	alpha:NATURAL_8 assign set_alpha
		-- The transparency (aplha channel) intensity (0=transparent and 255=opaque)
		-- The value 128 is optimize in the library
	do
		Result:=l_alpha
	end

	color_is_equal(l_color:GAME_COLOR):BOOLEAN
			-- Return true if the current color has the same RGBA value than the `l_color'
		do
			result:=color_is_equal_RGB(l_color) and then l_color.alpha=alpha
		end

	color_is_equal_RGB(l_color:GAME_COLOR):BOOLEAN
			-- Return true if the current color has the same RGB value than the `l_color'
		do
			result:=l_color.red=red and then l_color.green=green and then l_color.blue=blue
		end

feature {NONE} -- Implementation

	l_red:NATURAL_8
	l_green:NATURAL_8
	l_blue:NATURAL_8
	l_alpha:NATURAL_8

	set_red(r:NATURAL_8)
	require
		Set_Red_r_Not_Void: r /= Void
	do
		l_red:=r
	ensure
		Set_Red_Is_Set: red=r
		Set_Red_Blue_Unchange: blue = old blue
		Set_Red_Green_Unchange: green = old green
		Set_Red_Alpha_Unchange: alpha = old alpha
	end

	set_green(g:NATURAL_8)
	require
		Set_Green_g_Not_Void: g /= Void
	do
		l_green:=g
	ensure
		Set_Green_Is_Set: green=g
		Set_Green_Blue_Unchange: blue = old blue
		Set_Green_Red_Unchange: red = old red
		Set_Green_Alpha_Unchange: alpha = old alpha
	end

	set_blue(b:NATURAL_8)
	require
		Set_Blue_b_Not_Void: b /= Void
	do
		l_blue:=b
	ensure
		Set_Blue_Is_Set: blue=b
		Set_Blue_Red_Unchange: red = old red
		Set_Blue_Green_Unchange: green = old green
		Set_Blue_Alpha_Unchange: alpha = old alpha
	end

	set_alpha(a:NATURAL_8)
	require
		Set_Alpha_a_Not_Void: a /= Void
	do
		l_alpha:=a
	ensure
		Set_Alpha_Is_Set: alpha=a
		Set_Alpha_Red_Unchange: red = old red
		Set_Alpha_Green_Unchange: green = old green
		Set_Alpha_Blue_Unchange: blue = old blue
	end

end
