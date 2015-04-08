note
	description: "Inherit from this class to use the {AUDIO_LIBRARY_CONTROLLER} singleton named audio_library"
	author: "Louis Marchand"
	date: "Tue, 07 Apr 2015 01:15:20 +0000"
	revision: "2.0"

deferred class
	AUDIO_LIBRARY_SHARED

feature -- Access

	audio_library:AUDIO_LIBRARY_CONTROLLER
		once
			create Result.make
		end

end
