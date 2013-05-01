note
	description: "Summary description for {GAME_MEDIA_FILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_MEDIA_FILE


feature {NONE} -- Initialization

	make(a_filename:STRING)
			-- Initialization for `Current'.
			-- Create a new surface from the image file `a_filename'.
		require
			Open_From_File_Exist: file_exist(a_filename)
		do
			open_from_file(a_filename)
		end

feature -- Access

	file_exist(a_filename:STRING):BOOLEAN
			-- Valid if the file `a_filename' exist and is readable.
		local
			l_the_file:RAW_FILE
		do
			create l_the_file.make (a_filename)
			Result:= l_the_file.access_exists and l_the_file.is_access_readable
		end

feature {NONE} -- Implementation

	open_from_file(a_filename:STRING)
			-- Open the surface from the image file `filename'.
		require
			Open_From_File_Exist: file_exist(a_filename)
		deferred
		end

end
