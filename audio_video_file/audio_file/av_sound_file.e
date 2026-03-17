note
	description: "An audio media"
	author: "Louis Marchand"
	date: "Thu, 29 Dec 2022 00:40:33 +0000"
	revision: "0.1"

class
	AV_SOUND_FILE

inherit

	AV_MEDIA_FILE
		redefine
			make,
			close,
			open,
			restart
		end

	AUDIO_SOUND
		redefine
			time_seek,
			time_position,
			time_count
		end

create
	make, make_thread_safe

feature {NONE} -- Initialisation

	make (a_filename: READABLE_STRING_GENERAL)
			-- <Precursor>
		do
			Precursor (a_filename)
			frame := {AV_EXTERNAL}.av_frame_alloc
			if frame.is_default_pointer then
				has_error := True
			end
		end

	make_thread_safe (a_filename: READABLE_STRING_GENERAL)
			-- Initialisation of `Current' as thread safe using `a_filename' as file to `open'
		do
			make (a_filename)
			is_thread_safe := true
		end

feature -- Access

	restart
			-- <Precursor>
		do
			Precursor
			is_finished := False
		end

	channel_count: INTEGER
			-- <Precursor>
		do
			Result := channel_count_internal
		end

	frequency: INTEGER
			-- <Precursor>
		do
			Result := frequency_internal
		end

	bits_per_sample: INTEGER
			-- <Precursor>
		do
			Result := bits_per_sample_internal
		end

	is_signed: BOOLEAN
			-- <Precursor>
		do
			Result := is_signed_internal
		end

	is_seekable: BOOLEAN
			-- <Precursor>
		once
			Result := False
		end

	sample_seek (a_frame_number: INTEGER_64)
			-- <Precursor>
			-- Not implemented
		do
			check
				Not_Implemented: False
			end
		end

	time_seek (a_milliseconds: INTEGER_64)
			-- <Precursor>
			-- Not implemented
		do
			check
				Not_Implemented: False
			end
		end

	sample_position: INTEGER_64
			-- <Precursor>
			-- Not implemented
		do
			check
				Not_Implemented: False
			end
		end

	time_position: INTEGER_64
			-- <Precursor>
			-- Not implemented
		do
			check
				Not_Implemented: False
			end
		end

	sample_count: INTEGER_64
			-- <Precursor>
			-- Not implemented
		do
			check
				Not_Implemented: False
			end
		end

	time_count: INTEGER_64
			-- <Precursor>
			-- Not implemented
		do
			check
				Not_Implemented: False
			end
		end

	open
			-- <Precursor>
		local
			l_channel_enum: INTEGER_64
			l_parameter: POINTER
			l_error:INTEGER
		do
			Precursor
			stream_index := find_stream ({AV_EXTERNAL}.AVMEDIA_TYPE_AUDIO)
			codec_context_ptr := codec_contexts [stream_index]
			l_parameter := codec_parameters (stream_index)
			frequency_internal := {AV_EXTERNAL}.get_av_codec_parameters_struct_sample_rate (l_parameter)
			channel_count_internal := {AV_EXTERNAL}.get_av_codec_parameters_struct_channels (l_parameter)
			sample_format_index :={AV_EXTERNAL}.get_av_codec_parameters_struct_format (l_parameter).to_natural_32
			is_resampling := false
			if sample_format_index = {AV_EXTERNAL}.AV_SAMPLE_FMT_U8 then
				bits_per_sample_internal := 8
				is_signed_internal := false
			else
				bits_per_sample_internal := 16
				is_signed_internal := true
				if sample_format_index /= {AV_EXTERNAL}.AV_SAMPLE_FMT_S16 then
					is_resampling := true
					if channel_count_internal ~ 1 then
						l_channel_enum := {AV_EXTERNAL}.AV_CH_LAYOUT_MONO
					else
						l_channel_enum := {AV_EXTERNAL}.AV_CH_LAYOUT_STEREO
					end
					sample_context_ptr := {AV_AUDIO_EXTERNAL}.swr_alloc_set_opts (void_ptr, l_channel_enum, {AV_EXTERNAL}.AV_SAMPLE_FMT_S16, frequency_internal, l_channel_enum, sample_format_index, frequency_internal, 0, void_ptr)
					l_error := {AV_AUDIO_EXTERNAL}.swr_init(sample_context_ptr)
					read_av_error ("Cannot initialise Resampler", l_error)
					l_error := {AV_EXTERNAL}.av_samples_alloc_array_and_samples($resampling_buffer,
									$resampling_buffer_linesize, channel_count_internal, 4096, {AV_EXTERNAL}.AV_SAMPLE_FMT_S16, 0)
					read_av_error ("Cannot allocate resampler buffer", l_error)
				end
			end
			open_codec (stream_index)
			side_buffer_max_count := {AV_EXTERNAL}.AVCODEC_MAX_AUDIO_FRAME_SIZE + {AV_EXTERNAL}.av_input_buffer_padding_size
			side_buffer := {AV_EXTERNAL}.av_malloc (side_buffer_max_count)
			side_buffer_count := 0
		end

