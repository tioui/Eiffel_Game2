note
	description: "Summary description for {GAME_MEDIA_FILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_MEDIA_FILE


feature {NONE} -- Initialization

	make(filename:STRING)
			-- Initialization for `Current'.
			-- Create a new surface from the image file `filename'.
		require
			Open_From_File_Exist: file_exist(filename)
		do
			open_from_file(filename)
		end

feature -- Access

	file_exist(filename:STRING):BOOLEAN
			-- Valid if the file `filename' exist and is readable.
		local
			the_file:RAW_FILE
		do
			create the_file.make (filename)
			Result:= the_file.access_exists and the_file.is_access_readable
		end

feature {NONE} -- Implementation

	open_from_file(filename:STRING)
			-- Open the surface from the image file `filename'.
		require
			Open_From_File_Exist: file_exist(filename)
		deferred
		end
		
end
