note
	description: "Controller for de audio library."
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
			-- Active the sound context.
		do
			sound_buffer_size:=64000
			is_thread_init:=false
			create launch_mutex.make
			create {LINKED_LIST[AUDIO_SOURCE]} internal_sources.make
			create internal_listener
		end

feature -- Access

	devices:LIST[READABLE_STRING_GENERAL]
			-- List all possible device that `Current' may used
		local
			l_result:POINTER
			l_c_string:C_STRING
			l_item:READABLE_STRING_GENERAL
		do
			create {LINKED_LIST[READABLE_STRING_GENERAL]} Result.make
			l_result := {AUDIO_EXTERNAL}.ALC_get_string(null, {AUDIO_EXTERNAL}.ALC_all_device_specifier)
			if not l_result.is_default_pointer then
				from
					create l_c_string.make_by_pointer (l_result)
					l_item := l_c_string.string
				until
					l_item.is_empty
				loop
					result.extend (l_item)
					l_result := l_result.plus (l_item.count + 1)
					create l_c_string.make_by_pointer (l_result)
					l_item := l_c_string.string
				end
			end
		end

	enable_sound
			-- Active the sound context.
		require
			Is_Not_Already_Enabled: not is_sound_enable
		local
			l_ok:BOOLEAN
		do
			clear_error
			device:={AUDIO_EXTERNAL}.ALC_open_device(null)
			read_alc_error(null, "Cannot open audio device.")
			if not device.is_default_pointer then
				clear_alc_error (device)
				context:={AUDIO_EXTERNAL}.ALC_create_context(device,null)
				read_alc_error(device, "Cannot open audio context.")
				if not context.is_default_pointer then
					clear_alc_error (device)
					l_ok := {AUDIO_EXTERNAL}.ALC_make_context_current(context)
					if l_ok then
						internal_listener.initialize
					else
						read_alc_error(null, "Cannot make audio context current.")
						{AUDIO_EXTERNAL}.ALC_destroy_context(context)
						l_ok:={AUDIO_EXTERNAL}.ALC_close_device(device)
					end
				else
					l_ok:={AUDIO_EXTERNAL}.ALC_close_device(device)
				end
			end
		end

	disable_sound
			-- Close the sound context.
		local
			l_ok:BOOLEAN
		do
			if is_sound_enable then
				if is_thread_executing then
					stop_thread
				end
				internal_sources.do_all (agent {AUDIO_SOURCE}.close)
				internal_sources.wipe_out
				{AUDIO_EXTERNAL}.ALC_suspend_context(context)
				{AUDIO_EXTERNAL}.ALC_destroy_context(context)
				clear_error
				l_ok:={AUDIO_EXTERNAL}.ALC_close_device(device)
				if not l_ok then
					read_alc_error (null,"Cannot close audio context.")
				end
			end
		end

	device_specifier:READABLE_STRING_GENERAL
			-- A text representation of the device used by `Current'
		require
			Sound_Enabled: is_sound_enable
		local
			l_result:C_STRING
		do
			create l_result.make_by_pointer ({AUDIO_EXTERNAL}.ALC_get_string(device, {AUDIO_EXTERNAL}.ALC_device_specifier))
			Result := l_result.string
		end

	listener:AUDIO_LISTENER
			-- Get the sound listener.
		require
			Get_Listener_Sound_Open:is_sound_enable
		do
			Result:=internal_listener
		end

	is_sound_enable:BOOLEAN
			-- True when a sound context is activate.
		do
			Result := not {AUDIO_EXTERNAL}.ALC_get_current_context.is_default_pointer
		end

