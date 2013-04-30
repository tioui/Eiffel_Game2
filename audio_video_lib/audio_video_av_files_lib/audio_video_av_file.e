note
	description: "Summary description for {AUDIO_VIDEO_AV_FILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AUDIO_VIDEO_AV_FILE

inherit
	AUDIO_VIDEO_MEDIA
	undefine
		make,
		dispose,
		read_packet
	end
	AUDIO_SOUND_AV_FILE
		rename
			packets_filled as audio_packets_filled,
			stream_index as audio_stream_index,
			codec_context_ptr as audio_codec_context_ptr,
			frame as audio_frame
		redefine
			make,
			make_thread_safe,
			read_packet,
			dispose
		select
			audio_packets_filled
		end
	VIDEO_AV_FILE
		rename
			stream_index as video_stream_index,
			codec_context_ptr as video_codec_context_ptr,
			frame as video_frame
		redefine
			make,
			make_thread_safe,
			read_packet,
			decode_frame,
			dispose
		end

create
	make,
	make_thread_safe

feature {NONE} -- Initialization

	make(a_filename:STRING)
			-- Initialization for `Current'.
		do
			precursor {AUDIO_SOUND_AV_FILE} (a_filename)
			create {ARRAYED_QUEUE[POINTER]} video_packets_filled.make(1)
			init_video_context
		end

	make_thread_safe(a_filename:STRING)
		do
			make(a_filename)
			is_thread_safe := True
			create media_mutex.make
		end

feature {VIDEO_READER}

	decode_frame
		local
			l_got,l_error:INTEGER
			l_packet_pointer:POINTER
		do
			if is_thread_safe then
				media_mutex.lock
			end
			from
				l_got:=0
			until
				l_got/=0 or
				end_of_file
			loop
				if video_packets_filled.is_empty then
					read_packet(video_stream_index)
				end
				if not end_of_file then
					l_packet_pointer:=video_packets_filled.item
					video_packets_filled.remove
					packets_pool.put (l_packet_pointer)
					l_error:={AV_EXTERNAL}.avcodec_decode_video2(video_codec_context_ptr,video_frame,$l_got,l_packet_pointer)
					check l_error>=0 end
				end
			end
			if is_thread_safe then
				media_mutex.unlock
			end
		end

feature {NONE} -- Implementation - Routines

	read_packet(a_index:INTEGER)
		local
			l_error:INTEGER
			l_got:BOOLEAN
		do
			from
				l_got:=false
				last_packet:=false
			until
				l_got or
				last_packet
			loop
				if packets_pool.is_empty then
					fill_packet_pool
				end
				{AV_EXTERNAL}.av_free_packet(packets_pool.item)
				l_error:={AV_EXTERNAL}.av_read_frame(format_context_pointer,packets_pool.item)
				if l_error<0 then
					if l_error/={AV_EXTERNAL}.AVERROR_EOF then
						io.error.put_string ("Error reading frame: "+Get_Error_Message(l_error)+"%N")
						check false end
					end
					last_packet:=true
				else
					if {AV_EXTERNAL}.get_av_packet_struct_stream_index(packets_pool.item)=a_index then
						l_got:=true
					end
					if {AV_EXTERNAL}.get_av_packet_struct_stream_index(packets_pool.item)=video_stream_index then
						video_packets_filled.put (packets_pool.item)
						packets_pool.remove
					elseif {AV_EXTERNAL}.get_av_packet_struct_stream_index(packets_pool.item)=audio_stream_index then
						audio_packets_filled.put (packets_pool.item)
						packets_pool.remove
					end
				end
			end
		end

	dispose
		local
			l_error:INTEGER
		do
			l_error:={AV_EXTERNAL}.avcodec_close(video_codec_context_ptr)
			check l_error=0 end
			{AV_EXTERNAL}.av_free(video_frame)
			precursor {AUDIO_SOUND_AV_FILE}
		end


feature {NONE} -- Implementation - Variables

	video_packets_filled:QUEUE[POINTER]
end
