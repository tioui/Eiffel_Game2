note
	description: "The game background"
	author: "Louis Marchand"
	date: "Wed, 01 Apr 2015 18:46:46 +0000"
	revision: "2.0"

class
	DESERT

inherit
	GAME_TEXTURE
		rename
			make as make_texture
		end

create
	make

feature {NONE} -- Initialization

	make(a_renderer:GAME_RENDERER)
			-- Initialization of `Current' for used with `a_renderer'
		local
			l_image: IMG_IMAGE_FILE
		do
			create l_image.make ("desert.png")
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					make_from_image (a_renderer, l_image)
				else
					has_error := True
				end
			else
				has_error := True
			end
		end

end
