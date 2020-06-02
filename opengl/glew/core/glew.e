note
	description: "GLEW Wrapper"
	author: "Louis Marchand"
	date: "Thu, 21 May 2020 18:16:44 +0000"
	revision: "2.0"

class
	GLEW

inherit
	GLEW_EXTERNAL
		rename
			glewIsSupported as glewIsSupportedInternal,
			glewIsExtensionSupported as glewIsExtensionSupportedInternal,
			glewGetExtension as glewGetExtensionInternal,
			glewGetErrorString as glewGetErrorStringInternal,
			glewGetString as glewGetStringInternal,
			glDebugMessageInsertAmd as glDebugMessageInsertAmdInternal,
			glGetDebugMessageLogAmd as glGetDebugMessageLogAmdInternal,
			glGetPerfMonitorCounterStringAmd as glGetPerfMonitorCounterStringAmdInternal,
			glGetPerfMonitorGroupStringAmd as glGetPerfMonitorGroupStringAmdInternal,
			glGetTranslatedShaderSourceAngle as glGetTranslatedShaderSourceAngleInternal,
			glBindFragDataLocationIndexed as glBindFragDataLocationIndexedInternal,
			glGetFragDataIndex as glGetFragDataIndexInternal,
			glGetProgramResourceName as glGetProgramResourceNameInternal,
			glCreateShaderProgramv as glCreateShaderProgramvInternal,
			glGetProgramPipelineInfoLog as glGetProgramPipelineInfoLogInternal,
			glGetActiveSubroutineName as glGetActiveSubroutineNameInternal,
			glGetActiveSubroutineUniformName as glGetActiveSubroutineUniformNameInternal,
			glGetNamedStringArb as glGetNamedStringArbInternal,
			glIsNamedStringArb as glIsNamedStringArbInternal,
			glNamedStringArb as glNamedStringArbInternal,
			glBindFragDataLocationIndexedExt as glBindFragDataLocationIndexedExtInternal,
			glGetFragDataIndexExt as glGetFragDataIndexExtInternal,
			glGetProgramResourceLocationIndexExt as glGetProgramResourceLocationIndexExtInternal
		end



feature -- Constants

	Buffer_size:INTEGER = 255
			-- The buffer size used when creating {C_STRING}

feature -- Access

	glewIsSupported(a_name:READABLE_STRING_GENERAL):BOOLEAN
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glewIsSupportedInternal(l_c_name.item)
		ensure
			instance_free: class
		end

	glewIsExtensionSupported(a_name:READABLE_STRING_GENERAL):BOOLEAN
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glewIsExtensionSupportedInternal(l_c_name.item)
		ensure
			instance_free: class
		end

	glewGetExtension(a_name:READABLE_STRING_GENERAL):BOOLEAN
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glewGetExtensionInternal(l_c_name.item)
		ensure
			instance_free: class
		end

	glewGetErrorString(a_error_code:NATURAL):STRING
		local
			l_c_error:C_STRING
		do
			create l_c_error.make_by_pointer (glewGetErrorStringInternal(a_error_code))
			Result := l_c_error.string
		ensure
			instance_free: class
		end

	glewGetString(a_name_code:NATURAL):STRING
		local
			l_c_error:C_STRING
		do
			create l_c_error.make_by_pointer (glewGetStringInternal(a_name_code))
			Result := l_c_error.string
		ensure
			instance_free: class
		end

	glDebugMessageInsertAmd(a_category, a_severity, a_id: NATURAL; a_buffer:READABLE_STRING_GENERAL)
		local
			l_c_buffer:C_STRING
		do
			create l_c_buffer.make (a_buffer)
			glDebugMessageInsertAmdInternal(a_category, a_severity, a_id, a_buffer.count + 1, l_c_buffer.item)
		ensure
			instance_free: class
		end

	glGetDebugMessageLogAmd(a_count: NATURAL): LIST[TUPLE[id, category, severity:NATURAL; message:READABLE_STRING_GENERAL]]
		require
			a_count > 0
			a_count < gl_MAX_DEBUG_LOGGED_MESSAGES_AMD
		local
			l_message_size:INTEGER
			l_message_count:NATURAL
			l_c_message:C_STRING
			l_message:STRING
			l_message_pointer, l_original_pointer: POINTER
			l_array_categories, l_array_severities, l_array_ids:ARRAY[NATURAL]
			l_c_array_categories, l_c_array_severities, l_c_array_ids:ANY
		do
			create l_array_categories.make_filled (0, 1, a_count.to_integer_32)
			l_c_array_categories := l_array_categories.to_c
			create l_array_severities.make_filled (0, 1, a_count.to_integer_32)
			l_c_array_severities := l_array_severities.to_c
			create l_array_ids.make_filled (0, 1, a_count.to_integer_32)
			l_c_array_ids := l_array_ids.to_c
			l_message_size := a_count.to_integer_32 * Buffer_size
			l_message_pointer := {POINTER}.memory_calloc (l_message_size, 1)
			l_message_count := glGetDebugMessageLogAmdInternal(a_count, l_message_size, $l_c_array_categories, $l_c_array_severities, $l_c_array_ids, create {POINTER}, l_message_pointer)
			create {ARRAYED_LIST[TUPLE[id, category, severity:NATURAL; message:READABLE_STRING_GENERAL]]}Result.make (l_message_count.to_integer_32)
			l_original_pointer := l_message_pointer
			across 1 |..| l_message_count.to_integer_32 as la_index loop
				create l_c_message.make_shared_from_pointer (l_message_pointer)
				l_message := l_c_message.string
				Result.extend([l_array_ids.at (la_index.item), l_array_categories.at (la_index.item), l_array_severities.at (la_index.item), l_message])
				l_message_pointer := l_message_pointer.plus (l_message.count + 1)
			end
			l_original_pointer.memory_free
		ensure
			instance_free: class
		end

