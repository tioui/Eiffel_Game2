note
	description: "Summary description for {AV_MEDIA}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	AV_MEDIA

inherit
	AV_ANY

	DISPOSABLE


feature {NONE} -- Initialisation

	make(filename:STRING)
		local
			filename_c:C_STRING
			error:INTEGER
		do
			init_library
			create filename_c.make (filename)
			error:={AV_EXTERNAL}.avformat_open_input($format_context_ptr,filename_c.item,void_ptr.item,void_ptr.item)
			check error=0 end
			error:={AV_EXTERNAL}.avformat_find_stream_info(format_context_ptr,void_ptr.item)
			check error>=0 end
			create {ARRAYED_QUEUE[POINTER]} packets_pool.make(1)
			create {ARRAYED_QUEUE[POINTER]} packets_filled.make(1)
			test:=0
		end

	init_stream(flags:NATURAL_32):INTEGER
		local
			i:INTEGER
			is_found:BOOLEAN
			nb_stream:INTEGER
		do
			nb_stream:={AV_EXTERNAL}.get_av_format_context_struct_nb_streams(format_context_ptr).to_integer_32
			Result:=-1
			from
				i:=0
				is_found:=false
			until
				i>=nb_stream or
				is_found
			loop
				if {AV_EXTERNAL}.get_av_codec_context_struct_codec_type(get_context_ptr(i))=flags then
					is_found:=true
					Result:=i
				end
				i:=i+1
			end
		end

	open_codec(codec_context:POINTER)
		local
			codec_id:NATURAL
			temp_codec:POINTER
			error:INTEGER
		do
			codec_id:={AV_EXTERNAL}.get_av_codec_context_struct_codec_id(codec_context)
			temp_codec:={AV_EXTERNAL}.avcodec_find_decoder(codec_id)
			check not temp_codec.is_default_pointer end
			error:={AV_EXTERNAL}.avcodec_open2(codec_context,temp_codec,void_ptr)
			check error=0 end
		end

feature -- Access

	restart
			-- Restart the media to the beginning.
		local
			error:INTEGER
		do
			error:={AV_EXTERNAL}.av_seek_frame(format_context_ptr,-1,0,{AV_EXTERNAL}.AVSEEK_FLAG_ANY.bit_or ({AV_EXTERNAL}.AVSEEK_FLAG_BACKWARD))
			check error >= 0 end
			last_packet:=false
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
				test:=test+1
				error:={AV_EXTERNAL}.av_read_frame(format_context_ptr,packets_pool.item)
				if error<0 then
					if error/={AV_EXTERNAL}.AVERROR_EOF then
						io.error.put_string ("Error reading frame: "+Get_Error_Message(error)+"%N")
						check false end
					end
					last_packet:=true
				else
					if {AV_EXTERNAL}.get_av_packet_struct_stream_index(packets_pool.item)=index then
						packets_filled.put (packets_pool.item)
						packets_pool.remove
						got:=true
					end
				end
			end
		end

	fill_packet_pool
		local
			new_packet:POINTER
		do
			new_packet:={AV_EXTERNAL}.av_malloc({AV_EXTERNAL}.c_sizeof_av_packet)
			new_packet.memory_set (0, {AV_EXTERNAL}.c_sizeof_av_packet)
			packets_pool.put (new_packet)
		end


	close_codec(codec_context:POINTER)
		local
			error:INTEGER
		do
			error:={AV_EXTERNAL}.avcodec_close(codec_context)
			check error=0 end
		end

	get_context_ptr(index:INTEGER):POINTER
		local
			temp_stream:POINTER
		do
			temp_stream:={AV_EXTERNAL}.get_av_format_context_struct_streams_i(format_context_ptr,index)
			Result:={AV_EXTERNAL}.get_av_stream_struct_codec(temp_stream)
			check not Result.is_default_pointer end
		end

	dispose
		do
			from
			until
				packets_filled.is_empty
			loop
				{AV_EXTERNAL}.av_free(packets_filled.item)
				packets_filled.remove
			end
			from
			until
				packets_pool.is_empty
			loop
				{AV_EXTERNAL}.av_free(packets_pool.item)
				packets_pool.remove
			end
			{AV_EXTERNAL}.avformat_close_input($format_context_ptr)
		end

feature {NONE} -- Implementation - Variables

	format_context_ptr:POINTER
	last_packet:BOOLEAN
	packets_pool:QUEUE[POINTER]
	packets_filled:QUEUE[POINTER]

	is_thread_safe:BOOLEAN
	media_mutex:MUTEX

	test:NATURAL_64

invariant
	Media_Thread_Safe_Mutex_Set: (not is_thread_safe) or else media_mutex.is_set

end
