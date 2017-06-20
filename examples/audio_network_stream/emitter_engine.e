note
	description: "{ENGINE} that capture sound samples and put them in the network."
	author: "Louis Marchand"
	date: "2017-06-19 03:18:40.394 +0000"
	revision: "0.1"

class
	EMITTER_ENGINE

inherit
	ENGINE

create
	make

feature {NONE} -- Initialization

	initializing_network
			-- <Precursor>
		local
			l_address:STRING
			l_port:INTEGER
		do
			io.standard_default.put_string ("Target address to stream the audio (nothing for loopback):")
			io.input.read_line
			l_address := io.input.last_string.twin
			io.standard_default.put_string ("Target port to stream the audio (0 for default 12345):")
			io.input.read_integer
			l_port := validate_port (io.input.last_integer)
			if l_port = -1 then
				io.error.put_string ("The port number " + io.input.last_integer.out + "is not valid%N")
				has_error := True
			end
			if l_address.is_empty then
				create socket.make_loopback_bound (l_port)
			else
				create socket.make_targeted (l_address, l_port)
			end
			has_error := has_error or socket.was_error
		end

	initializing_audio
			-- Initializing `capture'
		local
			l_device_index:INTEGER
			l_devices:LIST[AUDIO_DEVICE]
		do
			l_devices := audio_library.capture_devices
			print_devices_selection_message(l_devices)
			io.read_integer
			l_device_index := io.last_integer
			if l_device_index /= 0 and then not l_devices.valid_index (l_device_index) then
				l_device_index := 0
				io.error.put_string ("The device index " + l_device_index.out + " is not valid.%N")
				has_error := True
			end
			if l_device_index = 0 then
				audio_library.enable_capture (Frequency, Channel_count, Bits_per_pixel, buffer_size)
			else
				audio_library.enable_capture_with_device (l_devices.at (l_device_index), Frequency, Channel_count, Bits_per_pixel, buffer_size)
			end
			capture := audio_library.capture_controller
			has_error := has_error or audio_library.has_error or not audio_library.is_capture_enable
		ensure then
			not audio_library.is_capture_enable implies has_error
		end

feature -- Basic operations

	execute
			-- <Precursor>
		do
			capture.start_capture
			from
				must_stop := False
			until
				must_stop
			loop
				capture.update
				if capture.has_samples then
					socket.put_managed_pointer (capture.buffer, 0, capture.buffer.count)
				else
					sleep (1000000)
				end
			end
			capture.stop_capture
		end

feature {NONE} -- Implementation

	capture:AUDIO_CAPTURE_CONTROLLER
			-- Used to capture sound

end
