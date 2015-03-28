note
	description: "Summary description for {AUDIO_LIBRARY_SHARED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	AUDIO_LIBRARY_SHARED

feature -- Access

	audio_library:AUDIO_LIBRARY_CONTROLLER
		once
			create Result.make
		end

end
