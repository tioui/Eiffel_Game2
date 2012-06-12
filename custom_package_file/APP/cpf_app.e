note
	description : "tetris application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	CPF_APP

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
		local
			inc_files:ARRAYED_LIST[STRING]
		do
			if argument_count<2 or else (not argument (1).is_equal ("create") and then not argument (1).is_equal ("extract")) then
				io.put_string ("Usage: "+argument (0)+" create <dest file name> <included files>")
				io.put_new_line
				io.put_string ("       "+argument (0)+" extract <dest file name>")
				io.put_new_line
			else
				if argument (1).is_equal ("create") then
					create inc_files.make_from_array (argument_array.subarray (3, argument_count))
					create_file(argument (2),inc_files)
				elseif argument (1).is_equal ("extract") then
					extract_file(argument (2))
				end
			end
		end

	create_file(dest_file_name:STRING;inc_file_names:CHAIN[STRING])
		local
			file_list:LINKED_LIST[FILE]
			dest_file:CPF_RAW_FILE
			inc_file:RAW_FILE
			index:NATURAL_32
			error:BOOLEAN
			i:INTEGER
		do
			error:=false
			create file_list.make
			create dest_file.make (dest_file_name)
			dest_file.open_write
			if not dest_file.exists or else not dest_file.is_writable then
				io.put_string ("The file "+dest_file_name+" is not writable.")
				io.put_new_line
				error:=true
			else
				io.put_string ("Please wait...")
				io.put_new_line
				dest_file.put_string ("CPF")
				dest_file.put_natural_16_big_endian (inc_file_names.count.to_natural_16)
			end

			from
				inc_file_names.start
				index:=(8*inc_file_names.count+5).to_natural_32
			until
				inc_file_names.exhausted or else
				error
			loop
				create inc_file.make (inc_file_names.item)
				if not inc_file.exists or else not inc_file.is_readable then
					io.put_string ("The file "+inc_file_names.item+" is not readable.")
					io.put_new_line
					error:=true
				else
					inc_file.open_read
					dest_file.put_natural_32_big_endian (index)
					dest_file.put_natural_32_big_endian (inc_file.count.to_natural_32)
					index:=index+inc_file.count.to_natural_32
					file_list.extend (inc_file)
				end
				inc_file_names.forth
			end
			if not error then
				i:=1
				from file_list.start
				until file_list.exhausted
				loop
					io.put_string ("Packaging ("+i.out+"/"+inc_file_names.count.out+") : "+inc_file_names.at (i))
					io.put_new_line
					from file_list.item.start
					until file_list.item.end_of_file
					loop
						file_list.item.read_natural_8
						if not file_list.item.end_of_file then
							dest_file.put_natural_8 (file_list.item.last_natural_8)
						end
					end
					file_list.forth
					i:=i+1
				end
			end
			dest_file.flush
		end

	extract_file(dest_file_name:STRING)
		local
			src_file:CPF_PACKAGE_FILE
			src_file_valid:RAW_FILE
			inc_file:RAW_FILE
			i,j:INTEGER
			error:BOOLEAN
		do
			create src_file_valid.make (dest_file_name)
			if not src_file_valid.exists or else not src_file_valid.is_readable then
				io.put_string ("The file "+dest_file_name+" is not readable.")
				io.put_new_line
			else
				io.put_string ("Please wait...")
				io.put_new_line
				create src_file.make (dest_file_name, 0)
				from i:=1
				until i>src_file.sub_files_count or else error
				loop
					io.put_string ("Extracting file ("+i.out+"/"+src_file.sub_files_count.out+")")
					io.put_new_line
					src_file.select_sub_file (i)
					create inc_file.make_open_write ("File"+i.out)
					if not inc_file.exists or else not inc_file.is_writable then
						io.put_string ("Cannot create File"+i.out+".")
						io.put_new_line
						error:=true
					end
					from
						j:=1
					until
						error or else
						j>src_file.length_of_selected_file
					loop
						src_file.read_natural_8
						inc_file.put_natural_8 (src_file.last_natural_8)
						j:=j+1
					end
					i:=i+1
				end
			end

		end

	extract_file1(dest_file_name:STRING)
		local
			src_file:CPF_RAW_FILE
			inc_file:RAW_FILE
			error:BOOLEAN
			nbr:NATURAL_16
			position,length:NATURAL_32
			infos:ARRAYED_LIST[TUPLE[position,length:NATURAL_32]]
			i,j:INTEGER
		do
			create src_file.make (dest_file_name)
			if not src_file.exists or else not src_file.is_readable then
				io.put_string ("The file "+dest_file_name+" is not readable.")
				io.put_new_line
			else
				src_file.open_read
				src_file.read_stream (3)
				if not src_file.last_string.is_equal ("CPF") then
					io.put_string ("The file "+dest_file_name+" is not a valid game custom package.")
					io.put_new_line
				else
					io.put_string ("Please wait...")
					io.put_new_line
					src_file.read_natural_16_big_endian
					nbr:=src_file.last_natural_16
					create infos.make (nbr.to_integer_32)
					from i:=1
					until i>nbr
					loop
						src_file.read_natural_32_big_endian
						position:=src_file.last_natural_32
						src_file.read_natural_32_big_endian
						length:=src_file.last_natural_32
						infos.extend ([position,length])
						i:=i+1
					end

					from
						i:=1
						infos.start
						error:=false
					until
						error or else
						infos.exhausted
					loop
						io.put_string ("Extracting file ("+i.out+"/"+nbr.out+")")
						io.put_new_line
						src_file.go (infos.item.position.to_integer_32)
						create inc_file.make_open_write ("File"+i.out)
						if not inc_file.exists or else not inc_file.is_writable then
							io.put_string ("Cannot create File"+i.out+".")
							io.put_new_line
							error:=true
						end
						from
							j:=1
						until
							error or else
							j>infos.item.length.to_integer_32 or else
							src_file.end_of_file
						loop
							src_file.read_natural_8
							if not src_file.end_of_file then
								inc_file.put_natural_8 (src_file.last_natural_8)
							end
							j:=j+1
						end
						infos.forth
						i:=i+1
					end
				end

			end


		end

end
