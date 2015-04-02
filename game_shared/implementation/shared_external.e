note
	description: "External C function."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 04:11:03 +0000"
	revision: "2.0"

class
	SHARED_EXTERNAL

feature -- Usefull functions


	frozen natural_32_to_real_32(i:NATURAL_32):REAL_32
			-- The REAL_32 representation of the internal memory value of a NATURAL_32 `i'
		external
			"C inline use <stdint.h>"
		alias
			"*(float *)&$i"
		end

	frozen natural_64_to_real_64(i:NATURAL_64):REAL_64
			-- The REAL_64 representation of the internal memory value of a NATURAL_64 `i'
		external
			"C inline use <stdint.h>"
		alias
			"*(double *)&$i"
		end

	frozen real_32_to_natural_32(i:REAL_32):NATURAL_32
			-- The NATURAL_64 representation of the internal memory value of a REAL_64 `i'
		external
			"C inline use <stdint.h>"
		alias
			"*(uint32_t *)&$i"
		end

	frozen real_64_to_natural_64(i:REAL_64):NATURAL_64
			-- The NATURAL_64 representation of the internal memory value of a REAL_64 `i'
		external
			"C inline use <stdint.h>"
		alias
			"*(uint64_t *)&$i"
		end

end
