note
	description: "Summary description for {IMG_LIBRARY_SHARED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	IMG_LIBRARY_SHARED

feature -- Access

	image_files_library: IMG_CONTROLLER
		once
			create Result
		end

end
