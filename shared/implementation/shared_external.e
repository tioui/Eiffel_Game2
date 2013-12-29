note
	description: "External C function for the Custom Package File (CPF) Library."
	author: "Louis Marchand"
	date: "april 30, 2013"
	revision: "1.0.0.0"

class
	SHARED_EXTERNAL

feature -- Usefull functions


	frozen natural_32_to_real_32(i:NATURAL_32):REAL_32
		external
			"C inline use <stdint.h>"
		alias
			"*(float *)&$i"
		end

	frozen natural_64_to_real_64(i:NATURAL_64):REAL_64
		external
			"C inline use <stdint.h>"
		alias
			"*(double *)&$i"
		end

	frozen real_32_to_natural_32(i:REAL_32):NATURAL_32
		external
			"C inline use <stdint.h>"
		alias
			"*(uint32_t *)&$i"
		end

	frozen real_64_to_natural_64(i:REAL_64):NATURAL_64
		external
			"C inline use <stdint.h>"
		alias
			"*(uint64_t *)&$i"
		end

end
