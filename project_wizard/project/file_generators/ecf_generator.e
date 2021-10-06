note
	description: "A project file configuration (.ecf) generator"
	author: "Louis Marchand"
	date: "Sat, 07 Jan 2017 22:18:47 +0000"
	revision: "1.0"

class
	ECF_GENERATOR

inherit
	FILE_GENERATOR
		rename
			make as make_file_generator
		redefine
			generated_content
		end
	LIBRARY_MANAGER
	ROOT_MANAGER
		rename
			default_create as make_root_manager
		select
			make_root_manager
		end

create
	make

feature {NONE} -- Initialization

	make(a_filename, a_project_name, a_uuid:READABLE_STRING_GENERAL)
			-- Initialization of `Current' using `a_filename' as `filename',
			-- `a_project_name' as `project_name' and `a_uuid' as `uuid'
		require
			Can_Creae_File: attached (create {RAW_FILE}.make_with_name (a_filename)) as la_file implies la_file.is_creatable
			Project_Name_Not_Empty: not a_project_name.is_empty
			Project_Name_Single_Word: not a_project_name.has ({CHARACTER_32}' ')
		do
			make_file_generator(a_filename)
			set_project_name(a_project_name)
			set_target (a_project_name)
			set_cluster (a_project_name)
			make_root_manager
			set_uuid(a_uuid)
		ensure
			Is_Project_Name_Assign: project_name.is_equal (a_project_name)
			Is_Target_Valid: not target.is_empty and not target.has ({CHARACTER_32}' ')
			Is_Target_Valid: not cluster.is_empty and not cluster.has ({CHARACTER_32}' ')
			Is_Root_Class_Valid: not root_class.is_empty and not root_class.has ({CHARACTER_32}' ') and root_class.is_equal (root_class.as_upper)
			Is_Root_Feature_Valid: not root_feature.is_empty and not root_feature.has ({CHARACTER_32}' ') and root_feature.is_equal (root_feature.as_lower)
		end

feature -- Access

	project_name:READABLE_STRING_GENERAL assign set_project_name
			-- The name of the project

	set_project_name(a_project_name:READABLE_STRING_GENERAL)
			-- Assign `project_name' with the value of `a_project_name'
		require
			Project_Name_Not_Empty: not a_project_name.is_empty
			Project_Name_Single_Word: not a_project_name.has ({CHARACTER_32}' ')
		do
			project_name := a_project_name
		ensure
			Is_Assign: project_name.is_equal(a_project_name)
		end

	target:READABLE_STRING_GENERAL assign set_target
			-- The name of the project target

	set_target(a_target:READABLE_STRING_GENERAL)
			-- Assign `target' with the value of `a_target'
		require
			Target_Not_Empty: not a_target.is_empty
			Target_Single_Word: not a_target.has ({CHARACTER_32}' ')
		do
			target := a_target
		ensure
			Is_Assign: target.is_equal(a_target)
		end

	cluster:READABLE_STRING_GENERAL assign set_cluster
			-- The name of the `target' cluster

	set_cluster(a_cluster:READABLE_STRING_GENERAL)
			-- Assign `cluster' with the value of `a_cluster'
		require
			Cluster_Not_Empty: not a_cluster.is_empty
			Cluster_Single_Word: not a_cluster.has ({CHARACTER_32}' ')
		do
			cluster := a_cluster
		ensure
			Is_Assign: cluster.is_equal(a_cluster)
		end

	uuid:READABLE_STRING_GENERAL assign set_uuid
			-- The unique ID of the project

	set_uuid(a_uuid:READABLE_STRING_GENERAL)
			-- Assign `uuid' with the value of `a_uuid'
		do
			uuid := a_uuid
		ensure
			Is_Assign: uuid ~ a_uuid
		end

	is_multithread:BOOLEAN assign set_is_multithread
			-- The project must enable multi-thread

	set_is_multithread(a_is_multithread:BOOLEAN)
			-- Assign `is_multithread' with the value of `a_is_multithread'.
		do
			is_multithread := a_is_multithread
		ensure
			Is_Assign: is_multithread ~ a_is_multithread
		end

	enable_multithread
			-- put `is_multithread' to `True'
		do
			set_is_multithread(True)
		ensure
			Is_Enabled: is_multithread
		end

	disable_multithread
			-- put `is_multithread' to `False'
		do
			set_is_multithread(False)
		ensure
			Is_Enabled: not is_multithread
		end

	is_void_safe:BOOLEAN assign set_is_void_safe
			-- The project must enable void safety

	set_is_void_safe(a_is_void_safe:BOOLEAN)
			-- Assign `is_void_safe' with the value of `a_is_void_safe'.
		do
			is_void_safe := a_is_void_safe
		ensure
			Is_Assign: is_void_safe ~ a_is_void_safe
		end

	enable_void_safe
			-- put `is_void_safe' to `True'
		do
			set_is_void_safe(True)
		ensure
			Is_Enabled: is_void_safe
		end

	disable_void_safe
			-- put `is_void_safe' to `False'
		do
			set_is_void_safe(False)
		ensure
			Is_Enabled: not is_void_safe
		end

