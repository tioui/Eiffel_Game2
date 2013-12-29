note
	description: "[
		A sound source in a 3d environment.
		
		If a stereo sound is queued in the source, the 3d environment
		is not applied.
		]"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

-- 16 bit buffers are signed and 0 is the silent position
-- 8 bit buffers are unsigned and 128 is the silent position
-- for stereo formats the left channel comes first

class
	AUDIO_SOURCE

inherit
	AUDIO_3D_OBJECT
	DISPOSABLE

create {AUDIO_CONTROLLER}
	make

feature {NONE} -- Initialization

	make(a_buffer_size:INTEGER)
			-- Initialization for `Current'.
		require
			Make_Source_Audio_Open:not {AUDIO_EXTERNAL}.AL_get_current_context.is_default_pointer
		local
			l_sources:ARRAY[NATURAL]
			l_source_c:ANY
			l_sound_al_buffer_c:ANY
		do
			create l_sources.make_filled (0, 1, 1)
			l_source_c:=l_sources.to_c
			read_error
			{AUDIO_EXTERNAL}.AL_gen_sources(1,$l_source_c)
			read_error
			check not is_error end
			index:=l_sources.at (1)
			set_buffer_size(a_buffer_size)
			create sound_al_buffer.make_filled (0, 0, nb_buffer-1)
			buffer_tail:=0
			buffer_head:=0
			l_sound_al_buffer_c:=sound_al_buffer.to_c
			{AUDIO_EXTERNAL}.AL_Gen_Buffers(nb_buffer,$l_sound_al_buffer_c)
			read_error
			check not is_error end
			create sound_queued.make
			set_position (0.0, 0.0, 0.0)
			set_direction (0.0,0.0, 0.0)
			set_direction(0.0,0.0,0.0)
			temp_buffer:=temp_buffer.memory_alloc(buffer_size)
			is_thread_safe:=false
			create g_mutex.make
		end

feature -- Access

	buffer_size:INTEGER assign set_buffer_size
		-- The buffer size for the sound streaming (default is 64000). Allocate too little memory to buffer can cause sound to stop before finishing.

	set_buffer_size(a_buffer_size:INTEGER)
			-- Set the buffer size to `a_buffer_size' for the sound streaming (default is 64000). Allocate too little memory to buffer can cause sound to stop before finishing.
		do
			buffer_size:=a_buffer_size
		end

	play
			-- Start the sound streaming.
		do
			update_playing
			{AUDIO_EXTERNAL}.AL_source_play(index)
		end

	pause
			-- Put the streaming in pause.
		do
			{AUDIO_EXTERNAL}.AL_source_pause(index)
		end

	stop
			-- Stop the streaming. All queud sound will be remove from the queue.
		do
			{AUDIO_EXTERNAL}.AL_source_stop(index)
			sound_queued.wipe_out
			update_playing
			{AUDIO_EXTERNAL}.AL_source_rewind(index)
		end

--	is_initial:BOOLEAN
--			-- Return true if the sound source is in the initial state.
--		do
--			Result:=(get_int_param_c({AUDIO_EXTERNAL}.AL_SOURCE_STATE)={AUDIO_EXTERNAL}.AL_INITIAL)
--		end

	is_playing:BOOLEAN
			-- Return true if the sound source is currently playing.
		do
			Result:=(param_int_c({AUDIO_EXTERNAL}.AL_SOURCE_STATE)={AUDIO_EXTERNAL}.AL_PLAYING)
		end

	is_pause:BOOLEAN
			-- Return true if the sound source is currently on pause.
		do
			Result:=(param_int_c({AUDIO_EXTERNAL}.AL_SOURCE_STATE)={AUDIO_EXTERNAL}.AL_PAUSED)
		end

