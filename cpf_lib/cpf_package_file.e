note
	description: "Summary description for {CPF_PACKAGE_FILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CPF_PACKAGE_FILE

inherit
	CPF_FILE
		rename
			make as make_file,
			current_offset as current_offset_file,
			seek_from_begining as seek_from_begining_file,
			seek_from_current_offset as seek_from_current_offset_file,
			seek_from_end as seek_from_end_file
		export
			{NONE} 	current_offset_file,seek_from_begining_file,
					seek_from_current_offset_file,seek_from_end_file
		redefine
			dispose,
			read
		end

create
	make,
	make_thread_safe

feature {NONE} -- Initialization

	make(filename:STRING)
			-- Initialization for `Current'.
		local
			error:INTEGER
			temp_ptr:POINTER
		do
			make_file(filename)
			error:={CPF_EXTERNAL}.fseek(file_ptr,0,{CPF_EXTERNAL}.SEEK_END)
			check error=0 end
			length_of_package_file:={CPF_EXTERNAL}.ftell(file_ptr)+1
			select_sub_file (0)
			process_cpf_file
			cpf_infos:=create {ARRAYED_LIST[POINTER]}.make(sub_files_count)
			from
				sub_files_infos.start
			until
				sub_files_infos.exhausted
			loop
				temp_ptr:=temp_ptr.memory_alloc ({CPF_EXTERNAL}.c_sizeof_custom_package_file_infos)
				{CPF_EXTERNAL}.set_custom_package_infos_struct_file_ptr(temp_ptr,file_ptr)
				{CPF_EXTERNAL}.set_custom_package_infos_struct_start_offset(temp_ptr,sub_files_infos.item.pos)
				{CPF_EXTERNAL}.set_custom_package_infos_struct_total_size(temp_ptr,sub_files_infos.item.length)
				cpf_infos.extend (temp_ptr)
				sub_files_infos.forth
			end
			select_sub_file (0)
			is_thread_safe:=false
		end

	make_thread_safe(filename:STRING)
		do
			make(filename)
			is_thread_safe:=true
			create file_mutex.make
		ensure
			Make_Thread_Safe_Mutex_Valid: file_mutex.is_set
		end

	process_cpf_file
		local
			nbr:NATURAL_16
			pos,length:NATURAL_32
			i:INTEGER
		do
			seek_from_begining (0)
			read_natural_8
			check last_natural_8=0x43 end
			read_natural_8
			check last_natural_8=0x50 end
			read_natural_8
			check last_natural_8=0x46 end
			read_natural_16_big_endian
			nbr:=last_natural_16
			sub_files_infos:= create {ARRAYED_LIST[TUPLE[pos,length:INTEGER_32]]}.make (nbr.to_integer_32)
			from i:=1
			until i>nbr
			loop
				read_natural_32_big_endian
				pos:=last_natural_32
				read_natural_32_big_endian
				length:=last_natural_32
				sub_files_infos.extend ([pos.to_integer_32,length.to_integer_32])
				i:=i+1
			end
		end

feature -- Access

	select_sub_file(index:INTEGER)
		do
			if index=0 then
				start_of_selected_file_offset:=0
				length_of_selected_file:=length_of_package_file
				seek_from_begining(0)
			else
				start_of_selected_file_offset:=sub_files_infos.at (index).pos
				length_of_selected_file:=sub_files_infos.at (index).length
				seek_from_begining(0)
			end
		end

	current_file_index:INTEGER
		local
			offset:INTEGER
			is_found:BOOLEAN
		do
			offset:={CPF_EXTERNAL}.ftell(file_ptr)
			Result:=0
			from
				is_found:=false
				sub_files_infos.start
			until
				is_found or else
				sub_files_infos.exhausted
			loop
				if offset>=sub_files_infos.item.pos and then offset<sub_files_infos.item.pos+sub_files_infos.item.length then
					Result:=sub_files_infos.index
					is_found:=true
				end
				sub_files_infos.forth
			end
		end

	current_offset_is_in_selected_file:BOOLEAN
		local
			offset:INTEGER
		do
			offset:={CPF_EXTERNAL}.ftell(file_ptr)
			Result:=offset>=start_of_selected_file_offset and then offset<=end_of_selected_file_offset
		end

	current_offset:INTEGER
			-- Return the current stream offset (position) in the file.
		Require
			File_Current_Offset_Is_In_File: current_offset_is_in_selected_file
		do
			Result:=current_offset_file-start_of_selected_file_offset
		end

	seek_from_begining(offset:INTEGER)
			-- Place the stream offset at `offset' position after the begining of the file.
			-- The `offset' value must be posifive.
		require
			File_Seek_From_Begining_Offset_Positive: offset>=0 and then offset<=end_of_selected_file_offset
		do
			seek_from_begining_file(offset+start_of_selected_file_offset)
		ensure
			current_offset = offset
		end

	seek_from_current_offset(offset:INTEGER)
			-- Place the stream offset at `offset' position after (or before if `offset' is negative) the current offset.
		require
			File_Seek_From_Current_Offset_Is_In_File: current_offset_is_in_selected_file
			File_Seek_From_Current_Offset_Offset_is_Valid: (offset>=0 and then offset<=end_of_selected_file_offset-current_offset) or else (offset<0 and then offset.abs<=current_offset)
		do
			seek_from_current_offset_file(offset)
		end

	seek_from_end(offset:INTEGER)
			-- Place the stream offset at `offset' position before the end of the file.
			-- The `offset' value must be negative.
		require
			Custom_File_Seek_From_End_Offset_Negative: offset<=0
		do

			seek_from_begining_file(end_of_selected_file_offset+offset)
		end

	read(buffer:POINTER;byte_per_sample,count:NATURAL_32)
		local
			temp_count:NATURAL_32
		do
			temp_count:=count
			if current_offset+(count*byte_per_sample).to_integer_32>length_of_selected_file then
				temp_count:=(length_of_selected_file-current_offset).to_natural_32//byte_per_sample
			end
			precursor(buffer,byte_per_sample,temp_count)
		end

	start_of_selected_file_offset:INTEGER

	end_of_selected_file_offset:INTEGER
		do
			Result:=start_of_selected_file_offset+length_of_selected_file-1
		end

	length_of_selected_file:INTEGER

	file_index:INTEGER

	is_thread_safe:BOOLEAN

feature -- Reader



feature -- CPF informations

	sub_files_infos:LIST[TUPLE[pos,length:INTEGER_32]]

	sub_files_count:INTEGER_32
	do
		Result:=sub_files_infos.count
	end

feature {CPF_RESSOURCE} -- The C pointer to the file infos structure

	get_current_cpf_infos_ptr:POINTER
		require
			current_file_index/=0
		do
			Result:=cpf_infos.at (current_file_index)
		end

	mutex_lock
		do
			if is_thread_safe then
				file_mutex.lock
			end

		end

	mutex_unlock
		do
			if is_thread_safe then
				file_mutex.unlock
			end
		end

feature {NONE} -- Implementation - Routines

	dispose
		local
			error:INTEGER
		do
			from
				cpf_infos.start
			until
				cpf_infos.exhausted
			loop
				cpf_infos.item.memory_free
				cpf_infos.forth
			end
			Precursor
		end

feature {NONE} -- Implemetntation - Variables



	length_of_package_file:INTEGER

	cpf_infos:LIST[POINTER]
	file_mutex:MUTEX

invariant
	File_Stream_Ptr_Not_Null: not file_ptr.is_default_pointer



end
