note
	description: "Controller for the audio library."
	author: "Louis Marchand"
	date: "Tue, 07 Apr 2015 01:15:20 +0000"
	revision: "2.0"

class
	AUDIO_LIBRARY_CONTROLLER

inherit
	AUDIO_OPENAL_ERROR_MANAGER
		export
			{ANY} print_on_error, set_print_on_error, enable_print_on_error, disable_print_on_error
		end
	THREAD
	rename
		make as make_thread,
		launch as launch_thread
	export
		{NONE} all
	end


create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
			-- Activates the sound context.
		do
			sound_buffer_size:=65536
			is_thread_init:=false
			create launch_mutex.make
			create {LINKED_LIST[AUDIO_SOURCE]} internal_sources.make
			create internal_listener
		end

feature -- Access

	devices:LIST[READABLE_STRING_GENERAL]
			-- Lists all possible devices that `Current' may use
		obsolete
			"Use playback_devices"
		local
			l_devices:LIST[AUDIO_DEVICE]
		do
			l_devices := playback_devices
			create {ARRAYED_LIST[READABLE_STRING_GENERAL]} Result.make (l_devices.count)
			across l_devices as la_devices loop
				Result.extend (la_devices.item.name)
			end
		end

	playback_devices:LIST[AUDIO_DEVICE]
			-- Lists all possible playback devices that `Current' may use.
		do
			if is_extension_present(null, "ALC_enumeration_EXT") then
				if is_extension_present(null, "ALC_enumerate_all_EXT") then
					Result := devices_list({AUDIO_EXTERNAL}.ALC_all_device_specifier, False)
				else
					Result := devices_list({AUDIO_EXTERNAL}.ALC_device_specifier, False)
				end
			else
				create {ARRAYED_LIST[AUDIO_DEVICE]}Result.make (0)
			end
		ensure
			All_Playback_Device: across Result as la_result all la_result.item.is_playback end
		end

	capture_devices:LIST[AUDIO_DEVICE]
			-- Lists all possible capture devices that `Current' may use
		local
			l_result:POINTER
			l_c_string:C_STRING
			l_item:AUDIO_DEVICE
		do
			if is_extension_present(null, "ALC_enumeration_EXT") then
				Result := devices_list({AUDIO_EXTERNAL}.ALC_capture_device_specifier, True)
			else
				create {ARRAYED_LIST[AUDIO_DEVICE]}Result.make (0)
			end
		ensure
			All_Playback_Device: across Result as la_result all la_result.item.is_capture end
		end


	enable_sound
			-- Activates the playback sound context.
		obsolete
			"Use enable_playback"
		do
			enable_playback
		end

	enable_playback_with_device(a_device:AUDIO_DEVICE)
			-- Activates the playback sound context using `a_device'.
		require
			Is_Not_Already_Enabled: not is_playback_enable
			Is_device_valid: a_device.is_playback and playback_devices.has (a_device)
		do
			enable_playback_implementaton(a_device.name_pointer)
		end


	enable_playback
			-- Activates the playback sound context.
		require
			Is_Not_Already_Enabled: not is_playback_enable
		do
			enable_playback_implementaton(null)
		end

	enable_capture(a_frequency, a_channel_count, a_bits_per_sample, a_buffer_count: INTEGER)
			-- Activates the capture sound context using the system default device. The capturing can be done with `capture_controller'.
			-- The resulting `capture_controller' will have use `a_channel_count' number of channel, `a_bits_per_sample' number of bits per
			-- single channel sample (8 or 16) and the internal buffer will be able to contain `a_buffer_count' samples (for example,
			-- a stereo 16 bits capture with a buffer count of 1024 will have the size 1024*2*2 = 5096 bytes)
		require
			Is_Not_Already_Enabled: not is_capture_enable
			Channel_Valid: a_channel_count >= 1 and a_channel_count <= 2
			Bits_Per_Sample_Valid: a_bits_per_sample ~ 8 or a_bits_per_sample ~ 16
			Frequency_Valid:a_frequency > 0
		do
			enable_capture_inmplementaton(null, a_frequency, a_channel_count, a_bits_per_sample, a_buffer_count)
		end

	enable_capture_with_device(a_device:AUDIO_DEVICE; a_frequency, a_channel_count, a_bits_per_sample, a_buffer_count: INTEGER)
			-- Activates the capture sound context using `a_device'. The capturing can be done with `capture_controller'.
			-- The resulting `capture_controller' will have use `a_channel_count' number of channel, `a_bits_per_sample' number of bits per
			-- single channel sample (8 or 16) and the internal buffer will be able to contain `a_buffer_count' samples (for example,
			-- a stereo 16 bits capture with a buffer count of 1024 will have the size 1024*2*2 = 5096 bytes)
		require
			Is_Not_Already_Enabled: not is_capture_enable
			Device_Valid: a_device.is_capture and capture_devices.has (a_device)
			Channel_Valid: a_channel_count >= 1 and a_channel_count <= 2
			Bits_Per_Sample_Valid: a_bits_per_sample ~ 8 or a_bits_per_sample ~ 16
			Frequency_Valid:a_frequency > 0
		do
			enable_capture_inmplementaton(a_device.name_pointer, a_frequency, a_channel_count, a_bits_per_sample, a_buffer_count)
		end

	disable_sound
			-- Closes the playback sound context.
		obsolete
			"Use disable_playback"
		do
			disable_playback
		end

	disable_playback
			-- Closes the playback sound context.
		local
			l_ok:BOOLEAN
		do
			if is_playback_enable then
				if is_thread_executing then
					stop_thread
				end
				internal_sources.do_all (agent {AUDIO_SOURCE}.close)
				internal_sources.wipe_out
				{AUDIO_EXTERNAL}.ALC_suspend_context(context)
				{AUDIO_EXTERNAL}.ALC_destroy_context(context)
				clear_error
				l_ok:={AUDIO_EXTERNAL}.ALC_close_device(internal_playback_device)
				if not l_ok then
					read_alc_error (null,"Cannot close audio context.")
				end
			end
		end

	disable_capture
			-- Closes the capture sound context.
		local
			l_ok:BOOLEAN
		do
			if is_capture_enable then
				capture_controller.close_device
				clear_alc_error (internal_capture_device)
				l_ok := {AUDIO_EXTERNAL}.alc_capture_close_device (internal_capture_device)
				if not l_ok then
					read_alc_error (null,"Cannot close audio capture device.")
				end
			end
		end

	device_specifier:READABLE_STRING_GENERAL
			-- A text representation of the device used by `Current'
		obsolete
			"Use playback_device.name"
		require
			Sound_Enabled: is_playback_enable
		do
			Result := playback_device.name
		end

	playback_device:AUDIO_DEVICE
			-- The playback {AUDIO_DEVICE} presently used by `Current'
		require
			Sound_Enabled: is_playback_enable
		do
			create Result.make ({AUDIO_EXTERNAL}.ALC_get_string(internal_playback_device, {AUDIO_EXTERNAL}.ALC_device_specifier), False)
		end

	capture_device:AUDIO_DEVICE
			-- The capture {AUDIO_DEVICE} presently used by `Current'
		require
			Sound_Enabled: is_capture_enable
		do
			create Result.make ({AUDIO_EXTERNAL}.ALC_get_string(internal_capture_device, {AUDIO_EXTERNAL}.ALC_capture_device_specifier), False)
		end

	listener:AUDIO_LISTENER
			-- Gets the sound listener.
		require
			Get_Listener_Sound_Open:is_playback_enable
		do
			Result:=internal_listener
		end

	is_sound_enable:BOOLEAN
			-- True when a playback sound context is active.
		obsolete
			"Use is_playback_enable"
		do
			Result := is_playback_enable
		end

	is_playback_enable:BOOLEAN
			-- True when a playback sound context is active.
		do
			Result := not {AUDIO_EXTERNAL}.ALC_get_current_context.is_default_pointer
		end

	is_capture_enable:BOOLEAN
			-- True when a capture sound is active.
		do
			Result := not internal_capture_device.is_default_pointer
		end

	quit_library
			-- Clears the library. Must be used before the end of the application
		local
			mem:MEMORY
		do
			if is_playback_enable then
				sources_wipe_out
				create mem
				mem.full_collect
				disable_playback
				disable_capture
			end
		end

	capture_controller:AUDIO_CAPTURE_CONTROLLER
			-- Used to capture sound from microphone
		require
			Capture_Enabled: is_capture_enable
		do
			check attached internal_capture_controller as la_controller then
				Result := la_controller
			end
		end

