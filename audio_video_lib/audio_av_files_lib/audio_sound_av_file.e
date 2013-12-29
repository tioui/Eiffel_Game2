note
	description: "Load a file indo a GAME_AL_SOUND object."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	AUDIO_SOUND_AV_FILE

inherit
	AV_MEDIA
	redefine
		make,
		dispose,
		open
	end
	AUDIO_SOUND

create
	make,
	make_thread_safe

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL)
			-- Initialization for `Current'.
		do
			precursor(a_filename)
			create media_mutex.make
			side_buffer_count:=0
			is_thread_safe:=False
		end

	make_thread_safe(a_filename:READABLE_STRING_GENERAL)
		do
			make(a_filename)
			is_thread_safe:=true
		end

feature {GAME_AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
		local
			l_error:INTEGER
			l_ending:BOOLEAN
			l_got,l_count:INTEGER
			l_temp_buffer:POINTER
			l_temp_packet:POINTER
		do
			if is_thread_safe then
				media_mutex.lock
			end
			check side_buffer_count>=0 end
			if side_buffer_count>0 then
				a_buffer.memory_copy (side_buffer, side_buffer_count)
			end
			l_temp_buffer:=a_buffer.plus (side_buffer_count)
			last_buffer_size:=side_buffer_count
			side_buffer_count:=0
			from
				l_ending:=false
			until
				l_ending
			loop
				if packets_filled.is_empty then
					read_packet(stream_index)
					l_ending:=last_packet
				end
				if not l_ending then
					l_temp_packet:=packets_filled.item
					packets_filled.remove
					packets_pool.put (l_temp_packet)
					l_error:={AV_EXTERNAL}.avcodec_decode_audio4(codec_context_ptr,frame,$l_got,l_temp_packet)
					if l_got/=0 then
						if is_resampling then
							l_count:={AV_EXTERNAL}.av_samples_get_buffer_size(create {POINTER},channel_count_internal,
								{AV_EXTERNAL}.get_av_frame_struct_nb_samples(frame),{AV_EXTERNAL}.AV_SAMPLE_FMT_S16,1)
							if l_count<0 then
								io.error.put_string ("Error reading packet: "+get_error_Message(l_count)+"%N")
								check false end
							else

								if last_buffer_size+l_count>a_max_length then
									l_error:={AV_EXTERNAL}.audio_resample(sample_context_ptr,side_buffer,{AV_EXTERNAL}.get_av_frame_struct_extended_data_i(frame,0),{AV_EXTERNAL}.get_av_frame_struct_nb_samples(frame))
									side_buffer_count:=l_count
									l_ending:=true
								else
									l_error:={AV_EXTERNAL}.audio_resample(sample_context_ptr,l_temp_buffer,{AV_EXTERNAL}.get_av_frame_struct_extended_data_i(frame,0),{AV_EXTERNAL}.get_av_frame_struct_nb_samples(frame))
									l_temp_buffer:=l_temp_buffer.plus (l_count)
									last_buffer_size:=last_buffer_size+l_count
								end
							end
						else
							l_count:={AV_EXTERNAL}.av_samples_get_buffer_size(create {POINTER},channel_count_internal,
								{AV_EXTERNAL}.get_av_frame_struct_nb_samples(frame),fmt,1)
							if l_count<0 then
								io.error.put_string ("Error reading packet: "+get_error_Message(l_count)+"%N")
								check false end
							else

								if last_buffer_size+l_count>a_max_length then
									side_buffer.memory_copy ({AV_EXTERNAL}.get_av_frame_struct_extended_data_i(frame,0), l_count)
									side_buffer_count:=l_count
									l_ending:=true
								else
									l_temp_buffer.memory_copy ({AV_EXTERNAL}.get_av_frame_struct_extended_data_i(frame,0), l_count)
									l_temp_buffer:=l_temp_buffer.plus (l_count)
									last_buffer_size:=last_buffer_size+l_count
								end
							end
						end
					end
				end
				{AV_EXTERNAL}.avcodec_get_frame_defaults(frame)
			end
			if is_thread_safe then
				media_mutex.unlock
			end
		end



	byte_per_buffer_sample:INTEGER
		once
			Result:=1
		end

feature --Access

	open
		do
			Precursor
			is_open:=False
			if not has_error then
				frame:={AV_EXTERNAL}.avcodec_alloc_frame
				if frame.is_default_pointer then
					io.error.put_string ("Error while allocating Audio frame.%N")
					has_error:=True
				else
					stream_index:=init_stream({AV_EXTERNAL}.AVMEDIA_TYPE_AUDIO)
					codec_context_ptr:=context_pointer(stream_index)
					frequency_internal:={AV_EXTERNAL}.get_av_codec_context_struct_sample_rate(codec_context_ptr)
					channel_count_internal:={AV_EXTERNAL}.get_av_codec_context_struct_channels(codec_context_ptr)
					fmt:={AV_EXTERNAL}.get_av_codec_context_struct_sample_fmt(codec_context_ptr)
					is_resampling:=false
					if fmt={AV_EXTERNAL}.AV_SAMPLE_FMT_U8 then
						bits_per_sample_internal:=8
						is_signed_internal:=false
					else
						bits_per_sample_internal:=16
						is_signed_internal:=true
						if fmt /={AV_EXTERNAL}.AV_SAMPLE_FMT_S16 then
							is_resampling:=true
							sample_context_ptr:={AV_EXTERNAL}.av_audio_resample_init(channel_count_internal,channel_count_internal,frequency_internal,frequency_internal,
																	{AV_EXTERNAL}.AV_SAMPLE_FMT_S16,fmt,0,0,0,1.0)
						end
					end
					open_codec(codec_context_ptr)
					side_buffer:={AV_EXTERNAL}.av_malloc({AV_EXTERNAL}.AVCODEC_MAX_AUDIO_FRAME_SIZE+{AV_EXTERNAL}.FF_INPUT_BUFFER_PADDING_SIZE)
				end
				is_open:=not has_error
			end

		end


	channel_count:INTEGER
			-- Get the channel number of the sound (1=mono, 2=stereo, etc.).
		do
			Result:=channel_count_internal
		end

	frequency:INTEGER
			-- Get the frequency (sample rate) of the sound.
		do
			Result:=frequency_internal
		end

	bits_per_sample:INTEGER
			-- Get the bit resolution of one frame of the sound.
		do
			Result:=bits_per_sample_internal
		end

	is_signed:BOOLEAN
			-- Return true if the frames in the buffer are signed.
		do
			Result:=is_signed_internal
		end

	is_seekable:BOOLEAN
			-- Return true if the sound support the seek functionnality.
		once("PROCESS")
			Result:=true
		end



feature {NONE} -- Implementation - Methodes


	dispose
		do
			if is_resampling then
				{AV_EXTERNAL}.audio_resample_close(sample_context_ptr)
			end
			if not side_buffer.is_default_pointer then
				{AV_EXTERNAL}.av_free(side_buffer)
				side_buffer:=void_ptr
			end
			if not codec_context_ptr.is_default_pointer then
				close_codec(codec_context_ptr)
				codec_context_ptr:=void_ptr
			end
			if not frame.is_default_pointer then
				{AV_EXTERNAL}.av_free(frame)
				frame:=void_ptr
			end
			precursor
		end

feature {NONE} -- Implementation - Variables

	stream_index:INTEGER
	codec_context_ptr:POINTER

	frame:POINTER

	frequency_internal:INTEGER
	channel_count_internal:INTEGER
	is_signed_internal:BOOLEAN
	bits_per_sample_internal:INTEGER
	fmt:NATURAL

	side_buffer:POINTER
	side_buffer_count:INTEGER

	is_resampling:BOOLEAN
	sample_context_ptr:POINTER


end
