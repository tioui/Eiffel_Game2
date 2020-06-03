note
	description: "GLEW Wrapper"
	author: "Louis Marchand"
	date: "Thu, 21 May 2020 18:16:44 +0000"
	revision: "2.0"
	todo: "[
			http://www.opengl.org/registry/specs/INTEL/performance_query.txt:
				glGetPerfCounterInfoINTEL as glGetPerfCounterInfoINTELInternal
				glGetPerfQueryInfoINTEL as glGetPerfQueryInfoINTELInternal
		]"

class
	GL

inherit
	GL_EXTERNAL
	GLEW_EXTERNAL
		rename
			glDebugMessageInsertAmd as glDebugMessageInsertAmdInternal,
			glGetDebugMessageLogAmd as glGetDebugMessageLogAmdInternal,
			glGetPerfMonitorCounterStringAmd as glGetPerfMonitorCounterStringAmdInternal,
			glGetPerfMonitorGroupStringAmd as glGetPerfMonitorGroupStringAmdInternal,
			glGetTranslatedShaderSourceAngle as glGetTranslatedShaderSourceAngleInternal,
			glBindFragDataLocationIndexed as glBindFragDataLocationIndexedInternal,
			glGetFragDataIndex as glGetFragDataIndexInternal,
			glBindFragDataLocationIndexedExt as glBindFragDataLocationIndexedExtInternal,
			glBindFragDataLocationEXT as glBindFragDataLocationEXTInternal,
			glGetFragDataLocationEXT as glGetFragDataLocationEXTInternal,
			glGetFragDataIndexExt as glGetFragDataIndexExtInternal,
			glGetProgramResourceName as glGetProgramResourceNameInternal,
			glCreateShaderProgramv as glCreateShaderProgramvInternal,
			glGetProgramPipelineInfoLog as glGetProgramPipelineInfoLogInternal,
			glGetActiveSubroutineName as glGetActiveSubroutineNameInternal,
			glGetActiveSubroutineUniformName as glGetActiveSubroutineUniformNameInternal,
			glGetNamedStringArb as glGetNamedStringArbInternal,
			glIsNamedStringArb as glIsNamedStringArbInternal,
			glNamedStringArb as glNamedStringArbInternal,
			glGetProgramResourceLocationIndexExt as glGetProgramResourceLocationIndexExtInternal,
			glInsertEventMarkerEXT as glInsertEventMarkerEXTInternal,
			glPushGroupMarkerEXT as glPushGroupMarkerEXTInternal,
			glActiveVaryingNV as glActiveVaryingNVInternal,
			glGetVaryingLocationNV as glGetVaryingLocationNVInternal,
			glGetActiveVaryingNV as glGetActiveVaryingNVInternal,
			glBindAttribLocation as glBindAttribLocationInternal,
			glGetActiveAttrib as glGetActiveAttribInternal,
			glGetActiveUniform as glGetActiveUniformInternal,
			glGetAttribLocation as glGetAttribLocationInternal,
			glGetProgramInfoLog as glGetProgramInfoLogInternal,
			glShaderSource as glShaderSourceInternal,
			glGetUniformLocation as glGetUniformLocationInternal,
			glGetShaderInfoLog as glGetShaderInfoLogInternal,
			glGetShaderSource as glGetShaderSourceInternal,
			glTransformFeedbackVaryings as glTransformFeedbackVaryingsInternal,
			glGetTransformFeedbackVarying as glGetTransformFeedbackVaryingInternal,
			glBindFragDataLocation as glBindFragDataLocationInternal,
			glGetFragDataLocation as glGetFragDataLocationInternal,
			glGetProgramResourceIndex as glGetProgramResourceIndexInternal,
			glGetProgramResourceLocation as glGetProgramResourceLocationInternal,
			glGetProgramResourceLocationIndex as glGetProgramResourceLocationIndexInternal,
			glGetSubroutineIndex as glGetSubroutineIndexInternal,
			glGetSubroutineUniformLocation as glGetSubroutineUniformLocationInternal,
			glCompileShaderIncludeARB as glCompileShaderIncludeARBInternal,
			glDeleteNamedStringARB as glDeleteNamedStringARBInternal,
			glGetNamedStringivARB as glGetNamedStringivARBInternal,
			glGetActiveUniformBlockName as glGetActiveUniformBlockNameInternal,
			glGetActiveUniformName as glGetActiveUniformNameInternal,
			glGetUniformBlockIndex as glGetUniformBlockIndexInternal,
			glGetUniformIndices as glGetUniformIndicesInternal,
			glGetObjectLabelEXT as glGetObjectLabelEXTInternal,
			glLabelObjectEXT as glLabelObjectEXTInternal,
			glCreateShaderProgramEXT as glCreateShaderProgramEXTInternal,
			glGetTransformFeedbackVaryingEXT as glGetTransformFeedbackVaryingEXTInternal,
			glTransformFeedbackVaryingsEXT as glTransformFeedbackVaryingsEXTInternal,
			glGetPerfQueryIdByNameINTEL as glGetPerfQueryIdByNameINTELInternal,
			glDebugMessageInsert as glDebugMessageInsertInternal,
			glGetDebugMessageLog as glGetDebugMessageLogInternal,
			glGetObjectLabel as glGetObjectLabelInternal,
			glGetObjectPtrLabel as glGetObjectPtrLabelInternal,
			glObjectLabel as glObjectLabelInternal,
			glObjectPtrLabel as glObjectPtrLabelInternal,
			glPushDebugGroup as glPushDebugGroupInternal,
			glGetVkProcAddrNV as glGetVkProcAddrNVInternal,
			glGetDriverControlStringQCOM as glGetDriverControlStringQCOMInternal,
			glExtGetProgramBinarySourceQCOM as glExtGetProgramBinarySourceQCOMInternal,
			glErrorStringREGAL as glErrorStringREGALInternal,
			glGetExtensionREGAL as glGetExtensionREGALInternal,
			glIsSupportedREGAL as glIsSupportedREGALInternal,
			glGetProcAddressREGAL as glGetProcAddressREGALInternal
		export
			{NONE} 	glDebugMessageInsertAmdInternal, glGetDebugMessageLogAmdInternal,
					glGetPerfMonitorCounterStringAmdInternal, glGetPerfMonitorGroupStringAmdInternal,
					glGetTranslatedShaderSourceAngleInternal, glBindFragDataLocationIndexedInternal,
					glGetFragDataIndexInternal, glGetProgramResourceNameInternal,
					glCreateShaderProgramvInternal, glGetProgramPipelineInfoLogInternal,
					glGetActiveSubroutineNameInternal, glGetActiveSubroutineUniformNameInternal,
					glGetNamedStringArbInternal, glIsNamedStringArbInternal, glNamedStringArbInternal,
					glBindFragDataLocationIndexedExtInternal, glGetFragDataIndexExtInternal,
					glGetProgramResourceLocationIndexExtInternal, glInsertEventMarkerEXTInternal,
					glPushGroupMarkerEXTInternal, glBindFragDataLocationEXTInternal, glGetFragDataLocationEXTInternal,
					glActiveVaryingNVInternal, glGetVaryingLocationNVInternal, glGetActiveVaryingNVInternal,
					glBindAttribLocationInternal, glGetActiveAttribInternal, glGetActiveUniformInternal,
					glGetAttribLocationInternal, glGetProgramInfoLogInternal, glShaderSourceInternal,
					glGetUniformLocationInternal, glGetShaderInfoLogInternal, glGetShaderSourceInternal,
					glTransformFeedbackVaryingsInternal, glGetTransformFeedbackVaryingInternal,
					glBindFragDataLocationInternal, glGetFragDataLocationInternal, glGetProgramResourceIndexInternal,
					glGetProgramResourceLocationInternal, glGetProgramResourceLocationIndexInternal,
					glGetSubroutineIndexInternal, glGetSubroutineUniformLocationInternal,
					glCompileShaderIncludeARBInternal, glDeleteNamedStringARBInternal,
					glGetNamedStringivARBInternal, glGetActiveUniformBlockNameInternal,
					glGetActiveUniformNameInternal, glGetUniformBlockIndexInternal, glGetUniformIndicesInternal,
					glGetObjectLabelEXTInternal, glLabelObjectEXTInternal,
					glCreateShaderProgramEXTInternal, glGetTransformFeedbackVaryingEXTInternal,
					glTransformFeedbackVaryingsEXTInternal, glGetPerfQueryIdByNameINTELInternal,
					glDebugMessageInsertInternal, glGetDebugMessageLogInternal, glGetObjectLabelInternal,
					glGetObjectPtrLabelInternal, glObjectLabelInternal, glObjectPtrLabelInternal,
					glPushDebugGroupInternal, glGetVkProcAddrNVInternal, glGetDriverControlStringQCOMInternal,
					glExtGetProgramBinarySourceQCOMInternal, glErrorStringREGALInternal,
					glGetExtensionREGALInternal, glIsSupportedREGALInternal, glGetProcAddressREGALInternal
		end