--	is_stop:BOOLEAN
--			-- Return true if the sound source is currently stop state (not initial or playing or on pause).
--		do
--			Result:=(get_int_param_c({AUDIO_EXTERNAL}.AL_SOURCE_STATE)={AUDIO_EXTERNAL}.AL_STOPPED)
--		end

	get_gain:REAL_32 assign set_gain
			-- Get the current sound source gain (volume). The gain will always be a REAL between 0 and 1.
			-- If the gain is set at 0, the source is mute. If the gain is set at 1, it is at it's max volume.
		do
			Result:=param_float_c({AUDIO_EXTERNAL}.AL_GAIN)
		end

	set_gain(a_value:REAL_32)
			-- Set the current sound source gain (volume) to `a_value'. The `a_value' must always be a REAL between 0 and 1.
			-- If the `a_value' is set at 0, the source is mute. If the `a_value' is set at 1, it is at it's max volume.
		require
			Source_Set_Gain_Valid_Value: a_value>=0.0 and then a_value<=1.0
		do
			set_param_float_c({AUDIO_EXTERNAL}.AL_GAIN,a_value)
		ensure
			Source_Set_Gain_Is_Set: get_gain = a_value
		end

	queue_sound_loop(a_sound:AUDIO_SOUND;a_nb_loop:INTEGER)
			-- Add a `a_sound' to the playing queue.
			-- Put `a_nb_loop' to 0 for no loop and to -1 to infinite loop
		require
			Queud_Sound_Is_Open: a_sound.is_open
		local
			l_sound_tuple:TUPLE[sound:AUDIO_SOUND;nb_loop:INTEGER]
		do
			create l_sound_tuple
			l_sound_tuple.sound:=a_sound
			l_sound_tuple.nb_loop:=a_nb_loop
			sound_queued.put (l_sound_tuple)
		end

	queue_sound(a_sound:AUDIO_SOUND)
			-- Add a `a_sound' to the playing queue.
			-- Don't loop the sound at all (only one playing).
		require
			Queud_Sound_Is_Open: a_sound.is_open
		do
			queue_sound_loop(a_sound,0)
		end

	queue_sound_infinite_loop(a_sound:AUDIO_SOUND)
			-- Add a `a_sound' to the playing queue.
			-- Loop the `a_sound' until the source is stopped.
		require
			Queud_Sound_Is_Open: a_sound.is_open
		do
			queue_sound_loop(a_sound,-1)
		end

	update_playing
			-- This methode must be execute at regular interval. If it is not execute enough in a certain time lap, the sounds will stop before finishing.
			-- If this append, you can call this methode more often or use bigger `buffer_size'. You can use the routine `update_sound_playing' on the game controller
			-- and it will do the same effect.
		local
			last_fill_buffer_size,channel,bits_resolution,freq,byte_per_buffer_sample:INTEGER
		do
			if is_thread_safe then
				g_mutex.lock
			end
			from
			until processed_buffers_number<1
			loop
				unqueue_buffer
			end
			from
			until
				buffer_tail=(buffer_head+1)\\nb_buffer or else
				sound_queued.is_empty
			loop
				from
					last_fill_buffer_size:=0
				until
					last_fill_buffer_size /= 0 or else
					sound_queued.is_empty
				loop
					sound_queued.item.sound.fill_buffer (temp_buffer,buffer_size)
					last_fill_buffer_size:=sound_queued.item.sound.last_buffer_size
					channel:=sound_queued.item.sound.channel_count
					bits_resolution:=sound_queued.item.sound.bits_per_sample
					freq:=sound_queued.item.sound.frequency
					byte_per_buffer_sample:=sound_queued.item.sound.byte_per_buffer_sample
					if last_fill_buffer_size=0 then
						sound_queued.item.sound.restart
						if sound_queued.item.nb_loop=0 then
							sound_queued.remove
						else
							if sound_queued.item.nb_loop>0 then
								sound_queued.item.nb_loop:=sound_queued.item.nb_loop-1
							end
						end

					end
				end
				if not sound_queued.is_empty then
					queue_buffer(temp_buffer,last_fill_buffer_size,channel,bits_resolution,freq)
				end

			end
			if is_thread_safe then
				g_mutex.unlock
			end
		end


	set_direction(a_x,a_y,a_z:REAL)
			-- Set the source direction. Meaning where the source object is looking at in the 3D environment.
		do
			set_params_3_float({AUDIO_EXTERNAL}.AL_DIRECTION,a_x,a_y,a_z)
		end

	direction:TUPLE[x,y,z:REAL]
			-- Get the source direction. Meaning where the source object is looking at in the 3D environment.
		do
			Result:=params_3_float({AUDIO_EXTERNAL}.AL_DIRECTION)
		end


feature {AUDIO_CONTROLLER}

	set_thread_safe
		do
			is_thread_safe:=true
		end

