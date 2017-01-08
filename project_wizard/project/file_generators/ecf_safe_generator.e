note
	description: "A project file configuration (.ecf) generator (void-safe)"
	author: "Louis Marchand"
	date: "Sat, 07 Jan 2017 22:18:47 +0000"
	revision: "1.0"

class
	ECF_SAFE_GENERATOR

inherit
	ECF_GENERATOR
		redefine
			library_template_text,
			thread_library_text,
			template_text
		end

create
	make

feature {NONE} -- Implementation

	library_template_text:STRING
			-- The template of a library line
		do
			Result := "		<library name=%"{$library_name/}%" location=%"$EIFFEL_LIBRARY\contrib\library\game2\{$library_name/}\{$library_name/}-safe.ecf%"/>%N"
		end

	thread_library_text:STRING
			-- The text of a thread library line
		do
			Result := "		<library name=%"thread%" location=%"$ISE_LIBRARY\library\thread\thread-safe.ecf%"/>%N"
		end

	template_text:STRING
			-- The file template used to create the generated file content
		do
			Result :="[
<?xml version="1.0" encoding="ISO-8859-1"?>
<system xmlns="http://www.eiffel.com/developers/xml/configuration-1-15-0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.eiffel.com/developers/xml/configuration-1-15-0 http://www.eiffel.com/developers/xml/configuration-1-15-0.xsd" name="{$project_name/}" uuid="{$uuid/}">
    <target name="{$target/}">
        <root class="{$game2_root_class/}" feature="{$game2_root_feature/}"/>
        <option warning="true">
            <assertions precondition="true" postcondition="true" check="true" invariant="true" loop="true" supplier_precondition="true"/>
        </option>
        <setting name="concurrency" value="{$thread/}"/>
        <precompile name="base_pre" location="$ISE_PRECOMP\base{$thread_pre/}-safe.ecf"/>
        <library name="base" location="$ISE_LIBRARY\library\base\base-safe.ecf"/>
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
