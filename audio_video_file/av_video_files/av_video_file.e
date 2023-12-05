note
	description: "A video (no audio) file."
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 03:35:44 +0000"
	revision: "0.1"

class
	AV_VIDEO_FILE


inherit

	AV_VIDEO_MEDIA
		undefine
			default_create
		end
	AV_MEDIA_FILE
		redefine
			make,
			close,
			open
		end

create
	make, make_thread_safe

feature {NONE} -- Initialisation

	make (a_filename: READABLE_STRING_GENERAL)
			-- <Precursor>
		do
			Precursor (a_filename)
			last_decoded_frame := {AV_EXTERNAL}.av_frame_alloc
			if last_decoded_frame.is_default_pointer then
				put_error ("Error while opening video file", "Cannot allocate frame")
			end
		end

	make_thread_safe (a_filename: READABLE_STRING_GENERAL)
			-- Initialisation of `Current' as thread safe using `a_filename' as file to `open'
		do
			make (a_filename)
			is_thread_safe := true
		end

feature -- Access

	open
			-- <Precursor>
		local
			l_stream:POINTER
		do
			Precursor
			stream_index:=find_stream({AV_EXTERNAL}.AVMEDIA_TYPE_VIDEO)
			codec_context_ptr := codec_contexts[stream_index]
			open_codec(stream_index)
			time_base_num:={AV_EXTERNAL}.get_av_rational_struct_num({AV_EXTERNAL}.get_av_codec_context_struct_time_base(codec_context_ptr))
			time_base_denum:={AV_EXTERNAL}.get_av_rational_struct_den({AV_EXTERNAL}.get_av_codec_context_struct_time_base(codec_context_ptr))
			l_stream := stream(stream_index)
			frequency := 1.0 / ({AV_EXTERNAL}.get_av_stream_struct_avg_frame_rate_num(l_stream) / {AV_EXTERNAL}.get_av_stream_struct_avg_frame_rate_den(l_stream))
		end

	width:INTEGER
			-- <Precursor>
		do
			Result:={AV_EXTERNAL}.get_av_codec_context_struct_width(codec_context_ptr)
		end

	height:INTEGER
			-- <Precursor>
		do
			Result:={AV_EXTERNAL}.get_av_codec_context_struct_height(codec_context_ptr)
		end

	close
			-- <Precursor>
		do
			{AV_EXTERNAL}.av_frame_free ($last_decoded_frame)
		end

feature {VIDEO_READER}

	decode_frame
			-- <Precursor>
		local
			l_got,l_error:INTEGER
			l_temp_packet:POINTER
		do
			if is_thread_safe then
				media_mutex.lock
			end
			if packets_filled.is_empty then
				read_packet(stream_index)
			end
			if not packets_filled.is_empty then
				l_temp_packet:=packets_filled.item
				packets_filled.remove
				packets_pool.put (l_temp_packet)
				l_error := {AV_EXTERNAL}.avcodec_send_packet (codec_context_ptr, l_temp_packet)
				if l_error < 0 then
					read_av_error ("Error reading packet", l_error)
				else
					l_error := {AV_EXTERNAL}.avcodec_receive_frame (codec_context_ptr, last_decoded_frame)
					if l_error < 0 then
						read_av_error ("Error reading packet", l_error)
					end
				end
			end
			if is_thread_safe then
				media_mutex.unlock
			end
		end

	end_of_file:BOOLEAN
			-- <Precursor>
		do
			Result := last_packet
		end

	pixel_format_index:INTEGER
			-- <Precursor>
		do
			Result:={AV_EXTERNAL}.get_av_codec_context_struct_pix_fmt(codec_context_ptr)
		end

feature {NONE} -- Implementation

	last_decoded_frame:POINTER
		-- A frame used to stock media stream packet

	stream_index: INTEGER
			-- The index of the stream to use in `Current'

	codec_context_ptr: POINTER
			-- Pointer to the codec context



end
