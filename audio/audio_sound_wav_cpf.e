note
	description: "Summary description for {AUDIO_SOUND_WAV_CPF}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AUDIO_SOUND_WAV_CPF

inherit
	AUDIO_SOUND_WAV_FILE
	rename
		make as make_wav_file
	undefine
		restart,
		is_openable,
		open
	redefine
		fill_buffer
	end
	CPF_RESSOURCE_MANAGER

create
	make

feature {NONE} -- Initialization

	make(a_cpf:CPF_PACKAGE_FILE;a_index:INTEGER)
			-- Initialization for `Current'.
		do
			cpf:=a_cpf
			file:=a_cpf
			cpf_index:=a_index
			make_ressource
		end

feature {GAME_AUDIO_SOURCE}

	fill_buffer(buffer:POINTER;max_length:INTEGER)
		do
			if last_offset=-1 then
				last_buffer_size:=0
			else
				cpf.lock_mutex
				if cpf.current_sub_file_index/=cpf_index or else not cpf.is_position_in_selected_sub_file then
					cpf.select_sub_file (cpf_index)
				end
				if cpf.current_sub_file_position/=last_offset then
					cpf.go_in_current_sub_file (last_offset)
				end
				precursor(buffer,max_length)
				if cpf.is_position_in_selected_sub_file then
					last_offset:=cpf.current_sub_file_position
				else
					last_offset:=-1
				end
				cpf.unlock_mutex
			end

		end

feature-- Access

	is_openable:BOOLEAN
		do
			result := cpf.is_readable and then cpf.sub_files_count>=cpf_index
		end

	open
		do
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			has_error:=False
			process_header
			is_open:=not has_error
			last_offset:=cpf.current_sub_file_position
			cpf.unlock_mutex
		end

	restart
		do
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			Precursor
			last_offset:=cpf.current_sub_file_position
			cpf.unlock_mutex
		end

feature {NONE} -- Implementation - Variables

	cpf:CPF_PACKAGE_FILE
	cpf_index:INTEGER
	last_offset:INTEGER

end
