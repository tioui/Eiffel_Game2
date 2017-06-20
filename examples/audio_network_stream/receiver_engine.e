note
	description: "{ENGINE} that get the sound samples from the network and play it in the selected audio playback device."
	author: "Louis Marchand"
	date: "2017-06-19 03:18:40.394 +0000"
	revision: "0.1"

class
	RECEIVER_ENGINE

inherit
	ENGINE
		redefine
			make
		end

create
	make

feature -- Constants

	Buffers_count:INTEGER = 5
			-- The number of buffer to cache audio

feature {NONE} -- Initialization

	make
			-- <Precursor>
		do
			Precursor
			create buffers.make(Buffers_count)
			across 1 |..| Buffers_count as la_index loop
				buffers.extend (create {MANAGED_POINTER}.make (buffer_size * Channel_count * (Bits_per_pixel // 8)))
			end
		end

	initializing_network
			-- <Precursor>
		local
			l_port:INTEGER
		do
			io.standard_default.put_string ("Target port to stream the audio (0 for default 12345):")
			io.input.read_integer
			l_port := validate_port (io.input.last_integer)
			if l_port = -1 then
				io.error.put_string ("The port number " + io.input.last_integer.out + "is not valid%N")
				has_error := True
			end
			create socket.make_bound (l_port)
			socket.set_non_blocking
			has_error := has_error or socket.was_error
		end

	initializing_audio
			-- Initializing `capture'
		local
			l_device_index:INTEGER
			l_devices:LIST[AUDIO_DEVICE]
		do
			l_devices := audio_library.playback_devices
			print_devices_selection_message(l_devices)
			io.read_integer
			l_device_index := io.last_integer
			if l_device_index /= 0 and then not l_devices.valid_index (l_device_index) then
				l_device_index := 0
				io.error.put_string ("The device index " + l_device_index.out + " is not valid.%N")
				has_error := True
			end
			if l_device_index = 0 then
				audio_library.enable_playback
			else
				audio_library.enable_playback_with_device (l_devices.at (l_device_index))
			end
			has_error := has_error or audio_library.has_error or not audio_library.is_playback_enable
		ensure then
			not audio_library.is_playback_enable implies has_error
		end

feature -- Basic operations

	execute
			-- <Precursor>
		local
			l_sound:AUDIO_SOUND_STREAMING
			l_source:AUDIO_SOURCE
		do
			audio_library.launch_in_thread
			create l_sound.make (Channel_count, Frequency, Bits_per_pixel)
			audio_library.sources_add
			l_source := audio_library.last_source_added
			l_source.queue_sound (l_sound)

			across 1 |..| buffers_count as la_index loop		-- Start with a cache of `Buffers_count' samples buffer
				read_to_sound(l_sound)
			end
			l_source.play
			from
			until
				must_stop
			loop
				if l_sound.playing_queue.count < buffers_count then
					read_to_sound(l_sound)
				else
					sleep (1000000)
				end
			end
			from
				l_sound.finish
			until
				not l_source.is_playing
			loop
			end
			audio_library.stop_thread
		end

feature {NONE} -- Implementation

	buffers:ARRAYED_QUEUE[MANAGED_POINTER]
			-- A pool of buffers to used when `read_to_sound' is called

	read_to_sound(a_sound:AUDIO_SOUND_STREAMING)
			-- Read the next audio samples from the `socket' to `a_sound'
		local
			l_network_buffer, l_audio_buffer:MANAGED_POINTER
		do
			if not must_stop then
				l_network_buffer := buffers.item
				buffers.remove
				buffers.extend (l_network_buffer)
				from
					socket.read_to_managed_pointer (l_network_buffer, 0, l_network_buffer.count)
				until
					must_stop or
					socket.bytes_read > 0
				loop
					socket.read_to_managed_pointer (l_network_buffer, 0, l_network_buffer.count)
					if socket.bytes_read = 0 then
						sleep (1000000)
					end
				end
				if socket.bytes_read > 0  then
					create l_audio_buffer.share_from_pointer (l_network_buffer.item, socket.bytes_read)
					a_sound.queue_buffer (l_audio_buffer)
				end
			end
		rescue
			io.error.put_string ("Cannot receive samples.%N")
			must_stop := True
			retry
		end

invariant
	Buffers_Count_Valid: buffers.count = Buffers_count
end
