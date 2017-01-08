note
	description: "A root class source code file generator"
	author: "Louis Marchand"
	date: "Sat, 07 Jan 2017 22:18:47 +0000"
	revision: "1.0"

class
	ROOT_SOURCE_GENERATOR

inherit
	FILE_GENERATOR
		redefine
			make, generated_content
		end
	ROOT_MANAGER
		rename
			default_create as make_root_manager
		select
			make_root_manager
		end

create
	make

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL)
			-- <Precursor>
		do
			Precursor(a_filename)
			make_root_manager
			set_code_indicator ("Your code here.")
			set_feature_section ("Initialization")
			set_feature_documentation ("Running the game")
			set_date("")
			set_game_documentation ("An game created in Eiffel.")
		end

feature -- Access

	game_documentation:READABLE_STRING_GENERAL assign set_game_documentation
			-- The main documentation of the class

	set_game_documentation(a_game_documentation:READABLE_STRING_GENERAL)
			-- Assign `game_documentation' with the value of `a_game_documentation'
		do
			game_documentation := a_game_documentation
		ensure
			Is_Assign: game_documentation.is_equal(a_game_documentation)
		end

	date:READABLE_STRING_GENERAL assign set_date
			-- The date to put in the class documentation

	set_date(a_date:READABLE_STRING_GENERAL)
			-- Assign `date' with the value of `a_date'
		do
			date := a_date
		ensure
			Is_Assign: date.is_equal(a_date)
		end

	feature_section:READABLE_STRING_GENERAL assign set_feature_section
			-- The documentation to put on the feature section

	set_feature_section(a_feature_section:READABLE_STRING_GENERAL)
			-- Assign `feature_section' with the value of `a_feature_section'
		do
			feature_section := a_feature_section
		ensure
			Is_Assign: feature_section.is_equal(a_feature_section)
		end

	feature_documentation:READABLE_STRING_GENERAL assign set_feature_documentation
			-- The documentation to put on the root feature

	set_feature_documentation(a_feature_documentation:READABLE_STRING_GENERAL)
			-- Assign `feature_documentation' with the value of `a_feature_documentation'
		do
			feature_documentation := a_feature_documentation
		ensure
			Is_Assign: feature_documentation.is_equal(a_feature_documentation)
		end

	code_indicator:READABLE_STRING_GENERAL assign set_code_indicator
			-- The documentation to indicate where to put the code of the user

	set_code_indicator(a_code_indicator:READABLE_STRING_GENERAL)
			-- Assign `code_indicator' with the value of `a_code_indicator'
		do
			code_indicator := a_code_indicator
		ensure
			Is_Assign: code_indicator.is_equal(a_code_indicator)
		end

feature {NONE} --Implementation

	generated_content:STRING
			-- The content of the genereted file
		local
			l_template:TEMPLATE_TEXT
		do
			create l_template.make_from_text (template_text)
			l_template.get_structure
			l_template.add_value (game_documentation, "game_documentation")
			l_template.add_value (date, "date")
			l_template.add_value (root_class, "root_class")
			l_template.add_value (root_feature, "root_feature")
			l_template.add_value (feature_section, "feature_section")
			l_template.add_value (feature_documentation, "feature_documentation")
			l_template.add_value (code_indicator, "code_indicator")
			l_template.get_output
			if attached l_template.output as la_output then
				Result := la_output
			else
				Result := ""
				has_error := True
			end
		end

	template_text: STRING_8
			-- <Precursor>
		do
			Result := "[
note
    description : "{$game_documentation/}"
    author      : ""
    generator   : "Eiffel Game2 Project Wizard"
    date        : "{$date/}"
    revision    : "0.1"

class
    {$root_class/}

create
    {$root_feature/}

feature {literal}{NONE}{/literal} -- {$feature_section/}

    {$root_feature/}
            -- {$feature_documentation/}
        do
            -- {$code_indicator/}
        end

end
					]"
		end

end
