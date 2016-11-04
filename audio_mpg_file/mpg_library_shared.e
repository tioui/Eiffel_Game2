note
	description: "Used to shared the `mpg_library' singleton"
	author: "Louis Marchand"
	date: "Fri, 04 Nov 2016 17:31:01 +0000"
	revision: "0.1"

deferred class
	MPG_LIBRARY_SHARED

feature -- Access

	mpg_library:MPG_LIBRARY_CONTROLLER
			-- Access to the MPG library internal fonctionnality
		once  ("PROCESS")
			create Result
			if attached internal_mpg_library as la_mpg_library then
				Result := la_mpg_library
			else
				create Result
			end
		end

feature {NONE} -- Implementation

	internal_mpg_library:detachable MPG_LIBRARY_CONTROLLER
			-- Assign to this attribute prior to use `mpg_library' to inject a specific {MPG_LIBRARY_CONTROLLER} singleton.

end