feature {NONE} -- Implementation - Routines


	processed_buffers_number:INTEGER
		do
			Result:=param_int_c({AUDIO_EXTERNAL}.AL_BUFFERS_PROCESSED)
		end

	queue_buffer(a_buffer:POINTER;a_length,a_channel,a_bits_resolution,a_frequence:INTEGER)
		local
			l_buffer_name:ARRAY[NATURAL]
			l_buffer_name_c:ANY
			l_format:INTEGER
		do
			if a_channel=1 then
				if a_bits_resolution=8 then
					l_format:={AUDIO_EXTERNAL}.AL_FORMAT_MONO8
				else
					l_format:={AUDIO_EXTERNAL}.AL_FORMAT_MONO16
				end
			else
				if a_bits_resolution=8 then
					l_format:={AUDIO_EXTERNAL}.AL_FORMAT_STEREO8
				else
					l_format:={AUDIO_EXTERNAL}.AL_FORMAT_STEREO16
				end
			end

			check buffer_tail/=(buffer_head+1)\\nb_buffer end
			read_error
			{AUDIO_EXTERNAL}.AL_buffer_data(sound_al_buffer.at (buffer_head),l_format,a_buffer,a_length,a_frequence)
			read_error
			check not is_error end
			create l_buffer_name.make_filled (sound_al_buffer.at (buffer_head), 1, 1)
			buffer_head:=(buffer_head+1)\\nb_buffer
			l_buffer_name_c:=l_buffer_name.to_c
			read_error
			{AUDIO_EXTERNAL}.AL_source_queue_buffers(index,1,$l_buffer_name_c)
			read_error
			check not is_error end
		end

	unqueue_buffer
		require
			Unqueue_Buffer_Nb_Processed_Valid: processed_buffers_number>0
		local
			l_buffer_name:ARRAY[NATURAL]
			l_buffer_name_c:ANY
		do
			check buffer_tail/=buffer_head end
			create l_buffer_name.make_filled (sound_al_buffer.at (buffer_tail), 1, 1)
			buffer_tail:=(buffer_tail+1)\\nb_buffer
			l_buffer_name_c:=l_buffer_name.to_c
			read_error
			{AUDIO_EXTERNAL}.AL_source_unqueue_buffers(index,1,$l_buffer_name_c)
			read_error
			check not is_error end
		end

	param_int_c(a_id:INTEGER):INTEGER
		local
			l_value:INTEGER
		do
			{AUDIO_EXTERNAL}.AL_get_source_i(index,a_id,$l_value)
			Result:=l_value
		end

	param_float_c(a_id:INTEGER):REAL_32
		local
			l_value:REAL_32
		do
			{AUDIO_EXTERNAL}.AL_get_source_f(index,a_id,$l_value)
			Result:=l_value
		end

	set_param_float_c(a_id:INTEGER;a_value:REAL_32)
		do
			{AUDIO_EXTERNAL}.AL_set_source_f(index,a_id,a_value)
		end

	set_params_float_pointer_c(a_id:INTEGER;a_ptr:POINTER)
		do
			{AUDIO_EXTERNAL}.AL_set_source_fv(index,a_id,a_ptr)
		end

	assign_params_float_pointer_c(a_id:INTEGER;a_ptr:POINTER)
		do
			{AUDIO_EXTERNAL}.AL_get_source_fv(index,a_id,a_ptr)
		end

	dispose
		local
			sources:ARRAY[NATURAL]
			source_c:ANY
		do
			stop
			temp_buffer.memory_free
			create sources.make_filled (index, 1, 1)
			source_c:=sources.to_c
			read_error
			{AUDIO_EXTERNAL}.AL_delete_sources(1,$source_c)
			read_error
			check not is_error end
		end


feature {NONE} -- Implementation - Variables

	sound_al_buffer:ARRAY[NATURAL]

	buffer_tail:INTEGER
	buffer_head:INTEGER
	index:NATURAL

	temp_buffer:POINTER

	sound_queued:LINKED_QUEUE[TUPLE[sound:AUDIO_SOUND;nb_loop:INTEGER]]

	nb_buffer:INTEGER
		once
			Result:=4
		end

	is_thread_safe:BOOLEAN
	g_mutex:MUTEX




end
