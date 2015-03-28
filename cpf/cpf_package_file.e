note
	description: "A package file."
	author: "Louis Marchand"
	date: "april 30, 2013"
	revision: "1.0.0.0"

class
	CPF_PACKAGE_FILE

inherit
	GAME_FILE
		rename
			make as make_with_name
		export
			{NONE} 	append, basic_store, copy_to, create_read_write, extend,fill, force, general_store, independent_store,
					make_create_read_write, make_obsolete, make_open_append, make_open_read, make_open_read_append,
					make_open_read_write, make_with_name, make_with_path, new_line, open_append, open_read_append,
					open_read_write, open_write, prune_all, put, put_boolean, put_character, put_double, put_integer,
					put_integer_8, put_integer_16, put_integer_32, put_integer_64, put_natural_8, put_natural_16,
					put_natural_32, put_natural_64, put_managed_pointer, put_natural, put_natural_16_big_endian,
					put_natural_16_little_endian, put_natural_32_big_endian, put_natural_32_little_endian,
					put_natural_64_big_endian, put_natural_64_little_endian, put_new_line, put_real, putreal,
					putdouble, putbool, putchar, putint, putstring, recreate_read_write, reopen_append,
					reopen_read_append, reopen_read_write, reopen_write
			{FILE} 	put_string
		redefine
			prunable
		end

create
	make,
	make_thread_safe,
	make_open,
	make_open_tread_safe

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL)
			-- Initialisation of the package file
		do
			make_with_name(a_filename)
			create {ARRAYED_LIST[POINTER]} cpf_infos.make (0)
			create {ARRAYED_LIST [TUPLE [pos: INTEGER_32; length: INTEGER_32]]} sub_files_infos.make(0)
			is_thread_safe:=false
			is_valid:=False
		end

	make_thread_safe(a_filename:READABLE_STRING_GENERAL)
			-- Initialisation of the package file with thread safe mecanisme
		do
			make(a_filename)
			is_thread_safe:=true
		ensure
			Make_Thread_Safe_Mutex_Valid: internal_mutex.is_set
		end

	make_open(a_filename:READABLE_STRING_GENERAL)
			-- Initialisation and opening of the package file
		do
			make(a_filename)
			open
		end

	make_open_tread_safe(a_filename:READABLE_STRING_GENERAL)
			-- Initialisation and opening of the package file with thread safe mecanisme
		do
			make_thread_safe(a_filename)
			open
		end