feature -- Constants

	Buffer_size:INTEGER = 255
			-- The buffer size used when creating {C_STRING}

feature -- Access

	glDebugMessageInsertAmd(a_category, a_severity, a_id: NATURAL; a_buffer:READABLE_STRING_GENERAL)
		require
			string_not_void: a_buffer /= Void
			string_is_valid_as_string_8: a_buffer.is_valid_as_string_8
		local
			l_c_buffer:C_STRING
		do
			create l_c_buffer.make (a_buffer)
			glDebugMessageInsertAmdInternal(a_category, a_severity, a_id, a_buffer.count + 1, l_c_buffer.item)
		ensure
			instance_free: class
		end

	glGetDebugMessageLogAmd(a_count: NATURAL): LIST[TUPLE[id, category, severity:NATURAL; message:STRING]]
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
			create {ARRAYED_LIST[TUPLE[id, category, severity:NATURAL; message:STRING]]}Result.make (l_message_count.to_integer_32)
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

	glGetPerfMonitorCounterStringAmd(a_group: NATURAL; a_counter: NATURAL; a_bufsize: INTEGER; a_length: POINTER; a_counter_string: READABLE_STRING_GENERAL)
		require
			string_not_void: a_counter_string /= Void
			string_is_valid_as_string_8: a_counter_string.is_valid_as_string_8
		local
			l_c_counter_string:C_STRING
		do
			create l_c_counter_string.make (a_counter_string)
			glGetPerfMonitorCounterStringAmdInternal(a_group, a_counter, a_bufsize, a_length, l_c_counter_string.item)
		ensure
			instance_free: class
		end

	glGetPerfMonitorGroupStringAmd(a_group: NATURAL; a_bufsize: INTEGER; a_length: POINTER; a_group_string: READABLE_STRING_GENERAL)
		require
			string_not_void: a_group_string /= Void
			string_is_valid_as_string_8: a_group_string.is_valid_as_string_8
		local
			l_c_group_string:C_STRING
		do
			create l_c_group_string.make (a_group_string)
			glGetPerfMonitorGroupStringAmdInternal(a_group, a_bufsize, a_length, l_c_group_string.item)
		ensure
			instance_free: class
		end

	glGetTranslatedShaderSourceAngle(a_shader: NATURAL): STRING
		local
			l_c_source:C_STRING
			l_source_pointer:POINTER
			l_length_buffer, l_length:INTEGER
		do
			glGetShaderiv(a_shader, GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE, $l_length_buffer)

			l_source_pointer := {POINTER}.memory_calloc (l_length_buffer + 1, 1)
			glGetPerfMonitorGroupStringAmdInternal(a_shader, l_length_buffer, $l_length, l_source_pointer)
			create l_c_source.own_from_pointer (l_source_pointer)
			Result := l_c_source.string
		ensure
			instance_free: class
		end

	glBindFragDataLocationIndexed(a_program: NATURAL; a_colornumber: NATURAL; a_index: NATURAL; a_name: READABLE_STRING_GENERAL)
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			glBindFragDataLocationIndexedInternal(a_program, a_colornumber, a_index, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetFragDataIndex(a_program: NATURAL; a_name: READABLE_STRING_GENERAL): INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetFragDataIndexInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end

	glBindFragDataLocationIndexedExt(a_program, a_colornumber, a_index: NATURAL; a_name: READABLE_STRING_GENERAL)
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			glBindFragDataLocationIndexedExtInternal(a_program, a_colornumber, a_index, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetFragDataIndexExt(a_program: NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetFragDataIndexExtInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end

	glBindFragDataLocationEXT(a_program, a_color: NATURAL; a_name: READABLE_STRING_GENERAL)
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			glBindFragDataLocationEXTInternal(a_program, a_color, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetFragDataLocationEXT(a_program: NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetFragDataLocationEXTInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end


	glGetProgramResourceName(a_program: NATURAL; a_program_interface: NATURAL; a_index: NATURAL): STRING
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
		require
			string_is_valid_as_string_8: across a_program_list as la_list all attached la_list.item and then la_list.item.is_valid_as_string_8 end
		local
			l_c_program:C_STRING
			l_count:INTEGER
			l_pointer:MANAGED_POINTER
			l_index:INTEGER
			l_strings:ARRAYED_LIST[C_STRING]
		do
			l_count := a_program_list.count
			create l_pointer.make (l_count * {MANAGED_POINTER}.pointer_bytes)
			l_index := 0
			create l_strings.make (l_count)
			across a_program_list as la_program_list loop
				create l_c_program.make (la_program_list.item)
				l_strings.extend (l_c_program)
				l_pointer.put_pointer (l_c_program.item, l_index * {MANAGED_POINTER}.pointer_bytes)
				l_index := l_index + 1
			end
			Result := glCreateShaderProgramvInternal (a_type, l_count, l_pointer.item)
		end

	glGetProgramPipelineInfoLog(a_pipeline: NATURAL): STRING
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

	glGetActiveSubroutineName(a_pipeline, a_shadertype, a_index: NATURAL): STRING
		local
			l_c_name:C_STRING
			l_pointer:POINTER
		do
			l_pointer := {POINTER}.memory_calloc (Buffer_size, 1)
			glGetActiveSubroutineNameInternal(a_pipeline, a_shadertype, a_index, Buffer_size - 1, create {POINTER}, l_pointer)
			create l_c_name.own_from_pointer (l_pointer)
			Result := l_c_name.string
		ensure
			instance_free: class
		end

	glGetActiveSubroutineUniformName(a_pipeline, a_shadertype, a_index: NATURAL): STRING
		local
			l_c_name:C_STRING
			l_pointer:POINTER
		do
			l_pointer := {POINTER}.memory_calloc (Buffer_size, 1)
			glGetActiveSubroutineUniformNameInternal(a_pipeline, a_shadertype, a_index, Buffer_size - 1, create {POINTER}, l_pointer)
			create l_c_name.own_from_pointer (l_pointer)
			Result := l_c_name.string
		ensure
			instance_free: class
		end



	glGetNamedStringArb(a_name:READABLE_STRING_GENERAL): STRING
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
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
		require
			name_not_void: a_name /= Void
			name_is_valid_as_string_8: a_name.is_valid_as_string_8
			string_not_void: a_string /= Void
			string_is_valid_as_string_8: a_string.is_valid_as_string_8
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
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glIsNamedStringArbInternal(a_name.count, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetProgramResourceLocationIndexExt(a_program, a_program_interface: NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetProgramResourceLocationIndexExtInternal(a_program, a_program_interface, l_c_name.item)
		ensure
			instance_free: class
		end

	glInsertEventMarkerEXT(a_marker: READABLE_STRING_GENERAL)
		require
			string_not_void: a_marker /= Void
			string_is_valid_as_string_8: a_marker.is_valid_as_string_8
		local
			l_c_marker:C_STRING
		do
			create l_c_marker.make (a_marker)
			glInsertEventMarkerEXTInternal(0, l_c_marker.item)
		ensure
			instance_free: class
		end

	glPushGroupMarkerEXT(a_marker: READABLE_STRING_GENERAL)
		require
			string_not_void: a_marker /= Void
			string_is_valid_as_string_8: a_marker.is_valid_as_string_8
		local
			l_c_marker:C_STRING
		do
			create l_c_marker.make (a_marker)
			glPushGroupMarkerEXTInternal(0, l_c_marker.item)
		ensure
			instance_free: class
		end

	glActiveVaryingNV(a_program:NATURAL; a_name: READABLE_STRING_GENERAL)
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			glActiveVaryingNVInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetVaryingLocationNV(a_program:NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetVaryingLocationNVInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetActiveVaryingNV(a_program, a_index:NATURAL):TUPLE[type:NATURAL; size:INTEGER; name:STRING]
		local
			l_c_name:C_STRING
			l_c_pointer:POINTER
			l_type:NATURAL
			l_size:INTEGER
		do
			l_c_pointer := {POINTER}.memory_calloc (Buffer_size, 1)
			glGetActiveVaryingNVInternal(a_program, a_index, Buffer_size, create {POINTER}, $l_size, $l_type, l_c_pointer.item)
			create l_c_name.own_from_pointer (l_c_pointer)
			Result := [l_type, l_size, l_c_name.string]
		ensure
			instance_free: class
		end

	glBindAttribLocation(a_program: NATURAL; a_index: NATURAL; a_name: READABLE_STRING_GENERAL)
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			glBindAttribLocationInternal(a_program, a_index, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetActiveAttrib(a_program, a_index: NATURAL):TUPLE[type:NATURAL; size:INTEGER; name:STRING]
		local
			l_buffer_size:INTEGER
			l_c_name:C_STRING
			l_pointer:POINTER
			l_size:INTEGER
			l_type:NATURAL
		do
			glGetProgramiv(a_program, GL_ACTIVE_ATTRIBUTE_MAX_LENGTH, $l_buffer_size)
			l_pointer := {POINTER}.memory_calloc (l_buffer_size + 1, 1)
			glGetActiveAttribInternal(a_program, a_index, l_buffer_size, create {POINTER}, $l_size, $l_type, l_pointer.item)
			create l_c_name.own_from_pointer (l_pointer)
			Result := [l_type, l_size, l_c_name.string]
		ensure
			instance_free: class
		end

	glGetAttribLocation(a_program:NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetAttribLocationInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetProgramInfoLog(a_program: NATURAL): STRING
		local
			l_buffer_size:INTEGER
			l_c_log:C_STRING
			l_pointer:POINTER
			l_length:INTEGER
		do
			glGetProgramiv(a_program, GL_INFO_LOG_LENGTH, $l_buffer_size)
			l_pointer := {POINTER}.memory_calloc (l_buffer_size + 1, 1)
			glGetProgramInfoLogInternal(a_program, l_buffer_size, create{POINTER}, l_pointer)
			create l_c_log.own_from_pointer_and_count (l_pointer, l_length)
			Result := l_c_log.string
		ensure
			instance_free: class
		end

	glGetShaderInfoLog(a_shader: NATURAL): STRING
		local
			l_buffer_size:INTEGER
			l_c_log:C_STRING
			l_pointer:POINTER
			l_length:INTEGER
		do
			glGetShaderiv(a_shader, GL_INFO_LOG_LENGTH, $l_buffer_size)
			l_pointer := {POINTER}.memory_calloc (l_buffer_size + 1, 1)
			glGetShaderInfoLogInternal(a_shader, l_buffer_size, create{POINTER}, l_pointer)
			create l_c_log.own_from_pointer_and_count (l_pointer, l_length)
			Result := l_c_log.string
		ensure
			instance_free: class
		end

	glShaderSource(a_shader:NATURAL; a_shaders:CHAIN[READABLE_STRING_GENERAL])
		require
			strings_is_valid_as_string_8: across a_shaders as la_list all attached la_list.item and then la_list.item.is_valid_as_string_8 end
		local
			l_shaders_pointer:MANAGED_POINTER
			l_count:INTEGER
			l_strings:ARRAYED_LIST[C_STRING]
			l_c_string:C_STRING
		do
			create l_shaders_pointer.make (a_shaders.count * {MANAGED_POINTER}.pointer_bytes)
			l_count := 0
			create l_strings.make (a_shaders.count)
			across a_shaders as la_shaders loop
				create l_c_string.make (la_shaders.item)
				l_strings.extend (l_c_string)
				l_shaders_pointer.put_pointer (l_c_string.item, l_count* {MANAGED_POINTER}.pointer_bytes)
				l_count := l_count + 1
			end
			glShaderSourceInternal(a_shader, a_shaders.count, l_shaders_pointer.item, create {POINTER})
		ensure
			instance_free: class
		end

	glGetUniformLocation(a_program:NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetUniformLocationInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetShaderSource(a_shader:NATURAL):STRING
		local
			l_c_source:C_STRING
			l_source_pointer:POINTER
			l_length_buffer, l_length:INTEGER
		do
			glGetShaderiv(a_shader, GL_SHADER_SOURCE_LENGTH, $l_length_buffer)

			l_source_pointer := {POINTER}.memory_calloc (l_length_buffer + 1, 1)
			glGetShaderSourceInternal(a_shader, l_length_buffer, create {POINTER}, l_source_pointer.item)
			create l_c_source.own_from_pointer (l_source_pointer)
			Result := l_c_source.string
		ensure
			instance_free: class
		end

	glTransformFeedbackVaryings(a_program, a_buffer_mode:NATURAL a_varyings:CHAIN[READABLE_STRING_GENERAL])
		require
			strings_is_valid_as_string_8: across a_varyings as la_list all attached la_list.item and then la_list.item.is_valid_as_string_8 end
		local
			l_varyings_pointer:MANAGED_POINTER
			l_count:INTEGER
			l_strings:ARRAYED_LIST[C_STRING]
			l_c_string:C_STRING
		do
			create l_varyings_pointer.make (a_varyings.count * {MANAGED_POINTER}.pointer_bytes)
			l_count := 0
			create l_strings.make (a_varyings.count)
			across a_varyings as la_varyings loop
				create l_c_string.make (la_varyings.item)
				l_strings.extend (l_c_string)
				l_varyings_pointer.put_pointer (l_c_string.item, l_count* {MANAGED_POINTER}.pointer_bytes)
				l_count := l_count + 1
			end
			glTransformFeedbackVaryingsInternal(a_program, a_varyings.count, l_varyings_pointer.item, a_buffer_mode)
		ensure
			instance_free: class
		end

	glGetTransformFeedbackVarying(a_program, a_index: NATURAL):TUPLE[type:NATURAL; size:INTEGER; name:STRING]
		local
			l_buffer_size:INTEGER
			l_c_name:C_STRING
			l_pointer:POINTER
			l_size:INTEGER
			l_type:NATURAL
		do
			glGetProgramiv(a_program, GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH, $l_buffer_size)
			l_pointer := {POINTER}.memory_calloc (l_buffer_size + 1, 1)
			glGetTransformFeedbackVaryingInternal(a_program, a_index, l_buffer_size, create {POINTER}, $l_size, $l_type, l_pointer.item)
			create l_c_name.own_from_pointer (l_pointer)
			Result := [l_type, l_size, l_c_name.string]
		ensure
			instance_free: class
		end

	glBindFragDataLocation(a_program, a_color: NATURAL; a_name: READABLE_STRING_GENERAL)
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			glBindFragDataLocationInternal(a_program, a_color, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetFragDataLocation(a_program: NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetFragDataLocationInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetProgramResourceIndex(a_program, a_program_interface: NATURAL; a_name: READABLE_STRING_GENERAL):NATURAL
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetProgramResourceIndexInternal(a_program, a_program_interface,l_c_name.item)
		ensure
			instance_free: class
		end

	glGetProgramResourceLocationIndex(a_program, a_program_interface: NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetProgramResourceLocationIndexInternal(a_program, a_program_interface, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetProgramResourceLocation(a_program, a_program_interface: NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetProgramResourceLocationInternal(a_program, a_program_interface, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetSubroutineIndex(a_program, a_shader_type: NATURAL; a_name: READABLE_STRING_GENERAL):NATURAL
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetSubroutineIndexInternal(a_program, a_shader_type, l_c_name.item)
		ensure
			instance_free: class
		end

	glGetSubroutineUniformLocation(a_program, a_shader_type: NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			Result := glGetSubroutineUniformLocationInternal(a_program, a_shader_type, l_c_name.item)
		ensure
			instance_free: class
		end

	glDeleteNamedStringARB(a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
		do
			create l_c_name.make (a_name)
			glDeleteNamedStringARBInternal(a_name.count, l_c_name.item)
		ensure
			instance_free: class
		end

	glCompileShaderIncludeARB(a_shader:NATURAL a_paths:CHAIN[READABLE_STRING_GENERAL])
		require
			strings_is_valid_as_string_8: across a_paths as la_list all attached la_list.item and then la_list.item.is_valid_as_string_8 end
		local
			l_paths_pointer:MANAGED_POINTER
			l_count:INTEGER
			l_strings:ARRAYED_LIST[C_STRING]
			l_c_string:C_STRING
		do
			create l_paths_pointer.make (a_paths.count * {MANAGED_POINTER}.pointer_bytes)
			l_count := 0
			create l_strings.make (a_paths.count)
			across a_paths as la_paths loop
				create l_c_string.make (la_paths.item)
				l_strings.extend (l_c_string)
				l_paths_pointer.put_pointer (l_c_string.item, l_count* {MANAGED_POINTER}.pointer_bytes)
				l_count := l_count + 1
			end
			glCompileShaderIncludeARBInternal(a_shader, a_paths.count, l_paths_pointer.item, create {POINTER})
		ensure
			instance_free: class
		end

	glGetNamedStringivARB(a_param_type:NATURAL; a_name: READABLE_STRING_GENERAL):INTEGER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
			l_param:INTEGER
		do
			create l_c_name.make (a_name)
			glGetNamedStringivARBInternal(-1, l_c_name.item, a_param_type, $l_param)
			Result := l_param
		ensure
			instance_free: class
		end

	glGetActiveUniformBlockName(a_program, a_uniform_block_index: NATURAL): STRING
		local
			l_c_source:C_STRING
			l_source_pointer:POINTER
			l_length_buffer:INTEGER
		do


			l_source_pointer := {POINTER}.memory_calloc (buffer_size + 1, 1)
			glGetActiveUniformBlockNameInternal(a_program, a_uniform_block_index, buffer_size, create {POINTER}, l_source_pointer)
			create l_c_source.own_from_pointer (l_source_pointer)
			Result := l_c_source.string
		ensure
			instance_free: class
		end

	glGetActiveUniformName(a_program, a_uniform_index: NATURAL): STRING
		local
			l_c_source:C_STRING
			l_source_pointer:POINTER
			l_length_buffer:INTEGER
		do
			glGetProgramiv(a_program, GL_ACTIVE_UNIFORM_MAX_LENGTH, $l_length_buffer)

			l_source_pointer := {POINTER}.memory_calloc (l_length_buffer + 1, 1)
			glGetActiveUniformNameInternal(a_program, a_uniform_index, l_length_buffer, create {POINTER}, l_source_pointer)
			create l_c_source.own_from_pointer (l_source_pointer)
			Result := l_c_source.string
		ensure
			instance_free: class
		end

	glGetUniformBlockIndex(a_program:NATURAL; a_uniform_block_name: READABLE_STRING_GENERAL):NATURAL
		require
			string_not_void: a_uniform_block_name /= Void
			string_is_valid_as_string_8: a_uniform_block_name.is_valid_as_string_8
		local
			l_c_name:C_STRING
			l_param:INTEGER
		do
			create l_c_name.make (a_uniform_block_name)
			Result := glGetUniformBlockIndexInternal(a_program, l_c_name.item)
		ensure
			instance_free: class
		end


	glGetUniformIndices(a_program: NATURAL; a_uniform_names:CHAIN[READABLE_STRING_GENERAL]):LIST[NATURAL]
		require
			strings_is_valid_as_string_8: across a_uniform_names as la_list all attached la_list.item and then la_list.item.is_valid_as_string_8 end
		local
			l_index:INTEGER
			l_array:MANAGED_POINTER
			l_c_string:C_STRING
			l_c_strings:ARRAYED_LIST[C_STRING]
			l_result:ARRAY[NATURAL]
			l_c_result:ANY
		do
			create l_array.make (a_uniform_names.count * {MANAGED_POINTER}.pointer_bytes)
			l_index := 0
			create l_c_strings.make (a_uniform_names.count)
			across a_uniform_names as la_names loop
				create l_c_string.make (la_names.item)
				l_c_strings.extend (l_c_string)
				l_array.put_pointer (l_c_string.item, l_index * {MANAGED_POINTER}.pointer_bytes)
				l_index := l_index + 1
			end
			create l_result.make_filled (0, 1, a_uniform_names.count)
			l_c_result := l_result.to_c
			glGetUniformIndicesInternal(a_program, a_uniform_names.count, l_array.item, $l_c_result)
			create {ARRAYED_LIST[NATURAL]}Result.make_from_array (l_result)
		ensure
			instance_free: class
		end

	glGetObjectLabelEXT(a_type, a_object: NATURAL): STRING
		local
			l_c_source:C_STRING
			l_source_pointer:POINTER
			l_length_buffer:INTEGER
		do
			l_source_pointer := {POINTER}.memory_calloc (Buffer_size + 1, 1)
			glGetObjectLabelEXTInternal(a_type, a_object, Buffer_size, create {POINTER}, l_source_pointer)
			create l_c_source.own_from_pointer (l_source_pointer)
			Result := l_c_source.string
		ensure
			instance_free: class
		end

	glLabelObjectEXT(a_type, a_object:NATURAL; a_label: READABLE_STRING_GENERAL)
		require
			string_not_void: a_label /= Void
			string_is_valid_as_string_8: a_label.is_valid_as_string_8
		local
			l_c_label:C_STRING
			l_param:INTEGER
		do
			create l_c_label.make (a_label)
			glLabelObjectEXTInternal(a_type, a_object, 0, l_c_label.item)
		ensure
			instance_free: class
		end

	glCreateShaderProgramEXT(a_type:NATURAL; a_string: READABLE_STRING_GENERAL):NATURAL
		require
			string_not_void: a_string /= Void
			string_is_valid_as_string_8: a_string.is_valid_as_string_8
		local
			l_c_string:C_STRING
			l_param:INTEGER
		do
			create l_c_string.make (a_string)
			Result := glCreateShaderProgramEXTInternal(a_type, l_c_string.item)
		ensure
			instance_free: class
		end

	glGetTransformFeedbackVaryingEXT(a_program, a_index: NATURAL):TUPLE[type:NATURAL; size:INTEGER; name:STRING]
		local
			l_buffer_size:INTEGER
			l_c_name:C_STRING
			l_pointer:POINTER
			l_size:INTEGER
			l_type:NATURAL
		do
			glGetProgramiv(a_program, GL_ACTIVE_ATTRIBUTE_MAX_LENGTH, $l_buffer_size)
			l_pointer := {POINTER}.memory_calloc (l_buffer_size + 1, 1)
			glGetTransformFeedbackVaryingInternal(a_program, a_index, l_buffer_size, create {POINTER}, $l_size, $l_type, l_pointer.item)
			create l_c_name.own_from_pointer (l_pointer)
			Result := [l_type, l_size, l_c_name.string]
		ensure
			instance_free: class
		end

	glTransformFeedbackVaryingsEXT(a_program:NATURAL; a_varyings:CHAIN[READABLE_STRING_GENERAL]; a_buffer_mode:NATURAL)
		require
			strings_is_valid_as_string_8: across a_varyings as la_list all attached la_list.item and then la_list.item.is_valid_as_string_8 end
		local
			l_varyings_pointer:MANAGED_POINTER
			l_count:INTEGER
			l_strings:ARRAYED_LIST[C_STRING]
			l_c_string:C_STRING
		do
			create l_varyings_pointer.make (a_varyings.count * {MANAGED_POINTER}.pointer_bytes)
			l_count := 0
			create l_strings.make (a_varyings.count)
			across a_varyings as la_varyings loop
				create l_c_string.make (la_varyings.item)
				l_strings.extend (l_c_string)
				l_varyings_pointer.put_pointer (l_c_string.item, l_count* {MANAGED_POINTER}.pointer_bytes)
				l_count := l_count + 1
			end
			glTransformFeedbackVaryingsEXTInternal(a_program, a_varyings.count, l_varyings_pointer.item, a_buffer_mode)
		ensure
			instance_free: class
		end

	glGetPerfQueryIdByNameINTEL(a_query_name: READABLE_STRING_GENERAL):NATURAL
		require
			string_not_void: a_query_name /= Void
			string_is_valid_as_string_8: a_query_name.is_valid_as_string_8
		local
			l_c_string:C_STRING
			l_id:NATURAL
		do
			create l_c_string.make (a_query_name)
			glGetPerfQueryIdByNameINTELInternal(l_c_string.item, $l_id)
			Result := l_id
		ensure
			instance_free: class
		end

	glDebugMessageInsert(a_source, a_type, a_id, a_severity: NATURAL; a_query_name: READABLE_STRING_GENERAL)
		require
			string_not_void: a_query_name /= Void
			string_is_valid_as_string_8: a_query_name.is_valid_as_string_8
		local
			l_c_string:C_STRING
		do
			create l_c_string.make (a_query_name)
			glDebugMessageInsertInternal(a_source, a_type, a_id, a_severity, -1, l_c_string.item)
		ensure
			instance_free: class
		end

	glGetDebugMessageLog:LIST[TUPLE[source, type, id, severity:NATURAL; message:STRING]]
		local
			l_error:NATURAL
			l_messages_pointer, l_original_pointer:POINTER
			l_message_length, l_message_count:INTEGER
			l_message_c:C_STRING
			l_sources, l_types, l_ids, l_severities, l_lengths:ARRAY[NATURAL]
			l_sources_c, l_types_c, l_ids_c, l_severities_c, l_lengths_c:ANY
		do
			glGetIntegerv(GL_MAX_DEBUG_MESSAGE_LENGTH, $l_message_length)
			glGetIntegerv(GL_DEBUG_LOGGED_MESSAGES, $l_message_count)
			create l_sources.make_filled (0, 1, l_message_count)
			l_sources_c := l_sources.to_c
			create l_types.make_filled (0, 1, l_message_count)
			l_types_c := l_types.to_c
			create l_ids.make_filled (0, 1, l_message_count)
			l_ids_c := l_ids.to_c
			create l_severities.make_filled (0, 1, l_message_count)
			l_severities_c := l_severities.to_c
			create l_lengths.make_filled (0, 1, l_message_count)
			l_lengths_c := l_lengths.to_c
			l_messages_pointer := {POINTER}.memory_calloc (l_message_length * l_message_count + 1, 1)
			l_original_pointer := l_messages_pointer
			l_error := glGetDebugMessageLogInternal(
							l_message_count.to_natural_32,l_message_length * l_message_count,
							$l_sources_c, $l_types_c, $l_ids_c, $l_severities_c, $l_lengths_c, l_messages_pointer
						)
			create {ARRAYED_LIST[TUPLE[source, type, id, severity:NATURAL; message:STRING]]}Result.make(l_message_count)
			across 1 |..| l_message_count as la_index loop
				create l_message_c.make_shared_from_pointer_and_count (l_messages_pointer, l_lengths.at (la_index.item).to_integer_32)
				Result.extend ([
								l_sources.at (la_index.item),
								l_types.at (la_index.item),
								l_ids.at (la_index.item),
								l_severities.at (la_index.item),
								l_message_c.substring (1, l_lengths.at (la_index.item).to_integer_32)
							])
				l_messages_pointer := l_messages_pointer + l_lengths.at (la_index.item).to_integer_32
			end
			l_original_pointer.memory_free
		ensure
			instance_free: class
		end

	glGetObjectLabel(a_identifier, a_name:NATURAL): STRING
		local
			l_label_length:INTEGER
			l_pointer:POINTER
		do
			glGetIntegerv(GL_MAX_LABEL_LENGTH, $l_label_length)
			l_pointer := {POINTER}.memory_calloc (l_label_length + 1, 1)
			glGetObjectLabelInternal(a_identifier, a_name, l_label_length, create {POINTER}, l_pointer)
			Result := (create {C_STRING}.own_from_pointer (l_pointer)).string
		ensure
			instance_free: class
		end

	glGetObjectPtrLabel(a_ptr:POINTER): STRING
		local
			l_label_length:INTEGER
			l_pointer:POINTER
		do
			glGetIntegerv(GL_MAX_LABEL_LENGTH, $l_label_length)
			l_pointer := {POINTER}.memory_calloc (l_label_length + 1, 1)
			glGetObjectPtrLabelInternal(a_ptr, l_label_length, create {POINTER}, l_pointer)
			Result := (create {C_STRING}.own_from_pointer (l_pointer)).string
		ensure
			instance_free: class
		end

	glObjectLabel(a_identifier, a_name:NATURAL; a_label:READABLE_STRING_GENERAL)
		require
			string_not_void: a_label /= Void
			string_is_valid_as_string_8: a_label.is_valid_as_string_8
		local
			l_label_c:C_STRING
		do
			create l_label_c.make (a_label)
			glObjectLabelInternal(a_identifier, a_name, -1, l_label_c.item)
		ensure
			instance_free: class
		end

	glObjectPtrLabel(a_ptr:POINTER; a_label:READABLE_STRING_GENERAL)
		require
			string_not_void: a_label /= Void
			string_is_valid_as_string_8: a_label.is_valid_as_string_8
		local
			l_label_c:C_STRING
		do
			create l_label_c.make (a_label)
			glObjectPtrLabelInternal(a_ptr, -1, l_label_c.item)
		ensure
			instance_free: class
		end

	glPushDebugGroup(a_source, a_id:NATURAL; a_message:READABLE_STRING_GENERAL)
		require
			string_not_void: a_message /= Void
			string_is_valid_as_string_8: a_message.is_valid_as_string_8
		local
			l_message_c:C_STRING
		do
			create l_message_c.make (a_message)
			glPushDebugGroupInternal(a_source, a_id, -1, l_message_c.item)
		ensure
			instance_free: class
		end

	glGetVkProcAddrNV(a_name:READABLE_STRING_GENERAL):POINTER
		require
			string_not_void: a_name /= Void
			string_is_valid_as_string_8: a_name.is_valid_as_string_8
		local
			l_name_c:C_STRING
		do
			create l_name_c.make (a_name)
			Result := glGetVkProcAddrNVInternal(l_name_c.item)
		ensure
			instance_free: class
		end

	glGetDriverControlStringQCOM(a_driver_control:NATURAL):STRING
		local
			l_pointer:POINTER
			l_name_c:C_STRING
			l_buffer_size:INTEGER
		do
			glGetDriverControlStringQCOMInternal(a_driver_control, 0, $l_buffer_size, create {POINTER})
			if l_buffer_size < 1 then
				l_buffer_size := Buffer_size
			end
			l_pointer := {POINTER}.memory_calloc (l_buffer_size + 1, 1)
			glGetDriverControlStringQCOMInternal(a_driver_control, l_buffer_size, create {POINTER}, l_pointer)
			Result := (create {C_STRING}.own_from_pointer (l_pointer)).string
		ensure
			instance_free: class
		end

	glExtGetProgramBinarySourceQCOM(a_program, a_shader_type:NATURAL):STRING
		local
			l_pointer:POINTER
			l_name_c:C_STRING
			l_buffer_size, l_length:INTEGER
		do
			l_buffer_size := Buffer_size * 2
			l_pointer := {POINTER}.memory_calloc (l_buffer_size + 1, 1)
			glExtGetProgramBinarySourceQCOMInternal(a_program, a_shader_type, l_pointer, $l_length)
			Result := (create {C_STRING}.own_from_pointer (l_pointer)).string
		ensure
			instance_free: class
		end

	glErrorStringREGAL(a_error:NATURAL):STRING
		local
			l_pointer:POINTER
		do
			l_pointer := glErrorStringREGALInternal(a_error)
			Result := (create {C_STRING}.make_shared_from_pointer (l_pointer)).string
		ensure
			instance_free: class
		end

	glGetExtensionREGAL(a_ext:READABLE_STRING_GENERAL):BOOLEAN
		require
			string_not_void: a_ext /= Void
			string_is_valid_as_string_8: a_ext.is_valid_as_string_8
		local
			l_pointer:POINTER
			l_c_string:C_STRING
		do
			create l_c_string.make (a_ext)
			Result := glGetExtensionREGALInternal(l_c_string.item)
		ensure
			instance_free: class
		end

	glIsSupportedREGAL(a_ext:READABLE_STRING_GENERAL):BOOLEAN
		require
			string_not_void: a_ext /= Void
			string_is_valid_as_string_8: a_ext.is_valid_as_string_8
		local
			l_pointer:POINTER
			l_c_string:C_STRING
		do
			create l_c_string.make (a_ext)
			Result := glIsSupportedREGALInternal(l_c_string.item)
		ensure
			instance_free: class
		end

	glGetProcAddressREGAL(a_ext:READABLE_STRING_GENERAL):POINTER
		require
			string_not_void: a_ext /= Void
			string_is_valid_as_string_8: a_ext.is_valid_as_string_8
		local
			l_pointer:POINTER
			l_c_string:C_STRING
		do
			create l_c_string.make (a_ext)
			Result := glGetProcAddressREGALInternal(l_c_string.item)
		ensure
			instance_free: class
		end


end
