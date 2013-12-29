note
	description: "Represent a file. With this, you can read information from a file"
	author: "Louis Marchand"
	date: "april 30, 2013"
	revision: "1.0.0.0"
	todo: "can_read_16, can_read_32, can_read_64"

class
	GAME_FILE

inherit
	FILE
	rename
		make as make_obsolete,
		index as position,
		make_with_name as make
	redefine
		make
	end

create
	make

feature {NONE} -- Implementation

	make(a_name: READABLE_STRING_GENERAL)
			-- <Precursor>
		do
			Precursor(a_name)
			create internal_mutex.make
		end

feature -- Access

	can_read_16:BOOLEAN
			-- There is another 16 bits in the stream to read.
		require
			File_Readable:is_readable
		do
			Result:=count-position>1
		end

	can_read_32:BOOLEAN
			-- There is another 16 bits in the stream to read.
		require
			File_Readable:is_readable
		do
			Result:=count-position>3
		end

	can_read_64:BOOLEAN
			-- There is another 16 bits in the stream to read.
		require
			File_Readable:is_readable
		do
			Result:=count-position>7
		end

	read_natural_8
		do
			read_to_managed_pointer (integer_buffer, 0, 1)
			last_natural_8 := integer_buffer.read_natural_8 (0)
		end

	read_natural_16_big_endian
			-- Read the next 16-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_16'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_16
		do
			read_natural_8
			l_temp:=last_natural_8.to_natural_16.bit_shift_left (8)
			read_natural_8
			last_natural_16:=last_natural_8.to_natural_16.bit_or (l_temp)
		end

	read_natural_16
		do
			read_natural_16_big_endian
		end

	read_natural_32_big_endian
			-- Read the next 32-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_32'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_32
		do
			read_natural_16_big_endian
			l_temp:=last_natural_16.to_natural_32.bit_shift_left (16)
			read_natural_16_big_endian
			last_natural:=last_natural_16.to_natural_32.bit_or (l_temp)
		end

	read_natural_32
		do
			read_natural_32_big_endian
		end

	read_natural
		do
			read_natural_32_big_endian
		end

	read_natural_64_big_endian
			-- Read the next 64-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_64'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_64
		do
			read_natural_32_big_endian
			l_temp:=last_natural_32.to_natural_64.bit_shift_left (16)
			read_natural_32_big_endian
			last_natural_64:=last_natural_32.to_natural_64.bit_or (l_temp)
		end

	read_natural_64
		do
			read_natural_64_big_endian
		end

	read_natural_16_little_endian
			-- Read the next 16-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_16'.
		require
			File_Readable:is_readable
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
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_32
		do
			read_natural_16_little_endian
			l_temp:=last_natural_16.to_natural_32
			read_natural_16_little_endian
			last_natural:=l_temp.bit_or (last_natural_16.to_natural_32.bit_shift_left (16))
		end

	read_natural_64_little_endian
			-- Read the next 64-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_64'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_64
		do
			read_natural_32_little_endian
			l_temp:=last_natural_32.to_natural_64
			read_natural_32_little_endian
			last_natural_64:=l_temp.bit_or (last_natural_32.to_natural_64.bit_shift_left (16))
		end

	readreal
		do
			read_real
		end

	readdouble
		do
			read_double
		end

	readint
		do
			read_integer
		end

	support_storable: BOOLEAN
		do
			Result:=false
		end

	read_real
		do
			read_natural_32
			last_real:={SHARED_EXTERNAL}.natural_32_to_real_32(last_natural_32)
		end

	read_double
		do
			read_natural_64
			last_double:={SHARED_EXTERNAL}.natural_64_to_real_64(last_natural_64)
		end

	read_integer
		do
			read_integer_32
		end

	read_integer_8
		do
			read_natural_8
			last_integer_8:=last_natural_8.as_integer_8
		end

	read_integer_16
		do
			read_natural_16
			last_integer_16:=last_natural_16.as_integer_16
		end

	read_integer_32
		do
			read_natural_32
			last_integer:=last_natural_32.as_integer_32
		end

	read_integer_64
		do
			read_natural_64
			last_integer_64:=last_natural_64.as_integer_64
		end

	putint(i:INTEGER_32)
		do
			put_integer(i)
		end

	putbool(b:BOOLEAN)
		do
			put_boolean(b)
		end

	putreal(r:REAL_32)
		do
			put_real(r)
		end

	putdouble(d:REAL_64)
		do
			put_double(d)
		end

	read_to_string (a_string: STRING_8; a_pos, a_nb: INTEGER_32): INTEGER_32
		do
			Result := file_gss (file_pointer, a_string.area.item_address (a_pos - 1), a_nb)
			a_string.set_internal_hash_code (0)
		end

	read_to_pointer (a_pointer: POINTER; a_start_pos, a_nb_bytes: INTEGER_32)
			-- Read at most `a_nb_bytes' bound bytes and make result
			-- available in `a_pointer' at position `a_start_pos'.
		require
			a_pointer_not_null: not a_pointer.is_default_pointer
			nb_bytes_non_negative: a_nb_bytes >= 0
			is_readable: readable
		do
			bytes_read := file_gss (file_pointer, a_pointer + a_start_pos, a_nb_bytes)

		ensure
			bytes_read_non_negative: bytes_read >= 0
			bytes_read_not_too_big: bytes_read <= a_nb_bytes
		end


	put_natural_16_big_endian(value:NATURAL_16)
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_16_big_endian(value)
			unlock_mutex
		end

	put_natural_16_little_endian(value:NATURAL_16)
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_16_little_endian(value)
			unlock_mutex
		end

	put_natural_32_big_endian(value:NATURAL_32)
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_32_big_endian(value)
			unlock_mutex
		end

	put_natural_32_little_endian(value:NATURAL_32)
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_32_little_endian(value)
			unlock_mutex
		end

	put_natural_64_big_endian(value:NATURAL_64)
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_32_big_endian(value.bit_shift_right (32).to_natural_32)
			internal_put_natural_32_big_endian(value.bit_and (0xFFFFFFFF).to_natural_32)
			unlock_mutex
		end

	put_natural_64_little_endian(value:NATURAL_64)
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_32_little_endian(value.bit_and (0xFFFFFFFF).to_natural_32)
			internal_put_natural_32_little_endian(value.bit_shift_right (32).to_natural_32)
			unlock_mutex
		end

	put_natural_8 (i: NATURAL_8)
		do
			integer_buffer.put_natural_8 (i, 0)
			put_managed_pointer (integer_buffer, 0, 1)
		end

	put_natural_16(i:NATURAL_16)
		do
			put_natural_16_big_endian (i)
		end

	put_natural_32(i:NATURAL_32)
		do
			put_natural_32_big_endian (i)
		end

	put_natural(i:NATURAL_32)
		do
			put_natural_32(i)
		end

	put_natural_64(i:NATURAL_64)
		do
			put_natural_64_big_endian (i)
		end

	put_integer(i:INTEGER_32)
		do
			put_integer_32 (i)
		end

	put_integer_8(i:INTEGER_8)
		do
			put_natural_8 (i.as_natural_8)
		end

	put_integer_16(i:INTEGER_16)
		do
			put_natural_16 (i.as_natural_16)
		end

	put_integer_32(i:INTEGER_32)
		do
			put_natural_32 (i.as_natural_32)
		end

	put_integer_64(i:INTEGER_64)
		do
			put_natural_64 (i.as_natural_64)
		end

	put_boolean (b: BOOLEAN)
		do
			if b then
				put_character ('%/1/')
			else
				put_character ('%U')
			end
		end

	put_real(r:REAL_32)
		do
			put_natural_32 ({SHARED_EXTERNAL}.real_32_to_natural_32(r))
		end

	put_double(d:REAL_64)
		do
			put_natural_64 ({SHARED_EXTERNAL}.real_64_to_natural_64(d))
		end

