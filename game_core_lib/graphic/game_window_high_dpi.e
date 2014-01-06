note
	description: "A Window that allow high DPI resolution."
	author: "Louis Marchand"
	date: "january 5, 2014"
	revision: "1.0"

class
	GAME_WINDOW_HIGH_DPI

inherit
	GAME_WINDOW
		redefine
			make_with_extra_flags
		end

create
	make,
	make_default,
	make_on_display,
	make_with_position,
	make_centered,
	make_fullscreen,
	make_with_extra_flags

feature {NONE} -- Initialisation

	make_with_extra_flags(a_title:READABLE_STRING_GENERAL; a_x, a_y, a_width, a_height: INTEGER; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN; a_flags:NATURAL_32)
		-- <Precursor>
	do
		Precursor {GAME_WINDOW}(a_title, a_x, a_y, a_width, a_height, a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input, a_flags.bit_or (Sdl_window_allow_highdpi))
	end

end
