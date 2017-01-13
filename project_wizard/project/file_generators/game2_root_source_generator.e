note
	description: "An internal Eiffel Game2 root class source code file generator"
	author: "Louis Marchand"
	date: "Sat, 07 Jan 2017 22:18:47 +0000"
	revision: "1.0"

class
	GAME2_ROOT_SOURCE_GENERATOR

inherit
	ROOT_SOURCE_GENERATOR
		rename
			code_indicator as no_modification,
			set_code_indicator as set_no_modification
		redefine
			make,
			generated_content,
			template_text
		select
			make_root_manager
		end
	LIBRARY_MANAGER
		undefine
			default_create
		end

create
	make

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL)
			-- <Precursor>
		do
			Precursor(a_filename)
			set_no_modification ("The content of this file is auto-generated and must not be modified. Every modification will be lost when regenerated.")
			set_feature_documentation ("Initializing the library and running the game")
			set_game_documentation ("The internal Root class of the game.")
			set_game2_root_class ("GAME2_APPLICATION")
			set_game2_root_feature ("make")
		end

feature -- Access

	game2_root_class:READABLE_STRING_GENERAL assign set_game2_root_class
			-- The name of the internal root class

	set_game2_root_class(a_game2_root_class:READABLE_STRING_GENERAL)
			-- Assign `game2_root_class' with the value of `a_game2_root_class'
		do
			game2_root_class := a_game2_root_class
		ensure
			Is_Assign: game2_root_class.is_equal(a_game2_root_class)
		end

	game2_root_feature:READABLE_STRING_GENERAL assign set_game2_root_feature
			-- The name of the internal root feature

	set_game2_root_feature(a_game2_root_feature:READABLE_STRING_GENERAL)
			-- Assign `game2_root_feature' with the value of `a_game2_root_feature'
		do
			game2_root_feature := a_game2_root_feature
		ensure
			Is_Assign: game2_root_feature.is_equal(a_game2_root_feature)
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
			l_template.add_value (game2_root_class, "game2_root_class")
			l_template.add_value (game2_root_feature, "game2_root_feature")
			l_template.add_value (root_class, "root_class")
			l_template.add_value (root_feature, "root_feature")
			l_template.add_value (feature_section, "feature_section")
			l_template.add_value (feature_documentation, "feature_documentation")
			l_template.add_value (no_modification, "no_modification")
			l_template.add_value (generate_libraries_inherit_content, "code_inherit")
			l_template.add_value (generate_code_content, "code")
			l_template.get_output
			if attached l_template.output as la_output then
				Result := la_output
			else
				Result := ""
				has_error := True
			end
		end

	generate_libraries_inherit_content:STRING
			-- Generate the content of the Eiffel Game2 inherit libraries sections
		local
			l_template:TEMPLATE_TEXT
		do
			create l_template.make_from_text (libraries_inherit_template_text)
			l_template.get_structure
			Result := ""
			add_to_generated_libraries_inherit_content(has_core_library, Result, "GAME_LIBRARY_SHARED", l_template)
			add_to_generated_libraries_inherit_content(has_image_file_library, Result, "IMG_LIBRARY_SHARED", l_template)
			add_to_generated_libraries_inherit_content(has_text_library, Result, "TEXT_LIBRARY_SHARED", l_template)
			add_to_generated_libraries_inherit_content(has_audio_library, Result, "AUDIO_LIBRARY_SHARED", l_template)
			add_to_generated_libraries_inherit_content(has_mpg_file_library, Result, "MPG_LIBRARY_SHARED", l_template)
		end

	add_to_generated_libraries_inherit_content(a_has_library:BOOLEAN; a_content, a_name:STRING; a_template:TEMPLATE_TEXT)
			-- Add an inherit library from `a_template' into `a_content' if `a_has_library' using the class name `a_name'
		do
			if a_has_library then
				a_template.clear_values
				a_template.add_value (a_name, "shared_name")
				a_template.get_output
				if attached a_template.output as la_output then
					a_content.append (la_output)
				end
			end
		end

	libraries_inherit_template_text:STRING
			-- The template of a library inherit line
		do
			Result := "	{$shared_name/}%N"
		end

	generate_code_content:STRING
			-- Generate the content of the Eiffel Game2 root feature code sections
		local
			l_template:TEMPLATE_TEXT
		do
			create l_template.make_from_text (code_template_text)
			l_template.get_structure
			Result := ""
			if has_core_library then
				Result := "			game_library.clear_all_events%N"
			end
			add_to_generated_code_content(has_text_library, Result, "text_library", l_template)
			add_to_generated_code_content(has_image_file_library, Result, "image_file_library", l_template)
			add_to_generated_code_content(has_audio_library, Result, "audio_library", l_template)
			add_to_generated_code_content(has_mpg_file_library, Result, "mpg_library", l_template)
			add_to_generated_code_content(has_core_library, Result, "game_library", l_template)
		end

	add_to_generated_code_content(a_has_library:BOOLEAN; a_content, a_name:STRING; a_template:TEMPLATE_TEXT)
			-- Add the code from `a_template' into `a_content' if `a_has_library' using the controller name `a_name'
		do
			if a_has_library then
				a_template.clear_values
				a_template.add_value (a_name, "shared_name")
				a_template.get_output
				if attached a_template.output as la_output then
					a_content.append (la_output)
				end
			end
		end

	code_template_text:STRING
			-- The template of a code line
		do
			Result := "			{$shared_name/}.quit_library%N"
		end

	template_text: STRING_8
			-- <Precursor>
		do
			Result := "[
note
    description : "{$game_documentation/}%
    			%{$no_modification/}"
    generator   : "Eiffel Game2 Project Wizard"
    date        : "{$date/}"
    revision    : "0.1"
    license     : "CC0"

class
    {$game2_root_class/}

inherit
	ANY
{$code_inherit/}

create
    {$game2_root_feature/}

feature {literal}{NONE}{/literal} -- {$feature_section/}

    {$game2_root_feature/}
            -- {$feature_documentation/}
        local
        	l_root_application:detachable {$root_class/}
        do
			create l_root_application.{$root_feature/}
			l_root_application := Void
{$code/}
        end

end
					]"
		end

end
