note
	description: "Summary description for {VIDEO_AV_FILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	VIDEO_AV_FILE

inherit
	VIDEO_MEDIA
	redefine
		make,
		dispose
	end

create
	make,
	make_thread_safe

feature {NONE} -- Initialization

	make(a_filename:STRING)
			-- Initialization for `Current'.
		do
			precursor(a_filename)
			init_video_context
		end

	make_thread_safe(a_filename:STRING)
		do
			make(a_filename)
			is_thread_safe:=true
			create media_mutex.make
		end

	init_video_context
		do
			frame:={AV_EXTERNAL}.avcodec_alloc_frame
			check not frame.is_default_pointer end
			stream_index:=init_stream({AV_EXTERNAL}.AVMEDIA_TYPE_VIDEO)
			codec_context_ptr:=context_pointer(stream_index)
			open_codec(codec_context_ptr)
			time_base_num:={AV_EXTERNAL}.get_av_rational_struct_num({AV_EXTERNAL}.get_av_codec_context_struct_time_base(codec_context_ptr))
			time_base_denum:={AV_EXTERNAL}.get_av_rational_struct_den({AV_EXTERNAL}.get_av_codec_context_struct_time_base(codec_context_ptr))
		end






feature -- Access


	width:INTEGER
		do
			Result:={AV_EXTERNAL}.get_av_codec_context_struct_width(codec_context_ptr)
		end

	height:INTEGER
		do
			Result:={AV_EXTERNAL}.get_av_codec_context_struct_height(codec_context_ptr)
		end

feature {VIDEO_READER}

	decode_frame
		local
			got,error:INTEGER
			temp_packet:POINTER
		do
			if is_thread_safe then
				media_mutex.lock
			end
			from
				got:=0
			until
				got/=0 or
				end_of_file
			loop
				if packets_filled.is_empty then
					read_packet(stream_index)
				end
				if not end_of_file then
					temp_packet:=packets_filled.item
					packets_filled.remove
					packets_pool.put (temp_packet)
					error:={AV_EXTERNAL}.avcodec_decode_video2(codec_context_ptr,frame,$got,temp_packet)

					check error>=0 end
				end
			end
			if is_thread_safe then
				media_mutex.unlock
			end
		end

	end_of_file:BOOLEAN
		do
			Result:=last_packet
		end

	last_decoded_frame:POINTER
		do
			Result:=frame
		end

	pix_fmt:INTEGER
		do
			Result:={AV_EXTERNAL}.get_av_codec_context_struct_pix_fmt(codec_context_ptr)
		end


feature {NONE} -- Implementation - Routines

	dispose
		local
			error:INTEGER
		do
			error:={AV_EXTERNAL}.avcodec_close(codec_context_ptr)
			check error=0 end
			{AV_EXTERNAL}.av_free(frame)
			Precursor
		end

feature {NONE} -- Implementation - Variables

	stream_index:INTEGER
	codec_context_ptr:POINTER

	frame:POINTER

end