feature -- Access

	is_valid:BOOLEAN

	open
			-- Open the package file
			-- A package file is always read-only
		local
			l_temp_ptr:POINTER
		do
			open_read
			is_valid:=True
			process_cpf_file
			if is_valid then
				select_sub_file (0)
				cpf_infos:=create {ARRAYED_LIST[POINTER]}.make(sub_files_count)
				from
					sub_files_infos.start
				until
					sub_files_infos.exhausted
				loop
					l_temp_ptr:=l_temp_ptr.memory_alloc (Custom_package_file_infos_size)
					{CPF_EXTERNAL}.set_custom_package_infos_struct_file_ptr(l_temp_ptr,file_pointer)
					{CPF_EXTERNAL}.set_custom_package_infos_struct_start_offset(l_temp_ptr,sub_files_infos.item.pos)
					{CPF_EXTERNAL}.set_custom_package_infos_struct_total_size(l_temp_ptr,sub_files_infos.item.length)
					cpf_infos.extend (l_temp_ptr)
					sub_files_infos.forth
				end
				select_sub_file (0)
			end

		end

	select_sub_file(a_index:INTEGER)
		require
			CPF_File_Is_Valid: is_valid
		do
			if a_index=0 then
				current_sub_file_first_position:=0
				current_sub_file_count:=count
				go_in_current_sub_file(0)
			else
				current_sub_file_first_position:=sub_files_infos.at (a_index).pos
				current_sub_file_count:=sub_files_infos.at (a_index).length
				go_in_current_sub_file(0)
			end
		end

	current_sub_file_index:INTEGER
		require
			CPF_File_Is_Valid: is_valid
		local
			l_is_found:BOOLEAN
		do
			Result:=0
			from
				l_is_found:=false
				sub_files_infos.start
			until
				l_is_found or else
				sub_files_infos.exhausted
			loop
				if position>=sub_files_infos.item.pos and then position<sub_files_infos.item.pos+sub_files_infos.item.length then
					Result:=sub_files_infos.index
					l_is_found:=true
				end
				sub_files_infos.forth
			end
		end

	is_position_in_selected_sub_file:BOOLEAN
		require
			CPF_File_Is_Valid: is_valid
		do
			Result:=position>=current_sub_file_first_position and then position<=current_sub_file_last_position
		end

	current_sub_file_position:INTEGER
			-- Return the current stream offset (position) in the file.
		Require
			CPF_File_Is_Valid: is_valid
			File_Index_Is_In_File: is_position_in_selected_sub_file
		do
			Result:=position-current_sub_file_first_position
		end

	go_in_current_sub_file(a_offset:INTEGER)
			-- Place the stream offset at `offset' position after the begining of the file.
			-- The `offset' value must be posifive.
		require
			CPF_File_Is_Valid: is_valid
			File_Seek_From_Begining_Offset_Positive: a_offset>=0 and then a_offset<=current_sub_file_last_position
		do
			go(a_offset+current_sub_file_first_position)
		ensure
			position = a_offset
		end

	move_in_current_sub_file(a_offset:INTEGER)
			-- Place the stream offset at `offset' position after (or before if `offset' is negative) the index.
		require
			CPF_File_Is_Valid: is_valid
			File_Seek_From_Index_Is_In_File: is_position_in_selected_sub_file
			File_Seek_From_Index__is_Valid: (a_offset>=0 and then a_offset<=current_sub_file_last_position-position) or else (a_offset<0 and then a_offset.abs<=position)
		do
			go_in_current_sub_file(a_offset+current_sub_file_first_position)
		end

	recede_in_current_sub_file(a_offset:INTEGER)
			-- Place the stream offset at `offset' position before the end of the file.
			-- The `offset' value must be negative.
		require
			Custom_File_Seek_From_End_Offset_Negative: a_offset<=0
			CPF_File_Is_Valid: is_valid
		do

			go(current_sub_file_last_position+a_offset)
		end

	current_sub_file_first_position:INTEGER

	current_sub_file_last_position:INTEGER
		require
			CPF_File_Is_Valid: is_valid
		do
			Result:=current_sub_file_first_position+current_sub_file_count-1
		end

	current_sub_file_count:INTEGER

	file_index:INTEGER

feature -- CPF informations

	sub_files_infos:LIST[TUPLE[pos,length:INTEGER_32]]
			-- Position and length of every sub files in the package file

	sub_files_count:INTEGER_32
		require
			CPF_File_Is_Valid: is_valid
			-- Number of sub files in the package file
		do
			Result:=sub_files_infos.count
		end


	prunable: BOOLEAN
		do
			Result:=False
		end

feature {CPF_RESSOURCE_MANAGER} -- The C pointer to the file infos structure

	internal_pointer:POINTER
			-- The internal pointer of the package file C structure
		require
			CPF_File_Is_Valid: is_valid
			current_sub_file_index/=0
		do
			Result:=cpf_infos.at (current_sub_file_index)
		end


feature {NONE} -- Implementation - Routine

	process_cpf_file
		local
			nbr:NATURAL_16
			pos,length:NATURAL_32
			i:INTEGER
		do
			go (0)
			read_natural_8
			if last_natural_8/=0x43 then
				is_valid:=False
			end
			read_natural_8
			if last_natural_8/=0x50 then
				is_valid:=False
			end
			read_natural_8
			if last_natural_8/=0x46 then
				is_valid:=False
			end
			if can_read_16 then
				read_natural_16_big_endian
				nbr:=last_natural_16
				sub_files_infos:= create {ARRAYED_LIST[TUPLE[pos,length:INTEGER_32]]}.make (nbr.to_integer_32)
				from i:=1
				until i>nbr or not is_valid
				loop
					if can_read_32 then
						read_natural_32_big_endian
						pos:=last_natural_32
						if can_read_32 then
							read_natural_32_big_endian
							length:=last_natural_32
							sub_files_infos.extend ([pos.to_integer_32,length.to_integer_32])
							i:=i+1
						else
							is_valid:=False
						end
					else
						is_valid:=False
					end
				end
			else
				is_valid:=False
			end

		end

feature {NONE} -- Implemetntation - Variables

	cpf_infos:LIST[POINTER]

	custom_package_file_infos_size:INTEGER
		once
			Result := {CPF_EXTERNAL}.c_sizeof_custom_package_file_infos
		end

invariant
	File_Stream_Ptr_Not_Null: not file_pointer.is_default_pointer



end
