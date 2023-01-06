note
	description: "A Media Stream"
	author: "Louis Marchand"
	date: "Thu, 29 Dec 2022 00:40:33 +0000"
	revision: "0.1"

deferred class
	AV_MEDIA_FILE

inherit
	AV_ANY
		undefine
			default_create
		end

	DISPOSABLE
		undefine
			default_create
		end
	AV_ERROR_MANAGER
		undefine
			default_create
		end
	GAME_RESSOURCE
		rename
			has_error as has_ressource_error
		end


feature {NONE} -- Initialisation

	make(a_filename:READABLE_STRING_GENERAL)
			-- Initialisation of `Current' using `a_filename' as file to `open'
		do
			has_error := False
			filename := a_filename
			create {ARRAYED_QUEUE[POINTER]} packets_pool.make(1)
			create {ARRAYED_QUEUE[POINTER]} packets_filled.make(1)
			create media_mutex.make
			create {ARRAYED_LIST[POINTER]}codec_contexts.make (2)
		end

	find_stream(a_flags:NATURAL_32):INTEGER
			-- Find the index (tarting at 1) of the Media stream using `a_flags'
		require
			Is_Open: is_open
		local
			i:INTEGER
			l_is_found:BOOLEAN
			l_nb_stream:INTEGER
		do
			l_nb_stream:={AV_EXTERNAL}.get_av_format_context_struct_nb_streams(format_context_pointer).to_integer_32
			Result:=-1
			from
				i:=1
				l_is_found:=false
			until
				i>l_nb_stream or
				l_is_found
			loop
				if {AV_EXTERNAL}.get_av_codec_context_struct_codec_type(codec_contexts[i])=a_flags then
					l_is_found:=true
					Result:=i
				end
				i:=i+1
			end
		end

	open_codec(a_index:INTEGER)
			-- Open the codec at `a_index` (starting at 0)
		local
			l_codec_id:NATURAL
			l_codec_ptr,l_temp_par:POINTER
			l_error:INTEGER
		do
			l_temp_par := codec_parameters(a_index)
			l_codec_id:={AV_EXTERNAL}.get_av_codec_parameters_struct_codec_id(l_temp_par)
			l_codec_ptr:={AV_EXTERNAL}.avcodec_find_decoder(l_codec_id)
			l_error:={AV_EXTERNAL}.avcodec_open2(codec_contexts[a_index],l_codec_ptr,void_ptr)
			if l_error /~ 0 then
				has_ressource_error := True
			end
			read_av_error ("Cannot open codec", l_error)
		end

feature -- Access

	filename:READABLE_STRING_GENERAL
			-- The name of the file to use in `Current'

	restart
			-- Restart the media to the beginning.
		require
			Is_Open: is_open
		local
			l_error:INTEGER
		do
			l_error:={AV_EXTERNAL}.av_seek_frame(format_context_pointer,-1,0,{AV_EXTERNAL}.AVSEEK_FLAG_ANY.bit_or ({AV_EXTERNAL}.AVSEEK_FLAG_BACKWARD))
			read_av_error ("Cannot restart media", l_error)
			clear_packets
			last_packet:=false
		end

	is_openable:BOOLEAN
			-- Can the file `filename` exists and can be read.
		local
			l_file:RAW_FILE
		do
			create l_file.make_with_name (filename)
			Result:= l_file.exists and l_file.is_readable
		end

	open
			-- Load `filename` into `Current` to be streamed
		local
			l_filename_c:C_STRING
			l_error:INTEGER
		do
			create l_filename_c.make (filename)
			l_error:={AV_EXTERNAL}.avformat_open_input($format_context_pointer,l_filename_c.item,void_ptr.item,void_ptr.item)
			if l_error ~ 0 then
				l_error:={AV_EXTERNAL}.avformat_find_stream_info(format_context_pointer,void_ptr.item)
				if l_error ~ 0 then
					load_codec_contexts
					is_open := True
				else
					has_ressource_error := True
				end
				read_av_error ("Cannot find stream info", l_error)
			else
				has_error := True
				has_ressource_error := True
				read_av_error ("Cannot open media", l_error)
			end
			last_packet:=false
		end

	load_codec_contexts
			-- Load every codec contexts into `codec_contexts`
		local
			l_temp_stream, l_temp_par, l_codec, l_codec_context:POINTER
			l_nb_stream, l_index, l_error:INTEGER
			l_codec_id: NATURAL
		do
			l_nb_stream:={AV_EXTERNAL}.get_av_format_context_struct_nb_streams(format_context_pointer).to_integer_32
			from
				l_index := 1
			until
				l_index > l_nb_stream
			loop
				l_temp_par := codec_parameters(l_index)
				l_codec_context := {AV_EXTERNAL}.avcodec_alloc_context3(l_codec)
				l_error := {AV_EXTERNAL}.avcodec_parameters_to_context(l_codec_context, l_temp_par)
				codec_contexts.extend(l_codec_context)
				l_index := l_index + 1
			end

		end



