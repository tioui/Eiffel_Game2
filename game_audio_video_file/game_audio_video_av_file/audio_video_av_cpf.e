note
	description: "Summary description for {AUDIO_VIDEO_AV_CPF}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AUDIO_VIDEO_AV_CPF

inherit
	CPF_RESSOURCE_MANAGER

	AUDIO_VIDEO_AV_FILE
	rename
		make as make_file,
		make_thread_safe as make_thread_safe_file
	undefine
		restart,
		fill_buffer,
		end_of_file
	redefine
		dispose,
		decode_frame
	select
		audio_packets_filled,
		audio_stream_index,
		audio_codec_context_ptr,
		audio_frame,
		video_stream_index,
		video_codec_context_ptr,
		video_frame,
		make_file
	end

	AUDIO_SOUND_AV_CPF
	rename
		packets_filled as packets_filled_audio_cpf,
		make_file as make_file_audio,
		stream_index as stream_index_audio_cpf,
		codec_context_ptr as codec_context_ptr_audio_cpf,
		frame as frame_audio_cpf
	undefine
		read_packet,
		make_thread_safe_file
	redefine
		make,
		make_with_read_buffer_size,
		make_thread_safe,
		make_with_read_buffer_size_thread_safe,
		dispose
	end

	VIDEO_AV_CPF
	rename
		packets_filled as packets_filled_video_cpf,
		make_file as make_file_video,
		stream_index as stream_index_video_cpf,
		codec_context_ptr as codec_context_ptr_video_cpf,
		frame as frame_video_cpf,
		cpf as the_cpf_not_used,
		cpf_index as the_cpf_index_not_used,
		last_offset as last_offset_not_used,
		avio_context as avio_context_not_used,
		bio_buffer as bio_buffer_not_used
	undefine
		restart,
		read_packet,
		make_thread_safe_file,
		decode_frame,
		end_of_file
	redefine
		make,
		make_with_read_buffer_size,
		make_thread_safe,
		make_with_read_buffer_size_thread_safe,
		dispose

	end

create
	make,
	make_with_read_buffer_size,
	make_thread_safe,
	make_with_read_buffer_size_thread_safe

feature {NONE} -- Initialization

	make_with_read_buffer_size(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER;a_read_buffer_size:INTEGER)
			-- Initialization for `Current'.
		do
			init_library
			cpf:=a_cpf
			cpf_index:=a_index

			bio_buffer:={AV_EXTERNAL}.av_malloc(a_read_buffer_size+{AV_EXTERNAL}.FF_INPUT_BUFFER_PADDING_SIZE)
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			avio_context:={AV_EXTERNAL}.avio_alloc_context(bio_buffer,a_read_buffer_size,0,a_cpf.get_current_cpf_infos_ptr,
								{AV_EXTERNAL}.av_more_read_packet,create{POINTER},{AV_EXTERNAL}.av_more_seek)
			check not avio_context.is_default_pointer end
			format_context_pointer:={AV_EXTERNAL}.avformat_alloc_context
			{AV_EXTERNAL}.set_av_format_context_struct_pb(format_context_pointer,avio_context)
			make_file("Stream")
			last_offset:=cpf.current_sub_file_position
			cpf.unlock_mutex
		end

	make(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER)
			-- Initialization for `Current'.
		do
			make_with_read_buffer_size(a_cpf,a_index,4096)
		end

	make_thread_safe(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER)
		do
			make(a_cpf,a_index)
			is_thread_safe:=true
			create media_mutex.make
		end

	make_with_read_buffer_size_thread_safe(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER;a_read_buffer_size:INTEGER)
		do
			make_with_read_buffer_size(a_cpf,a_index,a_read_buffer_size)
			is_thread_safe:=true
			create media_mutex.make
		end

feature {VIDEO_READER}

	decode_frame
		do
			cpf.lock_mutex
			if cpf.current_sub_file_index/=cpf_index or else not cpf.is_position_in_selected_sub_file then
				cpf.select_sub_file (cpf_index)
			end
			if cpf.current_sub_file_position/=last_offset then
				cpf.go_in_current_sub_file (last_offset)
			end
			precursor {AUDIO_VIDEO_AV_FILE}
			if cpf.is_position_in_selected_sub_file then
				last_offset:=cpf.current_sub_file_position
			else
				last_offset:=0
			end
			cpf.unlock_mutex
		end

	end_of_file:BOOLEAN
		do
			Result:=last_packet or (last_offset=0 and packets_filled.is_empty)
		end

feature {NONE} -- Implementation - Routines

	dispose
		local
			error:INTEGER
		do
			error:={AV_EXTERNAL}.avcodec_close(video_codec_context_ptr)
			check error=0 end
			{AV_EXTERNAL}.av_free(video_frame)
			precursor {AUDIO_SOUND_AV_CPF}
		end

end
