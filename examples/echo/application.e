note
	description : "Example of recording sound and play it again."
	author      : "Louis Marchand"
	generator   : "Eiffel Game2 Project Wizard"
	date        : "2017-06-16 06:16:46.780 +0000"
	revision    : "0.1"

class
	APPLICATION

inherit
	AUDIO_LIBRARY_SHARED
	EXCEPTIONS

create
	make

feature -- Constants

	Recording_time:INTEGER = 5
			-- The number of second that `Current' will record

	Frequency:INTEGER = 8000
			-- The audio sample per second

	Channel_count:INTEGER = 2
			-- The number of channel to record

	Bits_per_sample:INTEGER =8
			-- The number of bits for each sample in the `record' buffer

	Capture_buffer_count:INTEGER = 1024
			-- The number of sample that can be put in a single capturing buffer

feature {NONE} -- Initialization

	make
			-- Running the application.
		do
			create record.make (Recording_time * Frequency * Channel_count * (Bits_per_sample // 8))	-- Reserved enough space for `Recording_time' seconds of recording
			initializing_recorder
			initializing_player
			if audio_library.is_capture_enable and audio_library.is_playback_enable then
				recording
				playback
			else
				io.error.put_string ("Cannot initialize audio devices. Quitting.%N")
				die(1)
			end

		end

	initializing_recorder
			-- Select and activate the capture device
		local
			l_devices:LIST [AUDIO_DEVICE]
			l_index, l_device_index:INTEGER
			l_index_valid:BOOLEAN
		do
			l_devices := audio_library.capture_devices
			from
				l_index_valid := False
			until
				l_index_valid
			loop
				io.standard_default.put_string ("Select a capture device to use (0 to select the default device)%N")
				l_index := 1
				across l_devices as la_devices loop
					io.standard_default.put_string_32 ({STRING_32}"	" + l_index.out + " - " + la_devices.item.name + "%N")
					l_index := l_index + 1
				end
				io.standard_default.put_string ("Choice:")
				io.input.read_line
				if io.input.last_string.is_integer then
					l_device_index := io.input.last_string.to_integer
					if l_device_index ~ 0 then
						audio_library.enable_capture (Frequency, Channel_count, Bits_per_sample, Capture_buffer_count)
						l_index_valid := True
					elseif l_devices.valid_index (l_device_index) then
						audio_library.enable_capture_with_device (l_devices.at (l_device_index), Frequency, Channel_count, Bits_per_sample, Capture_buffer_count)
						l_index_valid := True
					else
						io.error.put_string ("Error: " + io.input.last_string + "is not a valid device index.%N")
					end
				else
					io.error.put_string ("Error: " + io.input.last_string + "is not a valid device index.%N")
				end
			end
		end

	initializing_player
			-- Select and activate the playback device
		local
			l_devices:LIST [AUDIO_DEVICE]
			l_index, l_device_index:INTEGER
			l_index_valid:BOOLEAN
		do
			l_devices := audio_library.playback_devices
			from
				l_index_valid := False
			until
				l_index_valid
			loop
				io.standard_default.put_string ("Select a playback device to use (0 to select the default device)%N")
				l_index := 1
				across l_devices as la_devices loop
					io.standard_default.put_string_32 ({STRING_32}"	" + l_index.out + " - " + la_devices.item.name + "%N")
					l_index := l_index + 1
				end
				io.standard_default.put_string ("Choice:")
				io.input.read_line
				if io.input.last_string.is_integer then
					l_device_index := io.input.last_string.to_integer
					if l_device_index ~ 0 then
						audio_library.enable_playback
						l_index_valid := True
					elseif l_devices.valid_index (l_device_index) then
						audio_library.enable_playback_with_device (l_devices.at (l_device_index))
						l_index_valid := True
					else
						io.error.put_string ("Error: " + io.input.last_string + "is not a valid device index.%N")
					end
				else
					io.error.put_string ("Error: " + io.input.last_string + "is not a valid device index.%N")
				end
			end
		end

	recording
			-- Capturing `Recording_time' seconds of sound recording in `record'
		require
			Capture_Enabled: audio_library.is_capture_enable
		local
			l_capture_controller:AUDIO_CAPTURE_CONTROLLER
			l_capture_count, l_copy_count:INTEGER
			l_environment:EXECUTION_ENVIRONMENT
		do
			l_capture_controller := audio_library.capture_controller
			create l_environment
			l_capture_controller.start_capture
			io.standard_default.put_string ("Capturing...%N")
			from
				l_capture_count := 0
			until
				l_capture_count >= record.count
			loop
				from
					l_capture_controller.update
				until
					l_capture_count >= record.count or
					not l_capture_controller.has_samples	--	 Be sure to empty the capture buffer before each loop delay
				loop
					if record.count < l_capture_count + l_capture_controller.buffer.count then
						l_copy_count := record.count - l_capture_count
					else
						l_copy_count := l_capture_controller.buffer.count
					end
					(record.item + l_capture_count).memory_copy(l_capture_controller.buffer.item, l_copy_count)
					l_capture_count := l_capture_count + l_copy_count
					l_capture_controller.update
				end
				l_environment.sleep (10000000)		-- Loop delay of 10 milliseconds
			end
			l_capture_controller.stop_capture
			io.standard_default.put_string ("Done...%N")
		end

	playback
			-- Play the `record'ed sound
		require
			Playback_Enabled: audio_library.is_playback_enable
		local
			l_source:AUDIO_SOURCE
			l_sound:AUDIO_SOUND_STREAMING
			l_environment:EXECUTION_ENVIRONMENT
		do
			create l_environment
			audio_library.sources_add
			l_source := audio_library.last_source_added
			create l_sound.make (Channel_count, Frequency, Bits_per_sample)
			l_sound.queue_buffer (record)
			l_sound.finish					-- Closing the stream. The stream will stay open as long as `finish' is not call.
											-- Even if `finish' is call, the stream will terminate every buffer before closing.
			from
				l_source.queue_sound (l_sound)
				io.standard_default.put_string ("Playing...%N")
				l_source.play
			until
				not l_source.is_playing
			loop
				l_environment.sleep (10000000)		-- Loop delay of 10 milliseconds
				audio_library.update
			end
			io.standard_default.put_string ("Done...%N")
		end

feature -- Access

	record:MANAGED_POINTER
			-- The sound samples raw data


end
