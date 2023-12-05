note
	description: "A sound to be played by an audio source."
	author: "Louis Marchand"
	date: "Tue, 21 Feb 2017 00:15:23 +0000"
	revision: "2.1"

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
			-- The actual number of byte placed in `a_buffer' will be available in `last_buffer_size'
			-- Warning: side effect on `a_buffer'
		require
			Sound_Is_open: is_open
		deferred
		end

	last_buffer_size:INTEGER
			-- The size of the last buffer filled by `fill_buffer'

feature --Access

	close
			-- Stop the management of the stream
		require
			Sound_Is_open: is_open
		deferred
		ensure
			Sound_Is_Closed: not is_open
		end

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

	sample_seek(a_frame_number:INTEGER_64)
			-- Seek at the frame `a_frame_number' from the beginning of `Current'
		require
			Sound_Is_open: is_open
			Is_Seekable:is_seekable
			Is_seek_inside: a_frame_number >= 1 and a_frame_number <= sample_count
		deferred
		end

	time_seek(a_milliseconds:INTEGER_64)
			-- Seek at `a_milliseconds' from the beginning of `Current'
		require
			Sound_Is_open: is_open
			Is_Seekable:is_seekable
			Is_seek_inside: a_milliseconds >= 1 and a_milliseconds <= time_count
		do
			sample_seek(((a_milliseconds * frequency) // 1000) + 1)
		end

	sample_position:INTEGER_64
			-- The number of frames since the beginning of `Current'
		require
			Sound_Is_open: is_open
			Is_Seekable:is_seekable
		deferred
		end

	time_position:INTEGER_64
			-- The number of milliseconds since the beginning of `Current'
		require
			Sound_Is_open: is_open
			Is_Seekable:is_seekable
		do
			Result := ((sample_position - 1) * 1000) // frequency
		end

	sample_count:INTEGER_64
			-- The total number of frames in `Current'
		require
			Sound_Is_open: is_open
			Is_Seekable:is_seekable
		deferred
		end

	time_count:INTEGER_64
			-- The total number of milliseconds in `Current'
		require
			Sound_Is_open: is_open
			Is_Seekable:is_seekable
		do
			Result := (sample_count * 1000) // frequency
		end

	is_finished:BOOLEAN
			-- `Current' has finished it's playback



end
