note
	description : "This application play all files passed in argument. The arguments must be supported sound files."
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS
	AUDIO_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			if argument_count<1 then
				io.put_string ("Usage: "+argument (0)+" <list files>%N")
			else
				audio_library.enable_sound	-- Permit to the Audio
				run_standard
				audio_library.quit_library	-- Properly quit the library
			end

		end

	run_standard
		local
			i:INTEGER
			source:AUDIO_SOURCE
			sound:AUDIO_SOUND_SND_FILE
			env:EXECUTION_ENVIRONMENT
		do
			create env
			audio_library.sources_add	-- Add a sound source in the audio context.
			source:=audio_library.last_source_added
			from i:=1
			until i>argument_count		-- For each program arguments
			loop
				create sound.make (argument(i))		-- Create a sound from the file given in argument
				if sound.is_openable then		-- Valid that the file actualy exist
					sound.open				-- Open the sound file
					if sound.is_open then		-- Is the sound valid
						source.queue_sound (sound)	-- Queued the sound to be play by the sound source.
					end
				end
				if not sound.is_open then
					io.error.put_string ("The sound file " + argument (i) + " is not a valid sound file.%N")
				end
				i:=i+1
			end
			from source.play
			until not source.is_playing
			loop
				env.sleep (10000000)	-- Put a loop delay to remove CPU time
				audio_library.update	-- This line is very important. If it is not execute reguraly,
							-- the source will stop playing.
			end
							-- In some system, the absence of this method can lock the audio device until a reboot.
		end

end