feature -- Sources management


	sound_buffer_size:INTEGER assign set_sound_buffer_size
		-- The buffer size for the sound streaming (default is 65536). Allocating too little memory to the buffer can cause sound to stop before finishing.

	set_sound_buffer_size(a_buffer_size:INTEGER)
			-- Set the buffer size for the sound streaming (default is 65536). Allocating too little memory to the buffer can cause sound to stop before finishing.
		do
			sound_buffer_size:=a_buffer_size
		end

	update
			-- This method must be executed at regular interval. If it is not executed enough in a certain time lap, the sound will stop before finishing.
			-- If this happens, you can call this method more often or use bigger `sound_buffer_size'. You can use the method `update_playing' for each individual
			-- Sound sources in the project and it will do the same effect.
		require
			Update_Sound_Playing_Sound_Open:is_playback_enable
		do
			internal_sources.do_all (agent {AUDIO_SOURCE}.update_playing)
		end


	launch_in_thread
			-- Makes `Current' automatically `update' using another thread.
			-- You have to manually call `stop_thread' before closing the application
		require
			Launch_in_Thread_Sound_Open:is_playback_enable
			Not_Thread_Running: not is_thread_executing
		do
			if not is_thread_init then
				internal_sources.do_all (agent {AUDIO_SOURCE}.set_thread_safe)
				make_thread
				is_thread_init:=true
			end
			is_thread_executing:=true
			launch_thread
		ensure
			Is_Thread_Running: is_thread_executing
		end

	is_thread_executing:BOOLEAN
			-- The `update' thread is running

	stop_thread
			-- Stops the thread previously called with `launch_in_thread'
		require
			Is_Thread_Running: is_thread_executing
		do
			must_stop_thread:=true
			join
			is_thread_executing:=false
		ensure
			Is_Thread_Not_Running: not is_thread_executing
		end

	sources_count:INTEGER
			-- The current number of sound sources in the sound context.
		require
			Sources_Count_Sound_Open:is_playback_enable
		do
			Result:=internal_sources.count
		end

	sources_add
			-- Creates a new sound source. To receive the sound source, use the `source_get_last_add method'.
		require
			Sources_Add_Sound_Open:is_playback_enable
		do
			if is_thread_executing then
				launch_mutex.lock
			end
			internal_sources.extend (create {AUDIO_SOURCE}.make(sound_buffer_size))
			if is_thread_executing then
				last_source_added.set_thread_safe
				launch_mutex.unlock
			end
		ensure
			internal_sources.count = old internal_sources.count+1
		end

	last_source_added:AUDIO_SOURCE
			-- Returns the last sound source that has been created.
		require
			Sources_Get_Last_add_Sound_Open:is_playback_enable
		do
			Result:=sources_at (sources_count)
		end

	sources_at(a_index:INTEGER):AUDIO_SOURCE
			-- Returns the `a_index'-th sound source.
		require
			Sources_Get_At_Sound_Open:is_playback_enable
			Al_Controler_Source_Get_Index_Valid: a_index>0 and then a_index<sources_count+1
		do
			Result:=internal_sources.at (a_index)
		end

	sources_remove(a_index:INTEGER)
			-- Removes the `a_index'-th sound source.
		require
			Sources_Remove_At_Sound_Open:is_playback_enable
			Al_Controler_Source_Remove_Index_Valid: a_index>0 and then a_index<sources_count+1
		do
			internal_sources.go_i_th (a_index)
			internal_sources.item.close
			internal_sources.remove
		end

	sources_prune(a_source:AUDIO_SOURCE)
			-- Removes the sound source `a_source' from the sound controller. A sound that has been removed from the sound
			-- Controller can continue to work on its own, but it will not be updated by the `update_sound_playing' routine.
		require
			Sources_Remove_Sound_Open:is_playback_enable
			Al_Controler_Source_Remove_Source_Valid: a_source /= Void and then sources_has (a_source)
		do
			a_source.close
			internal_sources.prune_all (a_source)
		ensure
			Al_Controler_Source_Remove_Source_Removed: not internal_sources.has (a_source)
		end

	sources_wipe_out
			-- This method removes all sound sources in the sound context.
		require
			Update_Sound_Playing_Sound_Open:is_playback_enable
		do
			internal_sources.do_all (agent {AUDIO_SOURCE}.close)
			internal_sources.wipe_out
		end

	sources_has(a_source:AUDIO_SOURCE):BOOLEAN
			-- Returns true if the sound source `a_source' is still in the sound controller.
		require
			Sources_Has_Sound_Open:is_playback_enable
		do
			Result:=internal_sources.has (a_source)
		end

	sources:CHAIN_INDEXABLE_ITERATOR[AUDIO_SOURCE]
			-- All {AUDIO_SOURCE} of the system.
		require
			Sources_Sound_Open:is_playback_enable
		do
			create Result.make(internal_sources)
		end

feature {NONE}

	sources_extend(a_source:AUDIO_SOURCE)
			-- Adds `a_source' in the `sources' chain
		require
			Sources_Push_Sound_Open:is_playback_enable
		do
			if is_thread_executing then
				launch_mutex.lock
			end
			internal_sources.extend (a_source)
			if is_thread_executing then
				last_source_added.set_thread_safe
				launch_mutex.unlock
			end
		ensure
			internal_sources.count = old internal_sources.count + 1
		end

