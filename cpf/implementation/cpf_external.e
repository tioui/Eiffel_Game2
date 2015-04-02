note
	description: "External C function for the Custom Package File (CPF) Library."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 03:58:25 +0000"
	revision: "2.0"

class
	CPF_EXTERNAL

feature -- stdio.h


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

feature -- CustomPackageFileInfos struct

	frozen c_sizeof_custom_package_file_infos:INTEGER
		external
			"C inline use <cpf_additions.h>"
		alias
			"sizeof(CustomPackageFileInfos)"
		end

	frozen set_custom_package_infos_struct_file_ptr (cpf_infos,file_ptr: POINTER)
		external
			"C [struct <cpf_additions.h>] (CustomPackageFileInfos, FILE *)"
		alias
			"filePtr"
		end

	frozen get_custom_package_infos_struct_file_ptr (cpf_infos:POINTER):POINTER
		external
			"C [struct <cpf_additions.h>] (CustomPackageFileInfos):FILE *"
		alias
			"filePtr"
		end

	frozen set_custom_package_infos_struct_start_offset (cpf_infos: POINTER;value:INTEGER_64)
		external
			"C [struct <cpf_additions.h>] (CustomPackageFileInfos, int64_t)"
		alias
			"StartOffset"
		end

	frozen get_custom_package_infos_struct_start_offset (cpf_infos:POINTER):INTEGER_64
		external
			"C [struct <cpf_additions.h>] (CustomPackageFileInfos):int64_t"
		alias
			"StartOffset"
		end

	frozen set_custom_package_infos_struct_total_size (cpf_infos: POINTER;value:INTEGER_64)
		external
			"C [struct <cpf_additions.h>] (CustomPackageFileInfos, int64_t)"
		alias
			"TotalSize"
		end

	frozen get_custom_package_infos_struct_total_size (cpf_infos:POINTER):INTEGER_64
		external
			"C [struct <cpf_additions.h>] (CustomPackageFileInfos):int64_t"
		alias
			"TotalSize"
		end

end
