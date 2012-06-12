note
	description: "Summary description for {CPF_PACKAGE_FILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CPF_PACKAGE_FILE

inherit
	DISPOSABLE

create
	make

feature {NONE} -- Initialization

	make(filename:STRING;index:INTEGER)
			-- Initialization for `Current'.
		require
			File_Make_Index_Positive: index>=0
		local
			filename_c,mode_c:C_STRING
			error:INTEGER
		do
			create filename_c.make (filename)
			create mode_c.make ("r")
			file_ptr:={CPF_EXTERNAL}.fopen(filename_c.item,mode_c.item)
			error:={CPF_EXTERNAL}.fseeko(file_ptr,0,{CPF_EXTERNAL}.SEEK_END)
			check error=0 end
			length_of_package_file:={CPF_EXTERNAL}.ftello(file_ptr)+1
			select_sub_file (0)
			process_cpf_file
			select_sub_file(index)
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
			sub_files_infos:= create {ARRAYED_LIST[TUPLE[pos,length:NATURAL_32]]}.make (nbr.to_integer_32)
			from i:=1
			until i>nbr
			loop
				read_natural_32_big_endian
				pos:=last_natural_32
				read_natural_32_big_endian
				length:=last_natural_32
				sub_files_infos.extend ([pos,length])
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
			offset:INTEGER_64
			is_found:BOOLEAN
		do
			offset:={CPF_EXTERNAL}.ftello(file_ptr)
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
			offset:INTEGER_64
		do
			offset:={CPF_EXTERNAL}.ftello(file_ptr)
			Result:=offset>=start_of_selected_file_offset and then offset<=end_of_selected_file_offset
		end

	current_offset:INTEGER_64
			-- Return the current stream offset (position) in the file.
		Require
			File_Current_Offset_Is_In_File: current_offset_is_in_selected_file
		do
			Result:={CPF_EXTERNAL}.ftello(file_ptr)-start_of_selected_file_offset
		end

	seek_from_begining(offset:INTEGER_64)
			-- Place the stream offset at `offset' position after the begining of the file.
			-- The `offset' value must be posifive.
		require
			File_Seek_From_Begining_Offset_Positive: offset>=0 and then offset<=end_of_selected_file_offset
		local
			error:INTEGER
		do
			error:={CPF_EXTERNAL}.fseeko(file_ptr,offset+start_of_selected_file_offset,{CPF_EXTERNAL}.SEEK_SET)
			check error=0 end
		ensure
			current_offset = offset
		end

	seek_from_current_offset(offset:INTEGER_64)
			-- Place the stream offset at `offset' position after (or before if `offset' is negative) the current offset.
		require
			File_Seek_From_Current_Offset_Is_In_File: current_offset_is_in_selected_file
			File_Seek_From_Current_Offset_Offset_is_Valid: (offset>=0 and then offset<=end_of_selected_file_offset-current_offset) or else (offset<0 and then offset.abs<=current_offset)
		local
			error:INTEGER
		do
			error:={CPF_EXTERNAL}.fseeko(file_ptr,offset,{CPF_EXTERNAL}.SEEK_CUR)
			check error=0 end
		ensure
			current_offset = (old current_offset)+offset
		end

	seek_from_end(offset:INTEGER_64)
			-- Place the stream offset at `offset' position before the end of the file.
			-- The `offset' value must be negative.
		require
			Custom_File_Seek_From_End_Offset_Negative: offset<=0
		local
			error:INTEGER
		do

			error:={CPF_EXTERNAL}.fseeko(file_ptr,end_of_selected_file_offset+offset,{CPF_EXTERNAL}.SEEK_SET)
			check error=0 end
		end

	start_of_selected_file_offset:INTEGER_64

	end_of_selected_file_offset:INTEGER_64
		do
			Result:=start_of_selected_file_offset+length_of_selected_file-1
		end

	length_of_selected_file:INTEGER_64

	file_index:INTEGER



feature -- Reader

	read_natural_8
		local
			temp_ptr:POINTER
			error:NATURAL
		do
			temp_ptr:=temp_ptr.memory_alloc (1)
			error:={CPF_EXTERNAL}.fread(temp_ptr,1,1,file_ptr)
			check error/=0 end
			last_natural_8:={CPF_EXTERNAL}.pointer_to_natural_8(temp_ptr)
			temp_ptr.memory_free
		end

	read_natural_16_big_endian
		local
			temp:NATURAL_16
		do
			read_natural_8
			temp:=last_natural_8.to_natural_16.bit_shift_left (8)
			read_natural_8
			last_natural_16:=last_natural_8.to_natural_16.bit_or (temp)
		end

	read_natural_32_big_endian
		local
			temp:NATURAL_32
		do
			read_natural_16_big_endian
			temp:=last_natural_16.to_natural_32.bit_shift_left (16)
			read_natural_16_big_endian
			last_natural_32:=last_natural_16.to_natural_32.bit_or (temp)
		end

	read_natural_64_big_endian
		local
			temp:NATURAL_64
		do
			read_natural_32_big_endian
			temp:=last_natural_32.to_natural_64.bit_shift_left (16)
			read_natural_32_big_endian
			last_natural_64:=last_natural_32.to_natural_64.bit_or (temp)
		end

	last_natural_8:NATURAL_8

	last_natural_16:NATURAL_16

	last_natural_32:NATURAL_32

	last_natural_64:NATURAL_64

feature -- CPF informations

	sub_files_infos:LIST[TUPLE[pos,length:NATURAL_32]]

	sub_files_count:INTEGER_32
	do
		Result:=sub_files_infos.count
	end

feature {NONE} -- Implementation - Routines

	dispose
		local
			error:INTEGER
		do
			error:={CPF_EXTERNAL}.fclose(file_ptr)
			check error=0 end
			file_ptr.set_item (create {POINTER})
		end

feature {NONE} -- Implemetntation - Variables

	file_ptr:POINTER

	length_of_package_file:INTEGER_64

invariant
	File_Stream_Ptr_Not_Null: not file_ptr.is_default_pointer



end
