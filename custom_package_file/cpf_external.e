note
	description: "Summary description for {CPF_EXTERNAL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CPF_EXTERNAL

feature -- stdio.h

	frozen fopen(filename,mode:POINTER):POINTER
		external
			"C (const char *, const char *) : FILE * | <stdio.h>"
		alias
			"fopen"
		end

	frozen fclose(file:POINTER):INTEGER
		external
			"C (FILE *) : int | <stdio.h>"
		alias
			"fclose"
		end

	frozen fread(ptr:POINTER;size,count:NATURAL;stream:POINTER):NATURAL
		external
			"C (void *, size_t, size_t, FILE *) : size_t | <stdio.h>"
		alias
			"fread"
		end

	frozen fseeko(file:POINTER;offset:INTEGER_64;whence:INTEGER):INTEGER
		external
			"C (FILE *, off_t, int) : int | <stdio.h>"
		alias
			"fseeko"
		end

	frozen ftello(file:POINTER):INTEGER_64
		external
			"C (FILE *) : off_t | <stdio.h>"
		alias
			"ftello"
		end

	frozen pointer_to_natural_8(ptr:POINTER):NATURAL_8
		external
			"C inline use <stdint.h>"
		alias
			"*((uint8_t *)$ptr)"
		end

	frozen pointer_to_natural_16(ptr:POINTER):NATURAL_16
		external
			"C inline use <stdint.h>"
		alias
			"*((uint16_t *)$ptr)"
		end

	frozen pointer_to_natural_32(ptr:POINTER):NATURAL_16
		external
			"C inline use <stdint.h>"
		alias
			"*((uint32_t *)$ptr)"
		end

feature -- stdio.h - Constants

	frozen SEEK_SET:INTEGER
		external
			"C inline use <stdio.h>"
		alias
			"SEEK_SET"
		end

	frozen SEEK_CUR:INTEGER
		external
			"C inline use <stdio.h>"
		alias
			"SEEK_CUR"
		end

	frozen SEEK_END:INTEGER
		external
			"C inline use <stdio.h>"
		alias
			"SEEK_END"
		end

end
