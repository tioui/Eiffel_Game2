note
	description: "Controller for de audio library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_AL_CONTROLLER

inherit
	GAME_AL_ERROR_MANAGER


create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
			-- Active the sound context.
		do
			enable_sound
			sound_buffer_size:=64000
		end

	make_no_sound
			-- Initialization for `Current'.
			-- Keep the sound context close. You must use `enable_sound' before using any sound fonctionnality.
		do
			is_sound_enable:=false
			sound_buffer_size:=64000
		end

feature -- Access

	enable_sound
			-- Active the sound context. After this call, you can use sound functionnalities.
		local
			error:INTEGER
		do
			if not is_sound_enable then
				device:={GAME_AL_EXTERNAL}.AL_open_device(create {POINTER})
				if not device.is_default_pointer then
					context:={GAME_AL_EXTERNAL}.AL_Create_context(device,create {POINTER})
					if not context.is_default_pointer then
						read_error
						{GAME_AL_EXTERNAL}.AL_make_context_current(context)
						read_error
						if not is_error then
							create i_listener.make
							sources:= create {LINKED_LIST[GAME_AL_SOURCE]}.make
							is_sound_enable:=true
						else
							{GAME_AL_EXTERNAL}.AL_destroy_context(context)
							error:={GAME_AL_EXTERNAL}.AL_close_device(device)
							check error/=0 end
						end
					else
						error:={GAME_AL_EXTERNAL}.AL_close_device(device)
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
				sources.do_all (agent (s: GAME_AL_SOURCE) do s.stop end)
				sources:=Void
				is_sound_enable:=false
				read_error
				{GAME_AL_EXTERNAL}.AL_suspend_context(context)
				read_error
				check not is_error end
				{GAME_AL_EXTERNAL}.AL_destroy_context(context)
				error:={GAME_AL_EXTERNAL}.AL_close_device(device)
				check error/=0 end
			end

		end

	listener:GAME_AL_LISTENER
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

	set_sound_buffer_size(l_buffer_size:INTEGER)
			-- Set the buffer size for the sound streaming (default is 64000). Allocate too little memory to buffer can cause sound to stop before finishing.
		do
			sound_buffer_size:=l_buffer_size
		end

	update_sound_playing
			-- This methode must be execute at regular interval. If it is not execute enough in a certain time lap, the sounds will stop before finishing.
			-- If this append, you can call this methode more often or use bigger `sound_buffer_size'. You can use the method `update_playing' for each individual
			-- sound sources in the project and it will do the same effect.
		require
			Update_Sound_Playing_Sound_Open:is_sound_enable
		do
			sources.do_all (agent (s: GAME_AL_SOURCE) do s.update_playing end)
		end



	sources_count:INTEGER
			-- The current number of sound source in the sound context.
		require
			Sources_Count_Sound_Open:is_sound_enable
		do
			Result:=sources.count
		end

	source_add
			-- Create a new sound source. To receive the sound source, use the `source_get_last_add method'.
		require
			Sources_Add_Sound_Open:is_sound_enable
		do
			sources.extend (create {GAME_AL_SOURCE}.make(sound_buffer_size))
		ensure
			sources.count = old sources.count+1
		end

	source_get_last_add:GAME_AL_SOURCE
			-- Return the last sound source that as been created.
		require
			Sources_Get_Last_add_Sound_Open:is_sound_enable
		do
			Result:=source_get_at (sources_count)
		end

	source_get_at(i:INTEGER):GAME_AL_SOURCE
			-- Return the `i'-th sound source.
		require
			Sources_Get_At_Sound_Open:is_sound_enable
			Al_Controler_Source_Get_Index_Valid: i>0 and then i<sources_count+1
		do
			Result:=sources.at (i)
		end

	sources_remove_at(i:INTEGER)
			-- Remove the `i'-th sound source.
		require
			Sources_Remove_At_Sound_Open:is_sound_enable
			Al_Controler_Source_Remove_Index_Valid: i>0 and then i<sources_count+1
		do
			sources.go_i_th (i)
			sources.item.stop
			sources.remove
		end

	sources_remove(l_source:GAME_AL_SOURCE)
			-- Remove the sound source `l_source' from the sound controller. A sound that has been remove from the sound
			-- controller can continue to work on its own, but it will not be update by the `update_sound_playing' routine.
		require
			Sources_Remove_Sound_Open:is_sound_enable
			Al_Controler_Source_Remove_Source_Valid: l_source /= Void and then sources_has (l_source)
		do
			l_source.stop
			sources.prune_all (l_source)
		ensure
			Al_Controler_Source_Remove_Source_Removed: not sources.has (l_source)
		end

	wipe_sources
			-- This methode remove all sound sources in the sound context.
		require
			Update_Sound_Playing_Sound_Open:is_sound_enable
		do
			sources.do_all (agent (s: GAME_AL_SOURCE) do s.stop end)
			sources.wipe_out
		end

	sources_has(l_source:GAME_AL_SOURCE):BOOLEAN
			-- Return true if the sound source `l_source' is still in the sound controller.
		require
			Sources_Has_Sound_Open:is_sound_enable
		do
			Result:=sources.has (l_source)
		end

	quit_library
			-- Clear the library. Must be used before the end of the application
		local
			mem:MEMORY
		do
			if is_sound_enable then
				wipe_sources
				create mem
				mem.full_collect
				disable_sound
			end
		end

feature {NONE} -- Implementation Class Variable

	device:POINTER
	context:POINTER
	i_listener:GAME_AL_LISTENER
	sources:LIST[GAME_AL_SOURCE]

feature {NONE} -- Implementation Routine



invariant
	Is_Sound_Open_Context_Valid:
		is_sound_enable = (not {GAME_AL_EXTERNAL}.AL_get_current_context.is_default_pointer)
	Is_Sound_Open_Sources_Valid:
		is_sound_enable = (sources /= Void)

end
