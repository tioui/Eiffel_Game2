note
	description : "Application to encapsulate CPF file"
	date        : "Tue, 03 Nov 2020 23:21:20 +0000"
	revision    : "2.1"

class
	CPF_APP

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
		local
			l_inc_files:ARRAYED_LIST[READABLE_STRING_GENERAL]
			l_exceptions:EXCEPTIONS
		do
			has_error:=False
			if argument_count<2 or else (not argument (1).is_equal ("create") and then not argument (1).is_equal ("extract")) then
				io.error.put_string ("Usage: "+argument (0)+" create <dest file name> <included files>")
				io.error.put_new_line
				io.error.put_string ("       "+argument (0)+" extract <dest file name>")
				io.error.put_new_line;
				has_error:=True
			else
				if argument (1).is_equal ("create") then
					create l_inc_files.make_from_array (argument_array.subarray (3, argument_count))
					create_file(argument (2),l_inc_files)
				elseif argument (1).is_equal ("extract") then
					extract_file(argument (2))
				end
			end
			if has_error then
				create l_exceptions
				l_exceptions.die (1)
			end
		end

	create_file(a_dest_file_name:READABLE_STRING_GENERAL;a_inc_file_names:CHAIN[READABLE_STRING_GENERAL])
		local
			l_file_list:LINKED_LIST[FILE]
			l_dest_file:GAME_FILE
			l_inc_file:RAW_FILE
			l_index:NATURAL_32
			i:INTEGER
		do
			create l_file_list.make
			create l_dest_file.make_with_name (a_dest_file_name)
			if l_dest_file.path_exists then
				l_dest_file.delete
			end
			l_dest_file.create_read_write
			io.put_string ("Please wait...")
			io.put_new_line
			l_dest_file.put_string ("CPF")
			l_dest_file.put_natural_16_big_endian (a_inc_file_names.count.to_natural_16)

			from
				a_inc_file_names.start
				l_index:=(8*a_inc_file_names.count+5).to_natural_32
			until
				a_inc_file_names.exhausted or else
				has_error
			loop
				create l_inc_file.make_with_name (a_inc_file_names.item)
				if not l_inc_file.exists or else not l_inc_file.is_readable then
					io.error.put_string ("The file "+a_inc_file_names.item.to_string_8+" is not readable.")
					io.error.put_new_line
					l_dest_file.delete
					has_error:=true
				else
					l_inc_file.open_read
					l_dest_file.put_natural_32_big_endian (l_index)
					l_dest_file.put_natural_32_big_endian (l_inc_file.count.to_natural_32)
					l_index:=l_index+l_inc_file.count.to_natural_32
					l_file_list.extend (l_inc_file)
				end
				a_inc_file_names.forth
			end
			if not has_error then
				i:=1
				from l_file_list.start
				until l_file_list.exhausted
				loop
					io.put_string ("Packaging ("+i.out+"/"+a_inc_file_names.count.out+") : "+a_inc_file_names.at (i).to_string_8)
					io.put_new_line
					from l_file_list.item.start
					until l_file_list.item.end_of_file
					loop
						l_file_list.item.read_natural_8
						if not l_file_list.item.end_of_file then
							l_dest_file.put_natural_8 (l_file_list.item.last_natural_8)
						end
					end
					l_file_list.forth
					i:=i+1
				end
			end
			l_dest_file.flush
		end

	extract_file(a_package_file_name:READABLE_STRING_GENERAL)
		local
			l_src_file:CPF_PACKAGE_FILE
			l_inc_file:RAW_FILE
			i,j:INTEGER
		do
			create l_src_file.make (a_package_file_name)
			if not l_src_file.exists or else not l_src_file.is_readable then
				io.error.put_string ("The file "+a_package_file_name.to_string_8+" is not readable.")
				io.error.put_new_line
				has_error:=True
			else
				io.put_string ("Please wait...")
				io.put_new_line
				l_src_file.open
				if l_src_file.is_valid then
					from i:=1
					until i>l_src_file.sub_files_count or else has_error
					loop
						io.put_string ("Extracting file ("+i.out+"/"+l_src_file.sub_files_count.out+")")
						io.put_new_line
						l_src_file.select_sub_file (i)
						create l_inc_file.make_open_write ("File"+i.out)
						if not l_inc_file.exists or else not l_inc_file.is_writable then
							io.error.put_string ("Cannot create File"+i.out+".")
							io.error.put_new_line
							has_error:=True
						end
						from
							j:=1
						until
							has_error or else
							j>l_src_file.current_sub_file_count
						loop
							l_src_file.read_natural_8
							l_inc_file.put_natural_8 (l_src_file.last_natural_8)
							j:=j+1
						end
						i:=i+1
					end
				else
					io.error.put_string ("The file " + a_package_file_name.to_string_8 + " is not a valid package file.")
					io.error.put_new_line
					has_error:=True
				end
			end
		end

	has_error:BOOLEAN

end
