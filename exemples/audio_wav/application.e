note
	description : "This application play all files passed in argument. The arguments must be supported sound files."
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	AUDIO_LIBRARY_SHARED	-- Enable the `audio_library' functionnality

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			audio_library.enable_sound	-- Permit to the Audio
			run_standard
			audio_library.quit_library	-- Properly quit the library
		end

	run_standard
		local
			source:AUDIO_SOURCE
			sound:AUDIO_SOUND_WAV_FILE
			env:EXECUTION_ENVIRONMENT
		do
			create env
			audio_library.sources_add	-- Add a sound source in the audio context.
			source:=audio_library.last_source_added
			create sound.make ("sound.wav")
			sound.open
			source.queue_sound_loop (sound,1)
			from source.play
			until not source.is_playing
			loop
				env.sleep (10000000)	-- Put a loop delay to remove CPU time
				audio_library.update	-- This line is very important. If it is not execute reguraly,
									-- the source will stop playing.
			end
		end

end
