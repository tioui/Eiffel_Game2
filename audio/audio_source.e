note
	description: "[
					A sound source in a 3d environment.
					
					If a stereo sound is queued in the source, the 3d environment
					is not applied.
					
					16 bit buffers are signed and 0 is the silent position
					8 bit buffers are unsigned and 128 is the silent position
					for stereo formats the left channel comes first

				]"
	author: "Louis Marchand"
	date: "Tue, 07 Apr 2015 01:15:20 +0000"
	revision: "2.0"

class
	AUDIO_SOURCE

inherit
	AUDIO_3D_OBJECT
	DISPOSABLE
	AUDIO_LIBRARY_SHARED

create {AUDIO_LIBRARY_CONTROLLER}
	make

feature {NONE} -- Initialization

	make(a_buffer_size:INTEGER)
			-- Initialization for `Current' using `a_buffer_size as the size of an audio buffer
			-- Note: Shorter `a_buffer_size' takes less memory but there is more
			-- possibility that the buffer empty itself before the application have te time to fill it.
		require
			Make_Source_Sound_Enable:audio_library.is_playback_enable
		local
			l_sources:ARRAY[NATURAL]
			l_source_c:ANY
		do
			has_been_stop := True
			create l_sources.make_filled (0, 1, 1)
			create g_mutex.make
			create internal_sound_queued.make
			create sound_al_buffer.make_filled (0, 0, buffers_count-1)
			l_source_c:=l_sources.to_c
			clear_error
			{AUDIO_EXTERNAL}.AL_gen_sources(1,$l_source_c)
			index:=l_sources.at (1)
			if {AUDIO_EXTERNAL}.AL_is_source(index) then
				buffer_size := a_buffer_size
				buffer_tail:=0
				buffer_head:=0
				initialize_buffers
				if not has_error then
					is_open:=True
					set_position (0.0, 0.0, 0.0)
					if not has_error then
						set_direction (0.0,0.0, 0.0)
						if not has_error then
							set_direction(0.0,0.0,0.0)
						end
					end
					is_open := not has_error
					temp_buffer:=temp_buffer.memory_alloc(buffer_size)
					is_thread_safe:=false
				end
			else
				read_al_error("Cannot generate a new source")
			end
		ensure
			Is_Open: not has_error implies is_open
		end

	initialize_buffers
			-- Create the internal `sound_al_buffer'
		local
			l_are_buffers:BOOLEAN
			i:INTEGER
			l_sound_al_buffer_c:ANY
		do
			l_sound_al_buffer_c:=sound_al_buffer.to_c
			{AUDIO_EXTERNAL}.AL_Gen_Buffers(buffers_count,$l_sound_al_buffer_c)
			from
				l_are_buffers := True
				i := sound_al_buffer.lower
			until
				i > sound_al_buffer.upper or
				not l_are_buffers
			loop
				l_are_buffers := l_are_buffers and {AUDIO_EXTERNAL}.AL_is_Buffer(sound_al_buffer.at (i))
				i := i + 1
			end
			if not l_are_buffers then
				read_al_error("Cannot generate buffer for audio source.")
			end
		end

