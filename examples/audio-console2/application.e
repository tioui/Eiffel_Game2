note
	description : "A minimalist terminal audio player"
	author		: "Louis Marchand"
	date        : "Fri, 13 Jan 2017 16:40:06 +0000"
	revision    : "2.1"

class
	APPLICATION

inherit
	AUDIO_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			audio_library.enable_sound		-- Initialise the audio library
			run
		end

	run
			-- Execute the sound player
		local
			l_sound:AUDIO_SOUND_FILE
			l_line:STRING
		do
			audio_library.disable_print_on_error	-- If an error happen in the audio library, no debug
													-- error message will be showed
			audio_library.launch_in_thread	-- This feature update the sound context in another thread.
							-- With this functionnality, the application is more performant
							-- on multi-core computer. It is also more easy to program the other
							-- aspect of the application because you dont have to think about using
							-- the audio_library.update reguraly. If you use precompile library,
							-- these library must be precompile with multi-thread enable.
			from
				l_line:=""
			until
				l_line.is_equal ("quit")	-- Stop when the user write "quit" on the console
			loop
				io.read_line
				l_line:=io.last_string
				if l_line.substring (1,4).is_equal ("open") then			-- When a user write "open <filename>"
					create l_sound.make (l_line.substring (6,l_line.count))	-- Open the sound
					if l_sound.is_openable then
						l_sound.open
						if l_sound.is_open then
							audio_library.sources_add					-- Create a new sound source
							audio_library.last_source_added.queue_sound (l_sound)	-- Queued the sound in the newly created source
							audio_library.last_source_added.play			-- Play the source.		
						end
					end
					if not l_sound.is_open then
						io.put_string ("The file " + l_line.substring (6,l_line.count) + " is not valid.%N")
					end

				end
			end
			audio_library.stop_thread		-- Destroy the thread created by the "launch_in_thread" feature
		end

end
