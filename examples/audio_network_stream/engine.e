note
	description: "Manage the application algorithm"
	author: "Louis Marchand"
	date: "2017-06-19 03:18:40.394 +0000"
	revision: "0.1"

deferred class
	ENGINE

inherit
	AUDIO_LIBRARY_SHARED
	THREAD
		rename
			make as make_thread
		end

feature -- Constants

	buffer_size:INTEGER = 256

	Frequency:INTEGER = 8000
			-- The number of audio sample per seconds

	Channel_count:INTEGER = 2
			-- The number of channel for the audio samples (1 = mono and 2 = stereo)

	Bits_per_pixel:INTEGER = 8
			-- The number of bits for each audio sample (without taking into account the `Channel_count')

feature {NONE} -- Initialization

	make
			-- <Precursor>
		do
			make_thread
			create mutex.make
			initializing_network
			initializing_audio
		end

	initializing_network
			-- Initializing the `socket'
		deferred
		end

	initializing_audio
			-- Initializing the audio interface
		deferred
		ensure
			audio_library.has_error implies has_error
		end

	print_devices_selection_message(a_devices:ITERABLE[AUDIO_DEVICE])
			-- Print the message used for {AUDIO_DEVICE} selection into `a_device'
		local
			l_index:INTEGER
		do
			io.standard_default.put_string ("Select an audio device (0 for default):%N")
			l_index := 1
			across a_devices as la_devices loop
				io.standard_default.put_string ("       " + l_index.out + " - " + la_devices.item.name.to_string_8)
				io.standard_default.put_new_line
				l_index := l_index + 1
			end
			io.standard_default.put_string ("Choice:")
		end

	validate_port(a_port:INTEGER):INTEGER
			-- Validate `a_port' to be sure that it is a valid port
			-- Return the valid port or -1 if it is not valid
		do
			if io.input.last_integer = 0 then
				Result := 12345
			elseif io.input.last_integer >= 1 and io.input.last_integer <= 65535 then
				Result := io.input.last_integer
			else
				Result := -1
			end
		end

feature -- Access

	has_error:BOOLEAN
			-- An error occured while initializing `Current'

	run
			-- Launch `Current'
		require
			No_Error:not has_error
		do
			launch
			io.standard_default.put_string ("Processing (press enter to leave)...%N")
			io.input.read_line_thread_aware
			must_stop := True
			io.standard_default.put_string ("Leaving.%N")
			join
		end

	must_stop:BOOLEAN
			-- `Current' must stop processing

feature {NONE} -- Implementation

	socket: NETWORK_DATAGRAM_SOCKET
			-- The socket used to access network functionnality

	mutex:MUTEX
			-- Used to manage {THREAD} synchronisation

end
