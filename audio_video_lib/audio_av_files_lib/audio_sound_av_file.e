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
		dispose
	end
	AUDIO_SOUND

create
	make,
	make_thread_safe

feature {NONE} -- Initialization

	make(filename:STRING)
			-- Initialization for `Current'.
		local
			filename_c:C_STRING
			error:INTEGER
		do
			precursor(filename)
			frame:={AV_EXTERNAL}.avcodec_alloc_frame
			check not frame.is_default_pointer end
			stream_index:=init_stream({AV_EXTERNAL}.AVMEDIA_TYPE_AUDIO)
			codec_context_ptr:=get_context_ptr(stream_index)
			sample_rate:={AV_EXTERNAL}.get_av_codec_context_struct_sample_rate(codec_context_ptr)
			channels:={AV_EXTERNAL}.get_av_codec_context_struct_channels(codec_context_ptr)
			fmt:={AV_EXTERNAL}.get_av_codec_context_struct_sample_fmt(codec_context_ptr)
			is_resampling:=false
			if fmt={AV_EXTERNAL}.AV_SAMPLE_FMT_U8 then
				bits_per_sample:=8
				signed:=false
			else
				bits_per_sample:=16
				signed:=true
				if fmt /={AV_EXTERNAL}.AV_SAMPLE_FMT_S16 then
					is_resampling:=true
					sample_context_ptr:={AV_EXTERNAL}.av_audio_resample_init(channels,channels,sample_rate,sample_rate,
															{AV_EXTERNAL}.AV_SAMPLE_FMT_S16,fmt,0,0,0,1.0)
				end
			end
			open_codec(codec_context_ptr)
			side_buffer:={AV_EXTERNAL}.av_malloc({AV_EXTERNAL}.AVCODEC_MAX_AUDIO_FRAME_SIZE+{AV_EXTERNAL}.FF_INPUT_BUFFER_PADDING_SIZE)
			side_buffer_count:=0
		end

	make_thread_safe(filename:STRING)
		do
			make(filename)
			is_thread_safe:=true
			create media_mutex.make
		end

feature {GAME_AUDIO_SOURCE}

	fill_buffer(buffer:POINTER;max_length:INTEGER)
		local
			error:INTEGER
			ending:BOOLEAN
			got,count:INTEGER
			temp_buffer:POINTER
			temp_packet:POINTER
		do
			if is_thread_safe then
				media_mutex.lock
			end
			check side_buffer_count>=0 end
			if side_buffer_count>0 then
				buffer.memory_copy (side_buffer, side_buffer_count)
			end
			temp_buffer:=buffer.plus (side_buffer_count)
			last_buffer_size:=side_buffer_count
			side_buffer_count:=0
			from
				ending:=false
			until
				ending
			loop
				if packets_filled.is_empty then
					read_packet(stream_index)
					ending:=last_packet
				end
				if not ending then
					temp_packet:=packets_filled.item
					packets_filled.remove
					packets_pool.put (temp_packet)
					error:={AV_EXTERNAL}.avcodec_decode_audio4(codec_context_ptr,frame,$got,temp_packet)
					if got/=0 then
						if is_resampling then
							count:={AV_EXTERNAL}.av_samples_get_buffer_size(create {POINTER},channels,
								{AV_EXTERNAL}.get_av_frame_struct_nb_samples(frame),{AV_EXTERNAL}.AV_SAMPLE_FMT_S16,1)
							if count<0 then
								io.error.put_string ("Error reading packet: "+Get_Error_Message(count)+"%N")
								check false end
							else

								if last_buffer_size+count>max_length then
									error:={AV_EXTERNAL}.audio_resample(sample_context_ptr,side_buffer,{AV_EXTERNAL}.get_av_frame_struct_extended_data_i(frame,0),{AV_EXTERNAL}.get_av_frame_struct_nb_samples(frame))
									side_buffer_count:=count
									ending:=true
								else
									error:={AV_EXTERNAL}.audio_resample(sample_context_ptr,temp_buffer,{AV_EXTERNAL}.get_av_frame_struct_extended_data_i(frame,0),{AV_EXTERNAL}.get_av_frame_struct_nb_samples(frame))
									temp_buffer:=temp_buffer.plus (count)
									last_buffer_size:=last_buffer_size+count
								end
							end
						else
							count:={AV_EXTERNAL}.av_samples_get_buffer_size(create {POINTER},channels,
								{AV_EXTERNAL}.get_av_frame_struct_nb_samples(frame),fmt,1)
							if count<0 then
								io.error.put_string ("Error reading packet: "+Get_Error_Message(count)+"%N")
								check false end
							else

								if last_buffer_size+count>max_length then
									side_buffer.memory_copy ({AV_EXTERNAL}.get_av_frame_struct_extended_data_i(frame,0), count)
									side_buffer_count:=count
									ending:=true
								else
									temp_buffer.memory_copy ({AV_EXTERNAL}.get_av_frame_struct_extended_data_i(frame,0), count)
									temp_buffer:=temp_buffer.plus (count)
									last_buffer_size:=last_buffer_size+count
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


	get_channels:INTEGER
			-- Get the channel number of the sound (1=mono, 2=stereo, etc.).
		do
			Result:=channels
		end

	get_frequency:INTEGER
			-- Get the frequency (sample rate) of the sound.
		do
			Result:=sample_rate
		end

	get_bit_resolution:INTEGER
			-- Get the bit resolution of one frame of the sound.
		do
			Result:=bits_per_sample
		end

	is_signed:BOOLEAN
			-- Return true if the frames in the buffer are signed.
		do
			Result:=signed
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
			{AV_EXTERNAL}.av_free(side_buffer)
			close_codec(codec_context_ptr)
			{AV_EXTERNAL}.av_free(frame)
			precursor
		end

feature {NONE} -- Implementation - Variables

	stream_index:INTEGER
	codec_context_ptr:POINTER

	frame:POINTER

	sample_rate:INTEGER
	channels:INTEGER
	signed:BOOLEAN
	bits_per_sample:INTEGER
	fmt:NATURAL

	side_buffer:POINTER
	side_buffer_count:INTEGER

	is_resampling:BOOLEAN
	sample_context_ptr:POINTER


end
