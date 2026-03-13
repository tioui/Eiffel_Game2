note
	description: "An audio video file"
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 03:35:44 +0000"
	revision: "0.1"

class
	AV_AUDIO_VIDEO_FILE

inherit
	AV_AUDIO_VIDEO_MEDIA
		rename
			last_decoded_frame as video_frame
		undefine
			default_create
		end
	AV_SOUND_FILE
		rename
			frame as audio_frame,
			stream_index as audio_stream_index,
			codec_context_ptr as audio_codec_context
		redefine
			make, make_thread_safe, open, close, read_packet, clear_packets, restart
		end
	AV_VIDEO_FILE
		rename
			last_decoded_frame as video_frame,
			stream_index as video_stream_index,
			codec_context_ptr as video_codec_context,
			frequency as video_frequency
		redefine
			make, make_thread_safe, open, close, read_packet, clear_packets,
			end_of_file, restart
		end

create
	make,
	make_thread_safe

feature {NONE} -- Implementation

	make (a_filename: READABLE_STRING_GENERAL)
			-- <Precursor>
		do
			Precursor{AV_SOUND_FILE} (a_filename)
			video_frame := {AV_EXTERNAL}.av_frame_alloc
			if video_frame.is_default_pointer then
				has_error := True
			end
			create {LINKED_QUEUE[POINTER]} audio_queue.make
			create {LINKED_QUEUE[POINTER]} video_queue.make
		end

	make_thread_safe (a_filename: READABLE_STRING_GENERAL)
			-- <Precursor>
		do
			make(a_filename)
			is_thread_safe := true
		end

feature -- Access

	restart
			-- <Precursor>
		do
			if last_packet then
				if audio_queue.is_empty and video_queue.is_empty then
					Precursor{AV_SOUND_FILE}
				end
			else
				Precursor{AV_SOUND_FILE}
			end
		end

	open
			-- <Precursor>
		local
			l_stream:POINTER
		do
			Precursor{AV_SOUND_FILE}
			if is_open then

				video_stream_index:=find_stream({AV_EXTERNAL}.AVMEDIA_TYPE_VIDEO)
				video_codec_context := codec_contexts[video_stream_index]
				open_codec(video_stream_index)
				time_base_num:={AV_EXTERNAL}.get_av_rational_struct_num({AV_EXTERNAL}.get_av_codec_context_struct_time_base(video_codec_context))
				time_base_denum:={AV_EXTERNAL}.get_av_rational_struct_den({AV_EXTERNAL}.get_av_codec_context_struct_time_base(video_codec_context))
				l_stream := stream(video_stream_index)
				video_frequency := 1.0 / ({AV_EXTERNAL}.get_av_stream_struct_avg_frame_rate_num(l_stream) / {AV_EXTERNAL}.get_av_stream_struct_avg_frame_rate_den(l_stream))
			end
			last_packet:=false
		end

	close
			-- <Precursor>
		do
			Precursor{AV_SOUND_FILE}
			{AV_EXTERNAL}.av_frame_free ($video_frame)
		end


feature {VIDEO_READER}

	end_of_file:BOOLEAN
			-- <Precursor>
		do
			Result := last_packet and video_queue.is_empty
		end

feature {NONE} -- Implementation

	clear_packets
			-- <Precursor>
		do
			Precursor
			from
			until
				audio_queue.is_empty
			loop
				{AV_EXTERNAL}.av_free(audio_queue.item)
				audio_queue.remove
			end
			from
			until
				video_queue.is_empty
			loop
				{AV_EXTERNAL}.av_free(video_queue.item)
				video_queue.remove
			end
		end

	audio_queue:QUEUE[POINTER]
			-- Audio packets that has been read and is ready to process

	video_queue:QUEUE[POINTER]
			-- Video packets that has been read and is ready to process

	read_new_packet(a_index:INTEGER)
			-- Read to `packets_filled' a new packet from the stream `a_index' (every packets
			-- for other stream are store in `audio_queue` or `video_queue`)
		local
			l_error, l_packet_index:INTEGER
			l_got:BOOLEAN
		do
			from
				l_got:=false
			until
				l_got or
				last_packet
			loop
				if packets_pool.is_empty then
					fill_packet_pool
				end
				{AV_EXTERNAL}.av_packet_unref(packets_pool.item)
				l_error:={AV_EXTERNAL}.av_read_frame(format_context_pointer,packets_pool.item)
				if l_error<0 then
					if l_error /={AV_EXTERNAL}.AVERROR_EOF then
						read_av_error ("Cannot read packet", l_error)
					end
					last_packet:=true
				else
					l_packet_index := {AV_EXTERNAL}.get_av_packet_struct_stream_index(packets_pool.item) + 1
					if l_packet_index ~ a_index then
						packets_filled.put (packets_pool.item)
						packets_pool.remove
						l_got:=true
					else
						if l_packet_index ~ audio_stream_index then
							audio_queue.put (packets_pool.item)
							packets_pool.remove
						elseif l_packet_index ~ video_stream_index then
							video_queue.put (packets_pool.item)
							packets_pool.remove
						end
					end
				end
			end
		end

	read_packet_in_queue(a_index, a_stream_index:INTEGER; a_queue:QUEUE[POINTER])
			-- When `a_index' is `a_stream_index`, read to `packets_filled`
			-- a new packet in `a_queue' or, if
			-- `a_queue' is empty, use `read_new_packet` to get a new packet.
		do
			if a_index ~ a_stream_index then
				if not a_queue.is_empty then
					packets_filled.put (a_queue.item)
					a_queue.remove
				else
					if not last_packet then
						read_new_packet(a_index)
					end
				end
			end
		end

	read_packet(a_index:INTEGER)
			-- Read to `packets_filled' a new packet from the stream `a_index'
		do
			read_packet_in_queue(a_index, audio_stream_index, audio_queue)
			read_packet_in_queue(a_index, video_stream_index, video_queue)
		end

end