feature -- Access

	buffer_size:INTEGER
		-- The buffer size for the sound streaming (default is 65536). Allocate too little memory to buffer can cause sound to stop before finishing.

	play
			-- Start the sound streaming.
		require
			Source_Is_Open: is_open
		do
			has_been_stop := False
			clear_error
			update_playing
			if not has_error then
				{AUDIO_EXTERNAL}.AL_source_play(index)
				if not is_playing then
					read_al_error ("Cannot play audio source.")
				end
			end
		end

	pause
			-- Put the streaming in pause.
		require
			Source_Is_Open: is_open
		do
			has_been_stop := False
			clear_error
			{AUDIO_EXTERNAL}.AL_source_pause(index)
			if not is_pause then
				read_al_error ("Cannot pause audio source")
			end
		end

	stop
			-- Stop the streaming. All queud sound will be remove from the queue.
		require
			Source_Is_Open: is_open
		do
			has_been_stop := True
			clear_error
			{AUDIO_EXTERNAL}.AL_source_stop(index)
			if not is_stop then
				read_al_error ("Cannot stop audio source.")
			end
			if not has_error then
				internal_sound_queued.wipe_out
				update_playing
				{AUDIO_EXTERNAL}.AL_source_rewind(index)
				if not is_initial then
					read_al_error ("Cannot rewind audio source.")
				end
			end
		end


	is_playing:BOOLEAN
			-- True if the sound source is currently playing.
		require
			Source_Is_Open: is_open
		do
			Result :=
							(param_int_c({AUDIO_EXTERNAL}.Al_source_state) = {AUDIO_EXTERNAL}.Al_playing)
						or
							(not has_been_stop and is_al_stop)
		end

	is_pause:BOOLEAN
			-- True if the sound source is currently on pause.
		require
			Source_Is_Open: is_open
		do
			Result:=(param_int_c({AUDIO_EXTERNAL}.Al_source_state) = {AUDIO_EXTERNAL}.Al_paused)
		end

	is_stop:BOOLEAN
			-- True if the sound source has been stoped.
		require
			Source_Is_Open: is_open
		do
			Result := has_been_stop and is_al_stop
		end

	is_initial:BOOLEAN
			-- True if the sound source has been rewinded.
		require
			Source_Is_Open: is_open
		do
			Result:=(param_int_c({AUDIO_EXTERNAL}.Al_source_state) = {AUDIO_EXTERNAL}.AL_INITIAL)
		end

	gain:REAL_32 assign set_gain
			-- The gain (volume) of `Current'. The gain will always be a REAL between 0 and 1.
			-- If the gain is set at 0, `Current' is mute. If the gain is set at 1, it is at it's max volume.
		require
			Source_Is_Open: is_open
		do
			Result:=param_float_c({AUDIO_EXTERNAL}.Al_gain)
		end

	set_gain(a_value:REAL_32)
			-- Set the `Current' gain (volume) to `a_value'. The `a_value' must always be a REAL between 0 and 1.
			-- If the `a_value' is set at 0, the source is mute. If the `a_value' is set at 1, it is at it's max volume.
		require
			Source_Is_Open: is_open
			Source_Set_Gain_Valid_Value: a_value>=0.0 and then a_value<=1.0
		do
			set_param_float_c({AUDIO_EXTERNAL}.Al_gain,a_value)
		ensure
			Source_Set_Gain_Is_Set: not has_error implies gain = a_value
		end

	queue_sound_loop(a_sound:AUDIO_SOUND;a_nb_loop:INTEGER)
			-- Add a `a_sound' to the playing queue.
			-- Put `a_nb_loop' to 0 for no loop and to -1 for infinite loop
		require
			Source_Is_Open: is_open
			Queud_Sound_Is_Open: a_sound.is_open
		local
			l_sound_tuple:TUPLE[sound:AUDIO_SOUND;nb_loop:INTEGER]
		do
			create l_sound_tuple
			l_sound_tuple.sound:=a_sound
			l_sound_tuple.nb_loop:=a_nb_loop
			internal_sound_queued.put (l_sound_tuple)
		end

	queue_sound(a_sound:AUDIO_SOUND)
			-- Add a `a_sound' to the playing queue.
			-- Don't loop the sound at all (only one playing).
		require
			Source_Is_Open: is_open
			Queud_Sound_Is_Open: a_sound.is_open
		do
			queue_sound_loop(a_sound,0)
		end

	queue_sound_infinite_loop(a_sound:AUDIO_SOUND)
			-- Add a `a_sound' to the playing queue.
			-- Loop the `a_sound' until the source is stopped.
		require
			Source_Is_Open: is_open
			Queud_Sound_Is_Open: a_sound.is_open
		do
			queue_sound_loop(a_sound,-1)
		end

	sound_queued:CHAIN_INDEXABLE_ITERATOR[TUPLE[sound:AUDIO_SOUND;nb_loop:INTEGER]]
			-- The queue containing every sound to play
		do
			create Result.make (internal_sound_queued)
		end


	update_playing
			-- This methode must be execute at regular interval. If it is not execute enough in a certain time lap, the sounds will stop before finishing.
			-- If this append, you can call this methode more often or use bigger `buffer_size'. You can use the routine `update' on the {AUDIO_LIBRARY_CONTROLLER}
			-- and it will do the same effect.
		require
			Source_Is_Open: is_open
		local
			last_position:INTEGER
		do
			if is_thread_safe then
				g_mutex.lock
			end
			from
			until processed_buffers_count < 1
			loop
				unqueue_buffer
			end
			from
				last_position := buffer_head - 1
			until
				buffer_tail = (buffer_head + 1) \\ buffers_count or
				internal_sound_queued.is_empty or
				last_position = buffer_head
			loop
				last_position := buffer_head
				queue_next_buffer
			end
			if is_al_stop and not has_been_stop then
				{AUDIO_EXTERNAL}.AL_source_play(index)
			end
			if is_thread_safe then
				g_mutex.unlock
			end
		end


	set_direction(a_x,a_y,a_z:REAL)
			-- Set the source direction. Meaning where the source object is looking at in the 3D environment.
		require
			Source_Is_Open: is_open
		do
			set_params_3_float({AUDIO_EXTERNAL}.Al_direction,a_x,a_y,a_z)
		end

	direction:TUPLE[x,y,z:REAL]
			-- Get the source direction. Meaning where the source object is looking at in the 3D environment.
		require
			Source_Is_Open: is_open
		do
			Result:=params_3_float({AUDIO_EXTERNAL}.Al_direction)
		end


	is_open:BOOLEAN
			-- Is `Current' open and ready to be used (without initialization error)

feature {AUDIO_LIBRARY_CONTROLLER}

	set_thread_safe
			-- Enable thread facility inside `Current'
		do
			is_thread_safe:=true
		end


	close
			-- Close `Current' so that it's feature cannot be used anymore.
		do
			stop
			is_open:=False
		end

feature {NONE} -- Implementation - Routines

	queuded_buffers_count:INTEGER
			-- The number of buffer in the internal queue that has not been processed yet.
		do
			Result:=param_int_c({AUDIO_EXTERNAL}.Al_buffers_queued)
		end

	queuded_buffers_number:INTEGER
			-- The number of buffer in the internal queue that has not been processed yet.
		obsolete
			"Use `queuded_buffers_count' instead"
		do
			Result:=param_int_c({AUDIO_EXTERNAL}.Al_buffers_queued)
		end


	processed_buffers_count:INTEGER
			-- The number of buffer in the internal queue that has been processed
		do
			Result:=param_int_c({AUDIO_EXTERNAL}.Al_buffers_processed)
		end


	processed_buffers_number:INTEGER
			-- The number of buffer in the internal queue that has been processed
		do
			Result:=param_int_c({AUDIO_EXTERNAL}.Al_buffers_processed)
		end

	queue_next_buffer
			-- Queue the next C buffer returned from the next sound of the `internal_sound_queued'
		local
			l_last_fill_buffer_size,l_channel,bits_resolution,l_freq:INTEGER
			l_infinite_loop_restarted, l_streaming_sound_null:BOOLEAN
		do
			from
				l_last_fill_buffer_size := 0
				l_infinite_loop_restarted := False
				l_streaming_sound_null := False
			until
				l_last_fill_buffer_size /= 0 or
				internal_sound_queued.is_empty or
				l_streaming_sound_null
			loop
				internal_sound_queued.item.sound.fill_buffer (temp_buffer,buffer_size)
				l_last_fill_buffer_size := internal_sound_queued.item.sound.last_buffer_size
				l_channel := internal_sound_queued.item.sound.channel_count
				bits_resolution := internal_sound_queued.item.sound.bits_per_sample
				l_freq := internal_sound_queued.item.sound.frequency
				if internal_sound_queued.item.sound.is_finished then
					internal_sound_queued.item.sound.restart
					if internal_sound_queued.item.nb_loop = 0 then
						internal_sound_queued.remove
						if internal_sound_queued.is_empty then
							has_been_stop := True
						end
					else
						if internal_sound_queued.item.nb_loop > 0 then
							internal_sound_queued.item.nb_loop := internal_sound_queued.item.nb_loop - 1
						else
							l_infinite_loop_restarted := True
						end
					end
				else
					l_streaming_sound_null := l_last_fill_buffer_size = 0
					l_infinite_loop_restarted := False
				end
			end
			if l_last_fill_buffer_size > 0 then
				queue_buffer(temp_buffer,l_last_fill_buffer_size,l_channel,bits_resolution,l_freq)
			end
		end

	queue_buffer(a_buffer:POINTER;a_length,a_channel,a_bits_resolution,a_frequency:INTEGER)
			-- Queue `a_buffer' in the internal C queue. `a_buffer' has a size of `a_lenght'
			-- has `a_channel' to play at `a_frequency' hz using `a_bit_resolution'.
		require
			Has_Place: buffer_tail /= (buffer_head + 1) \\ buffers_count
		local
			l_buffer_name:ARRAY[NATURAL]
			l_buffer_name_c:ANY
			l_format:INTEGER
		do
			if a_channel=1 then
				if a_bits_resolution=8 then
					l_format:={AUDIO_EXTERNAL}.Al_format_mono8
				else
					l_format:={AUDIO_EXTERNAL}.Al_format_mono16
				end
			else
				if a_bits_resolution=8 then
					l_format:={AUDIO_EXTERNAL}.Al_format_stereo8
				else
					l_format:={AUDIO_EXTERNAL}.Al_format_stereo16
				end
			end
			clear_error
			{AUDIO_EXTERNAL}.AL_buffer_data(sound_al_buffer.at (buffer_head),l_format,a_buffer,a_length,a_frequency)
			read_al_error("Cannot read buffer audio data.")
			if not has_error then
				create l_buffer_name.make_filled (sound_al_buffer.at (buffer_head), 1, 1)
				buffer_head := (buffer_head + 1) \\ buffers_count
				l_buffer_name_c:=l_buffer_name.to_c
				clear_error
				{AUDIO_EXTERNAL}.AL_source_queue_buffers(index,1,$l_buffer_name_c)
				read_al_error	("Cannot queud audio buffer.")
			end
		end

	unqueue_buffer
			-- Remove the top buffer in the C internal queue
		require
			Unqueue_Buffer_Nb_Processed_Valid: processed_buffers_count>0
		local
			l_buffer_name:ARRAY[NATURAL]
			l_buffer_name_c:ANY
		do
			check buffer_tail/=buffer_head end
			create l_buffer_name.make_filled (sound_al_buffer.at (buffer_tail), 1, 1)
			buffer_tail := (buffer_tail + 1) \\ buffers_count
			l_buffer_name_c:=l_buffer_name.to_c
			clear_error
			{AUDIO_EXTERNAL}.AL_source_unqueue_buffers(index,1,$l_buffer_name_c)
			read_al_error("Cannot unqueue audio buffer.")
		end

	param_int_c(a_id:INTEGER):INTEGER
			-- Retreive the internal integer C param at index `a_id'
		local
			l_value:INTEGER
		do
			{AUDIO_EXTERNAL}.AL_get_source_i(index,a_id,$l_value)
			Result:=l_value
		end

	param_float_c(a_id:INTEGER):REAL_32
			-- Retreive the internal float C param at index `a_id'
		local
			l_value:REAL_32
		do
			{AUDIO_EXTERNAL}.AL_get_source_f(index,a_id,$l_value)
			Result:=l_value
		end

	set_param_float_c(a_id:INTEGER;a_value:REAL_32)
			-- Store the internal float `a_value' C param at index `a_id'
		do
			{AUDIO_EXTERNAL}.AL_set_source_f(index,a_id,a_value)
		end

	set_params_float_pointer_c(a_id:INTEGER;a_ptr:POINTER)
			-- Store the internal float C param pointed by `a_ptr' at index `a_id'
		do
			{AUDIO_EXTERNAL}.AL_set_source_fv(index,a_id,a_ptr)
		end

	assign_params_float_pointer_c(a_id:INTEGER;a_ptr:POINTER)
			-- Retreive the internal float C param at index `a_id' and put it in `a_ptr'
		do
			{AUDIO_EXTERNAL}.AL_get_source_fv(index,a_id,a_ptr)
		end

	dispose
			-- <Precursor>
		local
			sources:ARRAY[NATURAL]
			sources_c:ANY
			l_sound_al_buffer_c:ANY
		do
			stop
			temp_buffer.memory_free
			l_sound_al_buffer_c:=sound_al_buffer.to_c
			{AUDIO_EXTERNAL}.AL_delete_buffers(buffers_count, $l_sound_al_buffer_c);
			create sources.make_filled (index, 1, 1)
			sources_c:=sources.to_c
			{AUDIO_EXTERNAL}.AL_delete_sources(1,$sources_c)
		end


