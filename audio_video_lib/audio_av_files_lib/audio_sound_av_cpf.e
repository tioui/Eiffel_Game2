note
	description: "Summary description for {AUDIO_SOUND_AV_CPF}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AUDIO_SOUND_AV_CPF

inherit
	CPF_RESSOURCE

	AUDIO_SOUND_AV_FILE
	rename
		make as make_file,
		make_thread_safe as make_thread_safe_file
	undefine
		restart
	redefine
		fill_buffer,
		dispose
	end

create
	make,
	make_with_read_buffer_size,
	make_thread_safe,
	make_with_read_buffer_size_thread_safe

feature {NONE} -- Initialization

	make_with_read_buffer_size(cpf:CPF_PACKAGE_FILE;index:INTEGER;read_buffer_size:INTEGER)
		require
			read_buffer_size>0
			-- Initialization for `Current'.
		do
			init_library
			the_cpf:=cpf
			the_cpf_index:=index

			bio_buffer:={AV_EXTERNAL}.av_malloc(read_buffer_size+{AV_EXTERNAL}.FF_INPUT_BUFFER_PADDING_SIZE)
			the_cpf.mutex_lock
			the_cpf.select_sub_file (the_cpf_index)
			avio_context:={AV_EXTERNAL}.avio_alloc_context(bio_buffer,read_buffer_size,0,cpf.get_current_cpf_infos_ptr,
								{AV_EXTERNAL}.av_more_read_packet,create{POINTER},{AV_EXTERNAL}.av_more_seek)
			check not avio_context.is_default_pointer end
			format_context_ptr:={AV_EXTERNAL}.avformat_alloc_context
			{AV_EXTERNAL}.set_av_format_context_struct_pb(format_context_ptr,avio_context)
			make_file("Stream")
			last_offset:=the_cpf.current_offset
			the_cpf.mutex_unlock
		end

	make(cpf:CPF_PACKAGE_FILE;index:INTEGER)
			-- Initialization for `Current'.
		do
			make_with_read_buffer_size(cpf,index,4096)
		end

	make_thread_safe(cpf:CPF_PACKAGE_FILE;index:INTEGER)
		do
			make(cpf,index)
			is_thread_safe:=true
			create media_mutex.make
		end

	make_with_read_buffer_size_thread_safe(cpf:CPF_PACKAGE_FILE;index:INTEGER;read_buffer_size:INTEGER)
		do
			make_with_read_buffer_size(cpf,index,read_buffer_size)
			is_thread_safe:=true
			create media_mutex.make
		end

feature {GAME_AUDIO_SOURCE}

	fill_buffer(buffer:POINTER;max_length:INTEGER)
		do
			the_cpf.mutex_lock
			if the_cpf.current_file_index/=the_cpf_index or else not the_cpf.current_offset_is_in_selected_file then
				the_cpf.select_sub_file (the_cpf_index)
			end
			if the_cpf.current_offset/=last_offset then
				the_cpf.seek_from_begining (last_offset)
			end
			precursor(buffer,max_length)
			if the_cpf.current_offset_is_in_selected_file then
				last_offset:=the_cpf.current_offset
			else
				last_offset:=0
			end
			the_cpf.mutex_unlock
		end

feature-- Access

	restart
		do
			the_cpf.mutex_lock
			the_cpf.select_sub_file (the_cpf_index)
			Precursor
			last_offset:=the_cpf.current_offset
			the_cpf.mutex_unlock
		end

feature {NONE} -- Implementation - Routines

	dispose
		do
			if is_resampling then
				{AV_EXTERNAL}.audio_resample_close(sample_context_ptr)
			end
			{AV_EXTERNAL}.av_free(side_buffer)
			close_codec(codec_context_ptr)
			{AV_EXTERNAL}.av_free(frame)
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
			{AV_EXTERNAL}.avformat_free_context(format_context_ptr)
			{AV_EXTERNAL}.av_free(avio_context)
--			{AV_EXTERNAL}.av_free(bio_buffer)	-- I don't know why, but avformat_free_context free the bio_buffer.
		end

feature {NONE} -- Implementation - Variables

	the_cpf:CPF_PACKAGE_FILE
	the_cpf_index:INTEGER
	last_offset:INTEGER

	avio_context:POINTER
	bio_buffer:POINTER
end
