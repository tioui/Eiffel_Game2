note
	description: "Summary description for {CPF_RAW_FILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CPF_RAW_FILE

inherit
	RAW_FILE

create
	make

feature -- Access

	put_natural_16_big_endian(value:NATURAL_16)
		require
			extendible: extendible
		do
			put_natural_8 (value.bit_shift_right (8).to_natural_8)
			put_natural_8 (value.bit_and (0xFF).to_natural_8)
		end

	put_natural_32_big_endian(value:NATURAL_32)
		require
			extendible: extendible
		do
			put_natural_16_big_endian(value.bit_shift_right (16).to_natural_16)
			put_natural_16_big_endian(value.bit_and (0xFFFF).to_natural_16)
		end

	put_natural_64_big_endian(value:NATURAL_64)
		require
			extendible: extendible
		do
			put_natural_32_big_endian(value.bit_shift_right (32).to_natural_32)
			put_natural_32_big_endian(value.bit_and (0xFFFFFFFF).to_natural_32)
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
			last_natural:=last_natural_16.to_natural_32.bit_or (temp)
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


end