--			gl_debug_message_insert_amd as gl_debug_message_insert_amd_internal,
--			gl_get_debug_message_log_amd as gl_get_debug_message_log_amd_internal,

	glGetPerfMonitorCounterStringAmd(a_group: NATURAL; a_counter: NATURAL; a_bufsize: INTEGER; a_length: POINTER; a_counter_string: READABLE_STRING_GENERAL)
		local
			l_c_counter_string:C_STRING
		do
			create l_c_counter_string.make (a_counter_string)
			glGetPerfMonitorCounterStringAmdInternal(a_group, a_counter, a_bufsize, a_length, l_c_counter_string.item)
		ensure
			instance_free: class
		end

	glGetPerfMonitorGroupStringAmd(a_group: NATURAL; a_bufsize: INTEGER; a_length: POINTER; a_group_string: READABLE_STRING_GENERAL)
		local
			l_c_group_string:C_STRING
		do
			create l_c_group_string.make (a_group_string)
			glGetPerfMonitorGroupStringAmdInternal(a_group, a_bufsize, a_length, l_c_group_string.item)
		ensure
			instance_free: class
		end

--	glGetTranslatedShaderSourceAngle(a_shader: NATURAL): READABLE_STRING_GENERAL
--		local
--			l_c_source:C_STRING
--			l_source_pointer:POINTER
--		do
--			l_source_pointer := {POINTER}.memory_calloc (a_count, a_element_size: INTEGER_32)
--			create l_c_source.make (a_group_string)
--			glGetPerfMonitorGroupStringAmdInternal(a_group, a_bufsize, a_length, l_c_group_string.item)
--		ensure
--			instance_free: class
--		end

	glBindFragDataLocationIndexed(a_program: NATURAL; a_colornumber: NATURAL; a_index: NATURAL; a_name: READABLE_STRING_GENERAL)
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			glBindFragDataLocationIndexedInternal(a_program, a_colornumber, a_index, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetFragDataIndex(a_program: NATURAL; a_name: READABLE_STRING_GENERAL): INTEGER
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetFragDataIndexInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetProgramResourceName(a_program: NATURAL; a_program_interface: NATURAL; a_index: NATURAL): READABLE_STRING_GENERAL
		local
			l_c_name:C_STRING
			l_pointer:POINTER
			l_length:INTEGER
		do
			l_pointer := {POINTER}.memory_calloc (Buffer_size, 1)
			glGetProgramResourceNameInternal(a_program, a_program_interface, a_index, Buffer_size - 1, $l_length, l_pointer)
			create l_c_name.own_from_pointer_and_count (l_pointer, l_length)
			Result := l_c_name.string
		ensure
			instance_free: class
		end

	glCreateShaderProgramv(a_type: NATURAL; a_program_list:CHAIN[READABLE_STRING_GENERAL]):NATURAL
		local
			l_c_program:C_STRING
			l_count:INTEGER
			l_pointer:MANAGED_POINTER
			l_index:INTEGER
		do
			l_count := a_program_list.count
			create l_pointer.make (l_count * 4)
			l_index := 0
			across a_program_list as la_program_list loop
				create l_c_program.make (la_program_list.item)
				l_pointer.put_pointer (l_c_program.item, l_index)
				l_index := l_index + 1
			end
			Result := glCreateShaderProgramvInternal (a_type, l_count, l_pointer.item)
		end

	glGetProgramPipelineInfoLog(a_pipeline: NATURAL): READABLE_STRING_GENERAL
		local
			l_c_name:C_STRING
			l_pointer:POINTER
			l_length:INTEGER
		do
			l_pointer := {POINTER}.memory_calloc (Buffer_size, 1)
			glGetProgramPipelineInfoLogInternal(a_pipeline, Buffer_size - 1, $l_length, l_pointer)
			create l_c_name.own_from_pointer_and_count (l_pointer, l_length)
			Result := l_c_name.string
		ensure
			instance_free: class
		end

	glGetActiveSubroutineName(a_pipeline, a_shadertype, a_index: NATURAL): READABLE_STRING_GENERAL
		local
			l_c_name:C_STRING
			l_pointer:POINTER
			l_length:INTEGER
		do
			l_pointer := {POINTER}.memory_calloc (Buffer_size, 1)
			glGetActiveSubroutineNameInternal(a_pipeline, a_shadertype, a_index, Buffer_size - 1, $l_length, l_pointer)
			create l_c_name.own_from_pointer_and_count (l_pointer, l_length)
			Result := l_c_name.string
		ensure
			instance_free: class
		end

	glGetActiveSubroutineUniformName(a_pipeline, a_shadertype, a_index: NATURAL): READABLE_STRING_GENERAL
		local
			l_c_name:C_STRING
			l_pointer:POINTER
			l_length:INTEGER
		do
			l_pointer := {POINTER}.memory_calloc (Buffer_size, 1)
			glGetActiveSubroutineUniformNameInternal(a_pipeline, a_shadertype, a_index, Buffer_size - 1, $l_length, l_pointer)
			create l_c_name.own_from_pointer_and_count (l_pointer, l_length)
			Result := l_c_name.string
		ensure
			instance_free: class
		end



	glGetNamedStringArb(a_name:READABLE_STRING_GENERAL): READABLE_STRING_GENERAL
		local
			l_c_result, l_c_name:C_STRING
			l_pointer:POINTER
			l_length:INTEGER
		do
			create l_c_name.make (a_name)
			l_pointer := {POINTER}.memory_calloc (Buffer_size, 1)
			glGetNamedStringArbInternal(a_name.count, l_c_name.item, Buffer_size - 1, $l_length, l_pointer)
			create l_c_result.own_from_pointer_and_count (l_pointer, l_length)
			Result := l_c_result.string
		ensure
			instance_free: class
		end

	glNamedStringArb(a_type:NATURAL; a_name, a_string:READABLE_STRING_GENERAL)
		local
			l_c_string, l_c_name:C_STRING
			l_length:INTEGER
		do
			create l_c_name.make (a_name)
			create l_c_string.make (a_string)
			glNamedStringArbInternal(a_type, a_name.count, l_c_name.item, a_string.count, l_c_string.item)
		ensure
			instance_free: class
		end

	glIsNamedStringArb(a_name:READABLE_STRING_GENERAL):BOOLEAN
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glIsNamedStringArbInternal(a_name.count, l_c_name.item)
		ensure
			instance_free: class
		end

	glBindFragDataLocationIndexedExt(a_program, a_colornumber, a_index: NATURAL; a_name: READABLE_STRING_GENERAL)
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			glBindFragDataLocationIndexedExtInternal(a_program, a_colornumber, a_index, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetFragDataIndexExt(a_program: NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetFragDataIndexExtInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetProgramResourceLocationIndexExt(a_program, a_program_interface: NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetProgramResourceLocationIndexExtInternal(a_program, a_program_interface, l_c_name.item)
		ensure
			instance_free: class
		end



end
