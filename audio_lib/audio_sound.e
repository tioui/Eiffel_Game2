note
	description: "A sound to be played by an audio source."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

deferred class
	AUDIO_SOUND

inherit
	AUDIO_OPENAL_ERROR_MANAGER

feature {AUDIO_SOURCE}

	fill_buffer(buffer:POINTER;max_length:INTEGER)
		-- Warning, side effect on buffer (buffer will be modified by this method)
		deferred
		end

	last_buffer_size:INTEGER

	byte_per_buffer_sample:INTEGER
		deferred
		end

feature --Access
	get_channels:INTEGER
			-- Get the channel number of the sound (1=mono, 2=stereo, etc.).
		deferred
		end

	get_frequency:INTEGER
			-- Get the frequency (sample rate) of the sound.
		deferred
		end

	get_bit_resolution:INTEGER
			-- Get the bit resolution of one frame of the sound.
		deferred
		end

	is_signed:BOOLEAN
			-- Return true if the frames in the buffer are signed.
		deferred
		end

	is_seekable:BOOLEAN
			-- Return true if the sound support the seek functionnality.
		deferred
		end

	restart
			-- Restart the sound to the beginning.
		deferred
		end

end
