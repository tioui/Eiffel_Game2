note
	description: "Inherit from this class to use the {AUDIO_LIBRARY_CONTROLLER} singleton named audio_library"
	author: "Louis Marchand"
	date: "Tue, 07 Apr 2015 01:15:20 +0000"
	revision: "2.0"

deferred class
	AUDIO_LIBRARY_SHARED

feature -- Access

	audio_library:AUDIO_LIBRARY_CONTROLLER
			-- Access to the audio library internal fonctionnality
		once  ("PROCESS")
			create Result.make
			if attached internal_audio_library as la_audio_library then
				Result := la_audio_library
			else
				create Result.make
			end
		end

feature {NONE} -- Implementation

	internal_audio_library:detachable AUDIO_LIBRARY_CONTROLLER
			-- Assign to this attribute prior to use `audio_library' to inject a specific {AUDIO_LIBRARY_CONTROLLER} singleton.

end
