note
	description: "An audio engine that play the music.mp3 file"
	author: "Louis Marchand"
	date: "Fri, 04 Nov 2016 17:31:01 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	AUDIO_LIBRARY_SHARED
	EXECUTION_ENVIRONMENT

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization of `Current'
		do
			audio_library.sources_add
			source := audio_library.last_source_added
			create music.make ("music.mp3")
			if source.is_open and music.is_openable then
				music.open
				has_error := not music.is_open
			else
				has_error := True
			end
		end

feature -- Access

	run
			-- Execute `Current'
		require
			No_Error: not has_error
		do
			from
				source.queue_sound (music)
				source.play
			until
				source.is_stop
			loop
				source.update_playing
				sleep (10000000)
			end
		end

	has_error:BOOLEAN
			-- An error occured at creation

	music:MPG_SOUND_FILE
			-- The music to play

	source:AUDIO_SOURCE
			-- The sound source to play the `sound'
end