feature {GAME_AUDIO_SOURCE}

	read_next_frame:BOOLEAN
			-- Read an audio frame from the next `packets_filled`
		local
			l_error: INTEGER
			l_temp_packet: POINTER
		do
			Result := False
			if packets_filled.is_empty then
				read_packet (stream_index)
			end
			if packets_filled.is_empty then
				if last_packet then
					is_finished := True
				end
				Result := True
			else
				l_temp_packet := packets_filled.item
				packets_filled.remove
				packets_pool.put (l_temp_packet)
				l_error := {AV_EXTERNAL}.avcodec_send_packet (codec_context_ptr, l_temp_packet)
				if l_error < 0 then
					read_av_error ("Error reading packet", l_error)
				else
					l_error := {AV_EXTERNAL}.avcodec_receive_frame (codec_context_ptr, frame)
					if l_error < 0 then
						if l_error = {AV_EXTERNAL}.AVERROR_EAGAIN then
							Result := read_next_frame
						else
							read_av_error ("Error receiving frame", l_error)
						end
					end
				end
			end
		end

	fill_buffer_resampling(a_temp_buffer: POINTER; a_max_length: INTEGER)
			-- Fill the next data samples (with ressampling) in `a_buffer` (no more than `a_max_length` byte)
			-- The actual number of byte placed in `a_buffer` will be available in `last_buffer_size`
			-- Warning: side effect on `a_buffer`.
		local
			l_count:INTEGER
			l_ending:BOOLEAN
			l_temp_buffer: POINTER
		do
			l_temp_buffer := a_temp_buffer
			from
				l_ending := read_next_frame
			until
				l_ending
			loop
				l_count := {AV_AUDIO_EXTERNAL}.swr_convert (sample_context_ptr, resampling_buffer, resampling_buffer_linesize, {AV_EXTERNAL}.get_av_frame_struct_extended_data (frame), {AV_EXTERNAL}.get_av_frame_struct_nb_samples (frame))
				if l_count > 0 then
					l_count := {AV_EXTERNAL}.av_get_bytes_per_sample({AV_EXTERNAL}.AV_SAMPLE_FMT_S16) * channel_count_internal * l_count;
					if last_buffer_size + l_count > a_max_length then
						side_buffer.memory_copy (resampling_buffer, l_count)
						side_buffer_count := l_count
						l_ending := true
					else
						l_temp_buffer.memory_copy (resampling_buffer, l_count)
						l_temp_buffer := l_temp_buffer.plus (l_count)
						last_buffer_size := last_buffer_size + l_count
					end
				else
					read_av_error ("Error converting audio packet", l_count)
				end
				{AV_EXTERNAL}.av_frame_unref (frame)
				if not l_ending then
					l_ending := read_next_frame
				end
			end
		end

	fill_buffer_resampling_fltp(a_temp_buffer: POINTER; a_max_length: INTEGER)
			-- Fill the next data samples (with ressampling) in `a_buffer` (no more than `a_max_length` byte)
			-- The actual number of byte placed in `a_buffer` will be available in `last_buffer_size`
			-- Warning: side effect on `a_buffer`.
		local
			l_count:INTEGER
			l_ending:BOOLEAN
			l_temp_buffer: POINTER
		do
			l_temp_buffer := a_temp_buffer
			from
				l_ending := read_next_frame
			until
				l_ending
			loop
				l_count:={AV_EXTERNAL}.av_samples_get_buffer_size(create {POINTER},channel_count_internal,
						{AV_EXTERNAL}.get_av_frame_struct_nb_samples(frame),{AV_EXTERNAL}.AV_SAMPLE_FMT_S16,1)
				if last_buffer_size + l_count > a_max_length then
					{AV_AUDIO_EXTERNAL}.c_fltp_to_s16(frame, side_buffer)
					side_buffer_count := l_count
					l_ending := true
				else
					{AV_AUDIO_EXTERNAL}.c_fltp_to_s16(frame, l_temp_buffer)
					l_temp_buffer := l_temp_buffer.plus (l_count)
					last_buffer_size := last_buffer_size + l_count
				end
				{AV_EXTERNAL}.av_frame_unref (frame)
				if not l_ending then
					l_ending := read_next_frame
				end
			end
		end

	fill_buffer_no_resampling(a_temp_buffer: POINTER; a_max_length: INTEGER)
			-- Fill the next data samples (without ressampling) in `a_buffer` (no more than `a_max_length` byte)
			-- The actual number of byte placed in `a_buffer` will be available in `last_buffer_size`
			-- Warning: side effect on `a_buffer`.
		local
			l_count:INTEGER
			l_ending:BOOLEAN
			l_temp_buffer: POINTER
		do
			l_temp_buffer := a_temp_buffer
			from
				l_ending := read_next_frame
			until
				l_ending
			loop
				l_count := {AV_EXTERNAL}.av_samples_get_buffer_size (create {POINTER}, channel_count_internal, {AV_EXTERNAL}.get_av_frame_struct_nb_samples (frame), sample_format_index, 1)
				if l_count < 0 then
					io.error.put_string ("Error reading packet: " + av_error_message (l_count) + "%N")
					check
						false
					end
				else
					if last_buffer_size + l_count > a_max_length then
						side_buffer.memory_copy ({AV_EXTERNAL}.get_av_frame_struct_extended_data_i (frame, 0), l_count)
						side_buffer_count := l_count
						l_ending := true
					else
						l_temp_buffer.memory_copy ({AV_EXTERNAL}.get_av_frame_struct_extended_data_i (frame, 0), l_count)
						l_temp_buffer := l_temp_buffer.plus (l_count)
						last_buffer_size := last_buffer_size + l_count
					end
				end
				{AV_EXTERNAL}.av_frame_unref (frame)
				if not l_ending then
					l_ending := read_next_frame
				end
			end
		end


	fill_buffer (a_buffer: POINTER; a_max_length: INTEGER)
			-- <Precursor>
		local
			l_error: INTEGER
			l_ending: BOOLEAN
			l_got, l_count: INTEGER
			l_temp_buffer: POINTER
		do
			if is_thread_safe then
				media_mutex.lock
			end
			check
				Side_Buffer_Valid: side_buffer_count >= 0
			end
			if side_buffer_count > 0 then
				a_buffer.memory_copy (side_buffer, side_buffer_count)
			end
			l_temp_buffer := a_buffer.plus (side_buffer_count)
			last_buffer_size := side_buffer_count
			side_buffer_count := 0
			if is_resampling then
				if sample_format_index = {AV_EXTERNAL}.av_sample_fmt_fltp then
					fill_buffer_resampling_fltp(l_temp_buffer, a_max_length)
				else
					fill_buffer_resampling(l_temp_buffer, a_max_length)
				end
			else
				fill_buffer_no_resampling(l_temp_buffer, a_max_length)
			end
			if is_thread_safe then
				media_mutex.unlock
			end
		end

	close
			-- <Precursor>
		do
			if is_resampling and sample_format_index /= {AV_EXTERNAL}.av_sample_fmt_fltp then
				{AV_AUDIO_EXTERNAL}.swr_free (sample_context_ptr)
			end
			{AV_EXTERNAL}.av_free (side_buffer)
			{AV_EXTERNAL}.av_frame_free ($frame)
			precursor
		end

feature {NONE} -- Implementation

	frame: POINTER
			-- A frame used to stock media stram packet

	stream_index: INTEGER
			-- The index of the stream to use in `Current'

	codec_context_ptr: POINTER
			-- Pointer to the codec context

	frequency_internal: INTEGER
			-- Internal value of `frequency`

	channel_count_internal: INTEGER
			-- Internal value of `channel_count`

	sample_format_index: NATURAL
			-- Sample format of `Current'

	is_resampling: BOOLEAN
			-- `Current' can be resampled

	bits_per_sample_internal: INTEGER
			-- Internal value of `bits_per_sample'

	is_signed_internal: BOOLEAN
			-- Internal value of `is_signed'

	is_float_internal: BOOLEAN
			-- Internal value of `is_float'

	sample_context_ptr: POINTER
			-- Pointer to the sample context of `Current'

	side_buffer: POINTER
			-- The buffer used as temporary buffer

	side_buffer_max_count: INTEGER
			-- The number of information store in `side_buffer'

	side_buffer_count: INTEGER
			-- The number of information store in `side_buffer'

	resampling_buffer:POINTER
			-- Buffer used in resampling

	resampling_buffer_linesize:INTEGER
			-- Linesize of `destination_buffer`



end