feature {NONE} -- Implementation

	generated_content:STRING
			-- The content of the genereted file
		local
			l_template:TEMPLATE_TEXT
			l_libraries:STRING
		do
			create l_template.make_from_text (template_text)
			l_template.add_value (project_name, "project_name")
			l_template.add_value (uuid, "uuid")
			l_template.add_value (target, "target")
			l_template.add_value (cluster, "cluster")
			l_template.add_value (root_class, "game2_root_class")
			l_template.add_value (root_feature, "game2_root_feature")
			l_libraries := generate_libraries_content
			if is_multithread then
				l_template.add_value ("thread", "thread")
				l_template.add_value ("-mt", "thread_pre")
				l_libraries.append (thread_library_text)
			else
				l_template.add_value ("none", "thread")
				l_template.add_value ("", "thread_pre")
			end
			if is_void_safe then
				l_template.add_value ("all", "void_safety")
				l_template.add_value ("-safe", "void_safe_pre")
				l_libraries.append (thread_library_text)
			else
				l_template.add_value ("none", "void_safety")
				l_template.add_value ("", "void_safe_pre")
			end
			l_template.add_value (generate_libraries_content, "libraries")
			l_template.get_structure
			l_template.get_output
			if attached l_template.output as la_output then
				Result := la_output
			else
				Result := ""
				has_error := True
			end
		end

	generate_libraries_content:STRING
			-- Generate the content of the Eiffel Game2 libraries section
		local
			l_template:TEMPLATE_TEXT
		do
			create l_template.make_from_text (library_template_text)
			l_template.get_structure
			Result := ""
			add_to_generate_libraries_content(has_core_library, Result, "game_core", l_template)
			add_to_generate_libraries_content(has_image_file_library, Result, "game_image_file", l_template)
			add_to_generate_libraries_content(has_text_library, Result, "game_text", l_template)
			add_to_generate_libraries_content(has_effects_library, Result, "game_effects", l_template)
			add_to_generate_libraries_content(has_audio_library, Result, "audio", l_template)
			add_to_generate_libraries_content(has_sound_file_library, Result, "audio_sound_file", l_template)
			add_to_generate_libraries_content(has_mpg_file_library, Result, "audio_mpg_file", l_template)
			add_to_generate_libraries_content(has_opengl_library, Result, "opengl", l_template)
		end

	add_to_generate_libraries_content(a_has_library:BOOLEAN; a_content, a_name:STRING; a_template:TEMPLATE_TEXT)
			-- Add the correct line to `a_content' using `a_template' with the library `a_name' if `a_has_library'
		do
			if a_has_library then
				a_template.clear_values
				a_template.add_value (a_name, "library_name")
				a_template.get_output
				if attached a_template.output as la_output then
					a_content.append (la_output)
				end
			end
		end

	library_template_text:STRING
			-- The template of a library line
		do
			Result := "		<library name=%"{$library_name/}%" location=%"$EIFFEL_LIBRARY\contrib\library\game2\{$library_name/}\{$library_name/}.ecf%"/>%N"
		end

	thread_library_text:STRING
			-- The text of a thread library line
		do
			Result := "		<library name=%"thread%" location=%"$ISE_LIBRARY\library\thread\thread.ecf%"/>%N"
		end

	template_text:STRING
			-- The file template used to create the generated file content
		do
			Result :="[
<?xml version="1.0" encoding="ISO-8859-1"?>
<system xmlns="http://www.eiffel.com/developers/xml/configuration-1-15-0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.eiffel.com/developers/xml/configuration-1-15-0 http://www.eiffel.com/developers/xml/configuration-1-15-0.xsd" name="{$project_name/}" uuid="{$uuid/}">
    <target name="{$target/}">
        <root class="{$game2_root_class/}" feature="{$game2_root_feature/}"/>
        <option warning="true" void_safety="{$void_safety/}">
            <assertions precondition="true" postcondition="true" check="true" invariant="true" loop="true" supplier_precondition="true"/>
        </option>
        <setting name="concurrency" value="{$thread/}"/>
        <precompile name="base_pre" location="$ISE_PRECOMP\base{$thread_pre/}{$void_safe_pre/}.ecf"/>
        <library name="base" location="$ISE_LIBRARY\library\base\base.ecf"/>
{$libraries/}
        <cluster name="{$cluster/}" location=".\" recursive="true">
            <file_rule>
                <exclude>/EIFGENs$</exclude>
            </file_rule>
        </cluster>
    </target>
</system>
				]"

		end

end
