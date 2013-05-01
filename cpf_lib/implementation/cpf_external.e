note
	description: "External C function for the Custom Package File (CPF) Library."
	author: "Louis Marchand"
	date: "april 30, 2013"
	revision: "1.0.0.0"

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

--	frozen fseeko(file:POINTER;offset:INTEGER_64;whence:INTEGER):INTEGER
--		external
--			"C (FILE *, off_t, int) : int | <stdio.h>"
--		alias
--			"fseeko"
--		end

	frozen fseek(file:POINTER;offset:INTEGER;whence:INTEGER):INTEGER
		external
			"C (FILE *, long, int) : int | <stdio.h>"
		alias
			"fseek"
		end

--	frozen ftello(file:POINTER):INTEGER_64
--		external
--			"C (FILE *) : off_t | <stdio.h>"
--		alias
--			"ftello"
--		end

	frozen ftell(file:POINTER):INTEGER
		external
			"C (FILE *) : long | <stdio.h>"
		alias
			"ftell"
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

feature -- CustomPackageFileInfos struct

	frozen c_sizeof_custom_package_file_infos:INTEGER
		external
			"C inline use <cpf_more.h>"
		alias
			"sizeof(CustomPackageFileInfos)"
		end

	frozen set_custom_package_infos_struct_file_ptr (cpf_infos,file_ptr: POINTER)
		external
			"C [struct <cpf_more.h>] (CustomPackageFileInfos, FILE *)"
		alias
			"filePtr"
		end

	frozen get_custom_package_infos_struct_file_ptr (cpf_infos:POINTER):POINTER
		external
			"C [struct <cpf_more.h>] (CustomPackageFileInfos):FILE *"
		alias
			"filePtr"
		end

	frozen set_custom_package_infos_struct_start_offset (cpf_infos: POINTER;value:INTEGER_64)
		external
			"C [struct <cpf_more.h>] (CustomPackageFileInfos, int64_t)"
		alias
			"StartOffset"
		end

	frozen get_custom_package_infos_struct_start_offset (cpf_infos:POINTER):INTEGER_64
		external
			"C [struct <cpf_more.h>] (CustomPackageFileInfos):int64_t"
		alias
			"StartOffset"
		end

	frozen set_custom_package_infos_struct_total_size (cpf_infos: POINTER;value:INTEGER_64)
		external
			"C [struct <cpf_more.h>] (CustomPackageFileInfos, int64_t)"
		alias
			"TotalSize"
		end

	frozen get_custom_package_infos_struct_total_size (cpf_infos:POINTER):INTEGER_64
		external
			"C [struct <cpf_more.h>] (CustomPackageFileInfos):int64_t"
		alias
			"TotalSize"
		end

end
