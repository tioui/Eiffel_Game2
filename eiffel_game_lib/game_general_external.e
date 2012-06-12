note
	description: "Summary description for {GAME_GENERAL_EXTERNAL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_GENERAL_EXTERNAL

feature -- Usefull function

	frozen c_buffer_allocate(length:INTEGER): POINTER
		external
			"C inline use <stdint.h>"
		alias
			"malloc ($length*sizeof(uint8_t))"
		end

	frozen c_buffer_free(buffer:POINTER)
		external
			"C inline use <stdint.h>"
		alias
			"free((uint8_t *)$buffer)"
		end

	frozen c_sizeof_short:INTEGER
		external
			"C inline use <stdint.h>"
		alias
			"sizeof(short)"
		end

	frozen c_sizeof_char:INTEGER
		external
			"C inline use <stdint.h>"
		alias
			"sizeof(char)"
		end

	frozen c_sizeof_int_64_t:INTEGER
		external
			"C inline use <stdint.h>"
		alias
			"sizeof(int64_t)"
		end


feature -- CustomPackageFileInfos struct

	frozen c_sizeof_custom_package_file_infos:INTEGER
		external
			"C inline use <game_more.h>"
		alias
			"sizeof(CustomPackageFileInfos)"
		end

	frozen set_custom_package_infos_struct_file_ptr (cpf_infos,file_ptr: POINTER)
		external
			"C [struct <game_more.h>] (CustomPackageFileInfos, FILE *)"
		alias
			"filePtr"
		end

	frozen get_custom_package_infos_struct_file_ptr (cpf_infos:POINTER):POINTER
		external
			"C [struct <game_more.h>] (CustomPackageFileInfos):FILE *"
		alias
			"filePtr"
		end

	frozen set_custom_package_infos_struct_start_offset (cpf_infos: POINTER;value:INTEGER_64)
		external
			"C [struct <game_more.h>] (CustomPackageFileInfos, int64_t)"
		alias
			"StartOffset"
		end

	frozen get_custom_package_infos_struct_start_offset (cpf_infos:POINTER):INTEGER_64
		external
			"C [struct <game_more.h>] (CustomPackageFileInfos):int64_t"
		alias
			"StartOffset"
		end

	frozen set_custom_package_infos_struct_total_size (cpf_infos: POINTER;value:INTEGER_64)
		external
			"C [struct <game_more.h>] (CustomPackageFileInfos, int64_t)"
		alias
			"TotalSize"
		end

	frozen get_custom_package_infos_struct_total_size (cpf_infos:POINTER):INTEGER_64
		external
			"C [struct <game_more.h>] (CustomPackageFileInfos):int64_t"
		alias
			"TotalSize"
		end

end
