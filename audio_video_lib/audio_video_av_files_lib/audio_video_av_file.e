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

	make(filename:STRING)
			-- Initialization for `Current'.
		do
			precursor {AUDIO_SOUND_AV_FILE} (filename)
			create {ARRAYED_QUEUE[POINTER]} video_packets_filled.make(1)
			init_video_context
		end

	make_thread_safe(filename:STRING)
		do
			make(filename)
			is_thread_safe := True
			create media_mutex.make
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
				if video_packets_filled.is_empty then
					read_packet(video_stream_index)
				end
				if not end_of_file then
					temp_packet:=video_packets_filled.item
					video_packets_filled.remove
					packets_pool.put (temp_packet)
					error:={AV_EXTERNAL}.avcodec_decode_video2(video_codec_context_ptr,video_frame,$got,temp_packet)
					check error>=0 end
				end
			end
			if is_thread_safe then
				media_mutex.unlock
			end
		end

feature {NONE} -- Implementation - Routines

	read_packet(index:INTEGER)
		local
			error:INTEGER
			got:BOOLEAN
			packet:POINTER
		do
			from
				got:=false
				last_packet:=false
			until
				got or
				last_packet
			loop
				if packets_pool.is_empty then
					fill_packet_pool
				end
				{AV_EXTERNAL}.av_free_packet(packets_pool.item)
				error:={AV_EXTERNAL}.av_read_frame(format_context_ptr,packets_pool.item)
				if error<0 then
					if error/={AV_EXTERNAL}.AVERROR_EOF then
						io.error.put_string ("Error reading frame: "+Get_Error_Message(error)+"%N")
						check false end
					end
					last_packet:=true
				else
					if {AV_EXTERNAL}.get_av_packet_struct_stream_index(packets_pool.item)=index then
						got:=true
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
			error:INTEGER
		do
			error:={AV_EXTERNAL}.avcodec_close(video_codec_context_ptr)
			check error=0 end
			{AV_EXTERNAL}.av_free(video_frame)
			precursor {AUDIO_SOUND_AV_FILE}
		end


feature {NONE} -- Implementation - Variables

	video_packets_filled:QUEUE[POINTER]
end
