note
	description: "A sound to be played by an audio source."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

deferred class
	AUDIO_SOUND

inherit
	GAME_RESSOURCE
		rename
			make as make_ressource
		end

feature {AUDIO_SOURCE}

	fill_buffer(buffer:POINTER;max_length:INTEGER)
		-- Warning, side effect on buffer (buffer will be modified by this method)
		require
			Sound_Is_open: is_open
		deferred
		end

	last_buffer_size:INTEGER

	byte_per_buffer_sample:INTEGER
		require
			Sound_Is_open: is_open
		deferred
		end

feature --Access
	channel_count:INTEGER
			-- Get the channel number of the sound (1=mono, 2=stereo, etc.).
		require
			Sound_Is_open: is_open
		deferred
		end

	frequency:INTEGER
			-- Get the frequency (sample rate) of the sound.
		require
			Sound_Is_open: is_open
		deferred
		end

	bits_per_sample:INTEGER
			-- Get the bit resolution of one frame of the sound.
		require
			Sound_Is_open: is_open
		deferred
		end

	is_signed:BOOLEAN
			-- Return true if the frames in the buffer are signed.
		require
			Sound_Is_open: is_open
		deferred
		end

	is_seekable:BOOLEAN
			-- Return true if the sound support the seek functionnality.
		require
			Sound_Is_open: is_open
		deferred
		end

	restart
			-- Restart the sound to the beginning.
		require
			Sound_Is_open: is_open
		deferred
		end

end
