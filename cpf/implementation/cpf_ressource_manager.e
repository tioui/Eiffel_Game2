note
	description: "Summary description for {CPF_RESSOURCE_MANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CPF_RESSOURCE_MANAGER

inherit
	GAME_RESSOURCE_MANAGER

feature {NONE} -- Initialization

	make(a_cpf:CPF_PACKAGE_FILE;a_cpf_index:INTEGER)
			-- make `Current' from the BMP image in the custom package file `a_cpf' at `a_cpf_index'.
		require
			Img_Cpf_Index_Valid:a_cpf.is_readable and then a_cpf_index>0 and then a_cpf_index<=a_cpf.sub_files_count
		do
			cpf:=a_cpf
			cpf_index:=a_cpf_index
		end

feature {NONE} -- Implementation

	cpf:CPF_PACKAGE_FILE
	cpf_index:INTEGER

invariant
	Cpf_Valid: cpf.is_readable
	Cpf_Index_Valid: cpf_index>0  and cpf_index<=cpf.sub_files_count
end
