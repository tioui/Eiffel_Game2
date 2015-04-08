note
	description: "A sound to be played by an audio source."
	author: "Louis Marchand"
	date: "Tue, 07 Apr 2015 01:15:20 +0000"
	revision: "2.0"

deferred class
	AUDIO_SOUND

inherit
	GAME_RESSOURCE
		rename
			has_error as has_ressource_error
		end
	GAME_ERROR_MANAGER
		undefine
			default_create
		end

feature {AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
			-- Fill the next data samples in `a_buffer' (no more than `a_max_length' byte)
			-- Warning, side effect on buffer (buffer will be modified by this method)
		require
			Sound_Is_open: is_open
		deferred
		end

	last_buffer_size:INTEGER
			-- The size of the last buffer filled by `fill_buffer'

	byte_per_buffer_sample:INTEGER
			-- The number of byte for one frame of `Current'.
		require
			Sound_Is_open: is_open
		deferred
		end

feature --Access
	channel_count:INTEGER
			-- Get the channel number of `Current' (1=mono, 2=stereo, etc.).
		require
			Sound_Is_open: is_open
		deferred
		end

	frequency:INTEGER
			-- Get the frequency (sample rate) of `Current'.
		require
			Sound_Is_open: is_open
		deferred
		end

	bits_per_sample:INTEGER
			-- Get the bit resolution of one frame of `Current'.
		require
			Sound_Is_open: is_open
		deferred
		end

	is_signed:BOOLEAN
			-- True if the frames in the buffer are signed.
		require
			Sound_Is_open: is_open
		deferred
		end

	is_seekable:BOOLEAN
			-- Return true if `Current' support the seek functionnality.
		require
			Sound_Is_open: is_open
		deferred
		end

	restart
			-- Restart `Current' to the beginning.
		require
			Sound_Is_open: is_open
		deferred
		end

invariant
	Errors_Valid: has_error ~ has_ressource_error

end
