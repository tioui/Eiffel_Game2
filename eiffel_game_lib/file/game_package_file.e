note
	description: "[
		A game custom package file is a file that can contain other files (like a zip file,
		but not compressed). To create a package, use the custom_package_file project
		that you can found in the $GAME_EIF_LIB/custom_package_file directory.

		Note that the game custom package file is *NOT* thread-frendly. If you don't use
		any thread, it is not a problem, but if you do use thread, you should not use the
		same object of type GAME_PACKAGE_FILE in two differents threads. You can just 
		use multiple object of type GAME_PACKAGE_FILE to open the same file.
		]"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_PACKAGE_FILE

inherit
	CPF_PACKAGE_FILE
	rename
		make as make_cpf
	export
		{GAME_RESSOURCE_CPF} all
		{ANY} sub_files_count, sub_files_infos
	redefine
		dispose

	end

create
	make

feature {NONE} -- Initialisation

	make(filename:STRING;thread_safe:BOOLEAN)
			-- Open the package file. If you want to use the `thread_safe' option, you must have a thread enable application (precompile library with mt).
		local
			temp_ptr:POINTER
		do
			make_cpf(filename,0)
			cpf_infos:=create {ARRAYED_LIST[POINTER]}.make(sub_files_count)
			from
				sub_files_infos.start
			until
				sub_files_infos.exhausted
			loop
				temp_ptr:=temp_ptr.memory_alloc ({GAME_GENERAL_EXTERNAL}.c_sizeof_custom_package_file_infos)
				{GAME_GENERAL_EXTERNAL}.set_custom_package_infos_struct_file_ptr(temp_ptr,file_ptr)
				{GAME_GENERAL_EXTERNAL}.set_custom_package_infos_struct_start_offset(temp_ptr,sub_files_infos.item.pos)
				{GAME_GENERAL_EXTERNAL}.set_custom_package_infos_struct_total_size(temp_ptr,sub_files_infos.item.length)
				cpf_infos.extend (temp_ptr)
				sub_files_infos.forth
			end
			is_thread_safe:=thread_safe
			if is_thread_safe then
				create file_mutex.make
				check
					Game_Package_File_Make_Mutex_Valid: file_mutex.is_set
				end
			end

		end

feature -- Access

	is_thread_safe:BOOLEAN

feature {GAME_RESSOURCE_CPF} -- The C pointer to the file infos structure

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

feature {NONE} -- Implementation - Variables

	cpf_infos:LIST[POINTER]
	file_mutex:MUTEX

end
