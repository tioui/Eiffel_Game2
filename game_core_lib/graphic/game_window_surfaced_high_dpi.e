note
	description: "[
						A {GAME_WINDOW} that directly use {GAME_SURFACE} to render that allow high dpi resolution.
						Note that {GAME_WINDOW_SURFACED} don't use hardware acceleration and is very slow.
						It should be use for slow application only. To use hardware acceleration,
						use the {GAME_WINDOW_RENDERED} type.
					]"
	author: "Louis Marchand"
	date: "January 14, 2014"
	revision: "2.0.0.1"

class
	GAME_WINDOW_SURFACED_HIGH_DPI

inherit
	GAME_WINDOW_SURFACED
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
		Precursor {GAME_WINDOW_SURFACED}(a_title, a_x, a_y, a_width, a_height, a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input, a_flags.bit_or (Sdl_window_allow_highdpi))
	end

end
