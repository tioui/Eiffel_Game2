note
	description: "Tools to capture audio from a capturing audio device"
	author: "Louis Marchand"
	date: "Thu, 15 Jun 2017 19:17:55 +0000"
	revision: "0.1"

class
	AUDIO_CAPTURE_CONTROLLER

inherit
	AUDIO_OPENAL_ERROR_MANAGER
		redefine
			read_alc_error
		end

create {AUDIO_LIBRARY_CONTROLLER}
	make

feature {NONE} -- Initialization

	make(a_device:POINTER; a_frequency, a_channel_count, a_bits_per_sample, a_buffer_count: INTEGER)
			-- Initialization of `Current' using `a_device' as `device', `a_frequency' as `frequency'
			-- `a_channel_count' as `channel_count' and `a_bits_per_sample' as `bits_per_sample' and `a_buffer_count' to initialize `buffer'
			-- and `buffer_sample_count'
		require
			Device_Valid: not a_device.is_default_pointer
			Channel_Valid: a_channel_count >= 1 and a_channel_count <= 2
			Bits_Per_Sample_Valid: a_bits_per_sample ~ 8 or a_bits_per_sample ~ 16
			Frequency_Valid:a_frequency > 0
		do
			device := a_device
			channel_count := a_channel_count
			frequency := a_frequency
			bits_per_sample := a_bits_per_sample
			buffer_sample_count := a_buffer_count
			create buffer.make (a_buffer_count * a_channel_count * (a_bits_per_sample // 8))
			is_device_closed := False
			is_capturing := False
			has_samples := False
			is_updating := False
		end

feature -- Access

	is_capturing:BOOLEAN
			-- `Current' is presently capturing sound

	is_device_closed:BOOLEAN
			-- The capturing device id closed

	channel_count:INTEGER
			-- The channel number of `Current' (1=mono, 2=stereo, etc.).

	frequency:INTEGER
			-- The frequency (sample rate) of `Current'.

	bits_per_sample:INTEGER
			-- The bit resolution of one frame of `Current' (without channel count).

	buffer_sample_count:INTEGER
			-- The number of samples that the `buffer' will be able to contain (for example,
			-- a stereo 16 bits capture with a buffer count of 1024 will have the size 1024*2*2 = 5096 bytes)

	buffer:MANAGED_POINTER
			-- The data that has been read by `update'

	start_capture
			-- Strart the capture (use `update' to fill the `buffer')
		require
			Device_Open: not is_device_closed
			Not_Already_Started: not is_capturing
		do
			clear_alc_error (device)
			{AUDIO_EXTERNAL}.alc_capture_start (device)
			read_alc_error(device, "Cannot start capture.")
			is_capturing := not has_error
		ensure
			Capture_Started: not has_error implies is_capturing
		end

	stop_capture
			-- Stop the capture
		require
			Device_Open: not is_device_closed
			Not_Already_Stopped: is_capturing
		do
			clear_alc_error (device)
			{AUDIO_EXTERNAL}.alc_capture_stop (device)
			read_alc_error(device, "Cannot stop capture.")
			is_capturing := False
		ensure
			Captue_Stopped: not is_capturing
		end

	update
			-- Update `a_buffer' with the new value of the capture
		require
			Device_Open: not is_device_closed
			Is_Capturing: is_capturing
		do
			is_updating := True
			clear_alc_error (device)
			{AUDIO_EXTERNAL}.alc_capture_samples (device, buffer.item, buffer_sample_count)
			has_samples := True
			read_alc_error(device, "Cannot capture samples.")
			is_updating := False
		end

	has_samples:BOOLEAN
			-- Samples has been found by the last call to `update'

	get_sample(a_index:INTEGER):LIST[INTEGER_16]
			-- Get the sample at the position `a_index' in the `buffer' (start at 1).
			-- The number of value in `Result' represent the `channel_count'
			-- If `bits_per_sample' is 8, the values are unsigned from 0 to 255 with 128 being an ouput level of 0
			-- If `bits_per_sample' is 16, the values are signed from -32768 to 32767 with 0 being an ouput level of 0
		require
			Index_Valid: a_index >= 1 and a_index <= buffer_sample_count
		local
			l_index:INTEGER
		do
			create {ARRAYED_LIST[INTEGER_16]}Result.make (channel_count)
			l_index := (a_index - 1) * channel_count
			if bits_per_sample ~ 16 then
				across l_index |..| (l_index + channel_count - 1) as la_index loop
					Result.extend(buffer.read_integer_16 (la_index.item))
				end
			else
				across l_index |..| (l_index + channel_count - 1) as la_index loop
					Result.extend(buffer.read_natural_8 (la_index.item).to_integer_16)
				end
			end
		ensure
			Sample_Count_Valid: Result.count ~ channel_count
		end

feature {AUDIO_ANY} -- Implementation

	device:POINTER
			-- Internal representation of the capture device

feature {AUDIO_LIBRARY_CONTROLLER} -- Implementation

	close_device
			-- Called when the {AUDIO_LIBRARY_CONTROLLER} close the capture device.
		do
			if is_capturing then
				stop_capture
			end
			is_device_closed := True
		end

feature {NONE} -- Implementation

	null:POINTER
			-- A NULL C pointer

	is_updating:BOOLEAN
			-- An `update' presently in progress

	read_alc_error(a_device:POINTER; a_message:READABLE_STRING_GENERAL)
			-- Read the next OpenAL error
		do
			last_al_error_code := {AUDIO_EXTERNAL}.Al_no_error
			last_alc_error_code := {AUDIO_EXTERNAL}.ALC_get_error(a_device)
			if is_updating and last_alc_error_code = {AUDIO_EXTERNAL}.ALC_invalid_value then
				has_samples := False
			else
				has_error := last_alc_error_code /= {AUDIO_EXTERNAL}.Alc_no_error
				if has_error and print_on_error_internal.item then
					io.error.put_string (a_message.to_string_8+"%N")
					io.error.put_string (last_error.to_string_8+"%N")
				end
			end
		end

invariant
	Buffer_Count_Valid: buffer.count ~ buffer_sample_count * channel_count * (bits_per_sample // 8)
end
