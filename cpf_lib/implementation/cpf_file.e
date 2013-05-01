note
	description: "Represent a file. With this, you can read information from a file"
	author: "Louis Marchand"
	date: "april 30, 2013"
	revision: "1.0.0.0"

class
	CPF_FILE

inherit
	DISPOSABLE

create
	make

feature {NONE} -- Initialization

	make(a_filename:STRING)
			-- Initialization for `Current'.
		local
			l_filename_c,l_mode_c:C_STRING
		do
			create l_filename_c.make (a_filename)
			create l_mode_c.make ("rb")
			file_ptr:={CPF_EXTERNAL}.fopen(l_filename_c.item,l_mode_c.item)
			read_ptr:=read_ptr.memory_alloc (1)
		end

feature -- Access

	current_offset:INTEGER
			-- Current position on the file.
		do
			Result:={CPF_EXTERNAL}.ftell(file_ptr)
		end

	seek_from_begining(a_offset:INTEGER)
			-- Place the stream offset at `a_offset' position after the begining of the file.
			-- The `a_offset' value must be posifive.
		require
			File_Seek_From_Begining_Offset_Positive: a_offset>=0
		local
			l_error:INTEGER
		do
			l_error:={CPF_EXTERNAL}.fseek(file_ptr,a_offset,{CPF_EXTERNAL}.SEEK_SET)
			check l_error=0 end
		ensure
			current_offset = a_offset
		end

	seek_from_current_offset(a_offset:INTEGER)
			-- Place the stream offset at `a_offset' position after (or before if `a_offset' is negative) the current offset.
		local
			l_error:INTEGER
		do
			l_error:={CPF_EXTERNAL}.fseek(file_ptr,a_offset,{CPF_EXTERNAL}.SEEK_CUR)
			check l_error=0 end
		ensure
			current_offset = (old current_offset)+a_offset
		end

	seek_from_end(a_offset:INTEGER)
			-- Place the stream offset at `a_offset' position before the end of the file.
			-- The `a_offset' value must be negative.
		require
			Custom_File_Seek_From_End_Offset_Negative: a_offset<=0
		local
			l_error:INTEGER
		do
			l_error:={CPF_EXTERNAL}.fseek(file_ptr,a_offset,{CPF_EXTERNAL}.SEEK_END)
			check l_error=0 end
		end

	read(a_buffer:POINTER;a_byte_per_sample,a_count:NATURAL_32)
			-- Read `a_count' sample of `a_byte_per_sample' bytes in the file and put it in `a_buffer'.
		require
			Read_Buffer_Not_Void:not a_buffer.is_default_pointer
		do
			last_read_size:={CPF_EXTERNAL}.fread(a_buffer,a_byte_per_sample,a_count,file_ptr)
		end

	last_read_size:NATURAL_32
			-- The number of sample that as been read by the last call to `read' routine.

	read_natural_8
			-- Read the next 8-bit natural in the file.
			-- Make the result available in `last_natural_8'.
		do
			read(read_ptr,1,1)
			check last_read_size/=0 end
			last_natural_8:={CPF_EXTERNAL}.pointer_to_natural_8(read_ptr)
		end

	read_natural_16_big_endian
			-- Read the next 16-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_16'.
		local
			l_temp:NATURAL_16
		do
			read_natural_8
			l_temp:=last_natural_8.to_natural_16.bit_shift_left (8)
			read_natural_8
			last_natural_16:=last_natural_8.to_natural_16.bit_or (l_temp)
		end

	read_natural_32_big_endian
			-- Read the next 32-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_32'.
		local
			l_temp:NATURAL_32
		do
			read_natural_16_big_endian
			l_temp:=last_natural_16.to_natural_32.bit_shift_left (16)
			read_natural_16_big_endian
			last_natural_32:=last_natural_16.to_natural_32.bit_or (l_temp)
		end

	read_natural_64_big_endian
			-- Read the next 64-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_64'.
		local
			l_temp:NATURAL_64
		do
			read_natural_32_big_endian
			l_temp:=last_natural_32.to_natural_64.bit_shift_left (16)
			read_natural_32_big_endian
			last_natural_64:=last_natural_32.to_natural_64.bit_or (l_temp)
		end

	read_natural_16_little_endian
			-- Read the next 16-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_16'.
		local
			l_temp:NATURAL_16
		do
			read_natural_8
			l_temp:=last_natural_8.to_natural_16
			read_natural_8
			last_natural_16:=l_temp.bit_or (last_natural_8.to_natural_16.bit_shift_left (8))
		end

	read_natural_32_little_endian
			-- Read the next 32-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_32'.
		local
			l_temp:NATURAL_32
		do
			read_natural_16_little_endian
			l_temp:=last_natural_16.to_natural_32
			read_natural_16_little_endian
			last_natural_32:=l_temp.bit_or (last_natural_16.to_natural_32.bit_shift_left (16))
		end

	read_natural_64_little_endian
			-- Read the next 64-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_64'.
		local
			l_temp:NATURAL_64
		do
			read_natural_32_little_endian
			l_temp:=last_natural_32.to_natural_64
			read_natural_32_little_endian
			last_natural_64:=l_temp.bit_or (last_natural_32.to_natural_64.bit_shift_left (16))
		end

	last_natural_8:NATURAL_8

	last_natural_16:NATURAL_16

	last_natural_32:NATURAL_32

	last_natural_64:NATURAL_64

feature {NONE} -- Implementation - Routines

	dispose
		local
			l_error:INTEGER
		do
			l_error:={CPF_EXTERNAL}.fclose(file_ptr)
			check l_error=0 end
			file_ptr.set_item (create {POINTER})
		end

feature {NONE} -- Implementation - Variable

	file_ptr:POINTER

	read_ptr:POINTER

invariant
	CPF_File_Ptr_Not_Null: not file_ptr.is_default_pointer

end
