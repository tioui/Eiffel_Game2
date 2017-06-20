note
	description : "This application play all files passed in argument. The arguments must be supported sound files."
	author		: "Louis Marchand"
	date        : "Fri, 13 Jan 2017 16:40:27 +0000"
	revision    : "2.1"

class
	APPLICATION

inherit
	AUDIO_LIBRARY_SHARED	-- Enable the `audio_library' functionnality

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_source:AUDIO_SOURCE
			l_sound:AUDIO_SOUND_WAV_FILE
			l_environment:EXECUTION_ENVIRONMENT
		do
			audio_library.enable_playback	-- Permit to use the Audio functionnality
			create l_environment
			audio_library.sources_add	-- Add a sound source in the audio context.
			l_source:=audio_library.last_source_added
			create l_sound.make ("sound.wav")
			l_sound.open
			l_source.queue_sound_loop (l_sound,1)
			from l_source.play
			until not l_source.is_playing
			loop
				l_environment.sleep (10000000)	-- Put a loop delay to remove CPU time
				audio_library.update	-- This line is very important. If it is not execute reguraly,
										-- the source will stop playing.
			end
		end

end
