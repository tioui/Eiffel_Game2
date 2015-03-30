note
	description: "[
					A {GAME_SURFACE} that represent a text.
					Rendering from this class look better that from a
					{TEXT_SURFACE_SOLID} take longer to generate.
				]"
	author: "Louis Marchand"
	date: "Mon, 30 Mar 2015 02:12:55 +0000"
	revision: "2.0"

class
	TEXT_SURFACE_BLENDED

inherit
	TEXT_SURFACE

create
	make

feature {NONE} -- Implementation

	c_render_text(a_font, a_text, a_color:POINTER):POINTER
			-- <Precursor>
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_RenderText_Blended(a_font,a_text,a_color)
		end

	c_render_UTF8(a_font, a_text, a_color:POINTER):POINTER
			-- <Precursor>
		do
			Result := {GAME_TEXT_EXTERNAL}.TTF_RenderUTF8_Blended(a_font,a_text,a_color)
		end

end
