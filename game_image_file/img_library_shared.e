note
	description: "[
					The shared class to distribute the {IMG_CONTROLLER} singleton.
					Must inherit from this class.
				]"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 03:46:04 +0000"
	revision: "2.0"

deferred class
	IMG_LIBRARY_SHARED

feature -- Access

	image_file_library: IMG_CONTROLLER
			-- The image library controller singleton
		once
			create Result
		end

end
