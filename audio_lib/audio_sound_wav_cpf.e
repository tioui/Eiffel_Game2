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
		restart
	redefine
		fill_buffer
	end
	CPF_RESSOURCE

create
	make

feature {NONE} -- Initialization

	make(cpf:CPF_PACKAGE_FILE;index:INTEGER)
			-- Initialization for `Current'.
		do
			the_cpf:=cpf
			file:=cpf
			the_cpf_index:=index
			has_error:=false
			the_cpf.mutex_lock
			cpf.select_sub_file (index)
			process_header
			last_offset:=the_cpf.current_offset
			the_cpf.mutex_unlock
		end

feature {GAME_AUDIO_SOURCE}

	fill_buffer(buffer:POINTER;max_length:INTEGER)
		do
			if last_offset=-1 then
				last_buffer_size:=0
			else
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
					last_offset:=-1
				end
				the_cpf.mutex_unlock
			end

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

feature {NONE} -- Implementation - Variables

	the_cpf:CPF_PACKAGE_FILE
	the_cpf_index:INTEGER
	last_offset:INTEGER

end
