note
	description: "The application background"
	author: "Louis Marchand"
	date: "Wed, 01 Apr 2015 18:46:46 +0000"
	revision: "2.0"

class
	DESERT

inherit
	ANY
		redefine
			default_create
		end

create
	default_create

feature {NONE} -- Initialization

	default_create
		local
			l_image: IMG_IMAGE_FILE
		do
			create l_image.make ("desert.png")
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					create surface.make_from_image (l_image)
				else
					has_error := True
					create surface.make(1,1)
				end
			else
				has_error := True
				create surface.make(1,1)
			end
		end

feature -- Access

	surface:GAME_SURFACE
			-- The image to use when drawing `Current'

	has_error:BOOLEAN
			-- An error occured when initializing `Current'

end