feature {NONE} -- Implementation - Variables

	sound_al_buffer:ARRAY[NATURAL]
			-- Internal C buffer queue

	buffer_tail:INTEGER
			-- The last element in the circular buffer

	buffer_head:INTEGER
			-- The first element in the circular buffer

	index:NATURAL
			-- The internal identifier of `Current'

	temp_buffer:POINTER
			-- The temporary buffer used to transfert data in the real buffer

	internal_sound_queued:LINKED_QUEUE[TUPLE[sound:AUDIO_SOUND;nb_loop:INTEGER]]
			-- The queue containing every sound to play

	buffers_count:INTEGER
			-- The number of internal buffer in `Current'
		once ("PROCESS")
			Result:=4
		end

	nb_buffer:INTEGER
			-- The number of internal buffer in `Current'
		obsolete
			"Use `buffers_count' instead"
		once ("PROCESS")
			Result:=4
		end

	is_thread_safe:BOOLEAN
			-- Is tread facility enabled in `Current'

	g_mutex:MUTEX
			-- The mutex used to manage thread synchronisation inside `Current'

	is_al_stop:BOOLEAN
			-- True if the sound source has been stoped.
		require
			Source_Is_Open: is_open
		do
			Result:=(param_int_c({AUDIO_EXTERNAL}.Al_source_state) = {AUDIO_EXTERNAL}.AL_STOPPED)
		end

	has_been_stop:BOOLEAN
			-- True if `Current' has been stoped by the Eiffel library (not the OpenAL library)

end
