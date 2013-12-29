note
	description: "Controller for de audio library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	AUDIO_CONTROLLER

inherit
	AUDIO_OPENAL_ERROR_MANAGER
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
			create {LINKED_LIST[AUDIO_SOURCE]} sources.make
			create i_listener
		end

feature -- Access

	enable_sound
			-- Active the sound context. After this call, you can use sound functionnalities.
		local
			error:INTEGER
		do
			if not is_sound_enable then
				device:={AUDIO_EXTERNAL}.AL_open_device(create {POINTER})
				if not device.is_default_pointer then
					context:={AUDIO_EXTERNAL}.AL_Create_context(device,create {POINTER})
					if not context.is_default_pointer then
						read_error
						{AUDIO_EXTERNAL}.AL_make_context_current(context)
						read_error
						if not is_error then
							i_listener.initialize
							is_sound_enable:=true
						else
							{AUDIO_EXTERNAL}.AL_destroy_context(context)
							error:={AUDIO_EXTERNAL}.AL_close_device(device)
							check error/=0 end
						end
					else
						error:={AUDIO_EXTERNAL}.AL_close_device(device)
						check error/=0 end
					end
				end
			end
		end

	disable_sound
			-- Close the sound context. You cannot use sound functionnality after this call.
		local
			error:INTEGER
		do
			if is_sound_enable then
				stop_thread
				sources.do_all (agent (s: AUDIO_SOURCE) do s.stop end)
				sources.wipe_out
				is_sound_enable:=false
				read_error
				{AUDIO_EXTERNAL}.AL_suspend_context(context)
				read_error
				check not is_error end
				{AUDIO_EXTERNAL}.AL_destroy_context(context)
				error:={AUDIO_EXTERNAL}.AL_close_device(device)
				check error/=0 end
			end

		end

	listener:AUDIO_LISTENER
			-- Get the sound listener.
		require
			Get_Listener_Sound_Open:is_sound_enable
		do
			Result:=i_listener
		end

	is_sound_enable:BOOLEAN -- Return true a sund context is activate. If true, you can use sound functionnalities.

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
			sources.do_all (agent (s: AUDIO_SOURCE) do s.update_playing end)
		end


	launch_in_thread
		require
			Launch_in_Thread_Sound_Open:is_sound_enable
		do
			if not is_thread_init then
				sources.do_all (agent (s: AUDIO_SOURCE) do s.set_thread_safe end)
				make_thread
				is_thread_init:=true
			end
			is_thread_executing:=true
			launch_thread
		end

	is_thread_executing:BOOLEAN

	stop_thread
		do
			if is_thread_executing then
				must_stop_thread:=true
				join
				is_thread_executing:=false
			end

		end


	sources_count:INTEGER
			-- The current number of sound source in the sound context.
		require
			Sources_Count_Sound_Open:is_sound_enable
		do
			Result:=sources.count
		end

	sources_add
			-- Create a new sound source. To receive the sound source, use the `source_get_last_add method'.
		require
			Sources_Add_Sound_Open:is_sound_enable
		do
			if is_thread_executing then
				launch_mutex.lock
			end
			sources.extend (create {AUDIO_SOURCE}.make(sound_buffer_size))
			if is_thread_executing then
				last_source_added.set_thread_safe
				launch_mutex.unlock
			end
		ensure
			sources.count = old sources.count+1
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
			Result:=sources.at (a_index)
		end

	sources_remove(a_index:INTEGER)
			-- Remove the `a_index'-th sound source.
		require
			Sources_Remove_At_Sound_Open:is_sound_enable
			Al_Controler_Source_Remove_Index_Valid: a_index>0 and then a_index<sources_count+1
		do
			sources.go_i_th (a_index)
			sources.item.stop
			sources.remove
		end

	sources_prune(a_source:AUDIO_SOURCE)
			-- Remove the sound source `a_source' from the sound controller. A sound that has been remove from the sound
			-- controller can continue to work on its own, but it will not be update by the `update_sound_playing' routine.
		require
			Sources_Remove_Sound_Open:is_sound_enable
			Al_Controler_Source_Remove_Source_Valid: a_source /= Void and then sources_has (a_source)
		do
			a_source.stop
			sources.prune_all (a_source)
		ensure
			Al_Controler_Source_Remove_Source_Removed: not sources.has (a_source)
		end

	sources_wipe_out
			-- This methode remove all sound sources in the sound context.
		require
			Update_Sound_Playing_Sound_Open:is_sound_enable
		do
			sources.do_all (agent (s: AUDIO_SOURCE) do s.stop end)
			sources.wipe_out
		end

	sources_has(a_source:AUDIO_SOURCE):BOOLEAN
			-- Return true if the sound source `a_source' is still in the sound controller.
		require
			Sources_Has_Sound_Open:is_sound_enable
		do
			Result:=sources.has (a_source)
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
		require
			Sources_Push_Sound_Open:is_sound_enable
		do
			if is_thread_executing then
				launch_mutex.lock
			end
			sources.extend (a_source)
			if is_thread_executing then
				last_source_added.set_thread_safe
				launch_mutex.unlock
			end
		ensure
			sources.count = old sources.count+1
		end

feature {NONE} -- Implementation Class Variable

	device:POINTER
	context:POINTER
	i_listener:AUDIO_LISTENER
	sources:LIST[AUDIO_SOURCE]
	must_stop_thread:BOOLEAN
	is_thread_init:BOOLEAN

feature {NONE} -- Implementation Routine

	execute
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
		is_sound_enable implies (not {AUDIO_EXTERNAL}.AL_get_current_context.is_default_pointer)
	Is_Sound_Open_Sources_Valid:
		(not is_sound_enable) implies (sources.count = 0)

end
