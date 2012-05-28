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
	GAME_AL_SOURCE

inherit
	GAME_AL_OBJECT_3D
	DISPOSABLE

create {GAME_AL_CONTROLLER}
	make

feature {NONE} -- Initialization

	make(l_buffer_size:INTEGER)
			-- Initialization for `Current'.
		require
			Make_Source_Audio_Open:not {GAME_AL_EXTERNAL}.AL_get_current_context.is_default_pointer
		local
			sources:ARRAY[NATURAL]
			source_c:ANY
			sound_al_buffer_c:ANY
		do
			create sources.make_filled (0, 1, 1)
			source_c:=sources.to_c
			read_error
			{GAME_AL_EXTERNAL}.AL_gen_sources(1,$source_c)
			read_error
			check not is_error end
			index:=sources.at (1)
			set_buffer_size(l_buffer_size)
			create sound_al_buffer.make_filled (0, 0, nb_buffer-1)
			buffer_tail:=0
			buffer_head:=0
			sound_al_buffer_c:=sound_al_buffer.to_c
			{GAME_AL_EXTERNAL}.AL_Gen_Buffers(nb_buffer,$sound_al_buffer_c)
			read_error
			check not is_error end
			create sound_queued.make
			set_position (0.0, 0.0, 0.0)
			set_direction (0.0,0.0, 0.0)
			set_direction(0.0,0.0,0.0)
			temp_buffer:={GAME_AL_EXTERNAL}.c_buffer_allocate(buffer_size)
		end

feature -- Access

	buffer_size:INTEGER assign set_buffer_size
		-- The buffer size for the sound streaming (default is 64000). Allocate too little memory to buffer can cause sound to stop before finishing.

	set_buffer_size(l_buffer_size:INTEGER)
			-- Set the buffer size for the sound streaming (default is 64000). Allocate too little memory to buffer can cause sound to stop before finishing.
		do
			buffer_size:=l_buffer_size
		end

	play
			-- Start the sound streaming.
		do
			update_playing
			{GAME_AL_EXTERNAL}.AL_source_play(index)
		ensure
			Source_Play_Is_Playing: is_playing
		end

	pause
			-- Put the streaming in pause.
		require
			Source_Pause_Was_Not_Stop: not (is_stop or else is_initial)
		do
			{GAME_AL_EXTERNAL}.AL_source_pause(index)
		ensure
			Source_Pause_Is_Pause: is_pause
		end

	stop
			-- Stop the streaming. All queud sound will be remove from the queue.
		do
			{GAME_AL_EXTERNAL}.AL_source_stop(index)
			sound_queued.wipe_out
			update_playing
		ensure
			Source_Stop_Is_Stopped: is_stop
		end

	is_initial:BOOLEAN
			-- Return true if the sound source is in the initial state.
		do
			Result:=(get_int_param_c({GAME_AL_EXTERNAL}.AL_SOURCE_STATE)={GAME_AL_EXTERNAL}.AL_INITIAL)
		end

	is_playing:BOOLEAN
			-- Return true if the sound source is currently playing.
		do
			Result:=(get_int_param_c({GAME_AL_EXTERNAL}.AL_SOURCE_STATE)={GAME_AL_EXTERNAL}.AL_PLAYING)
		end

	is_pause:BOOLEAN
			-- Return true if the sound source is currently on pause.
		do
			Result:=(get_int_param_c({GAME_AL_EXTERNAL}.AL_SOURCE_STATE)={GAME_AL_EXTERNAL}.AL_PAUSED)
		end

	is_stop:BOOLEAN
			-- Return true if the sound source is currently stop state (not initial or playing or on pause).
		do
			Result:=(get_int_param_c({GAME_AL_EXTERNAL}.AL_SOURCE_STATE)={GAME_AL_EXTERNAL}.AL_STOPPED)
		end

	get_gain:REAL_32
			-- Get the current sound source gain (volume). The gain will always be a REAL between 0 and 1.
			-- If the gain is set at 0, the source is mute. If the gain is set at 1, it is at it's max volume.
		do
			Result:=get_float_param_c({GAME_AL_EXTERNAL}.AL_GAIN)
		end

	set_gain(value:REAL_32)
			-- Set the current sound source gain (volume). The gain must always be a REAL between 0 and 1.
			-- If the gain is set at 0, the source is mute. If the gain is set at 1, it is at it's max volume.
		require
			Source_Set_Gain_Valid_Value: value>=0.0 and then value<=1.0
		do
			set_float_param_c({GAME_AL_EXTERNAL}.AL_GAIN,value)
		ensure
			Source_Set_Gain_Is_Set: get_gain = value
		end

	queue_sound_loop(sound:GAME_AL_SOUND;nb_loop:INTEGER)
			-- Add a `sound' to the playing queue.
			-- Put `nb_loop' to 0 for no loop and to -1 to infinite loop
		local
			sound_tuple:TUPLE[sound:GAME_AL_SOUND;nb_loop:INTEGER]
		do
			create sound_tuple
			sound_tuple.sound:=sound
			sound_tuple.nb_loop:=nb_loop
			sound_queued.put (sound_tuple)
		end

	queue_sound(sound:GAME_AL_SOUND)
			-- Add a `sound' to the playing queue.
			-- Don't loop the sound at all (only one playing).
		do
			queue_sound_loop(sound,0)
		end

	queue_sound_infinite_loop(sound:GAME_AL_SOUND)
			-- Add a `sound' to the playing queue.
			-- Loop the `sound' until the source is stopped.
		do
			queue_sound_loop(sound,-1)
		end

	update_playing
			-- This methode must be execute at regular interval. If it is not execute enough in a certain time lap, the sounds will stop before finishing.
			-- If this append, you can call this methode more often or use bigger `buffer_size'. You can use the routine `update_sound_playing' on the game controller
			-- and it will do the same effect.
		local
			last_fill_buffer_size,channel,bits_resolution,freq,byte_per_buffer_sample:INTEGER
		do
			from
			until get_processed_buffers_number<1
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
					channel:=sound_queued.item.sound.get_channels
					bits_resolution:=sound_queued.item.sound.get_bit_resolution
					freq:=sound_queued.item.sound.get_frequency
					byte_per_buffer_sample:=sound_queued.item.sound.byte_per_buffer_sample
					if last_fill_buffer_size=0 then
						if sound_queued.item.nb_loop=0 then
							sound_queued.remove
						else
							sound_queued.item.sound.restart
							if sound_queued.item.nb_loop>0 then
								sound_queued.item.nb_loop:=sound_queued.item.nb_loop-1
							end
						end

					end
				end
				if not sound_queued.is_empty then
					queue_buffer(temp_buffer,last_fill_buffer_size*byte_per_buffer_sample,channel,bits_resolution,freq)
				end

			end

		end


	set_direction(x,y,z:REAL)
			-- Set the source direction. Meaning where the source object is looking at in the 3D environment.
		do
			set_3_float_params({GAME_AL_EXTERNAL}.AL_DIRECTION,x,y,z)
		end

	get_direction:TUPLE[x,y,z:REAL]
			-- Get the source direction. Meaning where the source object is looking at in the 3D environment.
		do
			Result:=get_3_float_parms({GAME_AL_EXTERNAL}.AL_DIRECTION)
		end

