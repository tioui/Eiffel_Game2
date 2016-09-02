note
	description: "Represent a file. With this, you can read information from a file"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 04:11:03 +0000"
	revision: "2.0"
	todo: "can_read_16, can_read_32, can_read_64"

class
	GAME_FILE

inherit
	RAW_FILE
	redefine
		make_with_name, make_with_path
	end

create
	make_with_name,
	make_with_path,
	make_open_read,
	make_open_write,
	make_open_append,
	make_open_read_write,
	make_create_read_write,
	make_open_read_append

feature {NONE} -- Implementation

	make_with_name(a_name: READABLE_STRING_GENERAL)
			-- <Precursor>
		do
			Precursor(a_name)
			create internal_mutex.make
		end

	make_with_path (a_path: PATH)
			-- <Precursor>
		do
			Precursor(a_path)
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

	read_natural_16_big_endian
			-- Read the next 16-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_16'.
		require
			File_Readable:is_readable
			Can_Read: can_read_16
		do
			lock_mutex
			internal_read_natural_16_big_endian
			unlock_mutex
		end

	read_natural_32_big_endian, read_natural_big_endian
			-- Read the next 32-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_32'.
		require
			File_Readable:is_readable
			Can_Read: can_read_32
		do
			lock_mutex
			internal_read_natural_32_big_endian
			unlock_mutex
		end

	read_natural_64_big_endian
			-- Read the next 64-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_64'.
		require
			File_Readable:is_readable
			Can_Read: can_read_64
		do
			lock_mutex
			internal_read_natural_64_big_endian
			unlock_mutex
		end

	read_natural_16_little_endian
			-- Read the next 16-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_16'.
		require
			File_Readable:is_readable
			Can_Read: can_read_16
		do
			lock_mutex
			internal_read_natural_16_little_endian
			unlock_mutex
		end

	read_natural_32_little_endian, read_natural_little_endian
			-- Read the next 32-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_32'.
		require
			File_Readable:is_readable
			Can_Read: can_read_32
		do
			lock_mutex
			internal_read_natural_32_little_endian
			unlock_mutex
		end

	read_natural_64_little_endian
			-- Read the next 64-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_64'.
		require
			File_Readable:is_readable
			Can_Read: can_read_64
		do
			lock_mutex
			internal_read_natural_64_little_endian
			unlock_mutex
		end

	read_real_big_endian, readreal_big_endian
			-- Read a new real (Reading in Big-Endian order).
			-- Make result available in last_real.
		require
			File_Readable:is_readable
			Can_Read: can_read_32
		local
			l_old_natural:NATURAL_32
		do
			lock_mutex
			l_old_natural := last_natural
			internal_read_natural_32_big_endian
			last_real:={SHARED_EXTERNAL}.natural_32_to_real_32(last_natural_32)
			last_natural := l_old_natural
			unlock_mutex
		end

	read_double_big_endian, readdouble_big_endian
			-- Read a new double (Reading in Big-Endian order).
			-- Make result available in last_double.
		require
			File_Readable:is_readable
			Can_Read: can_read_64
		local
			l_old_natural_64:NATURAL_64
		do
			lock_mutex
			l_old_natural_64 := last_natural_64
			internal_read_natural_64_big_endian
			last_double:={SHARED_EXTERNAL}.natural_64_to_real_64(last_natural_64)
			last_natural_64 := l_old_natural_64
			unlock_mutex
		end

	read_real_little_endian, readreal_little_endian
			-- Read a new real (Reading in Little-Endian order).
			-- Make result available in last_real.
		require
			File_Readable:is_readable
			Can_Read: can_read_32
		local
			l_old_natural:NATURAL_32
		do
			lock_mutex
			l_old_natural := last_natural
			internal_read_natural_32_little_endian
			last_real:={SHARED_EXTERNAL}.natural_32_to_real_32(last_natural_32)
			last_natural := l_old_natural
			unlock_mutex
		end

	read_double_little_endian, readdouble_little_endian
			-- Read a new double (Reading in Little-Endian order).
			-- Make result available in last_double.
		require
			File_Readable:is_readable
			Can_Read: can_read_64
		local
			l_old_natural_64:NATURAL_64
		do
			lock_mutex
			l_old_natural_64 := last_natural_64
			internal_read_natural_64_little_endian
			last_double:={SHARED_EXTERNAL}.natural_64_to_real_64(last_natural_64)
			last_natural_64 := l_old_natural_64
			unlock_mutex
		end

	read_integer_16_big_endian
			-- Read a new 16-bit integer (Reading in Big-Endian order).
			-- Make result available in last_integer_16.
		require
			File_Readable:is_readable
			Can_Read: can_read_16
		local
			l_old_natural_16:NATURAL_16
		do
			lock_mutex
			l_old_natural_16 := last_natural_16
			internal_read_natural_16_big_endian
			last_integer_16:=last_natural_16.as_integer_16
			last_natural_16 := l_old_natural_16
			unlock_mutex
		end

	read_integer_32_big_endian, read_integer_big_endian
			-- Read a new 32-bit integer (Reading in Big-Endian order).
			-- Make result available in last_integer_32.
		require
			File_Readable:is_readable
			Can_Read: can_read_32
		local
			l_old_natural:NATURAL_32
		do
			lock_mutex
			l_old_natural := last_natural
			internal_read_natural_32_big_endian
			last_integer:=last_natural_32.as_integer_32
			last_natural := l_old_natural
			unlock_mutex
		end

	read_integer_64_big_endian
			-- Read a new 64-bit integer (Reading in Big-Endian order).
			-- Make result available in last_integer_64.
		require
			File_Readable:is_readable
			Can_Read: can_read_64
		local
			l_old_natural_64:NATURAL_64
		do
			lock_mutex
			l_old_natural_64 := last_natural_64
			internal_read_natural_64_big_endian
			last_integer_64:=last_natural_64.as_integer_64
			last_natural_64 := l_old_natural_64
			unlock_mutex
		end

	read_integer_16_little_endian
			-- Read a new 16-bit integer (Reading in Little-Endian order).
			-- Make result available in last_integer_16.
		require
			File_Readable:is_readable
			Can_Read: can_read_16
		local
			l_old_natural_16:NATURAL_16
		do
			lock_mutex
			l_old_natural_16 := last_natural_16
			internal_read_natural_16_little_endian
			last_integer_16:=last_natural_16.as_integer_16
			last_natural_16 := l_old_natural_16
			unlock_mutex
		end

	read_integer_32_little_endian, read_integer_little_endian
			-- Read a new 32-bit integer (Reading in Little-Endian order).
			-- Make result available in last_integer_32.
		require
			File_Readable:is_readable
			Can_Read: can_read_32
		local
			l_old_natural:NATURAL_32
		do
			lock_mutex
			l_old_natural := last_natural
			internal_read_natural_32_little_endian
			last_integer:=last_natural_32.as_integer_32
			last_natural := l_old_natural
			unlock_mutex
		end

	read_integer_64_little_endian
			-- Read a new 64-bit integer (Reading in Little-Endian order).
			-- Make result available in last_integer_64.
		require
			File_Readable:is_readable
			Can_Read: can_read_64
		local
			l_old_natural_64:NATURAL_64
		do
			lock_mutex
			l_old_natural_64 := last_natural_64
			internal_read_natural_64_little_endian
			last_integer_64:=last_natural_64.as_integer_64
			last_natural_64 := l_old_natural_64
			unlock_mutex
		end

	put_natural_16_big_endian(a_value:NATURAL_16)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_16_big_endian(a_value)
			unlock_mutex
		end

	put_natural_16_little_endian(a_value:NATURAL_16)
			-- Write `a_value' at current position (Writing in Little-Endian order).
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_16_little_endian(a_value)
			unlock_mutex
		end

	put_natural_32_big_endian(a_value:NATURAL_32)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_32_big_endian(a_value)
			unlock_mutex
		end

	put_natural_32_little_endian(a_value:NATURAL_32)
			-- Write `a_value' at current position (Writing in Little-Endian order).
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_32_little_endian(a_value)
			unlock_mutex
		end

	put_natural_64_big_endian(a_value:NATURAL_64)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_32_big_endian(a_value.bit_shift_right (32).to_natural_32)
			internal_put_natural_32_big_endian(a_value.bit_and (0xFFFFFFFF).to_natural_32)
			unlock_mutex
		end

	put_natural_64_little_endian(a_value:NATURAL_64)
			-- Write `a_value' at current position (Writing in Little-Endian order).
		require
			extendible: extendible
		do
			lock_mutex
			internal_put_natural_32_little_endian(a_value.bit_and (0xFFFFFFFF).to_natural_32)
			internal_put_natural_32_little_endian(a_value.bit_shift_right (32).to_natural_32)
			unlock_mutex
		end

	put_integer_16_big_endian(a_value:INTEGER_16)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		do
			put_natural_16_big_endian (a_value.as_natural_16)
		end

	put_integer_32_big_endian, put_integer_big_endian, putint_big_endian(a_value:INTEGER_32)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		do
			put_natural_32_big_endian (a_value.as_natural_32)
		end

	put_integer_64_big_endian(a_value:INTEGER_64)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		do
			put_natural_64_big_endian (a_value.as_natural_64)
		end

	put_real_big_endian, putreal_big_endian(a_value:REAL_32)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		do
			put_natural_32_big_endian ({SHARED_EXTERNAL}.real_32_to_natural_32(a_value))
		end

	put_double_big_endian, putdouble_big_endian(a_value:REAL_64)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		do
			put_natural_64_big_endian ({SHARED_EXTERNAL}.real_64_to_natural_64(a_value))
		end

	put_integer_16_little_endian(a_value:INTEGER_16)
			-- Write `a_value' at current position (Writing in little-Endian order).
		do
			put_natural_16_little_endian (a_value.as_natural_16)
		end

	put_integer_32_little_endian, put_integer_little_endian, putint_little_endian(a_value:INTEGER_32)
			-- Write `a_value' at current position (Writing in little-Endian order).
		do
			put_natural_32_little_endian (a_value.as_natural_32)
		end

	put_integer_64_little_endian(a_value:INTEGER_64)
			-- Write `a_value' at current position (Writing in little-Endian order).
		do
			put_natural_64_little_endian (a_value.as_natural_64)
		end

	put_real_little_endian, putreal_little_endian(a_value:REAL_32)
			-- Write `a_value' at current position (Writing in little-Endian order).
		do
			put_natural_32_little_endian ({SHARED_EXTERNAL}.real_32_to_natural_32(a_value))
		end

	put_double_little_endian, putdouble_little_endian(a_value:REAL_64)
			-- Write `a_value' at current position (Writing in Little-Endian order).
		do
			put_natural_64_little_endian ({SHARED_EXTERNAL}.real_64_to_natural_64(a_value))
		end

