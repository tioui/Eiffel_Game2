note
	description: "A file generator"
	author: "Louis Marchand"
	date: "Sat, 07 Jan 2017 22:18:47 +0000"
	revision: "1.0"

deferred class
	FILE_GENERATOR

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL)
		-- Initialization of `Current' using `a_filename' as `filename'
		require
			Can_Creae_File: attached (create {RAW_FILE}.make_with_name (a_filename)) as la_file implies la_file.is_creatable
		do
			set_filename(a_filename)
		ensure
			Is_Filename_Assign: filename ~ a_filename
		end

feature -- Access

	filename:READABLE_STRING_GENERAL assign set_filename
			-- The name of generated file

	set_filename(a_filename:READABLE_STRING_GENERAL)
			-- Assign `filename' with the value of `a_filename'
		require
			Can_Creae_File: attached (create {RAW_FILE}.make_with_name (a_filename)) as la_file implies la_file.is_creatable
		do
			filename := a_filename
		ensure
			Is_Assign: filename.is_equal(a_filename)
		end

	generate_file
			-- Generate the file pointed by the `filename'
		local
			l_file:PLAIN_TEXT_FILE
			l_generated_content:STRING
		do
			has_error := False
			l_generated_content := generated_content
			if not has_error then
				create l_file.make_with_name (filename)
				l_file.open_write
				l_file.put_string (l_generated_content)
				l_file.close
			end
		end

	has_error:BOOLEAN
			-- An error occured while generating file

feature {NONE} -- Implementation

	generated_content:STRING
			-- The content of the genereted file
		do
			Result := template_text
		end

	template_text:STRING
			-- The file template used to create the generated file content
		deferred
		end
end