feature {NONE} -- Implementation Class Variable

	internal_playback_device:POINTER
			-- Internal C Pointer to the audio device

	internal_capture_device:POINTER
			-- Internal C Pointer to the audio device

	internal_capture_controller:detachable AUDIO_CAPTURE_CONTROLLER
			-- The internal representation of `capture_controller'

	context:POINTER
			-- Internal C pointer to the audio context

	internal_listener:AUDIO_LISTENER
			-- The audio listener to be returned by `listener'

	internal_sources:LIST[AUDIO_SOURCE]
			-- Every audio `sources' initialized by the library

	must_stop_thread:BOOLEAN
			-- True when the principal thread asked the `update' thread to stop.

	is_thread_init:BOOLEAN
			-- Is thread initialization already done.

	null:POINTER

feature {NONE} -- Implementation Routine

	is_extension_present(a_device:POINTER; a_extension_text:STRING_8):BOOLEAN
			-- Check if OpenAL support the extension identified by `a_extension_text'
			-- is supported by `a_device'
		local
			l_c_string:C_STRING
		do
			create l_c_string.make (a_extension_text)
			Result := {AUDIO_EXTERNAL}.ALC_is_extension_present(a_device, l_c_string.item)
		end

	execute
			-- The thread main loop (started with `launch_in_thread')
		local
			env:EXECUTION_ENVIRONMENT
		do
			create env
			from must_stop_thread:=false
			until must_stop_thread
			loop
				launch_mutex.lock
				update
				launch_mutex.unlock
				env.sleep (10000000)
			end
		end

	enable_playback_implementaton(a_pointer:POINTER)
			-- Activates the playback sound context using `a_pointer' as `internal_playback_device'.
		require
			Is_Not_Already_Enabled: not is_playback_enable
		local
			l_ok:BOOLEAN
		do
			clear_error
			internal_playback_device:={AUDIO_EXTERNAL}.ALC_open_device(a_pointer)
			read_alc_error(null, "Cannot open audio device.")
			if not internal_playback_device.is_default_pointer then
				clear_alc_error (internal_playback_device)
				context:={AUDIO_EXTERNAL}.ALC_create_context(internal_playback_device,null)
				read_alc_error(internal_playback_device, "Cannot open audio context.")
				if not context.is_default_pointer then
					clear_alc_error (internal_playback_device)
					l_ok := {AUDIO_EXTERNAL}.ALC_make_context_current(context)
					if l_ok then
						internal_listener.initialize
					else
						read_alc_error(null, "Cannot make audio context current.")
						{AUDIO_EXTERNAL}.ALC_destroy_context(context)
						l_ok:={AUDIO_EXTERNAL}.ALC_close_device(internal_playback_device)
					end
				else
					l_ok:={AUDIO_EXTERNAL}.ALC_close_device(internal_playback_device)
				end
			end
		end

	enable_capture_inmplementaton(a_pointer:POINTER; a_frequency:INTEGER; a_channel_count, a_bits_per_sample, a_buffer_count: INTEGER)
			-- Activates the capture sound context using `a_pointer' as `internal_capture_device'.
			-- The resulting `capture_controller' will have use `a_channel_count' number of channel, `a_bits_per_sample' number of bits per
			-- single channel sample (8 or 16) and the internal buffer will be able to contain `a_buffer_count' samples (for example,
			-- a stereo 16 bits capture with a buffer count of 1024 will have the size 1024*2*2 = 5096 bytes)
		require
			Is_Not_Already_Enabled: not is_capture_enable
			Channel_Valid: a_channel_count >= 1 and a_channel_count <= 2
			Bits_Per_Sample_Valid: a_bits_per_sample ~ 8 or a_bits_per_sample ~ 16
			Frequency_Valid:a_frequency > 0
		local
			l_ok:BOOLEAN
			l_format:INTEGER
			l_buffer_size:INTEGER
		do
			if a_channel_count = 1 then
				if a_bits_per_sample = 8 then
					l_format := {AUDIO_EXTERNAL}.AL_FORMAT_MONO8
				else
					l_format := {AUDIO_EXTERNAL}.AL_FORMAT_MONO16
				end
			else
				if a_bits_per_sample = 8 then
					l_format := {AUDIO_EXTERNAL}.AL_FORMAT_STEREO8
				else
					l_format := {AUDIO_EXTERNAL}.AL_FORMAT_STEREO16
				end
			end
			l_buffer_size := a_buffer_count * a_channel_count * (a_bits_per_sample // 8)
			clear_error
			internal_capture_device:={AUDIO_EXTERNAL}.ALC_capture_open_device(a_pointer, a_frequency.to_natural_32, l_format, l_buffer_size)
			read_alc_error(null, "Cannot open capture device.")
			if not internal_capture_device.is_default_pointer then
				create internal_capture_controller.make (internal_capture_device, a_frequency, a_channel_count, a_bits_per_sample, a_buffer_count)
			end
		ensure
			Capture_Enabled: not has_error implies is_capture_enable
		end

	devices_list(a_specifier_type:INTEGER; a_is_capture:BOOLEAN):LIST[AUDIO_DEVICE]
			-- Lists all possible devices that `Current' may use (fetch with the internal type `a_specifier_type').
			-- If `a_is_capture', then the devices are capturing device. Else, they are playback device.
		local
			l_result:POINTER
			l_c_string:C_STRING
			l_item:AUDIO_DEVICE
		do
			create {LINKED_LIST[AUDIO_DEVICE]} Result.make
			Result.compare_objects
			l_result := {AUDIO_EXTERNAL}.ALC_get_string(null, a_specifier_type)
			if not l_result.is_default_pointer then
				from
					create l_item.make (l_result, a_is_capture)
				until
					l_item.name.is_empty
				loop
					result.extend (l_item)
					l_result := l_result.plus (l_item.name.count + 1)
					create l_item.make (l_result, a_is_capture)
				end
			end
		end

invariant
	Is_Sound_Open_Context_Valid:
		is_playback_enable implies (not {AUDIO_EXTERNAL}.ALC_get_current_context.is_default_pointer)
	Is_Sound_Open_Sources_Valid:
		(not is_playback_enable) implies (internal_sources.count = 0)
	Capture_Valid: (is_capture_enable implies attached internal_capture_controller) and (attached internal_capture_controller implies is_capture_enable)

end
