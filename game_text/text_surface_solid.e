note
	description: "[
					A {GAME_SURFACE} that represent a text.
					Rendering from a {TEXT_SURFACE_SOLID}
					look better that from this class, but
					take longer to generate.
				]"
	author: "Louis Marchand"
	date: "Mon, 30 Mar 2015 02:12:55 +0000"
	revision: "2.0"

class
	TEXT_SURFACE_SOLID

inherit
	TEXT_SURFACE

create
	make

feature {NONE} -- Implementation

	c_render_text(a_font, a_text, a_color:POINTER):POINTER
			-- <Precursor>
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_RenderText_Solid(a_font,a_text,a_color)
		end

	c_render_UTF8(a_font, a_text, a_color:POINTER):POINTER
			-- <Precursor>
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_RenderUTF8_Solid(a_font,a_text,a_color)
		end

end