feature {GAME_RESSOURCE_MANAGER} -- Access

	is_thread_safe:BOOLEAN
			-- Is `Current' can be used in a multi-threaded system.

	enable_thread_safe
			-- Make `Current' usable in a multi-threaded system.
		do
			is_thread_safe:=true
		end

	disable_thread_safe
			-- Make `Current' unusable in a multi-threaded system.
		do
			is_thread_safe:=true
		end

	internal_mutex:MUTEX
			-- A mutex to sinchronize the file input/output and position

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

	internal_read_natural_16_big_endian
			-- Read the next 16-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_16'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_16
			l_old_natural_8:NATURAL_8
		do
			l_old_natural_8 := last_natural_8
			read_natural_8
			l_temp:=last_natural_8.to_natural_16.bit_shift_left (8)
			read_natural_8
			last_natural_16:=last_natural_8.to_natural_16.bit_or (l_temp)
			last_natural_8 := l_old_natural_8
		end

	internal_read_natural_32_big_endian
			-- Read the next 32-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_32'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_32
			l_old_natural_16:NATURAL_16
		do
			l_old_natural_16 := last_natural_16
			internal_read_natural_16_big_endian
			l_temp:=last_natural_16.to_natural_32.bit_shift_left (16)
			internal_read_natural_16_big_endian
			last_natural:=last_natural_16.to_natural_32.bit_or (l_temp)
			last_natural_16 := l_old_natural_16
		end

	internal_read_natural_64_big_endian
			-- Read the next 64-bit natural in the file (Reading in Big-Endian order).
			-- Make the result available in `last_natural_64'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_64
			l_old_natural:NATURAL_32
		do
			l_old_natural := last_natural
			internal_read_natural_32_big_endian
			l_temp:=last_natural_32.to_natural_64.bit_shift_left (16)
			internal_read_natural_32_big_endian
			last_natural_64:=last_natural_32.to_natural_64.bit_or (l_temp)
			last_natural := l_old_natural
		end

	internal_read_natural_16_little_endian
			-- Read the next 16-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_16'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_16
			l_old_natural_8:NATURAL_8
		do
			l_old_natural_8 := last_natural_8
			read_natural_8
			l_temp:=last_natural_8.to_natural_16
			read_natural_8
			last_natural_16:=l_temp.bit_or (last_natural_8.to_natural_16.bit_shift_left (8))
			last_natural_8 := l_old_natural_8
		end

	internal_read_natural_32_little_endian
			-- Read the next 32-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_32'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_32
			l_old_natural_16:NATURAL_16
		do
			l_old_natural_16 := last_natural_16
			internal_read_natural_16_little_endian
			l_temp:=last_natural_16.to_natural_32
			internal_read_natural_16_little_endian
			last_natural:=l_temp.bit_or (last_natural_16.to_natural_32.bit_shift_left (16))
			last_natural_16 := l_old_natural_16
		end

	internal_read_natural_64_little_endian
			-- Read the next 64-bit natural in the file (Reading in Little-Endian order).
			-- Make the result available in `last_natural_64'.
		require
			File_Readable:is_readable
		local
			l_temp:NATURAL_64
			l_old_natural:NATURAL_32
		do
			l_old_natural := last_natural
			internal_read_natural_32_little_endian
			l_temp:=last_natural_32.to_natural_64
			internal_read_natural_32_little_endian
			last_natural_64:=l_temp.bit_or (last_natural_32.to_natural_64.bit_shift_left (16))
			last_natural := l_old_natural
		end

	internal_put_natural_16_big_endian(a_value:NATURAL_16)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		require
			extendible: extendible
		do
			put_natural_8 (a_value.bit_shift_right (8).to_natural_8)
			put_natural_8 (a_value.bit_and (0xFF).to_natural_8)
		end

	internal_put_natural_16_little_endian(a_value:NATURAL_16)
			-- Write `a_value' at current position (Writing in Little-Endian order).
		require
			extendible: extendible
		do
			put_natural_8 (a_value.bit_and (0xFF).to_natural_8)
			put_natural_8 (a_value.bit_shift_right (8).to_natural_8)
		end

	internal_put_natural_32_big_endian(a_value:NATURAL_32)
			-- Write `a_value' at current position (Writing in Big-Endian order).
		require
			extendible: extendible
		do
			internal_put_natural_16_big_endian(a_value.bit_shift_right (16).to_natural_16)
			internal_put_natural_16_big_endian(a_value.bit_and (0xFFFF).to_natural_16)
		end

	internal_put_natural_32_little_endian(a_value:NATURAL_32)
			-- Write `a_value' at current position (Writing in Little-Endian order).
		require
			extendible: extendible
		do
			internal_put_natural_16_little_endian(a_value.bit_and (0xFFFF).to_natural_16)
			internal_put_natural_16_little_endian(a_value.bit_shift_right (16).to_natural_16)
		end

invariant
	File_Ptr_Not_Null: not (is_closed xor file_pointer.is_default_pointer)

end