feature {NONE} -- Implementation - Routines


	get_processed_buffers_number:INTEGER
		do
			Result:=get_int_param_c({GAME_AL_EXTERNAL}.AL_BUFFERS_PROCESSED)
		end

	queue_buffer(l_buffer:POINTER;length,channel,bits_resolution,freq:INTEGER)
		local
			l_buffer_name:ARRAY[NATURAL]
			l_buffer_name_c:ANY
			format:INTEGER
		do
			if channel=1 then
				if bits_resolution=8 then
					format:={GAME_AL_EXTERNAL}.AL_FORMAT_MONO8
				else
					format:={GAME_AL_EXTERNAL}.AL_FORMAT_MONO16
				end
			else
				if bits_resolution=8 then
					format:={GAME_AL_EXTERNAL}.AL_FORMAT_STEREO8
				else
					format:={GAME_AL_EXTERNAL}.AL_FORMAT_STEREO16
				end
			end

			check buffer_tail/=(buffer_head+1)\\nb_buffer end
			read_error
			{GAME_AL_EXTERNAL}.AL_buffer_data(sound_al_buffer.at (buffer_head),format,l_buffer,length,freq)
			read_error
			check not is_error end
			create l_buffer_name.make_filled (sound_al_buffer.at (buffer_head), 1, 1)
			buffer_head:=(buffer_head+1)\\nb_buffer
			l_buffer_name_c:=l_buffer_name.to_c
			read_error
			{GAME_AL_EXTERNAL}.AL_source_queue_buffers(index,1,$l_buffer_name_c)
			read_error
			check not is_error end
		end

	unqueue_buffer
		require
			Unqueue_Buffer_Nb_Processed_Valid: get_processed_buffers_number>0
		local
			l_buffer_name:ARRAY[NATURAL]
			l_buffer_name_c:ANY
		do
			check buffer_tail/=buffer_head end
			create l_buffer_name.make_filled (sound_al_buffer.at (buffer_tail), 1, 1)
			buffer_tail:=(buffer_tail+1)\\nb_buffer
			l_buffer_name_c:=l_buffer_name.to_c
			read_error
			{GAME_AL_EXTERNAL}.AL_source_unqueue_buffers(index,1,$l_buffer_name_c)
			read_error
			check not is_error end
		end

	get_int_param_c(id:INTEGER):INTEGER
		local
			value:INTEGER
		do
			{GAME_AL_EXTERNAL}.AL_get_source_i(index,id,$value)
			Result:=value
		end

	get_float_param_c(id:INTEGER):REAL_32
		local
			value:REAL_32
		do
			{GAME_AL_EXTERNAL}.AL_get_source_f(index,id,$value)
			Result:=value
		end

	set_float_param_c(id:INTEGER;value:REAL_32)
		do
			{GAME_AL_EXTERNAL}.AL_set_source_f(index,id,value)
		end

	set_float_params_c(id:INTEGER;ptr:POINTER)
		do
			{GAME_AL_EXTERNAL}.AL_set_source_fv(index,id,ptr)
		end

	get_float_params_c(id:INTEGER;ptr:POINTER)
		do
			{GAME_AL_EXTERNAL}.AL_get_source_fv(index,id,ptr)
		end

	dispose
		local
			sources:ARRAY[NATURAL]
			source_c:ANY
		do
			stop
			{GAME_AL_EXTERNAL}.c_buffer_free(temp_buffer)
			create sources.make_filled (index, 1, 1)
			source_c:=sources.to_c
			read_error
			{GAME_AL_EXTERNAL}.AL_delete_sources(1,$source_c)
			read_error
			check not is_error end
		end

feature {NONE} -- Implementation - Variables

	sound_al_buffer:ARRAY[NATURAL]

	buffer_tail:INTEGER
	buffer_head:INTEGER
	index:NATURAL

	temp_buffer:POINTER

	sound_queued:LINKED_QUEUE[TUPLE[sound:GAME_AL_SOUND;nb_loop:INTEGER]]

	nb_buffer:INTEGER is 4




end
