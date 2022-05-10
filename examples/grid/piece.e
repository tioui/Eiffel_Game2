note
	description: "An element that goes on the {GRID}."
	author: "Louis Marchand"
	date: "Sat, 25 Dec 2021 15:08:18 +0000"
	revision: "0.1"

deferred class
	PIECE

inherit
	IMAGE
		rename
			make as make_from_file
		end

feature -- Constants

	Width:INTEGER = 250
			-- The horizontal dimention of `Current'

	Height:INTEGER = 250
			-- The vertical dimention of `Current'

invariant

	Texture_Width_Valid: texture.width = Width
	Texture_Height_Valid: texture.height = Height

end
