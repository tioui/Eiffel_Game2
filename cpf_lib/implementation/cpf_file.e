note
	description: "Represent a file. With this, you can read information from a file"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CPF_FILE

inherit
	DISPOSABLE

create
	make

feature {NONE} -- Initialization

	make(filename:STRING)
			-- Initialization for `Current'.
		local
			filename_c,mode_c:C_STRING
		do
			create filename_c.make (filename)
			create mode_c.make ("rb")
			file_ptr:={CPF_EXTERNAL}.fopen(filename_c.item,mode_c.item)
			read_ptr:=read_ptr.memory_alloc (1)
		end

feature -- Access

	current_offset:INTEGER
		do
			Result:={CPF_EXTERNAL}.ftell(file_ptr)
		end

	seek_from_begining(offset:INTEGER)
			-- Place the stream offset at `offset' position after the begining of the file.
			-- The `offset' value must be posifive.
		require
			File_Seek_From_Begining_Offset_Positive: offset>=0
		local
			error:INTEGER
		do
			error:={CPF_EXTERNAL}.fseek(file_ptr,offset,{CPF_EXTERNAL}.SEEK_SET)
			check error=0 end
		ensure
			current_offset = offset
		end

	seek_from_current_offset(offset:INTEGER)
			-- Place the stream offset at `offset' position after (or before if `offset' is negative) the current offset.
		local
			error:INTEGER
		do
			error:={CPF_EXTERNAL}.fseek(file_ptr,offset,{CPF_EXTERNAL}.SEEK_CUR)
			check error=0 end
		ensure
			current_offset = (old current_offset)+offset
		end

	seek_from_end(offset:INTEGER)
			-- Place the stream offset at `offset' position before the end of the file.
			-- The `offset' value must be negative.
		require
			Custom_File_Seek_From_End_Offset_Negative: offset<=0
		local
			error:INTEGER
		do

			error:={CPF_EXTERNAL}.fseek(file_ptr,offset,{CPF_EXTERNAL}.SEEK_END)
			check error=0 end
		end

	read(buffer:POINTER;byte_per_sample,count:NATURAL_32)
		require
			Read_Buffer_Not_Void:not buffer.is_default_pointer
		do
			last_read_size:={CPF_EXTERNAL}.fread(buffer,byte_per_sample,count,file_ptr)
		end

	last_read_size:NATURAL_32

	read_natural_8
		do
			read(read_ptr,1,1)
			check last_read_size/=0 end
			last_natural_8:={CPF_EXTERNAL}.pointer_to_natural_8(read_ptr)
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

	read_natural_16_little_endian
		local
			temp:NATURAL_16
		do
			read_natural_8
			temp:=last_natural_8.to_natural_16
			read_natural_8
			last_natural_16:=temp.bit_or (last_natural_8.to_natural_16.bit_shift_left (8))
		end

	read_natural_32_little_endian
		local
			temp:NATURAL_32
		do
			read_natural_16_little_endian
			temp:=last_natural_16.to_natural_32
			read_natural_16_little_endian
			last_natural_32:=temp.bit_or (last_natural_16.to_natural_32.bit_shift_left (16))
		end

	read_natural_64_little_endian
		local
			temp:NATURAL_64
		do
			read_natural_32_little_endian
			temp:=last_natural_32.to_natural_64
			read_natural_32_little_endian
			last_natural_64:=temp.bit_or (last_natural_32.to_natural_64.bit_shift_left (16))
		end

	last_natural_8:NATURAL_8

	last_natural_16:NATURAL_16

	last_natural_32:NATURAL_32

	last_natural_64:NATURAL_64

feature {NONE} -- Implementation - Routines

	dispose
		local
			error:INTEGER
		do
			error:={CPF_EXTERNAL}.fclose(file_ptr)
			check error=0 end
			file_ptr.set_item (create {POINTER})
		end

feature {NONE} -- Implementation - Variable

	file_ptr:POINTER

	read_ptr:POINTER

invariant
	CPF_File_Ptr_Not_Null: not file_ptr.is_default_pointer

end
