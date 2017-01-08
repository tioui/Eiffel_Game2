note
	description: "[
			Objects that provide access to constants loaded from files.
			Perform and desired constant redefinitions in this class.
			Note that if you are loading constants from a file and wish to
			change the location of the file, redefine `initialize_constants' in this
			class to load from the desired location.
			]"
	generator: "EiffelBuild"
	description: "A root class source code file generator"
	author: "Louis Marchand"
	date: "Sat, 07 Jan 2017 22:18:47 +0000"
	revision: "1.0"

class
	CONSTANTS

inherit
	CONSTANTS_IMP
		redefine
			parse_file_contents
		end

feature {NONE} -- Implementation

	parse_file_contents (content: STRING)
			-- <Precursor>
		local
			l_converter:UTF_CONVERTER
		do
			create l_converter
			Precursor(l_converter.utf_8_string_8_to_string_32 (content).to_string_8)
		end

end
