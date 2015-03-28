note
	description: "Summary description for {AUDIO_SOUND_CPF}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AUDIO_SOUND_SND_CPF

inherit
	AUDIO_SOUND_SND_FILE
	rename
		make as make_file
	undefine
		restart,
		is_openable,
		open
	redefine
		dispose,
		fill_buffer
	end
	CPF_RESSOURCE_MANAGER

create
	make

feature {NONE} -- Initialization

	make(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER)
			-- Initialization for `Current'.
		require
			Sound_Cpf_Index_Valid:a_index>0 and then a_index<=a_cpf.sub_files_count
		do
			make_ressource
			cpf:=a_cpf
			cpf_index:=a_index
			filename:=a_cpf.path.name
		end

feature {AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
		do
			cpf.lock_mutex
			if cpf.current_sub_file_index /=cpf_index or else not cpf.is_position_in_selected_sub_file  then
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
			has_error:=False
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			last_offset:=cpf.current_sub_file_position
			virtual_io:=virtual_io.memory_alloc (Sf_virtual_io_size)
			{AUDIO_SND_FILES_EXTERNAL}.set_snd_file_virtual_io(virtual_io)
			file_info:=file_info.memory_alloc (Sf_info_size)
			snd_file_ptr:={AUDIO_SND_FILES_EXTERNAL}.sf_open_virtual(virtual_io,Sfm_read,file_info,cpf.get_current_cpf_infos_ptr)
			if snd_file_ptr.is_default_pointer then
				has_error:=True
			end
			last_offset:=cpf.current_sub_file_position
			cpf.unlock_mutex
			is_open:=not has_error
		end

	restart
		local
			error: INTEGER_64
		do
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			if is_seekable then
				error := {AUDIO_SND_FILES_EXTERNAL}.sf_seek (snd_file_ptr, 0, Seek_set)
				check
					error /= -1
				end
			else
				cpf.select_sub_file (cpf_index)
				cpf.go_in_current_sub_file (0)
			end
			last_offset:=cpf.current_sub_file_position
			cpf.unlock_mutex
		end


feature {NONE} -- Implementation - Routines

	dispose
		do
			Precursor
			virtual_io.memory_free
		end

	Sf_virtual_io_size:INTEGER
		once
			Result := {AUDIO_SND_FILES_EXTERNAL}.c_sizeof_snd_file_virtual_io
		end
feature {NONE} -- Implementation - Variables

	virtual_io:POINTER
	cpf:CPF_PACKAGE_FILE
	cpf_index:INTEGER
	last_offset:INTEGER

end
