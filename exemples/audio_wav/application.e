note
	description : "This application play all files passed in argument. The arguments must be supported sound files."
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			audio_ctrl:AUDIO_CONTROLLER
		do
			create audio_ctrl.make	-- Create the Audio controller
			audio_ctrl.enable_sound	-- Permit to the Audio
			run_standard (audio_ctrl)
			audio_ctrl.quit_library

		end

	run_standard(audio_ctrl:AUDIO_CONTROLLER)
		local
			source:AUDIO_SOURCE
			sound:AUDIO_SOUND_WAV_FILE
			env:EXECUTION_ENVIRONMENT
		do
			create env
			audio_ctrl.sources_add	-- Add a sound source in the audio context.
			source:=audio_ctrl.last_source_added
			create sound.make ("sound.wav")
			sound.open
			source.queue_sound_loop (sound,1)
			from source.play
			until not source.is_playing
			loop
				env.sleep (10000000)	-- Put a loop delay to remove CPU time
				audio_ctrl.update	-- This line is very important. If it is not execute reguraly,
									-- the source will stop playing.
			end
		end

end
