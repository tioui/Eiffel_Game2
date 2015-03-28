note
	description: "Summary description for {AUDIO_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AUDIO_CONSTANTS


feature {NONE} -- Constants

	Al_invalid_value:INTEGER
			-- An invalid value was passed to an OpenAL function
		once
			Result:={AUDIO_EXTERNAL}.AL_INVALID_VALUE
		end

	Al_invalid_enum:INTEGER
			-- An invalid enum value was passed to an OpenAL function
		once
			Result:={AUDIO_EXTERNAL}.AL_INVALID_ENUM
		end

	Al_invalid_operation:INTEGER
			-- The requested operation is not valid
		once
			Result:={AUDIO_EXTERNAL}.AL_INVALID_OPERATION
		end

	Al_invalid_name:INTEGER
			-- A bad name (ID) was passed to an OpenAL function
		once
			Result:={AUDIO_EXTERNAL}.AL_INVALID_NAME
		end

	Al_out_of_memory:INTEGER
			-- The requested operation resulted in OpenAL running out of memory
		once
			Result:={AUDIO_EXTERNAL}.AL_OUT_OF_MEMORY
		end

	Al_invalid_device:INTEGER
		once
			Result:={AUDIO_EXTERNAL}.AL_INVALID_DEVICE
		end

	Al_invalid_context:INTEGER
		once
			Result:={AUDIO_EXTERNAL}.AL_INVALID_CONTEXT
		end

	Al_no_error:INTEGER
			-- There is not currently an error
		once
			Result:={AUDIO_EXTERNAL}.AL_NO_ERROR
		end

	Al_position:INTEGER
			-- X, Y, Z position
		once
			Result:={AUDIO_EXTERNAL}.AL_POSITION
		end

	Al_velocity:INTEGER
			-- Velocity vector
		once
			Result:={AUDIO_EXTERNAL}.AL_VELOCITY
		end

	Al_orientation:INTEGER
			-- Orientation expressed as "at" and "up" vectors
		once
			Result:={AUDIO_EXTERNAL}.AL_ORIENTATION
		end

	Al_direction:INTEGER
			-- Direction vector
		once
			Result:={AUDIO_EXTERNAL}.AL_DIRECTION
		end

	Al_buffers_processed:INTEGER
			-- The number of buffers in the queue that have been processed
		once
			Result:={AUDIO_EXTERNAL}.AL_BUFFERS_PROCESSED
		end

	Al_format_mono8:INTEGER
			-- Mono 8 bits audio format
		once
			Result:={AUDIO_EXTERNAL}.AL_FORMAT_MONO8
		end

	Al_format_stereo8:INTEGER
			-- Stereo 8 bits audio format
		once
			Result:={AUDIO_EXTERNAL}.AL_FORMAT_STEREO8
		end

	Al_format_mono16:INTEGER
			-- Mono 16 bits audio format
		once
			Result:={AUDIO_EXTERNAL}.AL_FORMAT_MONO16
		end

	Al_format_stereo16:INTEGER
			-- Stereo 16 bits audio format
		once
			Result:={AUDIO_EXTERNAL}.AL_FORMAT_STEREO16
		end

	Al_source_state:INTEGER
			-- The state of the source (AL_STOPPED,AL_PLAYING, ...)
		once
			Result:={AUDIO_EXTERNAL}.AL_SOURCE_STATE
		end

	Al_initial:INTEGER
			-- The initial source state
		once
			Result:={AUDIO_EXTERNAL}.AL_INITIAL
		end

	Al_playing:INTEGER
			-- Source state when playing
		once
			Result:={AUDIO_EXTERNAL}.AL_PLAYING
		end

	Al_paused:INTEGER
			-- Source state when in pause
		once
			Result:={AUDIO_EXTERNAL}.AL_PAUSED
		end

	Al_stopped:INTEGER
			-- Source state when not playting and not pause and not initial.
		once
			Result:={AUDIO_EXTERNAL}.AL_STOPPED
		end

	Al_gain:INTEGER
			-- Master gain. Value should be positive.
		once
			Result:={AUDIO_EXTERNAL}.AL_GAIN
		end


end
