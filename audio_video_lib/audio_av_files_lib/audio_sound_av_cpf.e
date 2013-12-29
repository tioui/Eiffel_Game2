note
	description: "Summary description for {AUDIO_SOUND_AV_CPF}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AUDIO_SOUND_AV_CPF

inherit
	CPF_RESSOURCE_MANAGER

	AUDIO_SOUND_AV_FILE
	rename
		make as make_file,
		make_thread_safe as make_thread_safe_file
	undefine
		restart
	redefine
		fill_buffer,
		dispose,
		is_openable,
		open
	end

create
	make,
	make_with_read_buffer_size,
	make_thread_safe,
	make_with_read_buffer_size_thread_safe

feature {NONE} -- Initialization

	make_with_read_buffer_size(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER;a_read_buffer_size:INTEGER)
		require
			a_read_buffer_size>0
			-- Initialization for `Current'.
		do
			init_library
			cpf:=a_cpf
			cpf_index:=a_index
			read_buffer_size:=a_read_buffer_size
			is_thread_safe:=False
			create media_mutex.make
			filename:=a_cpf.path.name
			create {ARRAYED_QUEUE[POINTER]} packets_pool.make(0)
			create {ARRAYED_QUEUE[POINTER]} packets_filled.make(0)
		end

	make(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER)
			-- Initialization for `Current'.
		do
			make_with_read_buffer_size(a_cpf,a_index,4096)
		end

	make_thread_safe(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER)
		do
			make(a_cpf,a_index)
			is_thread_safe:=True
		end

	make_with_read_buffer_size_thread_safe(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER;a_read_buffer_size:INTEGER)
		do
			make_with_read_buffer_size(a_cpf,a_index,a_read_buffer_size)
			is_thread_safe:=True
		end

feature {GAME_AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
		do
			cpf.lock_mutex
			if cpf.current_sub_file_index/=cpf_index or else not cpf.is_position_in_selected_sub_file then
				cpf.select_sub_file (cpf_index)
			end
			if cpf.current_sub_file_position/=last_offset then
				cpf.go_in_current_sub_file (last_offset)
			end
			precursor(a_buffer,a_max_length)
			if cpf.is_position_in_selected_sub_file then
				last_offset:=cpf.current_sub_file_position
			else
				last_offset:=0
			end
			cpf.unlock_mutex
		end

feature-- Access

	is_openable:BOOLEAN
		do
			result := cpf.is_readable and then cpf.sub_files_count>=cpf_index
		end

	open
		do
			bio_buffer:={AV_EXTERNAL}.av_malloc(read_buffer_size+{AV_EXTERNAL}.FF_INPUT_BUFFER_PADDING_SIZE)
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			avio_context:={AV_EXTERNAL}.avio_alloc_context(bio_buffer,read_buffer_size,0,cpf.get_current_cpf_infos_ptr,
								{AV_EXTERNAL}.av_more_read_packet,create{POINTER},{AV_EXTERNAL}.av_more_seek)
			if avio_context.is_default_pointer then
				io.error.put_string ("Error while loding AV IO_Context from CPF file.%N")
				has_error:=True
			else
				format_context_pointer:={AV_EXTERNAL}.avformat_alloc_context
				{AV_EXTERNAL}.set_av_format_context_struct_pb(format_context_pointer,avio_context)
				Precursor {AUDIO_SOUND_AV_FILE}
				last_offset:=cpf.current_sub_file_position
				cpf.unlock_mutex
			end

		end

	restart
		do
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			Precursor
			last_offset:=cpf.current_sub_file_position
			cpf.unlock_mutex
		end

feature {NONE} -- Implementation - Routines

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
			if not format_context_pointer.is_default_pointer then
				{AV_EXTERNAL}.avformat_free_context(format_context_pointer)
				format_context_pointer:=void_ptr
			else
				if not bio_buffer.is_default_pointer then
					{AV_EXTERNAL}.av_free(bio_buffer)	-- I don't know why, but avformat_free_context free the bio_buffer???
					bio_buffer:=void_ptr
				end
			end
			if not avio_context.is_default_pointer then
				{AV_EXTERNAL}.av_free(avio_context)
				avio_context:=void_ptr
			end
		end

feature {NONE} -- Implementation - Variables

	cpf:CPF_PACKAGE_FILE
	cpf_index:INTEGER
	last_offset:INTEGER

	avio_context:POINTER
	bio_buffer:POINTER

	read_buffer_size:INTEGER

end