feature {GAME_RESSOURCE_MANAGER} -- Access

	is_thread_safe:BOOLEAN

	enable_thread_safe
		do
			is_thread_safe:=true
		end

	disable_thread_safe
		do
			is_thread_safe:=true
		end

	internal_mutex:MUTEX

	lock_mutex
			-- Lock the internal mutex to prevent multiple access to the package file
		do
			if is_thread_safe then
				internal_mutex.lock
			end

		end

	unlock_mutex
			-- Unlock the internal mutex
		do
			if is_thread_safe then
				internal_mutex.unlock
			end
		end

feature {NONE} -- Implementation

	integer_buffer: MANAGED_POINTER
			-- Buffer used to read INTEGER_64, INTEGER_16, INTEGER_8
		local
			r: detachable MANAGED_POINTER
		do
			r := internal_integer_buffer
			if r = Void then
				create r.make (16)
				internal_integer_buffer := r
			end
			Result := r
		end

	internal_integer_buffer: detachable MANAGED_POINTER
			-- Internal integer buffer

	internal_put_natural_16_big_endian(value:NATURAL_16)
		require
			extendible: extendible
		do
			put_natural_8 (value.bit_shift_right (8).to_natural_8)
			put_natural_8 (value.bit_and (0xFF).to_natural_8)
		end

	internal_put_natural_16_little_endian(value:NATURAL_16)
		require
			extendible: extendible
		do
			put_natural_8 (value.bit_and (0xFF).to_natural_8)
			put_natural_8 (value.bit_shift_right (8).to_natural_8)
		end

	internal_put_natural_32_big_endian(value:NATURAL_32)
		require
			extendible: extendible
		do
			internal_put_natural_16_big_endian(value.bit_shift_right (16).to_natural_16)
			internal_put_natural_16_big_endian(value.bit_and (0xFFFF).to_natural_16)
		end

	internal_put_natural_32_little_endian(value:NATURAL_32)
		require
			extendible: extendible
		do
			internal_put_natural_16_little_endian(value.bit_and (0xFFFF).to_natural_16)
			internal_put_natural_16_little_endian(value.bit_shift_right (16).to_natural_16)
		end

invariant
	File_Ptr_Not_Null: not (is_closed xor file_pointer.is_default_pointer)

end
