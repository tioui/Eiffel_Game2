note
	description: "Summary description for {IMG_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	IMG_CONSTANTS

feature {NONE} -- Implementation

	Img_init_jpg:INTEGER
			-- Load the jpeg external library.
		once
			Result:={IMG_SDL_IMAGE_EXTERNAL}.IMG_INIT_JPG
		end

	Img_init_png:INTEGER
			-- Load the png external library.
		once
			Result:={IMG_SDL_IMAGE_EXTERNAL}.IMG_INIT_PNG
		end

	Img_init_tif:INTEGER
			-- Load the tif external library.
		once
			Result:={IMG_SDL_IMAGE_EXTERNAL}.IMG_INIT_TIF
		end

end