feature {NONE} -- Implementation - Routines

	codec_parameters(a_index:INTEGER):POINTER
			-- Get the codec parameters of the stream at `a_index` (starting at 1)
		do
			Result := {AV_EXTERNAL}.get_av_stream_struct_codecpar(stream(a_index))
		end

	stream(a_index:INTEGER):POINTER
			-- Get the stream at `a_index` (starting at 1)
		do
			Result:={AV_EXTERNAL}.get_av_format_context_struct_streams_i(format_context_pointer,a_index-1)
		end


	read_packet(a_index:INTEGER)
			-- Read a packet of the stream at `a_index` (starting at 1)
		require
			Is_Open: is_open
		local
			l_error:INTEGER
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
					if {AV_EXTERNAL}.get_av_packet_struct_stream_index(packets_pool.item)=a_index - 1 then
						packets_filled.put (packets_pool.item)
						packets_pool.remove
						l_got:=true
					end
				end
			end
		end

	fill_packet_pool
			-- Create a new packet in `packets_pool`
		require
			Is_Open: is_open
		local
			l_new_packet:POINTER
		do
			l_new_packet:={AV_EXTERNAL}.av_malloc({AV_EXTERNAL}.c_sizeof_av_packet)
			l_new_packet.memory_set (0, {AV_EXTERNAL}.c_sizeof_av_packet)
			packets_pool.put (l_new_packet)
		end

	clear_packets
			-- Free and remove every packet saved in `Current'
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
		end

	close
			-- Free ressources used by `Current', making it unusale
		require
			Is_Open: is_open
		local
			l_error:INTEGER
		do
			across
				codec_contexts as la_codecs
			loop
				l_error:={AV_EXTERNAL}.avcodec_close(la_codecs.item)
			end
			clear_packets
			{AV_EXTERNAL}.avformat_close_input($format_context_pointer)
			is_open := False
		ensure
			Is_Close: not is_open
		end

	dispose
			-- <Precursor>
		do
			close
		end

feature {NONE} -- Implementation - Variables

	format_context_pointer:POINTER
		-- Internal pointer of the format context

	last_packet:BOOLEAN
		-- The last packet of `Current' has been read

	packets_pool:QUEUE[POINTER]
		-- Pool of unused packets.

	packets_filled:QUEUE[POINTER]
		-- Every loaded packets that must be process by `Current'

	is_thread_safe:BOOLEAN
		-- If `True', `media_mutex` must be locked when processing file.

	media_mutex:MUTEX
		-- The mutex that must be locked when `is_thread_safe` is `True'

	codec_contexts:LIST[POINTER]
		-- Every internal codec contexts

invariant
	Media_Thread_Safe_Mutex_Set: (not is_thread_safe) or else media_mutex.is_set

end
