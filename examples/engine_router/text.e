note
	description: "A text {IMAGE}"
	author: "Louis Marchand"
	date: "Tue, 02 Nov 2021 13:35:13 +0000"
	revision: "0.1"

class
	TEXT

inherit
	IMAGE

create
	make

feature {NONE} -- Initialisation

	make(a_renderer: GAME_RENDERER; a_font:TEXT_FONT; a_color:GAME_COLOR; a_text:STRING)
			-- Create `Current' with the `text' `a_text' unsing character font `a_font'
			-- and the color `a_color'. `Current' should be draw on `a_renderer'.
		local
			l_surface:TEXT_SURFACE_BLENDED
		do
			text := a_text
			create l_surface.make (a_text, a_font, a_color)
			make_from_texture (create {GAME_TEXTURE}.make_from_surface (a_renderer, l_surface))
		end

feature -- Access

	text:STRING
			-- The {STRING} represented in `Current'

end