feature -- Sources management


	sound_buffer_size:INTEGER assign set_sound_buffer_size
		-- The buffer size for the sound streaming (default is 64000). Allocate too little memory to buffer can cause sound to stop before finishing.

	set_sound_buffer_size(a_buffer_size:INTEGER)
			-- Set the buffer size for the sound streaming (default is 64000). Allocate too little memory to buffer can cause sound to stop before finishing.
		do
			sound_buffer_size:=a_buffer_size
		end

	update
			-- This methode must be execute at regular interval. If it is not execute enough in a certain time lap, the sounds will stop before finishing.
			-- If this append, you can call this methode more often or use bigger `sound_buffer_size'. You can use the method `update_playing' for each individual
			-- sound sources in the project and it will do the same effect.
		require
			Update_Sound_Playing_Sound_Open:is_sound_enable
		do
			internal_sources.do_all (agent {AUDIO_SOURCE}.update_playing)
		end


	launch_in_thread
			-- Make `Current' automatically `update' using another thread.
			-- You have to manually call `stop_thread' before closing the application
		require
			Launch_in_Thread_Sound_Open:is_sound_enable
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
			-- Stop the thread previously called with `launch_in_thread'
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
			-- The current number of sound source in the sound context.
		require
			Sources_Count_Sound_Open:is_sound_enable
		do
			Result:=internal_sources.count
		end

	sources_add
			-- Create a new sound source. To receive the sound source, use the `source_get_last_add method'.
		require
			Sources_Add_Sound_Open:is_sound_enable
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
			-- Return the last sound source that as been created.
		require
			Sources_Get_Last_add_Sound_Open:is_sound_enable
		do
			Result:=sources_at (sources_count)
		end

	sources_at(a_index:INTEGER):AUDIO_SOURCE
			-- Return the `a_index'-th sound source.
		require
			Sources_Get_At_Sound_Open:is_sound_enable
			Al_Controler_Source_Get_Index_Valid: a_index>0 and then a_index<sources_count+1
		do
			Result:=internal_sources.at (a_index)
		end

	sources_remove(a_index:INTEGER)
			-- Remove the `a_index'-th sound source.
		require
			Sources_Remove_At_Sound_Open:is_sound_enable
			Al_Controler_Source_Remove_Index_Valid: a_index>0 and then a_index<sources_count+1
		do
			internal_sources.go_i_th (a_index)
			internal_sources.item.close
			internal_sources.remove
		end

	sources_prune(a_source:AUDIO_SOURCE)
			-- Remove the sound source `a_source' from the sound controller. A sound that has been remove from the sound
			-- controller can continue to work on its own, but it will not be update by the `update_sound_playing' routine.
		require
			Sources_Remove_Sound_Open:is_sound_enable
			Al_Controler_Source_Remove_Source_Valid: a_source /= Void and then sources_has (a_source)
		do
			a_source.close
			internal_sources.prune_all (a_source)
		ensure
			Al_Controler_Source_Remove_Source_Removed: not internal_sources.has (a_source)
		end

	sources_wipe_out
			-- This methode remove all sound sources in the sound context.
		require
			Update_Sound_Playing_Sound_Open:is_sound_enable
		do
			internal_sources.do_all (agent {AUDIO_SOURCE}.close)
			internal_sources.wipe_out
		end

	sources_has(a_source:AUDIO_SOURCE):BOOLEAN
			-- Return true if the sound source `a_source' is still in the sound controller.
		require
			Sources_Has_Sound_Open:is_sound_enable
		do
			Result:=internal_sources.has (a_source)
		end

	sources:CHAIN_INDEXABLE_ITERATOR[AUDIO_SOURCE]
			-- All {AUDIO_SOURCE} of the system.
		do
			create Result.make(internal_sources)
		end

	quit_library
			-- Clear the library. Must be used before the end of the application
		local
			mem:MEMORY
		do
			if is_sound_enable then
				sources_wipe_out
				create mem
				mem.full_collect
				disable_sound
			end
		end

feature {AUDIO_SOURCE}

	sources_extend(a_source:AUDIO_SOURCE)
			-- add `a_source' in the `sources' chain
		require
			Sources_Push_Sound_Open:is_sound_enable
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

	device:POINTER
			-- Internal C Pointer to the audio device

	context:POINTER
			-- Internal C pointer to the audio context

	internal_listener:AUDIO_LISTENER
			-- The audio listener to be return by `listener'

	internal_sources:LIST[AUDIO_SOURCE]
			-- Every audio `sources' initialized by the library

	must_stop_thread:BOOLEAN
			-- True when the principal thread asked the `update' thread to stop.

	is_thread_init:BOOLEAN
			-- Is thread initialization already done.

	null:POINTER

feature {NONE} -- Implementation Routine

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

invariant
	Is_Sound_Open_Context_Valid:
		is_sound_enable implies (not {AUDIO_EXTERNAL}.ALC_get_current_context.is_default_pointer)
	Is_Sound_Open_Sources_Valid:
		(not is_sound_enable) implies (internal_sources.count = 0)

end
