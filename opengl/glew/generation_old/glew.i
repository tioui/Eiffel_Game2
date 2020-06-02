%module glew_external
%{
note
    description: "External methods for the GLEW standard library"
    author: "Louis Marchand"
    date: "Thu, 21 May 2020 13:43:03 +0000"
    revision: "2.0"

class
    GLEW_EXTERNAL

feature -- C external

%}

%feature("h_file", "<glew_order.h>");

%feature("numeric_define_type", "unsigned int");
%feature("prefix", "start1234");
%feature("sufix", "4321end");

typedef unsigned int GLenum;
typedef unsigned int GLbitfield;
typedef unsigned int GLuint;
typedef int GLint;
typedef int GLsizei;
typedef bool GLboolean;
typedef signed char GLbyte;
typedef short GLshort;
typedef unsigned char GLubyte;
typedef unsigned short GLushort;
typedef unsigned long GLulong;
typedef float GLfloat;
typedef float GLclampf;
typedef double GLdouble;
typedef double GLclampd;
typedef void GLvoid;

typedef long long GLint64EXT;
typedef unsigned long long GLuint64EXT;
typedef GLint64EXT  GLint64;
typedef GLuint64EXT  GLuint64;
typedef struct __GLsync *GLsync;

typedef char GLchar;

typedef void *GLeglImageOES;

typedef void *GLDEBUGPROCAMD;
typedef void *GLDEBUGPROCARB;
typedef void *GLDEBUGPROC;
typedef void *GLVULKANPROCNV;
typedef void *GLLOGPROCREGAL;

typedef GLint *GLintptr;
typedef GLsize *GLsizeiptr;
typedef long long ptrdiff_t;
typedef ptrdiff_t GLsizeiptrARB;
typedef ptrdiff_t GLintptrARB;

GLenum glewInit (void);
GLboolean glewIsSupported (const char *name);
GLboolean glewIsExtensionSupported (const char *name);

GLboolean glewExperimental;
GLboolean glewGetExtension (const char *name);
const GLubyte * glewGetErrorString (GLenum error);
const GLubyte * glewGetString (GLenum name);



#define GL_MULTISAMPLE_3DFX 0x86B2
#define GL_SAMPLE_BUFFERS_3DFX 0x86B3
#define GL_SAMPLES_3DFX 0x86B4
#define GL_MULTISAMPLE_BIT_3DFX 0x20000000
void glTbufferMask3DFX (GLuint mask);
#define GL_COMPRESSED_RGB_FXT1_3DFX 0x86B0
#define GL_COMPRESSED_RGBA_FXT1_3DFX 0x86B1
#define GL_FACTOR_MIN_AMD 0x901C
#define GL_FACTOR_MAX_AMD 0x901D
#define GL_3DC_X_AMD 0x87F9
#define GL_3DC_XY_AMD 0x87FA
#define GL_ATC_RGBA_INTERPOLATED_ALPHA_AMD 0x87EE
#define GL_ATC_RGB_AMD 0x8C92
#define GL_ATC_RGBA_EXPLICIT_ALPHA_AMD 0x8C93
#define GL_MAX_DEBUG_MESSAGE_LENGTH_AMD 0x9143
#define GL_MAX_DEBUG_LOGGED_MESSAGES_AMD 0x9144
#define GL_DEBUG_LOGGED_MESSAGES_AMD 0x9145
#define GL_DEBUG_SEVERITY_HIGH_AMD 0x9146
#define GL_DEBUG_SEVERITY_MEDIUM_AMD 0x9147
#define GL_DEBUG_SEVERITY_LOW_AMD 0x9148
#define GL_DEBUG_CATEGORY_API_ERROR_AMD 0x9149
#define GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD 0x914A
#define GL_DEBUG_CATEGORY_DEPRECATION_AMD 0x914B
#define GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD 0x914C
#define GL_DEBUG_CATEGORY_PERFORMANCE_AMD 0x914D
#define GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD 0x914E
#define GL_DEBUG_CATEGORY_APPLICATION_AMD 0x914F
#define GL_DEBUG_CATEGORY_OTHER_AMD 0x9150
void glDebugMessageCallbackAMD (GLDEBUGPROCAMD callback, void *userParam);
void glDebugMessageEnableAMD (GLenum category, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled);
void glDebugMessageInsertAMD (GLenum category, GLenum severity, GLuint id, GLsizei length, const GLchar* buf);
GLuint glGetDebugMessageLogAMD (GLuint count, GLsizei bufsize, GLenum* categories, GLuint* severities, GLuint* ids, GLsizei* lengths, GLchar* message);
#define GL_DEPTH_CLAMP_NEAR_AMD 0x901E
#define GL_DEPTH_CLAMP_FAR_AMD 0x901F
void glBlendEquationIndexedAMD (GLuint buf, GLenum mode);
void glBlendEquationSeparateIndexedAMD (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void glBlendFuncIndexedAMD (GLuint buf, GLenum src, GLenum dst);
void glBlendFuncSeparateIndexedAMD (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
#define GL_RENDERBUFFER_STORAGE_SAMPLES_AMD 0x91B2
#define GL_MAX_COLOR_FRAMEBUFFER_SAMPLES_AMD 0x91B3
#define GL_MAX_COLOR_FRAMEBUFFER_STORAGE_SAMPLES_AMD 0x91B4
#define GL_MAX_DEPTH_STENCIL_FRAMEBUFFER_SAMPLES_AMD 0x91B5
#define GL_NUM_SUPPORTED_MULTISAMPLE_MODES_AMD 0x91B6
#define GL_SUPPORTED_MULTISAMPLE_MODES_AMD 0x91B7
void glNamedRenderbufferStorageMultisampleAdvancedAMD (GLuint renderbuffer, GLsizei samples, GLsizei storageSamples, GLenum internalformat, GLsizei width, GLsizei height);
void glRenderbufferStorageMultisampleAdvancedAMD (GLenum target, GLsizei samples, GLsizei storageSamples, GLenum internalformat, GLsizei width, GLsizei height);
#define GL_SUBSAMPLE_DISTANCE_AMD 0x883F
#define GL_PIXELS_PER_SAMPLE_PATTERN_X_AMD 0x91AE
#define GL_PIXELS_PER_SAMPLE_PATTERN_Y_AMD 0x91AF
#define GL_ALL_PIXELS_AMD 0xFFFFFFFF
void glFramebufferSamplePositionsfvAMD (GLenum target, GLuint numsamples, GLuint pixelindex, const GLfloat* values);
void glGetFramebufferParameterfvAMD (GLenum target, GLenum pname, GLuint numsamples, GLuint pixelindex, GLsizei size, GLfloat* values);
void glGetNamedFramebufferParameterfvAMD (GLuint framebuffer, GLenum pname, GLuint numsamples, GLuint pixelindex, GLsizei size, GLfloat* values);
void glNamedFramebufferSamplePositionsfvAMD (GLuint framebuffer, GLuint numsamples, GLuint pixelindex, const GLfloat* values);
#define GL_FLOAT16_NV 0x8FF8
#define GL_FLOAT16_VEC2_NV 0x8FF9
#define GL_FLOAT16_VEC3_NV 0x8FFA
#define GL_FLOAT16_VEC4_NV 0x8FFB
#define GL_FLOAT16_MAT2_AMD 0x91C5
#define GL_FLOAT16_MAT3_AMD 0x91C6
#define GL_FLOAT16_MAT4_AMD 0x91C7
#define GL_FLOAT16_MAT2x3_AMD 0x91C8
#define GL_FLOAT16_MAT2x4_AMD 0x91C9
#define GL_FLOAT16_MAT3x2_AMD 0x91CA
#define GL_FLOAT16_MAT3x4_AMD 0x91CB
#define GL_FLOAT16_MAT4x2_AMD 0x91CC
#define GL_FLOAT16_MAT4x3_AMD 0x91CD
#define GL_FLOAT16_SAMPLER_1D_AMD 0x91CE
#define GL_FLOAT16_SAMPLER_2D_AMD 0x91CF
#define GL_FLOAT16_SAMPLER_3D_AMD 0x91D0
#define GL_FLOAT16_SAMPLER_CUBE_AMD 0x91D1
#define GL_FLOAT16_SAMPLER_2D_RECT_AMD 0x91D2
#define GL_FLOAT16_SAMPLER_1D_ARRAY_AMD 0x91D3
#define GL_FLOAT16_SAMPLER_2D_ARRAY_AMD 0x91D4
#define GL_FLOAT16_SAMPLER_CUBE_MAP_ARRAY_AMD 0x91D5
#define GL_FLOAT16_SAMPLER_BUFFER_AMD 0x91D6
#define GL_FLOAT16_SAMPLER_2D_MULTISAMPLE_AMD 0x91D7
#define GL_FLOAT16_SAMPLER_2D_MULTISAMPLE_ARRAY_AMD 0x91D8
#define GL_FLOAT16_SAMPLER_1D_SHADOW_AMD 0x91D9
#define GL_FLOAT16_SAMPLER_2D_SHADOW_AMD 0x91DA
#define GL_FLOAT16_SAMPLER_2D_RECT_SHADOW_AMD 0x91DB
#define GL_FLOAT16_SAMPLER_1D_ARRAY_SHADOW_AMD 0x91DC
#define GL_FLOAT16_SAMPLER_2D_ARRAY_SHADOW_AMD 0x91DD
#define GL_FLOAT16_SAMPLER_CUBE_SHADOW_AMD 0x91DE
#define GL_FLOAT16_SAMPLER_CUBE_MAP_ARRAY_SHADOW_AMD 0x91DF
#define GL_FLOAT16_IMAGE_1D_AMD 0x91E0
#define GL_FLOAT16_IMAGE_2D_AMD 0x91E1
#define GL_FLOAT16_IMAGE_3D_AMD 0x91E2
#define GL_FLOAT16_IMAGE_2D_RECT_AMD 0x91E3
#define GL_FLOAT16_IMAGE_CUBE_AMD 0x91E4
#define GL_FLOAT16_IMAGE_1D_ARRAY_AMD 0x91E5
#define GL_FLOAT16_IMAGE_2D_ARRAY_AMD 0x91E6
#define GL_FLOAT16_IMAGE_CUBE_MAP_ARRAY_AMD 0x91E7
#define GL_FLOAT16_IMAGE_BUFFER_AMD 0x91E8
#define GL_FLOAT16_IMAGE_2D_MULTISAMPLE_AMD 0x91E9
#define GL_FLOAT16_IMAGE_2D_MULTISAMPLE_ARRAY_AMD 0x91EA
#define GL_RED 0x1903
#define GL_GREEN 0x1904
#define GL_BLUE 0x1905
#define GL_ALPHA 0x1906
#define GL_RG8UI 0x8238
#define GL_RG16UI 0x823A
#define GL_RGBA8UI 0x8D7C
#define GL_VERTEX_ELEMENT_SWIZZLE_AMD 0x91A4
#define GL_VERTEX_ID_SWIZZLE_AMD 0x91A5
void glVertexAttribParameteriAMD (GLuint index, GLenum pname, GLint param);
void glMultiDrawArraysIndirectAMD (GLenum mode, const void *indirect, GLsizei primcount, GLsizei stride);
void glMultiDrawElementsIndirectAMD (GLenum mode, GLenum type, const void *indirect, GLsizei primcount, GLsizei stride);
#define GL_DATA_BUFFER_AMD 0x9151
#define GL_PERFORMANCE_MONITOR_AMD 0x9152
#define GL_QUERY_OBJECT_AMD 0x9153
#define GL_VERTEX_ARRAY_OBJECT_AMD 0x9154
#define GL_SAMPLER_OBJECT_AMD 0x9155
void glDeleteNamesAMD (GLenum identifier, GLuint num, const GLuint* names);
void glGenNamesAMD (GLenum identifier, GLuint num, GLuint* names);
GLboolean glIsNameAMD (GLenum identifier, GLuint name);
#define GL_QUERY_DEPTH_PASS_EVENT_BIT_AMD 0x00000001
#define GL_QUERY_DEPTH_FAIL_EVENT_BIT_AMD 0x00000002
#define GL_QUERY_STENCIL_FAIL_EVENT_BIT_AMD 0x00000004
#define GL_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD 0x00000008
#define GL_OCCLUSION_QUERY_EVENT_MASK_AMD 0x874F
#define GL_QUERY_ALL_EVENT_BITS_AMD 0xFFFFFFFF
void glQueryObjectParameteruiAMD (GLenum target, GLuint id, GLenum pname, GLuint param);
#define GL_COUNTER_TYPE_AMD 0x8BC0
#define GL_COUNTER_RANGE_AMD 0x8BC1
#define GL_UNSIGNED_INT64_AMD 0x8BC2
#define GL_PERCENTAGE_AMD 0x8BC3
#define GL_PERFMON_RESULT_AVAILABLE_AMD 0x8BC4
#define GL_PERFMON_RESULT_SIZE_AMD 0x8BC5
#define GL_PERFMON_RESULT_AMD 0x8BC6
void glBeginPerfMonitorAMD (GLuint monitor);
void glDeletePerfMonitorsAMD (GLsizei n, GLuint* monitors);
void glEndPerfMonitorAMD (GLuint monitor);
void glGenPerfMonitorsAMD (GLsizei n, GLuint* monitors);
void glGetPerfMonitorCounterDataAMD (GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint *bytesWritten);
void glGetPerfMonitorCounterInfoAMD (GLuint group, GLuint counter, GLenum pname, void *data);
void glGetPerfMonitorCounterStringAMD (GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, GLchar *counterString);
void glGetPerfMonitorCountersAMD (GLuint group, GLint* numCounters, GLint *maxActiveCounters, GLsizei countersSize, GLuint *counters);
void glGetPerfMonitorGroupStringAMD (GLuint group, GLsizei bufSize, GLsizei* length, GLchar *groupString);
void glGetPerfMonitorGroupsAMD (GLint* numGroups, GLsizei groupsSize, GLuint *groups);
void glSelectPerfMonitorCountersAMD (GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList);
#define GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD 0x9160
#define GL_Z400_BINARY_AMD 0x8740
#define GL_QUERY_BUFFER_AMD 0x9192
#define GL_QUERY_BUFFER_BINDING_AMD 0x9193
#define GL_QUERY_RESULT_NO_WAIT_AMD 0x9194
#define GL_SUBSAMPLE_DISTANCE_AMD 0x883F
void glSetMultisamplefvAMD (GLenum pname, GLuint index, const GLfloat* val);
#define GL_TEXTURE_CUBE_MAP_SEAMLESS 0x884F
#define GL_TEXTURE_STORAGE_SPARSE_BIT_AMD 0x00000001
#define GL_VIRTUAL_PAGE_SIZE_X_AMD 0x9195
#define GL_VIRTUAL_PAGE_SIZE_Y_AMD 0x9196
#define GL_VIRTUAL_PAGE_SIZE_Z_AMD 0x9197
#define GL_MAX_SPARSE_TEXTURE_SIZE_AMD 0x9198
#define GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD 0x9199
#define GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS 0x919A
#define GL_MIN_SPARSE_LEVEL_AMD 0x919B
#define GL_MIN_LOD_WARNING_AMD 0x919C
void glTexStorageSparseAMD (GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags);
void glTextureStorageSparseAMD (GLuint texture, GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags);
#define GL_SET_AMD 0x874A
#define GL_REPLACE_VALUE_AMD 0x874B
%feature("sufix", "_CONSTANT4321end");
#define GL_STENCIL_OP_VALUE_AMD 0x874C
%feature("sufix", "4321end");
#define GL_STENCIL_BACK_OP_VALUE_AMD 0x874D
void glStencilOpValueAMD (GLenum face, GLuint value);
#define GL_STREAM_RASTERIZATION_AMD 0x91A0
#define GL_SAMPLER_BUFFER_AMD 0x9001
#define GL_INT_SAMPLER_BUFFER_AMD 0x9002
#define GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD 0x9003
%feature("sufix", "_CONSTANT4321end");
#define GL_TESSELLATION_MODE_AMD 0x9004
#define GL_TESSELLATION_FACTOR_AMD 0x9005
%feature("sufix", "4321end");
#define GL_DISCRETE_AMD 0x9006
#define GL_CONTINUOUS_AMD 0x9007
void glTessellationFactorAMD (GLfloat factor);
void glTessellationModeAMD (GLenum mode);
#define GL_DRAW_FRAMEBUFFER_BINDING_ANGLE 0x8CA6
#define GL_READ_FRAMEBUFFER_ANGLE 0x8CA8
#define GL_DRAW_FRAMEBUFFER_ANGLE 0x8CA9
#define GL_READ_FRAMEBUFFER_BINDING_ANGLE 0x8CAA
void glBlitFramebufferANGLE (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
#define GL_RENDERBUFFER_SAMPLES_ANGLE 0x8CAB
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE 0x8D56
#define GL_MAX_SAMPLES_ANGLE 0x8D57
void glRenderbufferStorageMultisampleANGLE (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
#define GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE 0x88FE
void glDrawArraysInstancedANGLE (GLenum mode, GLint first, GLsizei count, GLsizei primcount);
void glDrawElementsInstancedANGLE (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei primcount);
void glVertexAttribDivisorANGLE (GLuint index, GLuint divisor);
#define GL_PACK_REVERSE_ROW_ORDER_ANGLE 0x93A4
#define GL_PROGRAM_BINARY_ANGLE 0x93A6
#define GL_COMPRESSED_RGB_S3TC_DXT1_ANGLE 0x83F0
#define GL_COMPRESSED_RGBA_S3TC_DXT1_ANGLE 0x83F1
#define GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE 0x83F2
#define GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE 0x83F3
#define GL_COMPRESSED_RGB_S3TC_DXT1_ANGLE 0x83F0
#define GL_COMPRESSED_RGBA_S3TC_DXT1_ANGLE 0x83F1
#define GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE 0x83F2
#define GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE 0x83F3
#define GL_COMPRESSED_RGB_S3TC_DXT1_ANGLE 0x83F0
#define GL_COMPRESSED_RGBA_S3TC_DXT1_ANGLE 0x83F1
#define GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE 0x83F2
#define GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE 0x83F3
#define GL_TEXTURE_USAGE_ANGLE 0x93A2
#define GL_FRAMEBUFFER_ATTACHMENT_ANGLE 0x93A3
#define GL_QUERY_COUNTER_BITS_ANGLE 0x8864
#define GL_CURRENT_QUERY_ANGLE 0x8865
#define GL_QUERY_RESULT_ANGLE 0x8866
#define GL_QUERY_RESULT_AVAILABLE_ANGLE 0x8867
#define GL_TIME_ELAPSED_ANGLE 0x88BF
#define GL_TIMESTAMP_ANGLE 0x8E28
void glBeginQueryANGLE (GLenum target, GLuint id);
void glDeleteQueriesANGLE (GLsizei n, const GLuint* ids);
void glEndQueryANGLE (GLenum target);
void glGenQueriesANGLE (GLsizei n, GLuint* ids);
void glGetQueryObjecti64vANGLE (GLuint id, GLenum pname, GLint64* params);
void glGetQueryObjectivANGLE (GLuint id, GLenum pname, GLint* params);
void glGetQueryObjectui64vANGLE (GLuint id, GLenum pname, GLuint64* params);
void glGetQueryObjectuivANGLE (GLuint id, GLenum pname, GLuint* params);
void glGetQueryivANGLE (GLenum target, GLenum pname, GLint* params);
GLboolean glIsQueryANGLE (GLuint id);
void glQueryCounterANGLE (GLuint id, GLenum target);
#define GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE 0x93A0
void glGetTranslatedShaderSourceANGLE (GLuint shader, GLsizei bufsize, GLsizei* length, GLchar* source);
#define GL_AUX_DEPTH_STENCIL_APPLE 0x8A14
#define GL_UNPACK_CLIENT_STORAGE_APPLE 0x85B2
#define GL_MAX_CLIP_DISTANCES_APPLE 0x0D32
#define GL_CLIP_DISTANCE0_APPLE 0x3000
#define GL_CLIP_DISTANCE1_APPLE 0x3001
#define GL_CLIP_DISTANCE2_APPLE 0x3002
#define GL_CLIP_DISTANCE3_APPLE 0x3003
#define GL_CLIP_DISTANCE4_APPLE 0x3004
#define GL_CLIP_DISTANCE5_APPLE 0x3005
#define GL_CLIP_DISTANCE6_APPLE 0x3006
#define GL_CLIP_DISTANCE7_APPLE 0x3007
void glCopyTextureLevelsAPPLE (GLuint destinationTexture, GLuint sourceTexture, GLint sourceBaseLevel, GLsizei sourceLevelCount);
#define GL_ELEMENT_ARRAY_APPLE 0x8A0C
#define GL_ELEMENT_ARRAY_TYPE_APPLE 0x8A0D
#define GL_ELEMENT_ARRAY_POINTER_APPLE 0x8A0E
void glDrawElementArrayAPPLE (GLenum mode, GLint first, GLsizei count);
void glDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count);
void glElementPointerAPPLE (GLenum type, const void *pointer);
void glMultiDrawElementArrayAPPLE (GLenum mode, const GLint* first, const GLsizei *count, GLsizei primcount);
void glMultiDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, const GLint* first, const GLsizei *count, GLsizei primcount);
#define GL_DRAW_PIXELS_APPLE 0x8A0A
#define GL_FENCE_APPLE 0x8A0B
void glDeleteFencesAPPLE (GLsizei n, const GLuint* fences);
void glFinishFenceAPPLE (GLuint fence);
void glFinishObjectAPPLE (GLenum object, GLint name);
void glGenFencesAPPLE (GLsizei n, GLuint* fences);
GLboolean glIsFenceAPPLE (GLuint fence);
void glSetFenceAPPLE (GLuint fence);
GLboolean glTestFenceAPPLE (GLuint fence);
GLboolean glTestObjectAPPLE (GLenum object, GLuint name);
#define GL_HALF_APPLE 0x140B
#define GL_COLOR_FLOAT_APPLE 0x8A0F
#define GL_RGBA_FLOAT32_APPLE 0x8814
#define GL_RGB_FLOAT32_APPLE 0x8815
#define GL_ALPHA_FLOAT32_APPLE 0x8816
#define GL_INTENSITY_FLOAT32_APPLE 0x8817
#define GL_LUMINANCE_FLOAT32_APPLE 0x8818
#define GL_LUMINANCE_ALPHA_FLOAT32_APPLE 0x8819
#define GL_RGBA_FLOAT16_APPLE 0x881A
#define GL_RGB_FLOAT16_APPLE 0x881B
#define GL_ALPHA_FLOAT16_APPLE 0x881C
#define GL_INTENSITY_FLOAT16_APPLE 0x881D
#define GL_LUMINANCE_FLOAT16_APPLE 0x881E
#define GL_LUMINANCE_ALPHA_FLOAT16_APPLE 0x881F
#define GL_BUFFER_SERIALIZED_MODIFY_APPLE 0x8A12
#define GL_BUFFER_FLUSHING_UNMAP_APPLE 0x8A13
void glBufferParameteriAPPLE (GLenum target, GLenum pname, GLint param);
void glFlushMappedBufferRangeAPPLE (GLenum target, GLintptr offset, GLsizeiptr size);
#define GL_DRAW_FRAMEBUFFER_BINDING_APPLE 0x8CA6
#define GL_READ_FRAMEBUFFER_APPLE 0x8CA8
#define GL_DRAW_FRAMEBUFFER_APPLE 0x8CA9
#define GL_READ_FRAMEBUFFER_BINDING_APPLE 0x8CAA
#define GL_RENDERBUFFER_SAMPLES_APPLE 0x8CAB
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_APPLE 0x8D56
#define GL_MAX_SAMPLES_APPLE 0x8D57
void glRenderbufferStorageMultisampleAPPLE (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void glResolveMultisampleFramebufferAPPLE (void);
#define GL_BUFFER_OBJECT_APPLE 0x85B3
#define GL_RELEASED_APPLE 0x8A19
#define GL_VOLATILE_APPLE 0x8A1A
#define GL_RETAINED_APPLE 0x8A1B
#define GL_UNDEFINED_APPLE 0x8A1C
#define GL_PURGEABLE_APPLE 0x8A1D
void glGetObjectParameterivAPPLE (GLenum objectType, GLuint name, GLenum pname, GLint* params);
GLenum glObjectPurgeableAPPLE (GLenum objectType, GLuint name, GLenum option);
GLenum glObjectUnpurgeableAPPLE (GLenum objectType, GLuint name, GLenum option);
#define GL_MIN_PBUFFER_VIEWPORT_DIMS_APPLE 0x8A10
#define GL_UNSIGNED_SHORT_8_8_APPLE 0x85BA
#define GL_UNSIGNED_SHORT_8_8_REV_APPLE 0x85BB
#define GL_RGB_422_APPLE 0x8A1F
#define GL_RGB_RAW_422_APPLE 0x8A51
#define GL_PACK_ROW_BYTES_APPLE 0x8A15
#define GL_UNPACK_ROW_BYTES_APPLE 0x8A16
#define GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE 0x85B0
#define GL_TIMEOUT_IGNORED_APPLE 0xFFFFFFFFFFFFFFFFull
#define GL_SYNC_FLUSH_COMMANDS_BIT_APPLE 0x00000001
#define GL_SYNC_OBJECT_APPLE 0x8A53
#define GL_MAX_SERVER_WAIT_TIMEOUT_APPLE 0x9111
#define GL_OBJECT_TYPE_APPLE 0x9112
#define GL_SYNC_CONDITION_APPLE 0x9113
#define GL_SYNC_STATUS_APPLE 0x9114
#define GL_SYNC_FLAGS_APPLE 0x9115
#define GL_SYNC_FENCE_APPLE 0x9116
#define GL_SYNC_GPU_COMMANDS_COMPLETE_APPLE 0x9117
#define GL_UNSIGNALED_APPLE 0x9118
#define GL_SIGNALED_APPLE 0x9119
#define GL_ALREADY_SIGNALED_APPLE 0x911A
#define GL_TIMEOUT_EXPIRED_APPLE 0x911B
#define GL_CONDITION_SATISFIED_APPLE 0x911C
#define GL_WAIT_FAILED_APPLE 0x911D
GLenum glClientWaitSyncAPPLE (GLsync GLsync, GLbitfield flags, GLuint64 timeout);
void glDeleteSyncAPPLE (GLsync GLsync);
GLsync glFenceSyncAPPLE (GLenum condition, GLbitfield flags);
void glGetInteger64vAPPLE (GLenum pname, GLint64* params);
void glGetSyncivAPPLE (GLsync GLsync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint *values);
GLboolean glIsSyncAPPLE (GLsync GLsync);
void glWaitSyncAPPLE (GLsync GLsync, GLbitfield flags, GLuint64 timeout);
#define GL_BGRA_EXT 0x80E1
#define GL_BGRA8_EXT 0x93A1
#define GL_TEXTURE_MAX_LEVEL_APPLE 0x813D
#define GL_R11F_G11F_B10F_APPLE 0x8C3A
#define GL_UNSIGNED_INT_10F_11F_11F_REV_APPLE 0x8C3B
#define GL_RGB9_E5_APPLE 0x8C3D
#define GL_UNSIGNED_INT_5_9_9_9_REV_APPLE 0x8C3E
#define GL_TEXTURE_STORAGE_HINT_APPLE 0x85BC
#define GL_STORAGE_PRIVATE_APPLE 0x85BD
#define GL_STORAGE_CACHED_APPLE 0x85BE
#define GL_STORAGE_SHARED_APPLE 0x85BF
#define GL_TEXTURE_RANGE_LENGTH_APPLE 0x85B7
#define GL_TEXTURE_RANGE_POINTER_APPLE 0x85B8
void glTextureRangeAPPLE (GLenum target, GLsizei length, void *pointer);
void glGetTexParameterPointervAPPLE (GLenum target, GLenum pname, void **params);
#define GL_TRANSFORM_HINT_APPLE 0x85B1
#define GL_VERTEX_ARRAY_BINDING_APPLE 0x85B5
void glBindVertexArrayAPPLE (GLuint array);
void glDeleteVertexArraysAPPLE (GLsizei n, const GLuint* arrays);
void glGenVertexArraysAPPLE (GLsizei n, const GLuint* arrays);
GLboolean glIsVertexArrayAPPLE (GLuint array);
%feature("sufix", "_CONSTANT4321end");
#define GL_VERTEX_ARRAY_RANGE_APPLE 0x851D
%feature("sufix", "4321end");
#define GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE 0x851E
#define GL_VERTEX_ARRAY_STORAGE_HINT_APPLE 0x851F
#define GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE 0x8520
#define GL_VERTEX_ARRAY_RANGE_POINTER_APPLE 0x8521
#define GL_STORAGE_CLIENT_APPLE 0x85B4
#define GL_STORAGE_CACHED_APPLE 0x85BE
#define GL_STORAGE_SHARED_APPLE 0x85BF
void glFlushVertexArrayRangeAPPLE (GLsizei length, void *pointer);
void glVertexArrayParameteriAPPLE (GLenum pname, GLint param);
void glVertexArrayRangeAPPLE (GLsizei length, void *pointer);
#define GL_VERTEX_ATTRIB_MAP1_APPLE 0x8A00
#define GL_VERTEX_ATTRIB_MAP2_APPLE 0x8A01
#define GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE 0x8A02
#define GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE 0x8A03
#define GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE 0x8A04
#define GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE 0x8A05
#define GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE 0x8A06
#define GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE 0x8A07
#define GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE 0x8A08
#define GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE 0x8A09
void glDisableVertexAttribAPPLE (GLuint index, GLenum pname);
void glEnableVertexAttribAPPLE (GLuint index, GLenum pname);
GLboolean glIsVertexAttribEnabledAPPLE (GLuint index, GLenum pname);
void glMapVertexAttrib1dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble* points);
void glMapVertexAttrib1fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat* points);
void glMapVertexAttrib2dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble* points);
void glMapVertexAttrib2fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat* points);
#define GL_YCBCR_422_APPLE 0x85B9
void glDrawArraysInstancedBaseInstance (GLenum mode, GLint first, GLsizei count, GLsizei primcount, GLuint baseinstance);
void glDrawElementsInstancedBaseInstance (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei primcount, GLuint baseinstance);
void glDrawElementsInstancedBaseVertexBaseInstance (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei primcount, GLint basevertex, GLuint baseinstance);
#define GL_UNSIGNED_INT64_ARB 0x140F
GLuint64 glGetImageHandleARB (GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format);
GLuint64 glGetTextureHandleARB (GLuint texture);
GLuint64 glGetTextureSamplerHandleARB (GLuint texture, GLuint sampler);
void glGetVertexAttribLui64vARB (GLuint index, GLenum pname, GLuint64EXT* params);
GLboolean glIsImageHandleResidentARB (GLuint64 handle);
GLboolean glIsTextureHandleResidentARB (GLuint64 handle);
void glMakeImageHandleNonResidentARB (GLuint64 handle);
void glMakeImageHandleResidentARB (GLuint64 handle, GLenum access);
void glMakeTextureHandleNonResidentARB (GLuint64 handle);
void glMakeTextureHandleResidentARB (GLuint64 handle);
void glProgramUniformHandleui64ARB (GLuint program, GLint location, GLuint64 value);
void glProgramUniformHandleui64vARB (GLuint program, GLint location, GLsizei count, const GLuint64* values);
void glUniformHandleui64ARB (GLint location, GLuint64 value);
void glUniformHandleui64vARB (GLint location, GLsizei count, const GLuint64* value);
void glVertexAttribL1ui64ARB (GLuint index, GLuint64EXT x);
void glVertexAttribL1ui64vARB (GLuint index, const GLuint64EXT* v);
#define GL_SRC1_COLOR 0x88F9
#define GL_ONE_MINUS_SRC1_COLOR 0x88FA
#define GL_ONE_MINUS_SRC1_ALPHA 0x88FB
#define GL_MAX_DUAL_SOURCE_DRAW_BUFFERS 0x88FC
void glBindFragDataLocationIndexed (GLuint program, GLuint colorNumber, GLuint index, const GLchar * name);
GLint glGetFragDataIndex (GLuint program, const GLchar * name);
#define GL_MAP_READ_BIT 0x0001
#define GL_MAP_WRITE_BIT 0x0002
#define GL_MAP_PERSISTENT_BIT 0x00000040
#define GL_MAP_COHERENT_BIT 0x00000080
#define GL_DYNAMIC_STORAGE_BIT 0x0100
#define GL_CLIENT_STORAGE_BIT 0x0200
#define GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT 0x00004000
#define GL_BUFFER_IMMUTABLE_STORAGE 0x821F
#define GL_BUFFER_STORAGE_FLAGS 0x8220
void glBufferStorage (GLenum target, GLsizeiptr size, const void *data, GLbitfield flags);
void glClearBufferData (GLenum target, GLenum internalformat, GLenum format, GLenum type, const void *data);
void glClearBufferSubData (GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const void *data);
void glClearNamedBufferDataEXT (GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const void *data);
void glClearNamedBufferSubDataEXT (GLuint buffer, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const void *data);
#define GL_CLEAR_TEXTURE 0x9365
void glClearTexImage (GLuint texture, GLint level, GLenum format, GLenum type, const void *data);
void glClearTexSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *data);
#define GL_SYNC_CL_EVENT_ARB 0x8240
#define GL_SYNC_CL_EVENT_COMPLETE_ARB 0x8241
GLsync glCreateSyncFromCLeventARB (cl_context context, cl_event event, GLbitfield flags);
typedef struct _cl_context *cl_context;
typedef struct _cl_event *cl_event;
#define GL_LOWER_LEFT 0x8CA1
#define GL_UPPER_LEFT 0x8CA2
#define GL_CLIP_ORIGIN 0x935C
#define GL_CLIP_DEPTH_MODE 0x935D
#define GL_NEGATIVE_ONE_TO_ONE 0x935E
#define GL_ZERO_TO_ONE 0x935F
void glClipControl (GLenum origin, GLenum depth);
#define GL_RGBA_FLOAT_MODE_ARB 0x8820
#define GL_CLAMP_VERTEX_COLOR_ARB 0x891A
#define GL_CLAMP_FRAGMENT_COLOR_ARB 0x891B
#define GL_CLAMP_READ_COLOR_ARB 0x891C
#define GL_FIXED_ONLY_ARB 0x891D
void glClampColorARB (GLenum target, GLenum clamp);
#define GL_UNPACK_COMPRESSED_BLOCK_WIDTH 0x9127
#define GL_UNPACK_COMPRESSED_BLOCK_HEIGHT 0x9128
#define GL_UNPACK_COMPRESSED_BLOCK_DEPTH 0x9129
#define GL_UNPACK_COMPRESSED_BLOCK_SIZE 0x912A
#define GL_PACK_COMPRESSED_BLOCK_WIDTH 0x912B
#define GL_PACK_COMPRESSED_BLOCK_HEIGHT 0x912C
#define GL_PACK_COMPRESSED_BLOCK_DEPTH 0x912D
#define GL_PACK_COMPRESSED_BLOCK_SIZE 0x912E
#define GL_COMPUTE_SHADER_BIT 0x00000020
#define GL_MAX_COMPUTE_SHARED_MEMORY_SIZE 0x8262
#define GL_MAX_COMPUTE_UNIFORM_COMPONENTS 0x8263
#define GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS 0x8264
#define GL_MAX_COMPUTE_ATOMIC_COUNTERS 0x8265
#define GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS 0x8266
#define GL_COMPUTE_WORK_GROUP_SIZE 0x8267
#define GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS 0x90EB
#define GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER 0x90EC
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER 0x90ED
#define GL_DISPATCH_INDIRECT_BUFFER 0x90EE
#define GL_DISPATCH_INDIRECT_BUFFER_BINDING 0x90EF
#define GL_COMPUTE_SHADER 0x91B9
#define GL_MAX_COMPUTE_UNIFORM_BLOCKS 0x91BB
#define GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS 0x91BC
#define GL_MAX_COMPUTE_IMAGE_UNIFORMS 0x91BD
#define GL_MAX_COMPUTE_WORK_GROUP_COUNT 0x91BE
#define GL_MAX_COMPUTE_WORK_GROUP_SIZE 0x91BF
void glDispatchCompute (GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z);
void glDispatchComputeIndirect (GLintptr indirect);
#define GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB 0x90EB
#define GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB 0x91BF
#define GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB 0x9344
#define GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB 0x9345
void glDispatchComputeGroupSizeARB (GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z, GLuint group_size_x, GLuint group_size_y, GLuint group_size_z);
#define GL_QUERY_WAIT_INVERTED 0x8E17
#define GL_QUERY_NO_WAIT_INVERTED 0x8E18
#define GL_QUERY_BY_REGION_WAIT_INVERTED 0x8E19
#define GL_QUERY_BY_REGION_NO_WAIT_INVERTED 0x8E1A
#define GL_COPY_READ_BUFFER 0x8F36
#define GL_COPY_WRITE_BUFFER 0x8F37
void glCopyBufferSubData (GLenum readtarget, GLenum writetarget, GLintptr readoffset, GLintptr writeoffset, GLsizeiptr size);
void glCopyImageSubData (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth);
#define GL_MAX_CULL_DISTANCES 0x82F9
#define GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES 0x82FA
#define GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB 0x8242
#define GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB 0x8243
#define GL_DEBUG_CALLBACK_FUNCTION_ARB 0x8244
#define GL_DEBUG_CALLBACK_USER_PARAM_ARB 0x8245
#define GL_DEBUG_SOURCE_API_ARB 0x8246
#define GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB 0x8247
#define GL_DEBUG_SOURCE_SHADER_COMPILER_ARB 0x8248
#define GL_DEBUG_SOURCE_THIRD_PARTY_ARB 0x8249
#define GL_DEBUG_SOURCE_APPLICATION_ARB 0x824A
#define GL_DEBUG_SOURCE_OTHER_ARB 0x824B
#define GL_DEBUG_TYPE_ERROR_ARB 0x824C
#define GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB 0x824D
#define GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB 0x824E
#define GL_DEBUG_TYPE_PORTABILITY_ARB 0x824F
#define GL_DEBUG_TYPE_PERFORMANCE_ARB 0x8250
#define GL_DEBUG_TYPE_OTHER_ARB 0x8251
#define GL_MAX_DEBUG_MESSAGE_LENGTH_ARB 0x9143
#define GL_MAX_DEBUG_LOGGED_MESSAGES_ARB 0x9144
#define GL_DEBUG_LOGGED_MESSAGES_ARB 0x9145
#define GL_DEBUG_SEVERITY_HIGH_ARB 0x9146
#define GL_DEBUG_SEVERITY_MEDIUM_ARB 0x9147
#define GL_DEBUG_SEVERITY_LOW_ARB 0x9148
void glDebugMessageCallbackARB (GLDEBUGPROCARB callback, const void *userParam);
void glDebugMessageControlARB (GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled);
void glDebugMessageInsertARB (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar* buf);
GLuint glGetDebugMessageLogARB (GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog);
#define GL_DEPTH_COMPONENT32F 0x8CAC
#define GL_DEPTH32F_STENCIL8 0x8CAD
#define GL_FLOAT_32_UNSIGNED_INT_24_8_REV 0x8DAD
#define GL_DEPTH_CLAMP 0x864F
#define GL_DEPTH_COMPONENT16_ARB 0x81A5
#define GL_DEPTH_COMPONENT24_ARB 0x81A6
#define GL_DEPTH_COMPONENT32_ARB 0x81A7
#define GL_TEXTURE_DEPTH_SIZE_ARB 0x884A
#define GL_DEPTH_TEXTURE_MODE_ARB 0x884B
#define GL_TEXTURE_TARGET 0x1006
#define GL_QUERY_TARGET 0x82EA
void glBindTextureUnit (GLuint unit, GLuint texture);
void glBlitNamedFramebuffer (GLuint readFramebuffer, GLuint drawFramebuffer, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
GLenum glCheckNamedFramebufferStatus (GLuint framebuffer, GLenum target);
void glClearNamedBufferData (GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const void *data);
void glClearNamedBufferSubData (GLuint buffer, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const void *data);
void glClearNamedFramebufferfi (GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
void glClearNamedFramebufferfv (GLuint framebuffer, GLenum buffer, GLint drawbuffer, const GLfloat* value);
void glClearNamedFramebufferiv (GLuint framebuffer, GLenum buffer, GLint drawbuffer, const GLint* value);
void glClearNamedFramebufferuiv (GLuint framebuffer, GLenum buffer, GLint drawbuffer, const GLuint* value);
void glCompressedTextureSubImage1D (GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const void *data);
void glCompressedTextureSubImage2D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
void glCompressedTextureSubImage3D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
void glCopyNamedBufferSubData (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
void glCopyTextureSubImage1D (GLuint texture, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTextureSubImage2D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyTextureSubImage3D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCreateBuffers (GLsizei n, GLuint* buffers);
void glCreateFramebuffers (GLsizei n, GLuint* framebuffers);
void glCreateProgramPipelines (GLsizei n, GLuint* pipelines);
void glCreateQueries (GLenum target, GLsizei n, GLuint* ids);
void glCreateRenderbuffers (GLsizei n, GLuint* renderbuffers);
void glCreateSamplers (GLsizei n, GLuint* samplers);
void glCreateTextures (GLenum target, GLsizei n, GLuint* textures);
void glCreateTransformFeedbacks (GLsizei n, GLuint* ids);
void glCreateVertexArrays (GLsizei n, GLuint* arrays);
void glDisableVertexArrayAttrib (GLuint vaobj, GLuint index);
void glEnableVertexArrayAttrib (GLuint vaobj, GLuint index);
void glFlushMappedNamedBufferRange (GLuint buffer, GLintptr offset, GLsizeiptr length);
void glGenerateTextureMipmap (GLuint texture);
void glGetCompressedTextureImage (GLuint texture, GLint level, GLsizei bufSize, void *pixels);
void glGetNamedBufferParameteri64v (GLuint buffer, GLenum pname, GLint64* params);
void glGetNamedBufferParameteriv (GLuint buffer, GLenum pname, GLint* params);
void glGetNamedBufferPointerv (GLuint buffer, GLenum pname, void** params);
void glGetNamedBufferSubData (GLuint buffer, GLintptr offset, GLsizeiptr size, void *data);
void glGetNamedFramebufferAttachmentParameteriv (GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params);
void glGetNamedFramebufferParameteriv (GLuint framebuffer, GLenum pname, GLint* param);
void glGetNamedRenderbufferParameteriv (GLuint renderbuffer, GLenum pname, GLint* params);
void glGetQueryBufferObjecti64v (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
void glGetQueryBufferObjectiv (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
void glGetQueryBufferObjectui64v (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
void glGetQueryBufferObjectuiv (GLuint id, GLuint buffer, GLenum pname, GLintptr offset);
void glGetTextureImage (GLuint texture, GLint level, GLenum format, GLenum type, GLsizei bufSize, void *pixels);
void glGetTextureLevelParameterfv (GLuint texture, GLint level, GLenum pname, GLfloat* params);
void glGetTextureLevelParameteriv (GLuint texture, GLint level, GLenum pname, GLint* params);
void glGetTextureParameterIiv (GLuint texture, GLenum pname, GLint* params);
void glGetTextureParameterIuiv (GLuint texture, GLenum pname, GLuint* params);
void glGetTextureParameterfv (GLuint texture, GLenum pname, GLfloat* params);
void glGetTextureParameteriv (GLuint texture, GLenum pname, GLint* params);
void glGetTransformFeedbacki64_v (GLuint xfb, GLenum pname, GLuint index, GLint64* param);
void glGetTransformFeedbacki_v (GLuint xfb, GLenum pname, GLuint index, GLint* param);
void glGetTransformFeedbackiv (GLuint xfb, GLenum pname, GLint* param);
void glGetVertexArrayIndexed64iv (GLuint vaobj, GLuint index, GLenum pname, GLint64* param);
void glGetVertexArrayIndexediv (GLuint vaobj, GLuint index, GLenum pname, GLint* param);
void glGetVertexArrayiv (GLuint vaobj, GLenum pname, GLint* param);
void glInvalidateNamedFramebufferData (GLuint framebuffer, GLsizei numAttachments, const GLenum* attachments);
void glInvalidateNamedFramebufferSubData (GLuint framebuffer, GLsizei numAttachments, const GLenum* attachments, GLint x, GLint y, GLsizei width, GLsizei height);
void * glMapNamedBuffer (GLuint buffer, GLenum access);
void * glMapNamedBufferRange (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access);
void glNamedBufferData (GLuint buffer, GLsizeiptr size, const void *data, GLenum usage);
void glNamedBufferStorage (GLuint buffer, GLsizeiptr size, const void *data, GLbitfield flags);
void glNamedBufferSubData (GLuint buffer, GLintptr offset, GLsizeiptr size, const void *data);
void glNamedFramebufferDrawBuffer (GLuint framebuffer, GLenum mode);
void glNamedFramebufferDrawBuffers (GLuint framebuffer, GLsizei n, const GLenum* bufs);
void glNamedFramebufferParameteri (GLuint framebuffer, GLenum pname, GLint param);
void glNamedFramebufferReadBuffer (GLuint framebuffer, GLenum mode);
void glNamedFramebufferRenderbuffer (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glNamedFramebufferTexture (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level);
void glNamedFramebufferTextureLayer (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glNamedRenderbufferStorage (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height);
void glNamedRenderbufferStorageMultisample (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void glTextureBuffer (GLuint texture, GLenum internalformat, GLuint buffer);
void glTextureBufferRange (GLuint texture, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glTextureParameterIiv (GLuint texture, GLenum pname, const GLint* params);
void glTextureParameterIuiv (GLuint texture, GLenum pname, const GLuint* params);
void glTextureParameterf (GLuint texture, GLenum pname, GLfloat param);
void glTextureParameterfv (GLuint texture, GLenum pname, const GLfloat* param);
void glTextureParameteri (GLuint texture, GLenum pname, GLint param);
void glTextureParameteriv (GLuint texture, GLenum pname, const GLint* param);
void glTextureStorage1D (GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width);
void glTextureStorage2D (GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
void glTextureStorage2DMultisample (GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTextureStorage3D (GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
void glTextureStorage3DMultisample (GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
void glTextureSubImage1D (GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void glTextureSubImage2D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glTextureSubImage3D (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void glTransformFeedbackBufferBase (GLuint xfb, GLuint index, GLuint buffer);
void glTransformFeedbackBufferRange (GLuint xfb, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
GLboolean glUnmapNamedBuffer (GLuint buffer);
void glVertexArrayAttribBinding (GLuint vaobj, GLuint attribindex, GLuint bindingindex);
void glVertexArrayAttribFormat (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
void glVertexArrayAttribIFormat (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexArrayAttribLFormat (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexArrayBindingDivisor (GLuint vaobj, GLuint bindingindex, GLuint divisor);
void glVertexArrayElementBuffer (GLuint vaobj, GLuint buffer);
void glVertexArrayVertexBuffer (GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
void glVertexArrayVertexBuffers (GLuint vaobj, GLuint first, GLsizei count, const GLuint* buffers, const GLintptr *offsets, const GLsizei *strides);
#define GL_MAX_DRAW_BUFFERS_ARB 0x8824
#define GL_DRAW_BUFFER0_ARB 0x8825
#define GL_DRAW_BUFFER1_ARB 0x8826
#define GL_DRAW_BUFFER2_ARB 0x8827
#define GL_DRAW_BUFFER3_ARB 0x8828
#define GL_DRAW_BUFFER4_ARB 0x8829
#define GL_DRAW_BUFFER5_ARB 0x882A
#define GL_DRAW_BUFFER6_ARB 0x882B
#define GL_DRAW_BUFFER7_ARB 0x882C
#define GL_DRAW_BUFFER8_ARB 0x882D
#define GL_DRAW_BUFFER9_ARB 0x882E
#define GL_DRAW_BUFFER10_ARB 0x882F
#define GL_DRAW_BUFFER11_ARB 0x8830
#define GL_DRAW_BUFFER12_ARB 0x8831
#define GL_DRAW_BUFFER13_ARB 0x8832
#define GL_DRAW_BUFFER14_ARB 0x8833
#define GL_DRAW_BUFFER15_ARB 0x8834
void glDrawBuffersARB (GLsizei n, const GLenum* bufs);
void glBlendEquationSeparateiARB (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void glBlendEquationiARB (GLuint buf, GLenum mode);
void glBlendFuncSeparateiARB (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
void glBlendFunciARB (GLuint buf, GLenum src, GLenum dst);
void glDrawElementsBaseVertex (GLenum mode, GLsizei count, GLenum type, const void *indices, GLint basevertex);
void glDrawElementsInstancedBaseVertex (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLint basevertex);
void glDrawRangeElementsBaseVertex (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const void *indices, GLint basevertex);
void glMultiDrawElementsBaseVertex (GLenum mode, const GLsizei* count, GLenum type, const void*const *indices, GLsizei drawcount, const GLint *basevertex);
#define GL_DRAW_INDIRECT_BUFFER 0x8F3F
#define GL_DRAW_INDIRECT_BUFFER_BINDING 0x8F43
void glDrawArraysIndirect (GLenum mode, const void *indirect);
void glDrawElementsIndirect (GLenum mode, GLenum type, const void *indirect);
#define GL_LOCATION_COMPONENT 0x934A
#define GL_TRANSFORM_FEEDBACK_BUFFER_INDEX 0x934B
#define GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE 0x934C
#define GL_FIXED 0x140C
#define GL_IMPLEMENTATION_COLOR_READ_TYPE 0x8B9A
#define GL_IMPLEMENTATION_COLOR_READ_FORMAT 0x8B9B
#define GL_RGB565 0x8D62
#define GL_LOW_FLOAT 0x8DF0
#define GL_MEDIUM_FLOAT 0x8DF1
#define GL_HIGH_FLOAT 0x8DF2
#define GL_LOW_INT 0x8DF3
#define GL_MEDIUM_INT 0x8DF4
#define GL_HIGH_INT 0x8DF5
#define GL_SHADER_BINARY_FORMATS 0x8DF8
#define GL_NUM_SHADER_BINARY_FORMATS 0x8DF9
#define GL_SHADER_COMPILER 0x8DFA
#define GL_MAX_VERTEX_UNIFORM_VECTORS 0x8DFB
#define GL_MAX_VARYING_VECTORS 0x8DFC
#define GL_MAX_FRAGMENT_UNIFORM_VECTORS 0x8DFD
void glClearDepthf (GLclampf d);
void glDepthRangef (GLclampf n, GLclampf f);
void glGetShaderPrecisionFormat (GLenum shadertype, GLenum precisiontype, GLint* range, GLint *precision);
void glReleaseShaderCompiler (void);
void glShaderBinary (GLsizei count, const GLuint* shaders, GLenum binaryformat, const void*binary, GLsizei length);
typedef int GLfixed;
void glMemoryBarrierByRegion (GLbitfield barriers);
%feature("sufix", "_CONSTANT4321end");
#define GL_PRIMITIVE_BOUNDING_BOX_ARB 0x92BE
%feature("sufix", "4321end");
#define GL_MULTISAMPLE_LINE_WIDTH_RANGE_ARB 0x9381
#define GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY_ARB 0x9382
void glPrimitiveBoundingBoxARB (GLfloat minX, GLfloat minY, GLfloat minZ, GLfloat minW, GLfloat maxX, GLfloat maxY, GLfloat maxZ, GLfloat maxW);
#define GL_TEXTURE_IMMUTABLE_LEVELS 0x82DF
#define GL_PRIMITIVE_RESTART_FIXED_INDEX 0x8D69
#define GL_ANY_SAMPLES_PASSED_CONSERVATIVE 0x8D6A
#define GL_MAX_ELEMENT_INDEX 0x8D6B
#define GL_COMPRESSED_R11_EAC 0x9270
#define GL_COMPRESSED_SIGNED_R11_EAC 0x9271
#define GL_COMPRESSED_RG11_EAC 0x9272
#define GL_COMPRESSED_SIGNED_RG11_EAC 0x9273
#define GL_COMPRESSED_RGB8_ETC2 0x9274
#define GL_COMPRESSED_SRGB8_ETC2 0x9275
#define GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 0x9276
#define GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 0x9277
#define GL_COMPRESSED_RGBA8_ETC2_EAC 0x9278
#define GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC 0x9279
#define GL_MAX_UNIFORM_LOCATIONS 0x826E
#define GL_FRAGMENT_PROGRAM_ARB 0x8804
#define GL_PROGRAM_ALU_INSTRUCTIONS_ARB 0x8805
#define GL_PROGRAM_TEX_INSTRUCTIONS_ARB 0x8806
#define GL_PROGRAM_TEX_INDIRECTIONS_ARB 0x8807
#define GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB 0x8808
#define GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB 0x8809
#define GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB 0x880A
#define GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB 0x880B
#define GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB 0x880C
#define GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB 0x880D
#define GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB 0x880E
#define GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB 0x880F
#define GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB 0x8810
#define GL_MAX_TEXTURE_COORDS_ARB 0x8871
#define GL_MAX_TEXTURE_IMAGE_UNITS_ARB 0x8872
#define GL_FRAGMENT_SHADER_ARB 0x8B30
#define GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB 0x8B49
#define GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB 0x8B8B
#define GL_FRAMEBUFFER_DEFAULT_WIDTH 0x9310
#define GL_FRAMEBUFFER_DEFAULT_HEIGHT 0x9311
#define GL_FRAMEBUFFER_DEFAULT_LAYERS 0x9312
#define GL_FRAMEBUFFER_DEFAULT_SAMPLES 0x9313
#define GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS 0x9314
#define GL_MAX_FRAMEBUFFER_WIDTH 0x9315
#define GL_MAX_FRAMEBUFFER_HEIGHT 0x9316
#define GL_MAX_FRAMEBUFFER_LAYERS 0x9317
#define GL_MAX_FRAMEBUFFER_SAMPLES 0x9318
void glFramebufferParameteri (GLenum target, GLenum pname, GLint param);
void glGetFramebufferParameteriv (GLenum target, GLenum pname, GLint* params);
void glGetNamedFramebufferParameterivEXT (GLuint framebuffer, GLenum pname, GLint* params);
void glNamedFramebufferParameteriEXT (GLuint framebuffer, GLenum pname, GLint param);
#define GL_INVALID_FRAMEBUFFER_OPERATION 0x0506
#define GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING 0x8210
#define GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE 0x8211
#define GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE 0x8212
#define GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE 0x8213
#define GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE 0x8214
#define GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE 0x8215
#define GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE 0x8216
#define GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE 0x8217
#define GL_FRAMEBUFFER_DEFAULT 0x8218
#define GL_FRAMEBUFFER_UNDEFINED 0x8219
#define GL_DEPTH_STENCIL_ATTACHMENT 0x821A
#define GL_INDEX 0x8222
#define GL_MAX_RENDERBUFFER_SIZE 0x84E8
#define GL_DEPTH_STENCIL 0x84F9
#define GL_UNSIGNED_INT_24_8 0x84FA
#define GL_DEPTH24_STENCIL8 0x88F0
#define GL_TEXTURE_STENCIL_SIZE 0x88F1
#define GL_UNSIGNED_NORMALIZED 0x8C17
#define GL_SRGB 0x8C40
#define GL_DRAW_FRAMEBUFFER_BINDING 0x8CA6
#define GL_FRAMEBUFFER_BINDING 0x8CA6
#define GL_RENDERBUFFER_BINDING 0x8CA7
#define GL_READ_FRAMEBUFFER 0x8CA8
#define GL_DRAW_FRAMEBUFFER 0x8CA9
#define GL_READ_FRAMEBUFFER_BINDING 0x8CAA
#define GL_RENDERBUFFER_SAMPLES 0x8CAB
#define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE 0x8CD0
#define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME 0x8CD1
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL 0x8CD2
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE 0x8CD3
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER 0x8CD4
#define GL_FRAMEBUFFER_COMPLETE 0x8CD5
#define GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT 0x8CD6
#define GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT 0x8CD7
#define GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER 0x8CDB
#define GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER 0x8CDC
#define GL_FRAMEBUFFER_UNSUPPORTED 0x8CDD
#define GL_MAX_COLOR_ATTACHMENTS 0x8CDF
#define GL_COLOR_ATTACHMENT0 0x8CE0
#define GL_COLOR_ATTACHMENT1 0x8CE1
#define GL_COLOR_ATTACHMENT2 0x8CE2
#define GL_COLOR_ATTACHMENT3 0x8CE3
#define GL_COLOR_ATTACHMENT4 0x8CE4
#define GL_COLOR_ATTACHMENT5 0x8CE5
#define GL_COLOR_ATTACHMENT6 0x8CE6
#define GL_COLOR_ATTACHMENT7 0x8CE7
#define GL_COLOR_ATTACHMENT8 0x8CE8
#define GL_COLOR_ATTACHMENT9 0x8CE9
#define GL_COLOR_ATTACHMENT10 0x8CEA
#define GL_COLOR_ATTACHMENT11 0x8CEB
#define GL_COLOR_ATTACHMENT12 0x8CEC
#define GL_COLOR_ATTACHMENT13 0x8CED
#define GL_COLOR_ATTACHMENT14 0x8CEE
#define GL_COLOR_ATTACHMENT15 0x8CEF
#define GL_DEPTH_ATTACHMENT 0x8D00
#define GL_STENCIL_ATTACHMENT 0x8D20
#define GL_FRAMEBUFFER 0x8D40
#define GL_RENDERBUFFER 0x8D41
#define GL_RENDERBUFFER_WIDTH 0x8D42
#define GL_RENDERBUFFER_HEIGHT 0x8D43
#define GL_RENDERBUFFER_INTERNAL_FORMAT 0x8D44
#define GL_STENCIL_INDEX1 0x8D46
#define GL_STENCIL_INDEX4 0x8D47
#define GL_STENCIL_INDEX8 0x8D48
#define GL_STENCIL_INDEX16 0x8D49
#define GL_RENDERBUFFER_RED_SIZE 0x8D50
#define GL_RENDERBUFFER_GREEN_SIZE 0x8D51
#define GL_RENDERBUFFER_BLUE_SIZE 0x8D52
#define GL_RENDERBUFFER_ALPHA_SIZE 0x8D53
#define GL_RENDERBUFFER_DEPTH_SIZE 0x8D54
#define GL_RENDERBUFFER_STENCIL_SIZE 0x8D55
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE 0x8D56
#define GL_MAX_SAMPLES 0x8D57
void glBindFramebuffer (GLenum target, GLuint framebuffer);
void glBindRenderbuffer (GLenum target, GLuint renderbuffer);
void glBlitFramebuffer (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
GLenum glCheckFramebufferStatus (GLenum target);
void glDeleteFramebuffers (GLsizei n, const GLuint* framebuffers);
void glDeleteRenderbuffers (GLsizei n, const GLuint* renderbuffers);
void glFramebufferRenderbuffer (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glFramebufferTexture1D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture2D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture3D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint layer);
void glFramebufferTextureLayer (GLenum target,GLenum attachment, GLuint texture,GLint level,GLint layer);
void glGenFramebuffers (GLsizei n, GLuint* framebuffers);
void glGenRenderbuffers (GLsizei n, GLuint* renderbuffers);
void glGenerateMipmap (GLenum target);
void glGetFramebufferAttachmentParameteriv (GLenum target, GLenum attachment, GLenum pname, GLint* params);
void glGetRenderbufferParameteriv (GLenum target, GLenum pname, GLint* params);
GLboolean glIsFramebuffer (GLuint framebuffer);
GLboolean glIsRenderbuffer (GLuint renderbuffer);
void glRenderbufferStorage (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
void glRenderbufferStorageMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
#define GL_FRAMEBUFFER_SRGB 0x8DB9
#define GL_LINES_ADJACENCY_ARB 0xA
#define GL_LINE_STRIP_ADJACENCY_ARB 0xB
#define GL_TRIANGLES_ADJACENCY_ARB 0xC
#define GL_TRIANGLE_STRIP_ADJACENCY_ARB 0xD
#define GL_PROGRAM_POINT_SIZE_ARB 0x8642
#define GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB 0x8C29
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER 0x8CD4
#define GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB 0x8DA7
#define GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB 0x8DA8
#define GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB 0x8DA9
#define GL_GEOMETRY_SHADER_ARB 0x8DD9
#define GL_GEOMETRY_VERTICES_OUT_ARB 0x8DDA
#define GL_GEOMETRY_INPUT_TYPE_ARB 0x8DDB
#define GL_GEOMETRY_OUTPUT_TYPE_ARB 0x8DDC
#define GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB 0x8DDD
#define GL_MAX_VERTEX_VARYING_COMPONENTS_ARB 0x8DDE
#define GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB 0x8DDF
#define GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB 0x8DE0
#define GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB 0x8DE1
void glFramebufferTextureARB (GLenum target, GLenum attachment, GLuint texture, GLint level);
void glFramebufferTextureFaceARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);
void glFramebufferTextureLayerARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glProgramParameteriARB (GLuint program, GLenum pname, GLint value);
#define GL_PROGRAM_BINARY_RETRIEVABLE_HINT 0x8257
#define GL_PROGRAM_BINARY_LENGTH 0x8741
#define GL_NUM_PROGRAM_BINARY_FORMATS 0x87FE
#define GL_PROGRAM_BINARY_FORMATS 0x87FF
void glGetProgramBinary (GLuint program, GLsizei bufSize, GLsizei* length, GLenum *binaryFormat, void*binary);
void glProgramBinary (GLuint program, GLenum binaryFormat, const void *binary, GLsizei length);
void glProgramParameteri (GLuint program, GLenum pname, GLint value);
void glGetCompressedTextureSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei bufSize, void *pixels);
void glGetTextureSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLsizei bufSize, void *pixels);
#define GL_SHADER_BINARY_FORMAT_SPIR_V_ARB 0x9551
#define GL_SPIR_V_BINARY_ARB 0x9552
void glSpecializeShaderARB (GLuint shader, const GLchar* pEntryPoint, GLuint numSpecializationConstants, const GLuint* pConstantIndex, const GLuint* pConstantValue);
#define GL_GEOMETRY_SHADER_INVOCATIONS 0x887F
#define GL_MAX_GEOMETRY_SHADER_INVOCATIONS 0x8E5A
#define GL_MIN_FRAGMENT_INTERPOLATION_OFFSET 0x8E5B
#define GL_MAX_FRAGMENT_INTERPOLATION_OFFSET 0x8E5C
#define GL_FRAGMENT_INTERPOLATION_OFFSET_BITS 0x8E5D
#define GL_MAX_VERTEX_STREAMS 0x8E71
#define GL_DOUBLE_MAT2 0x8F46
#define GL_DOUBLE_MAT3 0x8F47
#define GL_DOUBLE_MAT4 0x8F48
#define GL_DOUBLE_MAT2x3 0x8F49
#define GL_DOUBLE_MAT2x4 0x8F4A
#define GL_DOUBLE_MAT3x2 0x8F4B
#define GL_DOUBLE_MAT3x4 0x8F4C
#define GL_DOUBLE_MAT4x2 0x8F4D
#define GL_DOUBLE_MAT4x3 0x8F4E
#define GL_DOUBLE_VEC2 0x8FFC
#define GL_DOUBLE_VEC3 0x8FFD
#define GL_DOUBLE_VEC4 0x8FFE
void glGetUniformdv (GLuint program, GLint location, GLdouble* params);
void glUniform1d (GLint location, GLdouble x);
void glUniform1dv (GLint location, GLsizei count, const GLdouble* value);
void glUniform2d (GLint location, GLdouble x, GLdouble y);
void glUniform2dv (GLint location, GLsizei count, const GLdouble* value);
void glUniform3d (GLint location, GLdouble x, GLdouble y, GLdouble z);
void glUniform3dv (GLint location, GLsizei count, const GLdouble* value);
void glUniform4d (GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glUniform4dv (GLint location, GLsizei count, const GLdouble* value);
void glUniformMatrix2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glUniformMatrix2x3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glUniformMatrix2x4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glUniformMatrix3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glUniformMatrix3x2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glUniformMatrix3x4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glUniformMatrix4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glUniformMatrix4x2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glUniformMatrix4x3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
#define GL_INT64_ARB 0x140E
#define GL_UNSIGNED_INT64_ARB 0x140F
#define GL_INT64_VEC2_ARB 0x8FE9
#define GL_INT64_VEC3_ARB 0x8FEA
#define GL_INT64_VEC4_ARB 0x8FEB
#define GL_UNSIGNED_INT64_VEC2_ARB 0x8FF5
#define GL_UNSIGNED_INT64_VEC3_ARB 0x8FF6
#define GL_UNSIGNED_INT64_VEC4_ARB 0x8FF7
void glGetUniformi64vARB (GLuint program, GLint location, GLint64* params);
void glGetUniformui64vARB (GLuint program, GLint location, GLuint64* params);
void glGetnUniformi64vARB (GLuint program, GLint location, GLsizei bufSize, GLint64* params);
void glGetnUniformui64vARB (GLuint program, GLint location, GLsizei bufSize, GLuint64* params);
void glProgramUniform1i64ARB (GLuint program, GLint location, GLint64 x);
void glProgramUniform1i64vARB (GLuint program, GLint location, GLsizei count, const GLint64* value);
void glProgramUniform1ui64ARB (GLuint program, GLint location, GLuint64 x);
void glProgramUniform1ui64vARB (GLuint program, GLint location, GLsizei count, const GLuint64* value);
void glProgramUniform2i64ARB (GLuint program, GLint location, GLint64 x, GLint64 y);
void glProgramUniform2i64vARB (GLuint program, GLint location, GLsizei count, const GLint64* value);
void glProgramUniform2ui64ARB (GLuint program, GLint location, GLuint64 x, GLuint64 y);
void glProgramUniform2ui64vARB (GLuint program, GLint location, GLsizei count, const GLuint64* value);
void glProgramUniform3i64ARB (GLuint program, GLint location, GLint64 x, GLint64 y, GLint64 z);
void glProgramUniform3i64vARB (GLuint program, GLint location, GLsizei count, const GLint64* value);
void glProgramUniform3ui64ARB (GLuint program, GLint location, GLuint64 x, GLuint64 y, GLuint64 z);
void glProgramUniform3ui64vARB (GLuint program, GLint location, GLsizei count, const GLuint64* value);
void glProgramUniform4i64ARB (GLuint program, GLint location, GLint64 x, GLint64 y, GLint64 z, GLint64 w);
void glProgramUniform4i64vARB (GLuint program, GLint location, GLsizei count, const GLint64* value);
void glProgramUniform4ui64ARB (GLuint program, GLint location, GLuint64 x, GLuint64 y, GLuint64 z, GLuint64 w);
void glProgramUniform4ui64vARB (GLuint program, GLint location, GLsizei count, const GLuint64* value);
void glUniform1i64ARB (GLint location, GLint64 x);
void glUniform1i64vARB (GLint location, GLsizei count, const GLint64* value);
void glUniform1ui64ARB (GLint location, GLuint64 x);
void glUniform1ui64vARB (GLint location, GLsizei count, const GLuint64* value);
void glUniform2i64ARB (GLint location, GLint64 x, GLint64 y);
void glUniform2i64vARB (GLint location, GLsizei count, const GLint64* value);
void glUniform2ui64ARB (GLint location, GLuint64 x, GLuint64 y);
void glUniform2ui64vARB (GLint location, GLsizei count, const GLuint64* value);
void glUniform3i64ARB (GLint location, GLint64 x, GLint64 y, GLint64 z);
void glUniform3i64vARB (GLint location, GLsizei count, const GLint64* value);
void glUniform3ui64ARB (GLint location, GLuint64 x, GLuint64 y, GLuint64 z);
void glUniform3ui64vARB (GLint location, GLsizei count, const GLuint64* value);
void glUniform4i64ARB (GLint location, GLint64 x, GLint64 y, GLint64 z, GLint64 w);
void glUniform4i64vARB (GLint location, GLsizei count, const GLint64* value);
void glUniform4ui64ARB (GLint location, GLuint64 x, GLuint64 y, GLuint64 z, GLuint64 w);
void glUniform4ui64vARB (GLint location, GLsizei count, const GLuint64* value);
#define GL_HALF_FLOAT_ARB 0x140B
#define GL_HALF_FLOAT 0x140B
#define GL_CONSTANT_COLOR 0x8001
#define GL_ONE_MINUS_CONSTANT_COLOR 0x8002
#define GL_CONSTANT_ALPHA 0x8003
#define GL_ONE_MINUS_CONSTANT_ALPHA 0x8004
#define GL_BLEND_COLOR 0x8005
#define GL_FUNC_ADD 0x8006
#define GL_MIN 0x8007
#define GL_MAX 0x8008
#define GL_BLEND_EQUATION 0x8009
#define GL_FUNC_SUBTRACT 0x800A
#define GL_FUNC_REVERSE_SUBTRACT 0x800B
#define GL_CONVOLUTION_1D 0x8010
#define GL_CONVOLUTION_2D 0x8011
#define GL_SEPARABLE_2D 0x8012
#define GL_CONVOLUTION_BORDER_MODE 0x8013
#define GL_CONVOLUTION_FILTER_SCALE 0x8014
#define GL_CONVOLUTION_FILTER_BIAS 0x8015
#define GL_REDUCE 0x8016
#define GL_CONVOLUTION_FORMAT 0x8017
#define GL_CONVOLUTION_WIDTH 0x8018
#define GL_CONVOLUTION_HEIGHT 0x8019
#define GL_MAX_CONVOLUTION_WIDTH 0x801A
#define GL_MAX_CONVOLUTION_HEIGHT 0x801B
#define GL_POST_CONVOLUTION_RED_SCALE 0x801C
#define GL_POST_CONVOLUTION_GREEN_SCALE 0x801D
#define GL_POST_CONVOLUTION_BLUE_SCALE 0x801E
#define GL_POST_CONVOLUTION_ALPHA_SCALE 0x801F
#define GL_POST_CONVOLUTION_RED_BIAS 0x8020
#define GL_POST_CONVOLUTION_GREEN_BIAS 0x8021
#define GL_POST_CONVOLUTION_BLUE_BIAS 0x8022
#define GL_POST_CONVOLUTION_ALPHA_BIAS 0x8023
%feature("sufix", "_CONSTANT4321end");
#define GL_HISTOGRAM 0x8024
%feature("sufix", "4321end");
#define GL_PROXY_HISTOGRAM 0x8025
#define GL_HISTOGRAM_WIDTH 0x8026
#define GL_HISTOGRAM_FORMAT 0x8027
#define GL_HISTOGRAM_RED_SIZE 0x8028
#define GL_HISTOGRAM_GREEN_SIZE 0x8029
#define GL_HISTOGRAM_BLUE_SIZE 0x802A
#define GL_HISTOGRAM_ALPHA_SIZE 0x802B
#define GL_HISTOGRAM_LUMINANCE_SIZE 0x802C
#define GL_HISTOGRAM_SINK 0x802D
%feature("sufix", "_CONSTANT4321end");
#define GL_MINMAX 0x802E
%feature("sufix", "4321end");
#define GL_MINMAX_FORMAT 0x802F
#define GL_MINMAX_SINK 0x8030
#define GL_TABLE_TOO_LARGE 0x8031
#define GL_COLOR_MATRIX 0x80B1
#define GL_COLOR_MATRIX_STACK_DEPTH 0x80B2
#define GL_MAX_COLOR_MATRIX_STACK_DEPTH 0x80B3
#define GL_POST_COLOR_MATRIX_RED_SCALE 0x80B4
#define GL_POST_COLOR_MATRIX_GREEN_SCALE 0x80B5
#define GL_POST_COLOR_MATRIX_BLUE_SCALE 0x80B6
#define GL_POST_COLOR_MATRIX_ALPHA_SCALE 0x80B7
#define GL_POST_COLOR_MATRIX_RED_BIAS 0x80B8
#define GL_POST_COLOR_MATRIX_GREEN_BIAS 0x80B9
#define GL_POST_COLOR_MATRIX_BLUE_BIAS 0x80BA
#define GL_POST_COLOR_MATRIX_ALPHA_BIAS 0x80BB
%feature("sufix", "_CONSTANT4321end");
#define GL_COLOR_TABLE 0x80D0
%feature("sufix", "4321end");
#define GL_POST_CONVOLUTION_COLOR_TABLE 0x80D1
#define GL_POST_COLOR_MATRIX_COLOR_TABLE 0x80D2
#define GL_PROXY_COLOR_TABLE 0x80D3
#define GL_PROXY_POST_CONVOLUTION_COLOR_TABLE 0x80D4
#define GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE 0x80D5
#define GL_COLOR_TABLE_SCALE 0x80D6
#define GL_COLOR_TABLE_BIAS 0x80D7
#define GL_COLOR_TABLE_FORMAT 0x80D8
#define GL_COLOR_TABLE_WIDTH 0x80D9
#define GL_COLOR_TABLE_RED_SIZE 0x80DA
#define GL_COLOR_TABLE_GREEN_SIZE 0x80DB
#define GL_COLOR_TABLE_BLUE_SIZE 0x80DC
#define GL_COLOR_TABLE_ALPHA_SIZE 0x80DD
#define GL_COLOR_TABLE_LUMINANCE_SIZE 0x80DE
#define GL_COLOR_TABLE_INTENSITY_SIZE 0x80DF
#define GL_IGNORE_BORDER 0x8150
#define GL_CONSTANT_BORDER 0x8151
#define GL_WRAP_BORDER 0x8152
#define GL_REPLICATE_BORDER 0x8153
#define GL_CONVOLUTION_BORDER_COLOR 0x8154
void glColorTable (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *table);
void glColorSubTable (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const void *data);
void glColorTableParameteriv (GLenum target, GLenum pname, const GLint *params);
void glColorTableParameterfv (GLenum target, GLenum pname, const GLfloat *params);
void glCopyColorSubTable (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
void glCopyColorTable (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glGetColorTable (GLenum target, GLenum format, GLenum type, void *table);
void glGetColorTableParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetColorTableParameteriv (GLenum target, GLenum pname, GLint *params);
void glHistogram (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void glResetHistogram (GLenum target);
void glGetHistogram (GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void glGetHistogramParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetHistogramParameteriv (GLenum target, GLenum pname, GLint *params);
void glMinmax (GLenum target, GLenum internalformat, GLboolean sink);
void glResetMinmax (GLenum target);
void glGetMinmaxParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetMinmaxParameteriv (GLenum target, GLenum pname, GLint *params);
void glConvolutionFilter1D (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *image);
void glConvolutionFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *image);
void glConvolutionParameterf (GLenum target, GLenum pname, GLfloat params);
void glConvolutionParameterfv (GLenum target, GLenum pname, const GLfloat *params);
void glConvolutionParameteri (GLenum target, GLenum pname, GLint params);
void glConvolutionParameteriv (GLenum target, GLenum pname, const GLint *params);
void glCopyConvolutionFilter1D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glCopyConvolutionFilter2D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetConvolutionFilter (GLenum target, GLenum format, GLenum type, void *image);
void glGetConvolutionParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetConvolutionParameteriv (GLenum target, GLenum pname, GLint *params);
void glSeparableFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *row, const void *column);
void glGetSeparableFilter (GLenum target, GLenum format, GLenum type, void *row, void *column, void *span);
void glGetMinmax (GLenum target, GLboolean reset, GLenum format, GLenum types, void *values);
#define GL_PARAMETER_BUFFER_ARB 0x80EE
#define GL_PARAMETER_BUFFER_BINDING_ARB 0x80EF
void glMultiDrawArraysIndirectCountARB (GLenum mode, const void *indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride);
void glMultiDrawElementsIndirectCountARB (GLenum mode, GLenum type, const void *indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride);
#define GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB 0x88FE
void glVertexAttribDivisorARB (GLuint index, GLuint divisor);
void glDrawArraysInstancedARB (GLenum mode, GLint first, GLsizei count, GLsizei primcount);
void glDrawElementsInstancedARB (GLenum mode, GLsizei count, GLenum type, const void* indices, GLsizei primcount);
#define GL_NUM_SAMPLE_COUNTS 0x9380
void glGetInternalformativ (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params);
#define GL_INTERNALFORMAT_SUPPORTED 0x826F
#define GL_INTERNALFORMAT_PREFERRED 0x8270
#define GL_INTERNALFORMAT_RED_SIZE 0x8271
#define GL_INTERNALFORMAT_GREEN_SIZE 0x8272
#define GL_INTERNALFORMAT_BLUE_SIZE 0x8273
#define GL_INTERNALFORMAT_ALPHA_SIZE 0x8274
#define GL_INTERNALFORMAT_DEPTH_SIZE 0x8275
#define GL_INTERNALFORMAT_STENCIL_SIZE 0x8276
#define GL_INTERNALFORMAT_SHARED_SIZE 0x8277
#define GL_INTERNALFORMAT_RED_TYPE 0x8278
#define GL_INTERNALFORMAT_GREEN_TYPE 0x8279
#define GL_INTERNALFORMAT_BLUE_TYPE 0x827A
#define GL_INTERNALFORMAT_ALPHA_TYPE 0x827B
#define GL_INTERNALFORMAT_DEPTH_TYPE 0x827C
#define GL_INTERNALFORMAT_STENCIL_TYPE 0x827D
#define GL_MAX_WIDTH 0x827E
#define GL_MAX_HEIGHT 0x827F
#define GL_MAX_DEPTH 0x8280
#define GL_MAX_LAYERS 0x8281
#define GL_MAX_COMBINED_DIMENSIONS 0x8282
#define GL_COLOR_COMPONENTS 0x8283
#define GL_DEPTH_COMPONENTS 0x8284
#define GL_STENCIL_COMPONENTS 0x8285
#define GL_COLOR_RENDERABLE 0x8286
#define GL_DEPTH_RENDERABLE 0x8287
#define GL_STENCIL_RENDERABLE 0x8288
#define GL_FRAMEBUFFER_RENDERABLE 0x8289
#define GL_FRAMEBUFFER_RENDERABLE_LAYERED 0x828A
#define GL_FRAMEBUFFER_BLEND 0x828B
#define GL_READ_PIXELS 0x828C
#define GL_READ_PIXELS_FORMAT 0x828D
#define GL_READ_PIXELS_TYPE 0x828E
#define GL_TEXTURE_IMAGE_FORMAT 0x828F
#define GL_TEXTURE_IMAGE_TYPE 0x8290
#define GL_GET_TEXTURE_IMAGE_FORMAT 0x8291
#define GL_GET_TEXTURE_IMAGE_TYPE 0x8292
#define GL_MIPMAP 0x8293
#define GL_MANUAL_GENERATE_MIPMAP 0x8294
#define GL_AUTO_GENERATE_MIPMAP 0x8295
#define GL_COLOR_ENCODING 0x8296
#define GL_SRGB_READ 0x8297
#define GL_SRGB_WRITE 0x8298
#define GL_SRGB_DECODE_ARB 0x8299
#define GL_FILTER 0x829A
#define GL_VERTEX_TEXTURE 0x829B
#define GL_TESS_CONTROL_TEXTURE 0x829C
#define GL_TESS_EVALUATION_TEXTURE 0x829D
#define GL_GEOMETRY_TEXTURE 0x829E
#define GL_FRAGMENT_TEXTURE 0x829F
#define GL_COMPUTE_TEXTURE 0x82A0
#define GL_TEXTURE_SHADOW 0x82A1
#define GL_TEXTURE_GATHER 0x82A2
#define GL_TEXTURE_GATHER_SHADOW 0x82A3
#define GL_SHADER_IMAGE_LOAD 0x82A4
#define GL_SHADER_IMAGE_STORE 0x82A5
#define GL_SHADER_IMAGE_ATOMIC 0x82A6
#define GL_IMAGE_TEXEL_SIZE 0x82A7
#define GL_IMAGE_COMPATIBILITY_CLASS 0x82A8
#define GL_IMAGE_PIXEL_FORMAT 0x82A9
#define GL_IMAGE_PIXEL_TYPE 0x82AA
#define GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST 0x82AC
#define GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST 0x82AD
#define GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE 0x82AE
#define GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE 0x82AF
#define GL_TEXTURE_COMPRESSED_BLOCK_WIDTH 0x82B1
#define GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT 0x82B2
#define GL_TEXTURE_COMPRESSED_BLOCK_SIZE 0x82B3
#define GL_CLEAR_BUFFER 0x82B4
%feature("sufix", "_CONSTANT4321end");
#define GL_TEXTURE_VIEW 0x82B5
%feature("sufix", "4321end");
#define GL_VIEW_COMPATIBILITY_CLASS 0x82B6
#define GL_FULL_SUPPORT 0x82B7
#define GL_CAVEAT_SUPPORT 0x82B8
#define GL_IMAGE_CLASS_4_X_32 0x82B9
#define GL_IMAGE_CLASS_2_X_32 0x82BA
#define GL_IMAGE_CLASS_1_X_32 0x82BB
#define GL_IMAGE_CLASS_4_X_16 0x82BC
#define GL_IMAGE_CLASS_2_X_16 0x82BD
#define GL_IMAGE_CLASS_1_X_16 0x82BE
#define GL_IMAGE_CLASS_4_X_8 0x82BF
#define GL_IMAGE_CLASS_2_X_8 0x82C0
#define GL_IMAGE_CLASS_1_X_8 0x82C1
#define GL_IMAGE_CLASS_11_11_10 0x82C2
#define GL_IMAGE_CLASS_10_10_10_2 0x82C3
#define GL_VIEW_CLASS_128_BITS 0x82C4
#define GL_VIEW_CLASS_96_BITS 0x82C5
#define GL_VIEW_CLASS_64_BITS 0x82C6
#define GL_VIEW_CLASS_48_BITS 0x82C7
#define GL_VIEW_CLASS_32_BITS 0x82C8
#define GL_VIEW_CLASS_24_BITS 0x82C9
#define GL_VIEW_CLASS_16_BITS 0x82CA
#define GL_VIEW_CLASS_8_BITS 0x82CB
#define GL_VIEW_CLASS_S3TC_DXT1_RGB 0x82CC
#define GL_VIEW_CLASS_S3TC_DXT1_RGBA 0x82CD
#define GL_VIEW_CLASS_S3TC_DXT3_RGBA 0x82CE
#define GL_VIEW_CLASS_S3TC_DXT5_RGBA 0x82CF
#define GL_VIEW_CLASS_RGTC1_RED 0x82D0
#define GL_VIEW_CLASS_RGTC2_RG 0x82D1
#define GL_VIEW_CLASS_BPTC_UNORM 0x82D2
#define GL_VIEW_CLASS_BPTC_FLOAT 0x82D3
void glGetInternalformati64v (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params);
void glInvalidateBufferData (GLuint buffer);
void glInvalidateBufferSubData (GLuint buffer, GLintptr offset, GLsizeiptr length);
void glInvalidateFramebuffer (GLenum target, GLsizei numAttachments, const GLenum* attachments);
void glInvalidateSubFramebuffer (GLenum target, GLsizei numAttachments, const GLenum* attachments, GLint x, GLint y, GLsizei width, GLsizei height);
void glInvalidateTexImage (GLuint texture, GLint level);
void glInvalidateTexSubImage (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth);
#define GL_MIN_MAP_BUFFER_ALIGNMENT 0x90BC
#define GL_MAP_READ_BIT 0x0001
#define GL_MAP_WRITE_BIT 0x0002
#define GL_MAP_INVALIDATE_RANGE_BIT 0x0004
#define GL_MAP_INVALIDATE_BUFFER_BIT 0x0008
#define GL_MAP_FLUSH_EXPLICIT_BIT 0x0010
#define GL_MAP_UNSYNCHRONIZED_BIT 0x0020
void glFlushMappedBufferRange (GLenum target, GLintptr offset, GLsizeiptr length);
void * glMapBufferRange (GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access);
#define GL_MATRIX_PALETTE_ARB 0x8840
#define GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB 0x8841
#define GL_MAX_PALETTE_MATRICES_ARB 0x8842
%feature("sufix", "_CONSANT4321end");
#define GL_CURRENT_PALETTE_MATRIX_ARB 0x8843
%feature("sufix", "4321end");
#define GL_MATRIX_INDEX_ARRAY_ARB 0x8844
#define GL_CURRENT_MATRIX_INDEX_ARB 0x8845
#define GL_MATRIX_INDEX_ARRAY_SIZE_ARB 0x8846
#define GL_MATRIX_INDEX_ARRAY_TYPE_ARB 0x8847
#define GL_MATRIX_INDEX_ARRAY_STRIDE_ARB 0x8848
#define GL_MATRIX_INDEX_ARRAY_POINTER_ARB 0x8849
void glCurrentPaletteMatrixARB (GLint index);
void glMatrixIndexPointerARB (GLint size, GLenum type, GLsizei stride, void *pointer);
void glMatrixIndexubvARB (GLint size, GLubyte *indices);
void glMatrixIndexusvARB (GLint size, GLushort *indices);
void glMatrixIndexuivARB (GLint size, GLuint *indices);
void glBindBuffersBase (GLenum target, GLuint first, GLsizei count, const GLuint* buffers);
void glBindBuffersRange (GLenum target, GLuint first, GLsizei count, const GLuint* buffers, const GLintptr *offsets, const GLsizeiptr *sizes);
void glBindImageTextures (GLuint first, GLsizei count, const GLuint* textures);
void glBindSamplers (GLuint first, GLsizei count, const GLuint* samplers);
void glBindTextures (GLuint first, GLsizei count, const GLuint* textures);
void glBindVertexBuffers (GLuint first, GLsizei count, const GLuint* buffers, const GLintptr *offsets, const GLsizei *strides);
void glMultiDrawArraysIndirect (GLenum mode, const void *indirect, GLsizei primcount, GLsizei stride);
void glMultiDrawElementsIndirect (GLenum mode, GLenum type, const void *indirect, GLsizei primcount, GLsizei stride);
#define GL_MULTISAMPLE_ARB 0x809D
#define GL_SAMPLE_ALPHA_TO_COVERAGE_ARB 0x809E
#define GL_SAMPLE_ALPHA_TO_ONE_ARB 0x809F
%feature("sufix", "_CONSTANT4321end");
#define GL_SAMPLE_COVERAGE_ARB 0x80A0
%feature("sufix", "4321end");
#define GL_SAMPLE_BUFFERS_ARB 0x80A8
#define GL_SAMPLES_ARB 0x80A9
#define GL_SAMPLE_COVERAGE_VALUE_ARB 0x80AA
#define GL_SAMPLE_COVERAGE_INVERT_ARB 0x80AB
#define GL_MULTISAMPLE_BIT_ARB 0x20000000
void glSampleCoverageARB (GLclampf value, GLboolean invert);
#define GL_TEXTURE0_ARB 0x84C0
#define GL_TEXTURE1_ARB 0x84C1
#define GL_TEXTURE2_ARB 0x84C2
#define GL_TEXTURE3_ARB 0x84C3
#define GL_TEXTURE4_ARB 0x84C4
#define GL_TEXTURE5_ARB 0x84C5
#define GL_TEXTURE6_ARB 0x84C6
#define GL_TEXTURE7_ARB 0x84C7
#define GL_TEXTURE8_ARB 0x84C8
#define GL_TEXTURE9_ARB 0x84C9
#define GL_TEXTURE10_ARB 0x84CA
#define GL_TEXTURE11_ARB 0x84CB
#define GL_TEXTURE12_ARB 0x84CC
#define GL_TEXTURE13_ARB 0x84CD
#define GL_TEXTURE14_ARB 0x84CE
#define GL_TEXTURE15_ARB 0x84CF
#define GL_TEXTURE16_ARB 0x84D0
#define GL_TEXTURE17_ARB 0x84D1
#define GL_TEXTURE18_ARB 0x84D2
#define GL_TEXTURE19_ARB 0x84D3
#define GL_TEXTURE20_ARB 0x84D4
#define GL_TEXTURE21_ARB 0x84D5
#define GL_TEXTURE22_ARB 0x84D6
#define GL_TEXTURE23_ARB 0x84D7
#define GL_TEXTURE24_ARB 0x84D8
#define GL_TEXTURE25_ARB 0x84D9
#define GL_TEXTURE26_ARB 0x84DA
#define GL_TEXTURE27_ARB 0x84DB
#define GL_TEXTURE28_ARB 0x84DC
#define GL_TEXTURE29_ARB 0x84DD
#define GL_TEXTURE30_ARB 0x84DE
#define GL_TEXTURE31_ARB 0x84DF
%feature("sufix", "_CONSTANT4321end");
#define GL_ACTIVE_TEXTURE_ARB 0x84E0
#define GL_CLIENT_ACTIVE_TEXTURE_ARB 0x84E1
%feature("sufix", "4321end");
#define GL_MAX_TEXTURE_UNITS_ARB 0x84E2
void glActiveTextureARB (GLenum texture);
void glClientActiveTextureARB (GLenum texture);
void glMultiTexCoord1dARB (GLenum target, GLdouble s);
void glMultiTexCoord1dvARB (GLenum target, const GLdouble *v);
void glMultiTexCoord1fARB (GLenum target, GLfloat s);
void glMultiTexCoord1fvARB (GLenum target, const GLfloat *v);
void glMultiTexCoord1iARB (GLenum target, GLint s);
void glMultiTexCoord1ivARB (GLenum target, const GLint *v);
void glMultiTexCoord1sARB (GLenum target, GLshort s);
void glMultiTexCoord1svARB (GLenum target, const GLshort *v);
void glMultiTexCoord2dARB (GLenum target, GLdouble s, GLdouble t);
void glMultiTexCoord2dvARB (GLenum target, const GLdouble *v);
void glMultiTexCoord2fARB (GLenum target, GLfloat s, GLfloat t);
void glMultiTexCoord2fvARB (GLenum target, const GLfloat *v);
void glMultiTexCoord2iARB (GLenum target, GLint s, GLint t);
void glMultiTexCoord2ivARB (GLenum target, const GLint *v);
void glMultiTexCoord2sARB (GLenum target, GLshort s, GLshort t);
void glMultiTexCoord2svARB (GLenum target, const GLshort *v);
void glMultiTexCoord3dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r);
void glMultiTexCoord3dvARB (GLenum target, const GLdouble *v);
void glMultiTexCoord3fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r);
void glMultiTexCoord3fvARB (GLenum target, const GLfloat *v);
void glMultiTexCoord3iARB (GLenum target, GLint s, GLint t, GLint r);
void glMultiTexCoord3ivARB (GLenum target, const GLint *v);
void glMultiTexCoord3sARB (GLenum target, GLshort s, GLshort t, GLshort r);
void glMultiTexCoord3svARB (GLenum target, const GLshort *v);
void glMultiTexCoord4dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glMultiTexCoord4dvARB (GLenum target, const GLdouble *v);
void glMultiTexCoord4fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glMultiTexCoord4fvARB (GLenum target, const GLfloat *v);
void glMultiTexCoord4iARB (GLenum target, GLint s, GLint t, GLint r, GLint q);
void glMultiTexCoord4ivARB (GLenum target, const GLint *v);
void glMultiTexCoord4sARB (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
void glMultiTexCoord4svARB (GLenum target, const GLshort *v);
#define GL_QUERY_COUNTER_BITS_ARB 0x8864
#define GL_CURRENT_QUERY_ARB 0x8865
#define GL_QUERY_RESULT_ARB 0x8866
#define GL_QUERY_RESULT_AVAILABLE_ARB 0x8867
#define GL_SAMPLES_PASSED_ARB 0x8914
void glBeginQueryARB (GLenum target, GLuint id);
void glDeleteQueriesARB (GLsizei n, const GLuint* ids);
void glEndQueryARB (GLenum target);
void glGenQueriesARB (GLsizei n, GLuint* ids);
void glGetQueryObjectivARB (GLuint id, GLenum pname, GLint* params);
void glGetQueryObjectuivARB (GLuint id, GLenum pname, GLuint* params);
void glGetQueryivARB (GLenum target, GLenum pname, GLint* params);
GLboolean glIsQueryARB (GLuint id);
#define GL_ANY_SAMPLES_PASSED 0x8C2F
%feature("sufix", "_CONSTANT4321end");
#define GL_MAX_SHADER_COMPILER_THREADS_ARB 0x91B0
%feature("sufix", "4321end");
#define GL_COMPLETION_STATUS_ARB 0x91B1
void glMaxShaderCompilerThreadsARB (GLuint count);
#define GL_VERTICES_SUBMITTED_ARB 0x82EE
#define GL_PRIMITIVES_SUBMITTED_ARB 0x82EF
#define GL_VERTEX_SHADER_INVOCATIONS_ARB 0x82F0
#define GL_TESS_CONTROL_SHADER_PATCHES_ARB 0x82F1
#define GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB 0x82F2
#define GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB 0x82F3
#define GL_FRAGMENT_SHADER_INVOCATIONS_ARB 0x82F4
#define GL_COMPUTE_SHADER_INVOCATIONS_ARB 0x82F5
#define GL_CLIPPING_INPUT_PRIMITIVES_ARB 0x82F6
#define GL_CLIPPING_OUTPUT_PRIMITIVES_ARB 0x82F7
#define GL_GEOMETRY_SHADER_INVOCATIONS 0x887F
#define GL_PIXEL_PACK_BUFFER_ARB 0x88EB
#define GL_PIXEL_UNPACK_BUFFER_ARB 0x88EC
#define GL_PIXEL_PACK_BUFFER_BINDING_ARB 0x88ED
#define GL_PIXEL_UNPACK_BUFFER_BINDING_ARB 0x88EF
#define GL_POINT_SIZE_MIN_ARB 0x8126
#define GL_POINT_SIZE_MAX_ARB 0x8127
#define GL_POINT_FADE_THRESHOLD_SIZE_ARB 0x8128
#define GL_POINT_DISTANCE_ATTENUATION_ARB 0x8129
void glPointParameterfARB (GLenum pname, GLfloat param);
void glPointParameterfvARB (GLenum pname, const GLfloat* params);
#define GL_POINT_SPRITE_ARB 0x8861
#define GL_COORD_REPLACE_ARB 0x8862
%feature("sufix", "_CONSTANT4321end");
#define GL_POLYGON_OFFSET_CLAMP 0x8E1B
%feature("sufix", "4321end");
void glPolygonOffsetClamp (GLfloat factor, GLfloat units, GLfloat clamp);
#define GL_UNIFORM 0x92E1
#define GL_UNIFORM_BLOCK 0x92E2
#define GL_PROGRAM_INPUT 0x92E3
#define GL_PROGRAM_OUTPUT 0x92E4
#define GL_BUFFER_VARIABLE 0x92E5
#define GL_SHADER_STORAGE_BLOCK 0x92E6
#define GL_IS_PER_PATCH 0x92E7
#define GL_VERTEX_SUBROUTINE 0x92E8
#define GL_TESS_CONTROL_SUBROUTINE 0x92E9
#define GL_TESS_EVALUATION_SUBROUTINE 0x92EA
#define GL_GEOMETRY_SUBROUTINE 0x92EB
#define GL_FRAGMENT_SUBROUTINE 0x92EC
#define GL_COMPUTE_SUBROUTINE 0x92ED
#define GL_VERTEX_SUBROUTINE_UNIFORM 0x92EE
#define GL_TESS_CONTROL_SUBROUTINE_UNIFORM 0x92EF
#define GL_TESS_EVALUATION_SUBROUTINE_UNIFORM 0x92F0
#define GL_GEOMETRY_SUBROUTINE_UNIFORM 0x92F1
#define GL_FRAGMENT_SUBROUTINE_UNIFORM 0x92F2
#define GL_COMPUTE_SUBROUTINE_UNIFORM 0x92F3
#define GL_TRANSFORM_FEEDBACK_VARYING 0x92F4
#define GL_ACTIVE_RESOURCES 0x92F5
#define GL_MAX_NAME_LENGTH 0x92F6
#define GL_MAX_NUM_ACTIVE_VARIABLES 0x92F7
#define GL_MAX_NUM_COMPATIBLE_SUBROUTINES 0x92F8
#define GL_NAME_LENGTH 0x92F9
#define GL_TYPE 0x92FA
#define GL_ARRAY_SIZE 0x92FB
#define GL_OFFSET 0x92FC
#define GL_BLOCK_INDEX 0x92FD
#define GL_ARRAY_STRIDE 0x92FE
#define GL_MATRIX_STRIDE 0x92FF
#define GL_IS_ROW_MAJOR 0x9300
#define GL_ATOMIC_COUNTER_BUFFER_INDEX 0x9301
#define GL_BUFFER_BINDING 0x9302
#define GL_BUFFER_DATA_SIZE 0x9303
#define GL_NUM_ACTIVE_VARIABLES 0x9304
#define GL_ACTIVE_VARIABLES 0x9305
#define GL_REFERENCED_BY_VERTEX_SHADER 0x9306
#define GL_REFERENCED_BY_TESS_CONTROL_SHADER 0x9307
#define GL_REFERENCED_BY_TESS_EVALUATION_SHADER 0x9308
#define GL_REFERENCED_BY_GEOMETRY_SHADER 0x9309
#define GL_REFERENCED_BY_FRAGMENT_SHADER 0x930A
#define GL_REFERENCED_BY_COMPUTE_SHADER 0x930B
#define GL_TOP_LEVEL_ARRAY_SIZE 0x930C
#define GL_TOP_LEVEL_ARRAY_STRIDE 0x930D
#define GL_LOCATION 0x930E
#define GL_LOCATION_INDEX 0x930F
void glGetProgramInterfaceiv (GLuint program, GLenum programInterface, GLenum pname, GLint* params);
GLuint glGetProgramResourceIndex (GLuint program, GLenum programInterface, const GLchar* name);
GLint glGetProgramResourceLocation (GLuint program, GLenum programInterface, const GLchar* name);
GLint glGetProgramResourceLocationIndex (GLuint program, GLenum programInterface, const GLchar* name);
void glGetProgramResourceName (GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar *name);
void glGetProgramResourceiv (GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const GLenum* props, GLsizei bufSize, GLsizei *length, GLint *params);
#define GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION 0x8E4C
#define GL_FIRST_VERTEX_CONVENTION 0x8E4D
#define GL_LAST_VERTEX_CONVENTION 0x8E4E
%feature("sufix", "_CONSTANT4321end");
#define GL_PROVOKING_VERTEX 0x8E4F
%feature("sufix", "4321end");
void glProvokingVertex (GLenum mode);
#define GL_QUERY_BUFFER_BARRIER_BIT 0x00008000
#define GL_QUERY_BUFFER 0x9192
#define GL_QUERY_BUFFER_BINDING 0x9193
#define GL_QUERY_RESULT_NO_WAIT 0x9194
#define GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB 0x00000004
#define GL_LOSE_CONTEXT_ON_RESET_ARB 0x8252
#define GL_GUILTY_CONTEXT_RESET_ARB 0x8253
#define GL_INNOCENT_CONTEXT_RESET_ARB 0x8254
#define GL_UNKNOWN_CONTEXT_RESET_ARB 0x8255
#define GL_RESET_NOTIFICATION_STRATEGY_ARB 0x8256
#define GL_NO_RESET_NOTIFICATION_ARB 0x8261
GLenum glGetGraphicsResetStatusARB (void);
void glGetnColorTableARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* table);
void glGetnCompressedTexImageARB (GLenum target, GLint lod, GLsizei bufSize, void* img);
void glGetnConvolutionFilterARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* image);
void glGetnHistogramARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values);
void glGetnMapdvARB (GLenum target, GLenum query, GLsizei bufSize, GLdouble* v);
void glGetnMapfvARB (GLenum target, GLenum query, GLsizei bufSize, GLfloat* v);
void glGetnMapivARB (GLenum target, GLenum query, GLsizei bufSize, GLint* v);
void glGetnMinmaxARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values);
void glGetnPixelMapfvARB (GLenum map, GLsizei bufSize, GLfloat* values);
void glGetnPixelMapuivARB (GLenum map, GLsizei bufSize, GLuint* values);
void glGetnPixelMapusvARB (GLenum map, GLsizei bufSize, GLushort* values);
void glGetnPolygonStippleARB (GLsizei bufSize, GLubyte* pattern);
void glGetnSeparableFilterARB (GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, void* row, GLsizei columnBufSize, void*column, void*span);
void glGetnTexImageARB (GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, void* img);
void glGetnUniformdvARB (GLuint program, GLint location, GLsizei bufSize, GLdouble* params);
void glGetnUniformfvARB (GLuint program, GLint location, GLsizei bufSize, GLfloat* params);
void glGetnUniformivARB (GLuint program, GLint location, GLsizei bufSize, GLint* params);
void glGetnUniformuivARB (GLuint program, GLint location, GLsizei bufSize, GLuint* params);
void glReadnPixelsARB (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void* data);
#define GL_SAMPLE_LOCATION_ARB 0x8E50
#define GL_SAMPLE_LOCATION_SUBPIXEL_BITS_ARB 0x933D
#define GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_ARB 0x933E
#define GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_ARB 0x933F
#define GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_ARB 0x9340
#define GL_PROGRAMMABLE_SAMPLE_LOCATION_ARB 0x9341
#define GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_ARB 0x9342
#define GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_ARB 0x9343
void glFramebufferSampleLocationsfvARB (GLenum target, GLuint start, GLsizei count, const GLfloat* v);
void glNamedFramebufferSampleLocationsfvARB (GLuint framebuffer, GLuint start, GLsizei count, const GLfloat* v);
#define GL_SAMPLER_BINDING 0x8919
void glBindSampler (GLuint unit, GLuint sampler);
void glDeleteSamplers (GLsizei count, const GLuint * samplers);
void glGenSamplers (GLsizei count, GLuint* samplers);
void glGetSamplerParameterIiv (GLuint sampler, GLenum pname, GLint* params);
void glGetSamplerParameterIuiv (GLuint sampler, GLenum pname, GLuint* params);
void glGetSamplerParameterfv (GLuint sampler, GLenum pname, GLfloat* params);
void glGetSamplerParameteriv (GLuint sampler, GLenum pname, GLint* params);
GLboolean glIsSampler (GLuint sampler);
void glSamplerParameterIiv (GLuint sampler, GLenum pname, const GLint* params);
void glSamplerParameterIuiv (GLuint sampler, GLenum pname, const GLuint* params);
void glSamplerParameterf (GLuint sampler, GLenum pname, GLfloat param);
void glSamplerParameterfv (GLuint sampler, GLenum pname, const GLfloat* params);
void glSamplerParameteri (GLuint sampler, GLenum pname, GLint param);
void glSamplerParameteriv (GLuint sampler, GLenum pname, const GLint* params);
#define GL_SAMPLE_SHADING_ARB 0x8C36
#define GL_MIN_SAMPLE_SHADING_VALUE_ARB 0x8C37
void glMinSampleShadingARB (GLclampf value);
#define GL_TEXTURE_CUBE_MAP_SEAMLESS 0x884F
#define GL_TEXTURE_CUBE_MAP_SEAMLESS 0x884F
#define GL_VERTEX_SHADER_BIT 0x00000001
#define GL_FRAGMENT_SHADER_BIT 0x00000002
#define GL_GEOMETRY_SHADER_BIT 0x00000004
#define GL_TESS_CONTROL_SHADER_BIT 0x00000008
#define GL_TESS_EVALUATION_SHADER_BIT 0x00000010
#define GL_PROGRAM_SEPARABLE 0x8258
#define GL_ACTIVE_PROGRAM 0x8259
#define GL_PROGRAM_PIPELINE_BINDING 0x825A
#define GL_ALL_SHADER_BITS 0xFFFFFFFF
void glActiveShaderProgram (GLuint pipeline, GLuint program);
void glBindProgramPipeline (GLuint pipeline);
GLuint glCreateShaderProgramv (GLenum type, GLsizei count, const GLchar * const * strings);
void glDeleteProgramPipelines (GLsizei n, const GLuint* pipelines);
void glGenProgramPipelines (GLsizei n, GLuint* pipelines);
void glGetProgramPipelineInfoLog (GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar *infoLog);
void glGetProgramPipelineiv (GLuint pipeline, GLenum pname, GLint* params);
GLboolean glIsProgramPipeline (GLuint pipeline);
void glProgramUniform1d (GLuint program, GLint location, GLdouble x);
void glProgramUniform1dv (GLuint program, GLint location, GLsizei count, const GLdouble* value);
void glProgramUniform1f (GLuint program, GLint location, GLfloat x);
void glProgramUniform1fv (GLuint program, GLint location, GLsizei count, const GLfloat* value);
void glProgramUniform1i (GLuint program, GLint location, GLint x);
void glProgramUniform1iv (GLuint program, GLint location, GLsizei count, const GLint* value);
void glProgramUniform1ui (GLuint program, GLint location, GLuint x);
void glProgramUniform1uiv (GLuint program, GLint location, GLsizei count, const GLuint* value);
void glProgramUniform2d (GLuint program, GLint location, GLdouble x, GLdouble y);
void glProgramUniform2dv (GLuint program, GLint location, GLsizei count, const GLdouble* value);
void glProgramUniform2f (GLuint program, GLint location, GLfloat x, GLfloat y);
void glProgramUniform2fv (GLuint program, GLint location, GLsizei count, const GLfloat* value);
void glProgramUniform2i (GLuint program, GLint location, GLint x, GLint y);
void glProgramUniform2iv (GLuint program, GLint location, GLsizei count, const GLint* value);
void glProgramUniform2ui (GLuint program, GLint location, GLuint x, GLuint y);
void glProgramUniform2uiv (GLuint program, GLint location, GLsizei count, const GLuint* value);
void glProgramUniform3d (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z);
void glProgramUniform3dv (GLuint program, GLint location, GLsizei count, const GLdouble* value);
void glProgramUniform3f (GLuint program, GLint location, GLfloat x, GLfloat y, GLfloat z);
void glProgramUniform3fv (GLuint program, GLint location, GLsizei count, const GLfloat* value);
void glProgramUniform3i (GLuint program, GLint location, GLint x, GLint y, GLint z);
void glProgramUniform3iv (GLuint program, GLint location, GLsizei count, const GLint* value);
void glProgramUniform3ui (GLuint program, GLint location, GLuint x, GLuint y, GLuint z);
void glProgramUniform3uiv (GLuint program, GLint location, GLsizei count, const GLuint* value);
void glProgramUniform4d (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramUniform4dv (GLuint program, GLint location, GLsizei count, const GLdouble* value);
void glProgramUniform4f (GLuint program, GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramUniform4fv (GLuint program, GLint location, GLsizei count, const GLfloat* value);
void glProgramUniform4i (GLuint program, GLint location, GLint x, GLint y, GLint z, GLint w);
void glProgramUniform4iv (GLuint program, GLint location, GLsizei count, const GLint* value);
void glProgramUniform4ui (GLuint program, GLint location, GLuint x, GLuint y, GLuint z, GLuint w);
void glProgramUniform4uiv (GLuint program, GLint location, GLsizei count, const GLuint* value);
void glProgramUniformMatrix2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glProgramUniformMatrix2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix2x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glProgramUniformMatrix2x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix2x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glProgramUniformMatrix2x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glProgramUniformMatrix3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix3x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glProgramUniformMatrix3x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix3x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glProgramUniformMatrix3x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glProgramUniformMatrix4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix4x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glProgramUniformMatrix4x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix4x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble* value);
void glProgramUniformMatrix4x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glUseProgramStages (GLuint pipeline, GLbitfield stages, GLuint program);
void glValidateProgramPipeline (GLuint pipeline);
#define GL_ATOMIC_COUNTER_BUFFER 0x92C0
#define GL_ATOMIC_COUNTER_BUFFER_BINDING 0x92C1
#define GL_ATOMIC_COUNTER_BUFFER_START 0x92C2
#define GL_ATOMIC_COUNTER_BUFFER_SIZE 0x92C3
#define GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE 0x92C4
#define GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS 0x92C5
#define GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES 0x92C6
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER 0x92C7
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER 0x92C8
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER 0x92C9
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER 0x92CA
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER 0x92CB
#define GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS 0x92CC
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS 0x92CD
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS 0x92CE
#define GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS 0x92CF
#define GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS 0x92D0
#define GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS 0x92D1
#define GL_MAX_VERTEX_ATOMIC_COUNTERS 0x92D2
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS 0x92D3
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS 0x92D4
#define GL_MAX_GEOMETRY_ATOMIC_COUNTERS 0x92D5
#define GL_MAX_FRAGMENT_ATOMIC_COUNTERS 0x92D6
#define GL_MAX_COMBINED_ATOMIC_COUNTERS 0x92D7
#define GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE 0x92D8
#define GL_ACTIVE_ATOMIC_COUNTER_BUFFERS 0x92D9
#define GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX 0x92DA
#define GL_UNSIGNED_INT_ATOMIC_COUNTER 0x92DB
#define GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS 0x92DC
void glGetActiveAtomicCounterBufferiv (GLuint program, GLuint bufferIndex, GLenum pname, GLint* params);
#define GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT 0x00000001
#define GL_ELEMENT_ARRAY_BARRIER_BIT 0x00000002
#define GL_UNIFORM_BARRIER_BIT 0x00000004
#define GL_TEXTURE_FETCH_BARRIER_BIT 0x00000008
#define GL_SHADER_IMAGE_ACCESS_BARRIER_BIT 0x00000020
#define GL_COMMAND_BARRIER_BIT 0x00000040
#define GL_PIXEL_BUFFER_BARRIER_BIT 0x00000080
#define GL_TEXTURE_UPDATE_BARRIER_BIT 0x00000100
#define GL_BUFFER_UPDATE_BARRIER_BIT 0x00000200
#define GL_FRAMEBUFFER_BARRIER_BIT 0x00000400
#define GL_TRANSFORM_FEEDBACK_BARRIER_BIT 0x00000800
#define GL_ATOMIC_COUNTER_BARRIER_BIT 0x00001000
#define GL_MAX_IMAGE_UNITS 0x8F38
#define GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS 0x8F39
#define GL_IMAGE_BINDING_NAME 0x8F3A
#define GL_IMAGE_BINDING_LEVEL 0x8F3B
#define GL_IMAGE_BINDING_LAYERED 0x8F3C
#define GL_IMAGE_BINDING_LAYER 0x8F3D
#define GL_IMAGE_BINDING_ACCESS 0x8F3E
#define GL_IMAGE_1D 0x904C
#define GL_IMAGE_2D 0x904D
#define GL_IMAGE_3D 0x904E
#define GL_IMAGE_2D_RECT 0x904F
#define GL_IMAGE_CUBE 0x9050
#define GL_IMAGE_BUFFER 0x9051
#define GL_IMAGE_1D_ARRAY 0x9052
#define GL_IMAGE_2D_ARRAY 0x9053
#define GL_IMAGE_CUBE_MAP_ARRAY 0x9054
#define GL_IMAGE_2D_MULTISAMPLE 0x9055
#define GL_IMAGE_2D_MULTISAMPLE_ARRAY 0x9056
#define GL_INT_IMAGE_1D 0x9057
#define GL_INT_IMAGE_2D 0x9058
#define GL_INT_IMAGE_3D 0x9059
#define GL_INT_IMAGE_2D_RECT 0x905A
#define GL_INT_IMAGE_CUBE 0x905B
#define GL_INT_IMAGE_BUFFER 0x905C
#define GL_INT_IMAGE_1D_ARRAY 0x905D
#define GL_INT_IMAGE_2D_ARRAY 0x905E
#define GL_INT_IMAGE_CUBE_MAP_ARRAY 0x905F
#define GL_INT_IMAGE_2D_MULTISAMPLE 0x9060
#define GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY 0x9061
#define GL_UNSIGNED_INT_IMAGE_1D 0x9062
#define GL_UNSIGNED_INT_IMAGE_2D 0x9063
#define GL_UNSIGNED_INT_IMAGE_3D 0x9064
#define GL_UNSIGNED_INT_IMAGE_2D_RECT 0x9065
#define GL_UNSIGNED_INT_IMAGE_CUBE 0x9066
#define GL_UNSIGNED_INT_IMAGE_BUFFER 0x9067
#define GL_UNSIGNED_INT_IMAGE_1D_ARRAY 0x9068
#define GL_UNSIGNED_INT_IMAGE_2D_ARRAY 0x9069
#define GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY 0x906A
#define GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE 0x906B
#define GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY 0x906C
#define GL_MAX_IMAGE_SAMPLES 0x906D
#define GL_IMAGE_BINDING_FORMAT 0x906E
#define GL_IMAGE_FORMAT_COMPATIBILITY_TYPE 0x90C7
#define GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE 0x90C8
#define GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS 0x90C9
#define GL_MAX_VERTEX_IMAGE_UNIFORMS 0x90CA
#define GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS 0x90CB
#define GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS 0x90CC
#define GL_MAX_GEOMETRY_IMAGE_UNIFORMS 0x90CD
#define GL_MAX_FRAGMENT_IMAGE_UNIFORMS 0x90CE
#define GL_MAX_COMBINED_IMAGE_UNIFORMS 0x90CF
#define GL_ALL_BARRIER_BITS 0xFFFFFFFF
void glBindImageTexture (GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format);
void glMemoryBarrier (GLbitfield barriers);
#define GL_PROGRAM_OBJECT_ARB 0x8B40
#define GL_SHADER_OBJECT_ARB 0x8B48
#define GL_OBJECT_TYPE_ARB 0x8B4E
#define GL_OBJECT_SUBTYPE_ARB 0x8B4F
#define GL_FLOAT_VEC2_ARB 0x8B50
#define GL_FLOAT_VEC3_ARB 0x8B51
#define GL_FLOAT_VEC4_ARB 0x8B52
#define GL_INT_VEC2_ARB 0x8B53
#define GL_INT_VEC3_ARB 0x8B54
#define GL_INT_VEC4_ARB 0x8B55
#define GL_BOOL_ARB 0x8B56
#define GL_BOOL_VEC2_ARB 0x8B57
#define GL_BOOL_VEC3_ARB 0x8B58
#define GL_BOOL_VEC4_ARB 0x8B59
#define GL_FLOAT_MAT2_ARB 0x8B5A
#define GL_FLOAT_MAT3_ARB 0x8B5B
#define GL_FLOAT_MAT4_ARB 0x8B5C
#define GL_SAMPLER_1D_ARB 0x8B5D
#define GL_SAMPLER_2D_ARB 0x8B5E
#define GL_SAMPLER_3D_ARB 0x8B5F
#define GL_SAMPLER_CUBE_ARB 0x8B60
#define GL_SAMPLER_1D_SHADOW_ARB 0x8B61
#define GL_SAMPLER_2D_SHADOW_ARB 0x8B62
#define GL_SAMPLER_2D_RECT_ARB 0x8B63
#define GL_SAMPLER_2D_RECT_SHADOW_ARB 0x8B64
#define GL_OBJECT_DELETE_STATUS_ARB 0x8B80
#define GL_OBJECT_COMPILE_STATUS_ARB 0x8B81
#define GL_OBJECT_LINK_STATUS_ARB 0x8B82
#define GL_OBJECT_VALIDATE_STATUS_ARB 0x8B83
#define GL_OBJECT_INFO_LOG_LENGTH_ARB 0x8B84
#define GL_OBJECT_ATTACHED_OBJECTS_ARB 0x8B85
#define GL_OBJECT_ACTIVE_UNIFORMS_ARB 0x8B86
#define GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB 0x8B87
#define GL_OBJECT_SHADER_SOURCE_LENGTH_ARB 0x8B88
void glAttachObjectARB (GLhandleARB containerObj, GLhandleARB obj);
void glCompileShaderARB (GLhandleARB shaderObj);
GLhandleARB glCreateProgramObjectARB (void);
GLhandleARB glCreateShaderObjectARB (GLenum shaderType);
void glDeleteObjectARB (GLhandleARB obj);
void glDetachObjectARB (GLhandleARB containerObj, GLhandleARB attachedObj);
void glGetActiveUniformARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint *size, GLenum *type, GLcharARB *name);
void glGetAttachedObjectsARB (GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB *obj);
GLhandleARB glGetHandleARB (GLenum pname);
void glGetInfoLogARB (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB *infoLog);
void glGetObjectParameterfvARB (GLhandleARB obj, GLenum pname, GLfloat* params);
void glGetObjectParameterivARB (GLhandleARB obj, GLenum pname, GLint* params);
void glGetShaderSourceARB (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB *source);
GLint glGetUniformLocationARB (GLhandleARB programObj, const GLcharARB* name);
void glGetUniformfvARB (GLhandleARB programObj, GLint location, GLfloat* params);
void glGetUniformivARB (GLhandleARB programObj, GLint location, GLint* params);
void glLinkProgramARB (GLhandleARB programObj);
void glShaderSourceARB (GLhandleARB shaderObj, GLsizei count, const GLcharARB ** string, const GLint *length);
void glUniform1fARB (GLint location, GLfloat v0);
void glUniform1fvARB (GLint location, GLsizei count, const GLfloat* value);
void glUniform1iARB (GLint location, GLint v0);
void glUniform1ivARB (GLint location, GLsizei count, const GLint* value);
void glUniform2fARB (GLint location, GLfloat v0, GLfloat v1);
void glUniform2fvARB (GLint location, GLsizei count, const GLfloat* value);
void glUniform2iARB (GLint location, GLint v0, GLint v1);
void glUniform2ivARB (GLint location, GLsizei count, const GLint* value);
void glUniform3fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glUniform3fvARB (GLint location, GLsizei count, const GLfloat* value);
void glUniform3iARB (GLint location, GLint v0, GLint v1, GLint v2);
void glUniform3ivARB (GLint location, GLsizei count, const GLint* value);
void glUniform4fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glUniform4fvARB (GLint location, GLsizei count, const GLfloat* value);
void glUniform4iARB (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glUniform4ivARB (GLint location, GLsizei count, const GLint* value);
void glUniformMatrix2fvARB (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glUniformMatrix3fvARB (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glUniformMatrix4fvARB (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glUseProgramObjectARB (GLhandleARB programObj);
void glValidateProgramARB (GLhandleARB programObj);
typedef char GLcharARB;
typedef unsigned int GLhandleARB;
#define GL_SHADER_STORAGE_BARRIER_BIT 0x2000
#define GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES 0x8F39
#define GL_SHADER_STORAGE_BUFFER 0x90D2
#define GL_SHADER_STORAGE_BUFFER_BINDING 0x90D3
#define GL_SHADER_STORAGE_BUFFER_START 0x90D4
#define GL_SHADER_STORAGE_BUFFER_SIZE 0x90D5
#define GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS 0x90D6
#define GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS 0x90D7
#define GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS 0x90D8
#define GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS 0x90D9
#define GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS 0x90DA
#define GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS 0x90DB
#define GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS 0x90DC
#define GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS 0x90DD
#define GL_MAX_SHADER_STORAGE_BLOCK_SIZE 0x90DE
#define GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT 0x90DF
void glShaderStorageBlockBinding (GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding);
#define GL_ACTIVE_SUBROUTINES 0x8DE5
#define GL_ACTIVE_SUBROUTINE_UNIFORMS 0x8DE6
#define GL_MAX_SUBROUTINES 0x8DE7
#define GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS 0x8DE8
#define GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS 0x8E47
#define GL_ACTIVE_SUBROUTINE_MAX_LENGTH 0x8E48
#define GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH 0x8E49
#define GL_NUM_COMPATIBLE_SUBROUTINES 0x8E4A
#define GL_COMPATIBLE_SUBROUTINES 0x8E4B
void glGetActiveSubroutineName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar *name);
void glGetActiveSubroutineUniformName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar *name);
void glGetActiveSubroutineUniformiv (GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values);
void glGetProgramStageiv (GLuint program, GLenum shadertype, GLenum pname, GLint* values);
GLuint glGetSubroutineIndex (GLuint program, GLenum shadertype, const GLchar* name);
GLint glGetSubroutineUniformLocation (GLuint program, GLenum shadertype, const GLchar* name);
void glGetUniformSubroutineuiv (GLenum shadertype, GLint location, GLuint* params);
void glUniformSubroutinesuiv (GLenum shadertype, GLsizei count, const GLuint* indices);
#define GL_SHADING_LANGUAGE_VERSION_ARB 0x8B8C
#define GL_SHADER_INCLUDE_ARB 0x8DAE
#define GL_NAMED_STRING_LENGTH_ARB 0x8DE9
#define GL_NAMED_STRING_TYPE_ARB 0x8DEA
void glCompileShaderIncludeARB (GLuint shader, GLsizei count, const GLchar* const *path, const GLint *length);
void glDeleteNamedStringARB (GLint namelen, const GLchar* name);
void glGetNamedStringARB (GLint namelen, const GLchar* name, GLsizei bufSize, GLint *stringlen, GLchar *string);
void glGetNamedStringivARB (GLint namelen, const GLchar* name, GLenum pname, GLint *params);
GLboolean glIsNamedStringARB (GLint namelen, const GLchar* name);
void glNamedStringARB (GLenum type, GLint namelen, const GLchar* name, GLint stringlen, const GLchar *string);
#define GL_TEXTURE_COMPARE_MODE_ARB 0x884C
#define GL_TEXTURE_COMPARE_FUNC_ARB 0x884D
#define GL_COMPARE_R_TO_TEXTURE_ARB 0x884E
#define GL_TEXTURE_COMPARE_FAIL_VALUE_ARB 0x80BF
#define GL_SPARSE_STORAGE_BIT_ARB 0x0400
#define GL_SPARSE_BUFFER_PAGE_SIZE_ARB 0x82F8
void glBufferPageCommitmentARB (GLenum target, GLintptr offset, GLsizeiptr size, GLboolean commit);
#define GL_VIRTUAL_PAGE_SIZE_X_ARB 0x9195
#define GL_VIRTUAL_PAGE_SIZE_Y_ARB 0x9196
#define GL_VIRTUAL_PAGE_SIZE_Z_ARB 0x9197
#define GL_MAX_SPARSE_TEXTURE_SIZE_ARB 0x9198
#define GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB 0x9199
#define GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB 0x919A
#define GL_TEXTURE_SPARSE_ARB 0x91A6
#define GL_VIRTUAL_PAGE_SIZE_INDEX_ARB 0x91A7
#define GL_NUM_VIRTUAL_PAGE_SIZES_ARB 0x91A8
#define GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB 0x91A9
#define GL_NUM_SPARSE_LEVELS_ARB 0x91AA
void glTexPageCommitmentARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean commit);
#define GL_SPIR_V_EXTENSIONS 0x9553
#define GL_NUM_SPIR_V_EXTENSIONS 0x9554
#define GL_DEPTH_STENCIL_TEXTURE_MODE 0x90EA
#define GL_TIMEOUT_IGNORED 0xFFFFFFFFFFFFFFFFull
#define GL_SYNC_FLUSH_COMMANDS_BIT 0x00000001
#define GL_MAX_SERVER_WAIT_TIMEOUT 0x9111
#define GL_OBJECT_TYPE 0x9112
#define GL_SYNC_CONDITION 0x9113
#define GL_SYNC_STATUS 0x9114
#define GL_SYNC_FLAGS 0x9115
#define GL_SYNC_FENCE 0x9116
#define GL_SYNC_GPU_COMMANDS_COMPLETE 0x9117
#define GL_UNSIGNALED 0x9118
#define GL_SIGNALED 0x9119
#define GL_ALREADY_SIGNALED 0x911A
#define GL_TIMEOUT_EXPIRED 0x911B
#define GL_CONDITION_SATISFIED 0x911C
#define GL_WAIT_FAILED 0x911D
GLenum glClientWaitSync (GLsync GLsync,GLbitfield flags,GLuint64 timeout);
void glDeleteSync (GLsync GLsync);
GLsync glFenceSync (GLenum condition,GLbitfield flags);
void glGetInteger64v (GLenum pname, GLint64* params);
void glGetSynciv (GLsync GLsync,GLenum pname,GLsizei bufSize,GLsizei* length, GLint *values);
GLboolean glIsSync (GLsync GLsync);
void glWaitSync (GLsync GLsync,GLbitfield flags,GLuint64 timeout);
#define GL_PATCHES 0xE
#define GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER 0x84F0
#define GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER 0x84F1
#define GL_MAX_TESS_CONTROL_INPUT_COMPONENTS 0x886C
#define GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS 0x886D
#define GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS 0x8E1E
#define GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS 0x8E1F
#define GL_PATCH_VERTICES 0x8E72
#define GL_PATCH_DEFAULT_INNER_LEVEL 0x8E73
#define GL_PATCH_DEFAULT_OUTER_LEVEL 0x8E74
#define GL_TESS_CONTROL_OUTPUT_VERTICES 0x8E75
#define GL_TESS_GEN_MODE 0x8E76
#define GL_TESS_GEN_SPACING 0x8E77
#define GL_TESS_GEN_VERTEX_ORDER 0x8E78
#define GL_TESS_GEN_POINT_MODE 0x8E79
#define GL_ISOLINES 0x8E7A
#define GL_FRACTIONAL_ODD 0x8E7B
#define GL_FRACTIONAL_EVEN 0x8E7C
#define GL_MAX_PATCH_VERTICES 0x8E7D
#define GL_MAX_TESS_GEN_LEVEL 0x8E7E
#define GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS 0x8E7F
#define GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS 0x8E80
#define GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS 0x8E81
#define GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS 0x8E82
#define GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS 0x8E83
#define GL_MAX_TESS_PATCH_COMPONENTS 0x8E84
#define GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS 0x8E85
#define GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS 0x8E86
#define GL_TESS_EVALUATION_SHADER 0x8E87
#define GL_TESS_CONTROL_SHADER 0x8E88
#define GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS 0x8E89
#define GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS 0x8E8A
void glPatchParameterfv (GLenum pname, const GLfloat* values);
void glPatchParameteri (GLenum pname, GLint value);
void glTextureBarrier (void);
#define GL_CLAMP_TO_BORDER_ARB 0x812D
#define GL_TEXTURE_BUFFER_ARB 0x8C2A
#define GL_MAX_TEXTURE_BUFFER_SIZE_ARB 0x8C2B
#define GL_TEXTURE_BINDING_BUFFER_ARB 0x8C2C
#define GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB 0x8C2D
#define GL_TEXTURE_BUFFER_FORMAT_ARB 0x8C2E
void glTexBufferARB (GLenum target, GLenum internalformat, GLuint buffer);
#define GL_TEXTURE_BUFFER_OFFSET 0x919D
#define GL_TEXTURE_BUFFER_SIZE 0x919E
#define GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT 0x919F
void glTexBufferRange (GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glTextureBufferRangeEXT (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
#define GL_COMPRESSED_ALPHA_ARB 0x84E9
#define GL_COMPRESSED_LUMINANCE_ARB 0x84EA
#define GL_COMPRESSED_LUMINANCE_ALPHA_ARB 0x84EB
#define GL_COMPRESSED_INTENSITY_ARB 0x84EC
#define GL_COMPRESSED_RGB_ARB 0x84ED
#define GL_COMPRESSED_RGBA_ARB 0x84EE
#define GL_TEXTURE_COMPRESSION_HINT_ARB 0x84EF
#define GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB 0x86A0
#define GL_TEXTURE_COMPRESSED_ARB 0x86A1
#define GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB 0x86A2
#define GL_COMPRESSED_TEXTURE_FORMATS_ARB 0x86A3
void glCompressedTexImage1DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const void *data);
void glCompressedTexImage2DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void *data);
void glCompressedTexImage3DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const void *data);
void glCompressedTexSubImage1DARB (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const void *data);
void glCompressedTexSubImage2DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
void glCompressedTexSubImage3DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
void glGetCompressedTexImageARB (GLenum target, GLint lod, void *img);
#define GL_COMPRESSED_RGBA_BPTC_UNORM_ARB 0x8E8C
#define GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB 0x8E8D
#define GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB 0x8E8E
#define GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB 0x8E8F
#define GL_COMPRESSED_RED_RGTC1 0x8DBB
#define GL_COMPRESSED_SIGNED_RED_RGTC1 0x8DBC
#define GL_COMPRESSED_RG_RGTC2 0x8DBD
#define GL_COMPRESSED_SIGNED_RG_RGTC2 0x8DBE
#define GL_NORMAL_MAP_ARB 0x8511
#define GL_REFLECTION_MAP_ARB 0x8512
#define GL_TEXTURE_CUBE_MAP_ARB 0x8513
#define GL_TEXTURE_BINDING_CUBE_MAP_ARB 0x8514
#define GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB 0x8515
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB 0x8516
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB 0x8517
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB 0x8518
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB 0x8519
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB 0x851A
#define GL_PROXY_TEXTURE_CUBE_MAP_ARB 0x851B
#define GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB 0x851C
#define GL_TEXTURE_CUBE_MAP_ARRAY_ARB 0x9009
#define GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB 0x900A
#define GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB 0x900B
#define GL_SAMPLER_CUBE_MAP_ARRAY_ARB 0x900C
#define GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB 0x900D
#define GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB 0x900E
#define GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB 0x900F
#define GL_SUBTRACT_ARB 0x84E7
#define GL_COMBINE_ARB 0x8570
#define GL_COMBINE_RGB_ARB 0x8571
#define GL_COMBINE_ALPHA_ARB 0x8572
#define GL_RGB_SCALE_ARB 0x8573
#define GL_ADD_SIGNED_ARB 0x8574
#define GL_INTERPOLATE_ARB 0x8575
#define GL_CONSTANT_ARB 0x8576
#define GL_PRIMARY_COLOR_ARB 0x8577
#define GL_PREVIOUS_ARB 0x8578
#define GL_SOURCE0_RGB_ARB 0x8580
#define GL_SOURCE1_RGB_ARB 0x8581
#define GL_SOURCE2_RGB_ARB 0x8582
#define GL_SOURCE0_ALPHA_ARB 0x8588
#define GL_SOURCE1_ALPHA_ARB 0x8589
#define GL_SOURCE2_ALPHA_ARB 0x858A
#define GL_OPERAND0_RGB_ARB 0x8590
#define GL_OPERAND1_RGB_ARB 0x8591
#define GL_OPERAND2_RGB_ARB 0x8592
#define GL_OPERAND0_ALPHA_ARB 0x8598
#define GL_OPERAND1_ALPHA_ARB 0x8599
#define GL_OPERAND2_ALPHA_ARB 0x859A
#define GL_DOT3_RGB_ARB 0x86AE
#define GL_DOT3_RGBA_ARB 0x86AF
#define GL_TEXTURE_MAX_ANISOTROPY 0x84FE
#define GL_MAX_TEXTURE_MAX_ANISOTROPY 0x84FF
#define GL_TEXTURE_REDUCTION_MODE_ARB 0x9366
#define GL_WEIGHTED_AVERAGE_ARB 0x9367
#define GL_RGBA32F_ARB 0x8814
#define GL_RGB32F_ARB 0x8815
#define GL_ALPHA32F_ARB 0x8816
#define GL_INTENSITY32F_ARB 0x8817
#define GL_LUMINANCE32F_ARB 0x8818
#define GL_LUMINANCE_ALPHA32F_ARB 0x8819
#define GL_RGBA16F_ARB 0x881A
#define GL_RGB16F_ARB 0x881B
#define GL_ALPHA16F_ARB 0x881C
#define GL_INTENSITY16F_ARB 0x881D
#define GL_LUMINANCE16F_ARB 0x881E
#define GL_LUMINANCE_ALPHA16F_ARB 0x881F
#define GL_TEXTURE_RED_TYPE_ARB 0x8C10
#define GL_TEXTURE_GREEN_TYPE_ARB 0x8C11
#define GL_TEXTURE_BLUE_TYPE_ARB 0x8C12
#define GL_TEXTURE_ALPHA_TYPE_ARB 0x8C13
#define GL_TEXTURE_LUMINANCE_TYPE_ARB 0x8C14
#define GL_TEXTURE_INTENSITY_TYPE_ARB 0x8C15
#define GL_TEXTURE_DEPTH_TYPE_ARB 0x8C16
#define GL_UNSIGNED_NORMALIZED_ARB 0x8C17
#define GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB 0x8E5E
#define GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB 0x8E5F
#define GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB 0x8F9F
#define GL_MIRROR_CLAMP_TO_EDGE 0x8743
#define GL_MIRRORED_REPEAT_ARB 0x8370
#define GL_SAMPLE_POSITION 0x8E50
#define GL_SAMPLE_MASK 0x8E51
#define GL_SAMPLE_MASK_VALUE 0x8E52
#define GL_MAX_SAMPLE_MASK_WORDS 0x8E59
#define GL_TEXTURE_2D_MULTISAMPLE 0x9100
#define GL_PROXY_TEXTURE_2D_MULTISAMPLE 0x9101
#define GL_TEXTURE_2D_MULTISAMPLE_ARRAY 0x9102
#define GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY 0x9103
#define GL_TEXTURE_BINDING_2D_MULTISAMPLE 0x9104
#define GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY 0x9105
#define GL_TEXTURE_SAMPLES 0x9106
#define GL_TEXTURE_FIXED_SAMPLE_LOCATIONS 0x9107
#define GL_SAMPLER_2D_MULTISAMPLE 0x9108
#define GL_INT_SAMPLER_2D_MULTISAMPLE 0x9109
#define GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE 0x910A
#define GL_SAMPLER_2D_MULTISAMPLE_ARRAY 0x910B
#define GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY 0x910C
#define GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY 0x910D
#define GL_MAX_COLOR_TEXTURE_SAMPLES 0x910E
#define GL_MAX_DEPTH_TEXTURE_SAMPLES 0x910F
#define GL_MAX_INTEGER_SAMPLES 0x9110
void glGetMultisamplefv (GLenum pname, GLuint index, GLfloat* val);
void glSampleMaski (GLuint index, GLbitfield mask);
void glTexImage2DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTexImage3DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
#define GL_TEXTURE_RECTANGLE_ARB 0x84F5
#define GL_TEXTURE_BINDING_RECTANGLE_ARB 0x84F6
#define GL_PROXY_TEXTURE_RECTANGLE_ARB 0x84F7
#define GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB 0x84F8
#define GL_SAMPLER_2D_RECT_ARB 0x8B63
#define GL_SAMPLER_2D_RECT_SHADOW_ARB 0x8B64
#define GL_COMPRESSED_RED 0x8225
#define GL_COMPRESSED_RG 0x8226
#define GL_RG 0x8227
#define GL_RG_INTEGER 0x8228
#define GL_R8 0x8229
#define GL_R16 0x822A
#define GL_RG8 0x822B
#define GL_RG16 0x822C
#define GL_R16F 0x822D
#define GL_R32F 0x822E
#define GL_RG16F 0x822F
#define GL_RG32F 0x8230
#define GL_R8I 0x8231
#define GL_R8UI 0x8232
#define GL_R16I 0x8233
#define GL_R16UI 0x8234
#define GL_R32I 0x8235
#define GL_R32UI 0x8236
#define GL_RG8I 0x8237
#define GL_RG8UI 0x8238
#define GL_RG16I 0x8239
#define GL_RG16UI 0x823A
#define GL_RG32I 0x823B
#define GL_RG32UI 0x823C
#define GL_RGB10_A2UI 0x906F
#define GL_STENCIL_INDEX 0x1901
#define GL_STENCIL_INDEX8 0x8D48
#define GL_TEXTURE_IMMUTABLE_FORMAT 0x912F
void glTexStorage1D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
void glTexStorage2D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
void glTexStorage3D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
void glTexStorage2DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTexStorage3DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
void glTextureStorage2DMultisampleEXT (GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void glTextureStorage3DMultisampleEXT (GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
#define GL_TEXTURE_SWIZZLE_R 0x8E42
#define GL_TEXTURE_SWIZZLE_G 0x8E43
#define GL_TEXTURE_SWIZZLE_B 0x8E44
#define GL_TEXTURE_SWIZZLE_A 0x8E45
#define GL_TEXTURE_SWIZZLE_RGBA 0x8E46
#define GL_TEXTURE_VIEW_MIN_LEVEL 0x82DB
#define GL_TEXTURE_VIEW_NUM_LEVELS 0x82DC
#define GL_TEXTURE_VIEW_MIN_LAYER 0x82DD
#define GL_TEXTURE_VIEW_NUM_LAYERS 0x82DE
#define GL_TEXTURE_IMMUTABLE_LEVELS 0x82DF
void glTextureView (GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers);
#define GL_TIME_ELAPSED 0x88BF
#define GL_TIMESTAMP 0x8E28
void glGetQueryObjecti64v (GLuint id, GLenum pname, GLint64* params);
void glGetQueryObjectui64v (GLuint id, GLenum pname, GLuint64* params);
void glQueryCounter (GLuint id, GLenum target);
#define GL_TRANSFORM_FEEDBACK 0x8E22
#define GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED 0x8E23
#define GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE 0x8E24
#define GL_TRANSFORM_FEEDBACK_BINDING 0x8E25
void glBindTransformFeedback (GLenum target, GLuint id);
void glDeleteTransformFeedbacks (GLsizei n, const GLuint* ids);
void glDrawTransformFeedback (GLenum mode, GLuint id);
void glGenTransformFeedbacks (GLsizei n, GLuint* ids);
GLboolean glIsTransformFeedback (GLuint id);
void glPauseTransformFeedback (void);
void glResumeTransformFeedback (void);
#define GL_MAX_TRANSFORM_FEEDBACK_BUFFERS 0x8E70
#define GL_MAX_VERTEX_STREAMS 0x8E71
void glBeginQueryIndexed (GLenum target, GLuint index, GLuint id);
void glDrawTransformFeedbackStream (GLenum mode, GLuint id, GLuint stream);
void glEndQueryIndexed (GLenum target, GLuint index);
void glGetQueryIndexediv (GLenum target, GLuint index, GLenum pname, GLint* params);
void glDrawTransformFeedbackInstanced (GLenum mode, GLuint id, GLsizei primcount);
void glDrawTransformFeedbackStreamInstanced (GLenum mode, GLuint id, GLuint stream, GLsizei primcount);
#define GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB 0x82EC
#define GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB 0x82ED
#define GL_TRANSPOSE_MODELVIEW_MATRIX_ARB 0x84E3
#define GL_TRANSPOSE_PROJECTION_MATRIX_ARB 0x84E4
#define GL_TRANSPOSE_TEXTURE_MATRIX_ARB 0x84E5
#define GL_TRANSPOSE_COLOR_MATRIX_ARB 0x84E6
void glLoadTransposeMatrixfARB (GLfloat m[16]);
void glLoadTransposeMatrixdARB (GLdouble m[16]);
void glMultTransposeMatrixfARB (GLfloat m[16]);
void glMultTransposeMatrixdARB (GLdouble m[16]);
#define GL_INVALID_INDEX 0xFFFFFFFFu
#define GL_UNIFORM_BUFFER 0x8A11
#define GL_UNIFORM_BUFFER_BINDING 0x8A28
#define GL_UNIFORM_BUFFER_START 0x8A29
#define GL_UNIFORM_BUFFER_SIZE 0x8A2A
#define GL_MAX_VERTEX_UNIFORM_BLOCKS 0x8A2B
#define GL_MAX_GEOMETRY_UNIFORM_BLOCKS 0x8A2C
#define GL_MAX_FRAGMENT_UNIFORM_BLOCKS 0x8A2D
#define GL_MAX_COMBINED_UNIFORM_BLOCKS 0x8A2E
#define GL_MAX_UNIFORM_BUFFER_BINDINGS 0x8A2F
#define GL_MAX_UNIFORM_BLOCK_SIZE 0x8A30
#define GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS 0x8A31
#define GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS 0x8A32
#define GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS 0x8A33
#define GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT 0x8A34
#define GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH 0x8A35
#define GL_ACTIVE_UNIFORM_BLOCKS 0x8A36
#define GL_UNIFORM_TYPE 0x8A37
#define GL_UNIFORM_SIZE 0x8A38
#define GL_UNIFORM_NAME_LENGTH 0x8A39
#define GL_UNIFORM_BLOCK_INDEX 0x8A3A
#define GL_UNIFORM_OFFSET 0x8A3B
#define GL_UNIFORM_ARRAY_STRIDE 0x8A3C
#define GL_UNIFORM_MATRIX_STRIDE 0x8A3D
#define GL_UNIFORM_IS_ROW_MAJOR 0x8A3E
%feature("sufix", "_CONSTANT4321end");
#define GL_UNIFORM_BLOCK_BINDING 0x8A3F
%feature("sufix", "4321end");
#define GL_UNIFORM_BLOCK_DATA_SIZE 0x8A40
#define GL_UNIFORM_BLOCK_NAME_LENGTH 0x8A41
#define GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS 0x8A42
#define GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES 0x8A43
#define GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER 0x8A44
#define GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER 0x8A45
#define GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER 0x8A46
void glBindBufferBase (GLenum target, GLuint index, GLuint buffer);
void glBindBufferRange (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glGetActiveUniformBlockName (GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName);
void glGetActiveUniformBlockiv (GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params);
void glGetActiveUniformName (GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName);
void glGetActiveUniformsiv (GLuint program, GLsizei uniformCount, const GLuint* uniformIndices, GLenum pname, GLint* params);
void glGetIntegeri_v (GLenum target, GLuint index, GLint* data);
GLuint glGetUniformBlockIndex (GLuint program, const GLchar* uniformBlockName);
void glGetUniformIndices (GLuint program, GLsizei uniformCount, const GLchar* const * uniformNames, GLuint* uniformIndices);
void glUniformBlockBinding (GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);
#define GL_BGRA 0x80E1
#define GL_VERTEX_ARRAY_BINDING 0x85B5
void glBindVertexArray (GLuint array);
void glDeleteVertexArrays (GLsizei n, const GLuint* arrays);
void glGenVertexArrays (GLsizei n, GLuint* arrays);
GLboolean glIsVertexArray (GLuint array);
void glGetVertexAttribLdv (GLuint index, GLenum pname, GLdouble* params);
void glVertexAttribL1d (GLuint index, GLdouble x);
void glVertexAttribL1dv (GLuint index, const GLdouble* v);
void glVertexAttribL2d (GLuint index, GLdouble x, GLdouble y);
void glVertexAttribL2dv (GLuint index, const GLdouble* v);
void glVertexAttribL3d (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttribL3dv (GLuint index, const GLdouble* v);
void glVertexAttribL4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttribL4dv (GLuint index, const GLdouble* v);
void glVertexAttribLPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const void* pointer);
%feature("sufix", "_CONSTANT4321end");
#define GL_VERTEX_ATTRIB_BINDING 0x82D4
%feature("sufix", "4321end");
#define GL_VERTEX_ATTRIB_RELATIVE_OFFSET 0x82D5
%feature("sufix", "_CONSTANT4321end");
#define GL_VERTEX_BINDING_DIVISOR 0x82D6
%feature("sufix", "4321end");
#define GL_VERTEX_BINDING_OFFSET 0x82D7
#define GL_VERTEX_BINDING_STRIDE 0x82D8
#define GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET 0x82D9
#define GL_MAX_VERTEX_ATTRIB_BINDINGS 0x82DA
#define GL_VERTEX_BINDING_BUFFER 0x8F4F
void glBindVertexBuffer (GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
void glVertexArrayBindVertexBufferEXT (GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride);
void glVertexArrayVertexAttribBindingEXT (GLuint vaobj, GLuint attribindex, GLuint bindingindex);
void glVertexArrayVertexAttribFormatEXT (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
void glVertexArrayVertexAttribIFormatEXT (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexArrayVertexAttribLFormatEXT (GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexArrayVertexBindingDivisorEXT (GLuint vaobj, GLuint bindingindex, GLuint divisor);
void glVertexAttribBinding (GLuint attribindex, GLuint bindingindex);
void glVertexAttribFormat (GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset);
void glVertexAttribIFormat (GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexAttribLFormat (GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset);
void glVertexBindingDivisor (GLuint bindingindex, GLuint divisor);
#define GL_MAX_VERTEX_UNITS_ARB 0x86A4
#define GL_ACTIVE_VERTEX_UNITS_ARB 0x86A5
#define GL_WEIGHT_SUM_UNITY_ARB 0x86A6
%feature("sufix", "_CONSTANT4321end");
#define GL_VERTEX_BLEND_ARB 0x86A7
%feature("sufix", "4321end");
#define GL_CURRENT_WEIGHT_ARB 0x86A8
#define GL_WEIGHT_ARRAY_TYPE_ARB 0x86A9
#define GL_WEIGHT_ARRAY_STRIDE_ARB 0x86AA
#define GL_WEIGHT_ARRAY_SIZE_ARB 0x86AB
#define GL_WEIGHT_ARRAY_POINTER_ARB 0x86AC
#define GL_WEIGHT_ARRAY_ARB 0x86AD
#define GL_MODELVIEW0_ARB 0x1700
#define GL_MODELVIEW1_ARB 0x850A
#define GL_MODELVIEW2_ARB 0x8722
#define GL_MODELVIEW3_ARB 0x8723
#define GL_MODELVIEW4_ARB 0x8724
#define GL_MODELVIEW5_ARB 0x8725
#define GL_MODELVIEW6_ARB 0x8726
#define GL_MODELVIEW7_ARB 0x8727
#define GL_MODELVIEW8_ARB 0x8728
#define GL_MODELVIEW9_ARB 0x8729
#define GL_MODELVIEW10_ARB 0x872A
#define GL_MODELVIEW11_ARB 0x872B
#define GL_MODELVIEW12_ARB 0x872C
#define GL_MODELVIEW13_ARB 0x872D
#define GL_MODELVIEW14_ARB 0x872E
#define GL_MODELVIEW15_ARB 0x872F
#define GL_MODELVIEW16_ARB 0x8730
#define GL_MODELVIEW17_ARB 0x8731
#define GL_MODELVIEW18_ARB 0x8732
#define GL_MODELVIEW19_ARB 0x8733
#define GL_MODELVIEW20_ARB 0x8734
#define GL_MODELVIEW21_ARB 0x8735
#define GL_MODELVIEW22_ARB 0x8736
#define GL_MODELVIEW23_ARB 0x8737
#define GL_MODELVIEW24_ARB 0x8738
#define GL_MODELVIEW25_ARB 0x8739
#define GL_MODELVIEW26_ARB 0x873A
#define GL_MODELVIEW27_ARB 0x873B
#define GL_MODELVIEW28_ARB 0x873C
#define GL_MODELVIEW29_ARB 0x873D
#define GL_MODELVIEW30_ARB 0x873E
#define GL_MODELVIEW31_ARB 0x873F
void glWeightbvARB (GLint size, GLbyte *weights);
void glWeightsvARB (GLint size, GLshort *weights);
void glWeightivARB (GLint size, GLint *weights);
void glWeightfvARB (GLint size, GLfloat *weights);
void glWeightdvARB (GLint size, GLdouble *weights);
void glWeightubvARB (GLint size, GLubyte *weights);
void glWeightusvARB (GLint size, GLushort *weights);
void glWeightuivARB (GLint size, GLuint *weights);
void glWeightPointerARB (GLint size, GLenum type, GLsizei stride, void *pointer);
void glVertexBlendARB (GLint count);
#define GL_BUFFER_SIZE_ARB 0x8764
#define GL_BUFFER_USAGE_ARB 0x8765
#define GL_ARRAY_BUFFER_ARB 0x8892
#define GL_ELEMENT_ARRAY_BUFFER_ARB 0x8893
#define GL_ARRAY_BUFFER_BINDING_ARB 0x8894
#define GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB 0x8895
#define GL_VERTEX_ARRAY_BUFFER_BINDING_ARB 0x8896
#define GL_NORMAL_ARRAY_BUFFER_BINDING_ARB 0x8897
#define GL_COLOR_ARRAY_BUFFER_BINDING_ARB 0x8898
#define GL_INDEX_ARRAY_BUFFER_BINDING_ARB 0x8899
#define GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB 0x889A
#define GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB 0x889B
#define GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB 0x889C
#define GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB 0x889D
#define GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB 0x889E
#define GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB 0x889F
#define GL_READ_ONLY_ARB 0x88B8
#define GL_WRITE_ONLY_ARB 0x88B9
#define GL_READ_WRITE_ARB 0x88BA
#define GL_BUFFER_ACCESS_ARB 0x88BB
#define GL_BUFFER_MAPPED_ARB 0x88BC
#define GL_BUFFER_MAP_POINTER_ARB 0x88BD
#define GL_STREAM_DRAW_ARB 0x88E0
#define GL_STREAM_READ_ARB 0x88E1
#define GL_STREAM_COPY_ARB 0x88E2
#define GL_STATIC_DRAW_ARB 0x88E4
#define GL_STATIC_READ_ARB 0x88E5
#define GL_STATIC_COPY_ARB 0x88E6
#define GL_DYNAMIC_DRAW_ARB 0x88E8
#define GL_DYNAMIC_READ_ARB 0x88E9
#define GL_DYNAMIC_COPY_ARB 0x88EA
void glBindBufferARB (GLenum target, GLuint buffer);
void glBufferDataARB (GLenum target, GLsizeiptrARB size, const void *data, GLenum usage);
void glBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, const void *data);
void glDeleteBuffersARB (GLsizei n, const GLuint* buffers);
void glGenBuffersARB (GLsizei n, GLuint* buffers);
void glGetBufferParameterivARB (GLenum target, GLenum pname, GLint* params);
void glGetBufferPointervARB (GLenum target, GLenum pname, void** params);
void glGetBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, void *data);
GLboolean glIsBufferARB (GLuint buffer);
void * glMapBufferARB (GLenum target, GLenum access);
GLboolean glUnmapBufferARB (GLenum target);
#define GL_COLOR_SUM_ARB 0x8458
#define GL_VERTEX_PROGRAM_ARB 0x8620
#define GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB 0x8622
#define GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB 0x8623
#define GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB 0x8624
#define GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB 0x8625
#define GL_CURRENT_VERTEX_ATTRIB_ARB 0x8626
#define GL_PROGRAM_LENGTH_ARB 0x8627
%feature("sufix", "_CONSTANT4321end");
#define GL_PROGRAM_STRING_ARB 0x8628
%feature("sufix", "4321end");
#define GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB 0x862E
#define GL_MAX_PROGRAM_MATRICES_ARB 0x862F
#define GL_CURRENT_MATRIX_STACK_DEPTH_ARB 0x8640
#define GL_CURRENT_MATRIX_ARB 0x8641
#define GL_VERTEX_PROGRAM_POINT_SIZE_ARB 0x8642
#define GL_VERTEX_PROGRAM_TWO_SIDE_ARB 0x8643
#define GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB 0x8645
#define GL_PROGRAM_ERROR_POSITION_ARB 0x864B
#define GL_PROGRAM_BINDING_ARB 0x8677
#define GL_MAX_VERTEX_ATTRIBS_ARB 0x8869
#define GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB 0x886A
#define GL_PROGRAM_ERROR_STRING_ARB 0x8874
#define GL_PROGRAM_FORMAT_ASCII_ARB 0x8875
#define GL_PROGRAM_FORMAT_ARB 0x8876
#define GL_PROGRAM_INSTRUCTIONS_ARB 0x88A0
#define GL_MAX_PROGRAM_INSTRUCTIONS_ARB 0x88A1
#define GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB 0x88A2
#define GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB 0x88A3
#define GL_PROGRAM_TEMPORARIES_ARB 0x88A4
#define GL_MAX_PROGRAM_TEMPORARIES_ARB 0x88A5
#define GL_PROGRAM_NATIVE_TEMPORARIES_ARB 0x88A6
#define GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB 0x88A7
#define GL_PROGRAM_PARAMETERS_ARB 0x88A8
#define GL_MAX_PROGRAM_PARAMETERS_ARB 0x88A9
#define GL_PROGRAM_NATIVE_PARAMETERS_ARB 0x88AA
#define GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB 0x88AB
#define GL_PROGRAM_ATTRIBS_ARB 0x88AC
#define GL_MAX_PROGRAM_ATTRIBS_ARB 0x88AD
#define GL_PROGRAM_NATIVE_ATTRIBS_ARB 0x88AE
#define GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB 0x88AF
#define GL_PROGRAM_ADDRESS_REGISTERS_ARB 0x88B0
#define GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB 0x88B1
#define GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB 0x88B2
#define GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB 0x88B3
#define GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB 0x88B4
#define GL_MAX_PROGRAM_ENV_PARAMETERS_ARB 0x88B5
#define GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB 0x88B6
#define GL_TRANSPOSE_CURRENT_MATRIX_ARB 0x88B7
#define GL_MATRIX0_ARB 0x88C0
#define GL_MATRIX1_ARB 0x88C1
#define GL_MATRIX2_ARB 0x88C2
#define GL_MATRIX3_ARB 0x88C3
#define GL_MATRIX4_ARB 0x88C4
#define GL_MATRIX5_ARB 0x88C5
#define GL_MATRIX6_ARB 0x88C6
#define GL_MATRIX7_ARB 0x88C7
#define GL_MATRIX8_ARB 0x88C8
#define GL_MATRIX9_ARB 0x88C9
#define GL_MATRIX10_ARB 0x88CA
#define GL_MATRIX11_ARB 0x88CB
#define GL_MATRIX12_ARB 0x88CC
#define GL_MATRIX13_ARB 0x88CD
#define GL_MATRIX14_ARB 0x88CE
#define GL_MATRIX15_ARB 0x88CF
#define GL_MATRIX16_ARB 0x88D0
#define GL_MATRIX17_ARB 0x88D1
#define GL_MATRIX18_ARB 0x88D2
#define GL_MATRIX19_ARB 0x88D3
#define GL_MATRIX20_ARB 0x88D4
#define GL_MATRIX21_ARB 0x88D5
#define GL_MATRIX22_ARB 0x88D6
#define GL_MATRIX23_ARB 0x88D7
#define GL_MATRIX24_ARB 0x88D8
#define GL_MATRIX25_ARB 0x88D9
#define GL_MATRIX26_ARB 0x88DA
#define GL_MATRIX27_ARB 0x88DB
#define GL_MATRIX28_ARB 0x88DC
#define GL_MATRIX29_ARB 0x88DD
#define GL_MATRIX30_ARB 0x88DE
#define GL_MATRIX31_ARB 0x88DF
void glBindProgramARB (GLenum target, GLuint program);
void glDeleteProgramsARB (GLsizei n, const GLuint* programs);
void glDisableVertexAttribArrayARB (GLuint index);
void glEnableVertexAttribArrayARB (GLuint index);
void glGenProgramsARB (GLsizei n, GLuint* programs);
void glGetProgramEnvParameterdvARB (GLenum target, GLuint index, GLdouble* params);
void glGetProgramEnvParameterfvARB (GLenum target, GLuint index, GLfloat* params);
void glGetProgramLocalParameterdvARB (GLenum target, GLuint index, GLdouble* params);
void glGetProgramLocalParameterfvARB (GLenum target, GLuint index, GLfloat* params);
void glGetProgramStringARB (GLenum target, GLenum pname, void *string);
void glGetProgramivARB (GLenum target, GLenum pname, GLint* params);
void glGetVertexAttribPointervARB (GLuint index, GLenum pname, void** pointer);
void glGetVertexAttribdvARB (GLuint index, GLenum pname, GLdouble* params);
void glGetVertexAttribfvARB (GLuint index, GLenum pname, GLfloat* params);
void glGetVertexAttribivARB (GLuint index, GLenum pname, GLint* params);
GLboolean glIsProgramARB (GLuint program);
void glProgramEnvParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramEnvParameter4dvARB (GLenum target, GLuint index, const GLdouble* params);
void glProgramEnvParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramEnvParameter4fvARB (GLenum target, GLuint index, const GLfloat* params);
void glProgramLocalParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramLocalParameter4dvARB (GLenum target, GLuint index, const GLdouble* params);
void glProgramLocalParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramLocalParameter4fvARB (GLenum target, GLuint index, const GLfloat* params);
void glProgramStringARB (GLenum target, GLenum format, GLsizei len, const void *string);
void glVertexAttrib1dARB (GLuint index, GLdouble x);
void glVertexAttrib1dvARB (GLuint index, const GLdouble* v);
void glVertexAttrib1fARB (GLuint index, GLfloat x);
void glVertexAttrib1fvARB (GLuint index, const GLfloat* v);
void glVertexAttrib1sARB (GLuint index, GLshort x);
void glVertexAttrib1svARB (GLuint index, const GLshort* v);
void glVertexAttrib2dARB (GLuint index, GLdouble x, GLdouble y);
void glVertexAttrib2dvARB (GLuint index, const GLdouble* v);
void glVertexAttrib2fARB (GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fvARB (GLuint index, const GLfloat* v);
void glVertexAttrib2sARB (GLuint index, GLshort x, GLshort y);
void glVertexAttrib2svARB (GLuint index, const GLshort* v);
void glVertexAttrib3dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttrib3dvARB (GLuint index, const GLdouble* v);
void glVertexAttrib3fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fvARB (GLuint index, const GLfloat* v);
void glVertexAttrib3sARB (GLuint index, GLshort x, GLshort y, GLshort z);
void glVertexAttrib3svARB (GLuint index, const GLshort* v);
void glVertexAttrib4NbvARB (GLuint index, const GLbyte* v);
void glVertexAttrib4NivARB (GLuint index, const GLint* v);
void glVertexAttrib4NsvARB (GLuint index, const GLshort* v);
void glVertexAttrib4NubARB (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void glVertexAttrib4NubvARB (GLuint index, const GLubyte* v);
void glVertexAttrib4NuivARB (GLuint index, const GLuint* v);
void glVertexAttrib4NusvARB (GLuint index, const GLushort* v);
void glVertexAttrib4bvARB (GLuint index, const GLbyte* v);
void glVertexAttrib4dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttrib4dvARB (GLuint index, const GLdouble* v);
void glVertexAttrib4fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fvARB (GLuint index, const GLfloat* v);
void glVertexAttrib4ivARB (GLuint index, const GLint* v);
void glVertexAttrib4sARB (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexAttrib4svARB (GLuint index, const GLshort* v);
void glVertexAttrib4ubvARB (GLuint index, const GLubyte* v);
void glVertexAttrib4uivARB (GLuint index, const GLuint* v);
void glVertexAttrib4usvARB (GLuint index, const GLushort* v);
void glVertexAttribPointerARB (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void *pointer);
#define GL_VERTEX_SHADER_ARB 0x8B31
#define GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB 0x8B4A
#define GL_MAX_VARYING_FLOATS_ARB 0x8B4B
#define GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB 0x8B4C
#define GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB 0x8B4D
#define GL_OBJECT_ACTIVE_ATTRIBUTES_ARB 0x8B89
#define GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB 0x8B8A
void glBindAttribLocationARB (GLhandleARB programObj, GLuint index, const GLcharARB* name);
void glGetActiveAttribARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint *size, GLenum *type, GLcharARB *name);
GLint glGetAttribLocationARB (GLhandleARB programObj, const GLcharARB* name);
#define GL_UNSIGNED_INT_10F_11F_11F_REV 0x8C3B
#define GL_UNSIGNED_INT_2_10_10_10_REV 0x8368
#define GL_INT_2_10_10_10_REV 0x8D9F
void glColorP3ui (GLenum type, GLuint color);
void glColorP3uiv (GLenum type, const GLuint* color);
void glColorP4ui (GLenum type, GLuint color);
void glColorP4uiv (GLenum type, const GLuint* color);
void glMultiTexCoordP1ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP1uiv (GLenum texture, GLenum type, const GLuint* coords);
void glMultiTexCoordP2ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP2uiv (GLenum texture, GLenum type, const GLuint* coords);
void glMultiTexCoordP3ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP3uiv (GLenum texture, GLenum type, const GLuint* coords);
void glMultiTexCoordP4ui (GLenum texture, GLenum type, GLuint coords);
void glMultiTexCoordP4uiv (GLenum texture, GLenum type, const GLuint* coords);
void glNormalP3ui (GLenum type, GLuint coords);
void glNormalP3uiv (GLenum type, const GLuint* coords);
void glSecondaryColorP3ui (GLenum type, GLuint color);
void glSecondaryColorP3uiv (GLenum type, const GLuint* color);
void glTexCoordP1ui (GLenum type, GLuint coords);
void glTexCoordP1uiv (GLenum type, const GLuint* coords);
void glTexCoordP2ui (GLenum type, GLuint coords);
void glTexCoordP2uiv (GLenum type, const GLuint* coords);
void glTexCoordP3ui (GLenum type, GLuint coords);
void glTexCoordP3uiv (GLenum type, const GLuint* coords);
void glTexCoordP4ui (GLenum type, GLuint coords);
void glTexCoordP4uiv (GLenum type, const GLuint* coords);
void glVertexAttribP1ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP1uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint* value);
void glVertexAttribP2ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP2uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint* value);
void glVertexAttribP3ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP3uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint* value);
void glVertexAttribP4ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void glVertexAttribP4uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint* value);
void glVertexP2ui (GLenum type, GLuint value);
void glVertexP2uiv (GLenum type, const GLuint* value);
void glVertexP3ui (GLenum type, GLuint value);
void glVertexP3uiv (GLenum type, const GLuint* value);
void glVertexP4ui (GLenum type, GLuint value);
void glVertexP4uiv (GLenum type, const GLuint* value);
#define GL_DEPTH_RANGE 0x0B70
#define GL_VIEWPORT 0x0BA2
#define GL_SCISSOR_BOX 0x0C10
#define GL_SCISSOR_TEST 0x0C11
#define GL_MAX_VIEWPORTS 0x825B
#define GL_VIEWPORT_SUBPIXEL_BITS 0x825C
#define GL_VIEWPORT_BOUNDS_RANGE 0x825D
#define GL_LAYER_PROVOKING_VERTEX 0x825E
#define GL_VIEWPORT_INDEX_PROVOKING_VERTEX 0x825F
#define GL_UNDEFINED_VERTEX 0x8260
#define GL_FIRST_VERTEX_CONVENTION 0x8E4D
#define GL_LAST_VERTEX_CONVENTION 0x8E4E
void glDepthRangeArrayv (GLuint first, GLsizei count, const GLclampd * v);
void glDepthRangeIndexed (GLuint index, GLclampd n, GLclampd f);
void glGetDoublei_v (GLenum target, GLuint index, GLdouble* data);
void glGetFloati_v (GLenum target, GLuint index, GLfloat* data);
void glScissorArrayv (GLuint first, GLsizei count, const GLint * v);
void glScissorIndexed (GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height);
void glScissorIndexedv (GLuint index, const GLint * v);
void glViewportArrayv (GLuint first, GLsizei count, const GLfloat * v);
void glViewportIndexedf (GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h);
void glViewportIndexedfv (GLuint index, const GLfloat * v);
void glWindowPos2dARB (GLdouble x, GLdouble y);
void glWindowPos2dvARB (const GLdouble* p);
void glWindowPos2fARB (GLfloat x, GLfloat y);
void glWindowPos2fvARB (const GLfloat* p);
void glWindowPos2iARB (GLint x, GLint y);
void glWindowPos2ivARB (const GLint* p);
void glWindowPos2sARB (GLshort x, GLshort y);
void glWindowPos2svARB (const GLshort* p);
void glWindowPos3dARB (GLdouble x, GLdouble y, GLdouble z);
void glWindowPos3dvARB (const GLdouble* p);
void glWindowPos3fARB (GLfloat x, GLfloat y, GLfloat z);
void glWindowPos3fvARB (const GLfloat* p);
void glWindowPos3iARB (GLint x, GLint y, GLint z);
void glWindowPos3ivARB (const GLint* p);
void glWindowPos3sARB (GLshort x, GLshort y, GLshort z);
void glWindowPos3svARB (const GLshort* p);
#define GL_MALI_PROGRAM_BINARY_ARM 0x8F61
#define GL_MALI_SHADER_BINARY_ARM 0x8F60
#define GL_RGBA8_OES 0x8058
#define GL_FETCH_PER_SAMPLE_ARM 0x8F65
#define GL_FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM 0x8F66
#define GL_MAX_DRAW_BUFFERS_ATI 0x8824
#define GL_DRAW_BUFFER0_ATI 0x8825
#define GL_DRAW_BUFFER1_ATI 0x8826
#define GL_DRAW_BUFFER2_ATI 0x8827
#define GL_DRAW_BUFFER3_ATI 0x8828
#define GL_DRAW_BUFFER4_ATI 0x8829
#define GL_DRAW_BUFFER5_ATI 0x882A
#define GL_DRAW_BUFFER6_ATI 0x882B
#define GL_DRAW_BUFFER7_ATI 0x882C
#define GL_DRAW_BUFFER8_ATI 0x882D
#define GL_DRAW_BUFFER9_ATI 0x882E
#define GL_DRAW_BUFFER10_ATI 0x882F
#define GL_DRAW_BUFFER11_ATI 0x8830
#define GL_DRAW_BUFFER12_ATI 0x8831
#define GL_DRAW_BUFFER13_ATI 0x8832
#define GL_DRAW_BUFFER14_ATI 0x8833
#define GL_DRAW_BUFFER15_ATI 0x8834
void glDrawBuffersATI (GLsizei n, const GLenum* bufs);
#define GL_ELEMENT_ARRAY_ATI 0x8768
#define GL_ELEMENT_ARRAY_TYPE_ATI 0x8769
#define GL_ELEMENT_ARRAY_POINTER_ATI 0x876A
void glDrawElementArrayATI (GLenum mode, GLsizei count);
void glDrawRangeElementArrayATI (GLenum mode, GLuint start, GLuint end, GLsizei count);
void glElementPointerATI (GLenum type, const void *pointer);
#define GL_BUMP_ROT_MATRIX_ATI 0x8775
#define GL_BUMP_ROT_MATRIX_SIZE_ATI 0x8776
#define GL_BUMP_NUM_TEX_UNITS_ATI 0x8777
#define GL_BUMP_TEX_UNITS_ATI 0x8778
#define GL_DUDV_ATI 0x8779
#define GL_DU8DV8_ATI 0x877A
#define GL_BUMP_ENVMAP_ATI 0x877B
#define GL_BUMP_TARGET_ATI 0x877C
void glTexBumpParameterivATI (GLenum pname, GLint *param);
void glTexBumpParameterfvATI (GLenum pname, GLfloat *param);
void glGetTexBumpParameterivATI (GLenum pname, GLint *param);
void glGetTexBumpParameterfvATI (GLenum pname, GLfloat *param);
#define GL_2X_BIT_ATI 0x00000001
#define GL_RED_BIT_ATI 0x00000001
#define GL_4X_BIT_ATI 0x00000002
#define GL_COMP_BIT_ATI 0x00000002
#define GL_GREEN_BIT_ATI 0x00000002
#define GL_8X_BIT_ATI 0x00000004
#define GL_BLUE_BIT_ATI 0x00000004
#define GL_NEGATE_BIT_ATI 0x00000004
#define GL_BIAS_BIT_ATI 0x00000008
#define GL_HALF_BIT_ATI 0x00000008
#define GL_QUARTER_BIT_ATI 0x00000010
#define GL_EIGHTH_BIT_ATI 0x00000020
#define GL_SATURATE_BIT_ATI 0x00000040
#define GL_FRAGMENT_SHADER_ATI 0x8920
#define GL_REG_0_ATI 0x8921
#define GL_REG_1_ATI 0x8922
#define GL_REG_2_ATI 0x8923
#define GL_REG_3_ATI 0x8924
#define GL_REG_4_ATI 0x8925
#define GL_REG_5_ATI 0x8926
#define GL_CON_0_ATI 0x8941
#define GL_CON_1_ATI 0x8942
#define GL_CON_2_ATI 0x8943
#define GL_CON_3_ATI 0x8944
#define GL_CON_4_ATI 0x8945
#define GL_CON_5_ATI 0x8946
#define GL_CON_6_ATI 0x8947
#define GL_CON_7_ATI 0x8948
#define GL_MOV_ATI 0x8961
#define GL_ADD_ATI 0x8963
#define GL_MUL_ATI 0x8964
#define GL_SUB_ATI 0x8965
#define GL_DOT3_ATI 0x8966
#define GL_DOT4_ATI 0x8967
#define GL_MAD_ATI 0x8968
#define GL_LERP_ATI 0x8969
#define GL_CND_ATI 0x896A
#define GL_CND0_ATI 0x896B
#define GL_DOT2_ADD_ATI 0x896C
#define GL_SECONDARY_INTERPOLATOR_ATI 0x896D
#define GL_SWIZZLE_STR_ATI 0x8976
#define GL_SWIZZLE_STQ_ATI 0x8977
#define GL_SWIZZLE_STR_DR_ATI 0x8978
#define GL_SWIZZLE_STQ_DQ_ATI 0x8979
void glAlphaFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
void glAlphaFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
void glAlphaFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
void glBeginFragmentShaderATI (void);
void glBindFragmentShaderATI (GLuint id);
void glColorFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
void glColorFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
void glColorFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
void glDeleteFragmentShaderATI (GLuint id);
void glEndFragmentShaderATI (void);
GLuint glGenFragmentShadersATI (GLuint range);
void glPassTexCoordATI (GLuint dst, GLuint coord, GLenum swizzle);
void glSampleMapATI (GLuint dst, GLuint interp, GLenum swizzle);
void glSetFragmentShaderConstantATI (GLuint dst, const GLfloat* value);
#define GL_NUM_FRAGMENT_REGISTERS_ATI 0x896E
#define GL_NUM_FRAGMENT_CONSTANTS_ATI 0x896F
#define GL_NUM_PASSES_ATI 0x8970
#define GL_NUM_INSTRUCTIONS_PER_PASS_ATI 0x8971
#define GL_NUM_INSTRUCTIONS_TOTAL_ATI 0x8972
#define GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI 0x8973
#define GL_NUM_LOOPBACK_COMPONENTS_ATI 0x8974
#define GL_COLOR_ALPHA_PAIRING_ATI 0x8975
#define GL_SWIZZLE_STRQ_ATI 0x897A
#define GL_SWIZZLE_STRQ_DQ_ATI 0x897B
void * glMapObjectBufferATI (GLuint buffer);
void glUnmapObjectBufferATI (GLuint buffer);
#define GL_VBO_FREE_MEMORY_ATI 0x87FB
#define GL_TEXTURE_FREE_MEMORY_ATI 0x87FC
#define GL_RENDERBUFFER_FREE_MEMORY_ATI 0x87FD
#define GL_PN_TRIANGLES_ATI 0x87F0
#define GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI 0x87F1
#define GL_PN_TRIANGLES_POINT_MODE_ATI 0x87F2
#define GL_PN_TRIANGLES_NORMAL_MODE_ATI 0x87F3
#define GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI 0x87F4
#define GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI 0x87F5
#define GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI 0x87F6
#define GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI 0x87F7
#define GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI 0x87F8
void glPNTrianglesiATI (GLenum pname, GLint param);
void glPNTrianglesfATI (GLenum pname, GLfloat param);
#define GL_STENCIL_BACK_FUNC_ATI 0x8800
#define GL_STENCIL_BACK_FAIL_ATI 0x8801
#define GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI 0x8802
#define GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI 0x8803
void glStencilOpSeparateATI (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
void glStencilFuncSeparateATI (GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask);
#define GL_TEXT_FRAGMENT_SHADER_ATI 0x8200
#define GL_COMPRESSED_LUMINANCE_ALPHA_3DC_ATI 0x8837
#define GL_MODULATE_ADD_ATI 0x8744
#define GL_MODULATE_SIGNED_ADD_ATI 0x8745
#define GL_MODULATE_SUBTRACT_ATI 0x8746
#define GL_RGBA_FLOAT32_ATI 0x8814
#define GL_RGB_FLOAT32_ATI 0x8815
#define GL_ALPHA_FLOAT32_ATI 0x8816
#define GL_INTENSITY_FLOAT32_ATI 0x8817
#define GL_LUMINANCE_FLOAT32_ATI 0x8818
#define GL_LUMINANCE_ALPHA_FLOAT32_ATI 0x8819
#define GL_RGBA_FLOAT16_ATI 0x881A
#define GL_RGB_FLOAT16_ATI 0x881B
#define GL_ALPHA_FLOAT16_ATI 0x881C
#define GL_INTENSITY_FLOAT16_ATI 0x881D
#define GL_LUMINANCE_FLOAT16_ATI 0x881E
#define GL_LUMINANCE_ALPHA_FLOAT16_ATI 0x881F
#define GL_MIRROR_CLAMP_ATI 0x8742
#define GL_MIRROR_CLAMP_TO_EDGE_ATI 0x8743
#define GL_STATIC_ATI 0x8760
#define GL_DYNAMIC_ATI 0x8761
#define GL_PRESERVE_ATI 0x8762
#define GL_DISCARD_ATI 0x8763
#define GL_OBJECT_BUFFER_SIZE_ATI 0x8764
#define GL_OBJECT_BUFFER_USAGE_ATI 0x8765
#define GL_ARRAY_OBJECT_BUFFER_ATI 0x8766
#define GL_ARRAY_OBJECT_OFFSET_ATI 0x8767
void glArrayObjectATI (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
void glFreeObjectBufferATI (GLuint buffer);
void glGetArrayObjectfvATI (GLenum array, GLenum pname, GLfloat* params);
void glGetArrayObjectivATI (GLenum array, GLenum pname, GLint* params);
void glGetObjectBufferfvATI (GLuint buffer, GLenum pname, GLfloat* params);
void glGetObjectBufferivATI (GLuint buffer, GLenum pname, GLint* params);
void glGetVariantArrayObjectfvATI (GLuint id, GLenum pname, GLfloat* params);
void glGetVariantArrayObjectivATI (GLuint id, GLenum pname, GLint* params);
GLboolean glIsObjectBufferATI (GLuint buffer);
GLuint glNewObjectBufferATI (GLsizei size, const void *pointer, GLenum usage);
void glUpdateObjectBufferATI (GLuint buffer, GLuint offset, GLsizei size, const void *pointer, GLenum preserve);
void glVariantArrayObjectATI (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
void glGetVertexAttribArrayObjectfvATI (GLuint index, GLenum pname, GLfloat* params);
void glGetVertexAttribArrayObjectivATI (GLuint index, GLenum pname, GLint* params);
void glVertexAttribArrayObjectATI (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset);
#define GL_MAX_VERTEX_STREAMS_ATI 0x876B
#define GL_VERTEX_SOURCE_ATI 0x876C
#define GL_VERTEX_STREAM0_ATI 0x876D
#define GL_VERTEX_STREAM1_ATI 0x876E
#define GL_VERTEX_STREAM2_ATI 0x876F
#define GL_VERTEX_STREAM3_ATI 0x8770
#define GL_VERTEX_STREAM4_ATI 0x8771
#define GL_VERTEX_STREAM5_ATI 0x8772
#define GL_VERTEX_STREAM6_ATI 0x8773
#define GL_VERTEX_STREAM7_ATI 0x8774
void glClientActiveVertexStreamATI (GLenum stream);
void glVertexBlendEnviATI (GLenum pname, GLint param);
void glVertexBlendEnvfATI (GLenum pname, GLfloat param);
void glVertexStream1sATI (GLenum stream, GLshort x);
void glVertexStream1svATI (GLenum stream, const GLshort *coords);
void glVertexStream1iATI (GLenum stream, GLint x);
void glVertexStream1ivATI (GLenum stream, const GLint *coords);
void glVertexStream1fATI (GLenum stream, GLfloat x);
void glVertexStream1fvATI (GLenum stream, const GLfloat *coords);
void glVertexStream1dATI (GLenum stream, GLdouble x);
void glVertexStream1dvATI (GLenum stream, const GLdouble *coords);
void glVertexStream2sATI (GLenum stream, GLshort x, GLshort y);
void glVertexStream2svATI (GLenum stream, const GLshort *coords);
void glVertexStream2iATI (GLenum stream, GLint x, GLint y);
void glVertexStream2ivATI (GLenum stream, const GLint *coords);
void glVertexStream2fATI (GLenum stream, GLfloat x, GLfloat y);
void glVertexStream2fvATI (GLenum stream, const GLfloat *coords);
void glVertexStream2dATI (GLenum stream, GLdouble x, GLdouble y);
void glVertexStream2dvATI (GLenum stream, const GLdouble *coords);
void glVertexStream3sATI (GLenum stream, GLshort x, GLshort y, GLshort z);
void glVertexStream3svATI (GLenum stream, const GLshort *coords);
void glVertexStream3iATI (GLenum stream, GLint x, GLint y, GLint z);
void glVertexStream3ivATI (GLenum stream, const GLint *coords);
void glVertexStream3fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z);
void glVertexStream3fvATI (GLenum stream, const GLfloat *coords);
void glVertexStream3dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z);
void glVertexStream3dvATI (GLenum stream, const GLdouble *coords);
void glVertexStream4sATI (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexStream4svATI (GLenum stream, const GLshort *coords);
void glVertexStream4iATI (GLenum stream, GLint x, GLint y, GLint z, GLint w);
void glVertexStream4ivATI (GLenum stream, const GLint *coords);
void glVertexStream4fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexStream4fvATI (GLenum stream, const GLfloat *coords);
void glVertexStream4dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexStream4dvATI (GLenum stream, const GLdouble *coords);
void glNormalStream3bATI (GLenum stream, GLbyte x, GLbyte y, GLbyte z);
void glNormalStream3bvATI (GLenum stream, const GLbyte *coords);
void glNormalStream3sATI (GLenum stream, GLshort x, GLshort y, GLshort z);
void glNormalStream3svATI (GLenum stream, const GLshort *coords);
void glNormalStream3iATI (GLenum stream, GLint x, GLint y, GLint z);
void glNormalStream3ivATI (GLenum stream, const GLint *coords);
void glNormalStream3fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z);
void glNormalStream3fvATI (GLenum stream, const GLfloat *coords);
void glNormalStream3dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z);
void glNormalStream3dvATI (GLenum stream, const GLdouble *coords);
#define GL_TEXTURE_POINT_MODE_ATIX 0x60B0
#define GL_TEXTURE_POINT_ONE_COORD_ATIX 0x60B1
#define GL_TEXTURE_POINT_SPRITE_ATIX 0x60B2
#define GL_POINT_SPRITE_CULL_MODE_ATIX 0x60B3
#define GL_POINT_SPRITE_CULL_CENTER_ATIX 0x60B4
#define GL_POINT_SPRITE_CULL_CLIP_ATIX 0x60B5
#define GL_MODULATE_ADD_ATIX 0x8744
#define GL_MODULATE_SIGNED_ADD_ATIX 0x8745
#define GL_MODULATE_SUBTRACT_ATIX 0x8746
#define GL_SECONDARY_COLOR_ATIX 0x8747
#define GL_TEXTURE_OUTPUT_RGB_ATIX 0x8748
#define GL_TEXTURE_OUTPUT_ALPHA_ATIX 0x8749
#define GL_OUTPUT_POINT_SIZE_ATIX 0x610E
#define GL_SMAPHS30_PROGRAM_BINARY_DMP 0x9251
#define GL_SMAPHS_PROGRAM_BINARY_DMP 0x9252
#define GL_DMP_PROGRAM_BINARY_DMP 0x9253
#define GL_SHADER_BINARY_DMP 0x9250
#define GL_422_EXT 0x80CC
#define GL_422_REV_EXT 0x80CD
#define GL_422_AVERAGE_EXT 0x80CE
#define GL_422_REV_AVERAGE_EXT 0x80CF
#define GL_ABGR_EXT 0x8000
void glDrawArraysInstancedBaseInstanceEXT (GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance);
void glDrawElementsInstancedBaseInstanceEXT (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLuint baseinstance);
void glDrawElementsInstancedBaseVertexBaseInstanceEXT (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance);
#define GL_BGR_EXT 0x80E0
#define GL_BGRA_EXT 0x80E1
#define GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT 0x8DE2
#define GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT 0x8DE3
#define GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT 0x8DE4
#define GL_MAX_BINDABLE_UNIFORM_SIZE_EXT 0x8DED
#define GL_UNIFORM_BUFFER_BINDING_EXT 0x8DEF
%feature("sufix", "_CONSTANT4321end");
#define GL_UNIFORM_BUFFER_EXT 0x8DEE
%feature("sufix", "4321end");
void glUniformBufferEXT (GLuint program, GLint location, GLuint buffer);
GLint glGetUniformBufferSizeEXT (GLuint program, GLint location);
GLintptr glGetUniformOffsetEXT (GLuint program, GLint location);
#define GL_CONSTANT_COLOR_EXT 0x8001
#define GL_ONE_MINUS_CONSTANT_COLOR_EXT 0x8002
#define GL_CONSTANT_ALPHA_EXT 0x8003
#define GL_ONE_MINUS_CONSTANT_ALPHA_EXT 0x8004
%feature("sufix", "_CONSTANT4321end");
#define GL_BLEND_COLOR_EXT 0x8005
%feature("sufix", "4321end");
void glBlendColorEXT (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
#define GL_BLEND_EQUATION_RGB_EXT 0x8009
#define GL_BLEND_EQUATION_ALPHA_EXT 0x883D
void glBlendEquationSeparateEXT (GLenum modeRGB, GLenum modeAlpha);
#define GL_SRC_ALPHA_SATURATE_EXT 0x0308
#define GL_SRC1_ALPHA_EXT 0x8589
#define GL_SRC1_COLOR_EXT 0x88F9
#define GL_ONE_MINUS_SRC1_COLOR_EXT 0x88FA
#define GL_ONE_MINUS_SRC1_ALPHA_EXT 0x88FB
#define GL_MAX_DUAL_SOURCE_DRAW_BUFFERS_EXT 0x88FC
#define GL_LOCATION_INDEX_EXT 0x930F
void glBindFragDataLocationIndexedEXT (GLuint program, GLuint colorNumber, GLuint index, const GLchar * name);
GLint glGetFragDataIndexEXT (GLuint program, const GLchar * name);
GLint glGetProgramResourceLocationIndexEXT (GLuint program, GLenum programInterface, const GLchar* name);
#define GL_BLEND_DST_RGB_EXT 0x80C8
#define GL_BLEND_SRC_RGB_EXT 0x80C9
#define GL_BLEND_DST_ALPHA_EXT 0x80CA
#define GL_BLEND_SRC_ALPHA_EXT 0x80CB
void glBlendFuncSeparateEXT (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
#define GL_FUNC_ADD_EXT 0x8006
#define GL_MIN_EXT 0x8007
#define GL_MAX_EXT 0x8008
%feature("sufix", "_CONSTANT4321end");
#define GL_BLEND_EQUATION_EXT 0x8009
%feature("sufix", "4321end");
void glBlendEquationEXT (GLenum mode);
#define GL_FUNC_SUBTRACT_EXT 0x800A
#define GL_FUNC_REVERSE_SUBTRACT_EXT 0x800B
#define GL_MAP_READ_BIT 0x0001
#define GL_MAP_WRITE_BIT 0x0002
#define GL_MAP_PERSISTENT_BIT_EXT 0x0040
#define GL_MAP_COHERENT_BIT_EXT 0x0080
#define GL_DYNAMIC_STORAGE_BIT_EXT 0x0100
#define GL_CLIENT_STORAGE_BIT_EXT 0x0200
#define GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT_EXT 0x00004000
#define GL_BUFFER_IMMUTABLE_STORAGE_EXT 0x821F
#define GL_BUFFER_STORAGE_FLAGS_EXT 0x8220
void glBufferStorageEXT (GLenum target, GLsizeiptr size, const void *data, GLbitfield flags);
void glNamedBufferStorageEXT (GLuint buffer, GLsizeiptr size, const void *data, GLbitfield flags);
#define GL_CG_VERTEX_SHADER_EXT 0x890E
#define GL_CG_FRAGMENT_SHADER_EXT 0x890F
void glClearTexImageEXT (GLuint texture, GLint level, GLenum format, GLenum type, const void *data);
void glClearTexSubImageEXT (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *data);
#define GL_LOWER_LEFT_EXT 0x8CA1
#define GL_UPPER_LEFT_EXT 0x8CA2
#define GL_CLIP_ORIGIN_EXT 0x935C
#define GL_CLIP_DEPTH_MODE_EXT 0x935D
#define GL_NEGATIVE_ONE_TO_ONE_EXT 0x935E
#define GL_ZERO_TO_ONE_EXT 0x935F
void glClipControlEXT (GLenum origin, GLenum depth);
#define GL_MAX_CLIP_DISTANCES_EXT 0x0D32
#define GL_CLIP_DISTANCE0_EXT 0x3000
#define GL_CLIP_DISTANCE1_EXT 0x3001
#define GL_CLIP_DISTANCE2_EXT 0x3002
#define GL_CLIP_DISTANCE3_EXT 0x3003
#define GL_CLIP_DISTANCE4_EXT 0x3004
#define GL_CLIP_DISTANCE5_EXT 0x3005
#define GL_CLIP_DISTANCE6_EXT 0x3006
#define GL_CLIP_DISTANCE7_EXT 0x3007
#define GL_MAX_CULL_DISTANCES_EXT 0x82F9
#define GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES_EXT 0x82FA
#define GL_CLIP_VOLUME_CLIPPING_HINT_EXT 0x80F0
#define GL_CMYK_EXT 0x800C
#define GL_CMYKA_EXT 0x800D
#define GL_PACK_CMYK_HINT_EXT 0x800E
#define GL_UNPACK_CMYK_HINT_EXT 0x800F
#define GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT 0x8211
#define GL_R16F_EXT 0x822D
#define GL_RG16F_EXT 0x822F
#define GL_RGBA16F_EXT 0x881A
#define GL_RGB16F_EXT 0x881B
#define GL_UNSIGNED_NORMALIZED_EXT 0x8C17
void glColorSubTableEXT (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const void *data);
void glCopyColorSubTableEXT (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
#define GL_ARRAY_ELEMENT_LOCK_FIRST_EXT 0x81A8
#define GL_ARRAY_ELEMENT_LOCK_COUNT_EXT 0x81A9
void glLockArraysEXT (GLint first, GLsizei count);
void glUnlockArraysEXT (void);
#define GL_CONVOLUTION_1D_EXT 0x8010
#define GL_CONVOLUTION_2D_EXT 0x8011
#define GL_SEPARABLE_2D_EXT 0x8012
#define GL_CONVOLUTION_BORDER_MODE_EXT 0x8013
#define GL_CONVOLUTION_FILTER_SCALE_EXT 0x8014
#define GL_CONVOLUTION_FILTER_BIAS_EXT 0x8015
#define GL_REDUCE_EXT 0x8016
#define GL_CONVOLUTION_FORMAT_EXT 0x8017
#define GL_CONVOLUTION_WIDTH_EXT 0x8018
#define GL_CONVOLUTION_HEIGHT_EXT 0x8019
#define GL_MAX_CONVOLUTION_WIDTH_EXT 0x801A
#define GL_MAX_CONVOLUTION_HEIGHT_EXT 0x801B
#define GL_POST_CONVOLUTION_RED_SCALE_EXT 0x801C
#define GL_POST_CONVOLUTION_GREEN_SCALE_EXT 0x801D
#define GL_POST_CONVOLUTION_BLUE_SCALE_EXT 0x801E
#define GL_POST_CONVOLUTION_ALPHA_SCALE_EXT 0x801F
#define GL_POST_CONVOLUTION_RED_BIAS_EXT 0x8020
#define GL_POST_CONVOLUTION_GREEN_BIAS_EXT 0x8021
#define GL_POST_CONVOLUTION_BLUE_BIAS_EXT 0x8022
#define GL_POST_CONVOLUTION_ALPHA_BIAS_EXT 0x8023
void glConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *image);
void glConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *image);
void glConvolutionParameterfEXT (GLenum target, GLenum pname, GLfloat param);
void glConvolutionParameterfvEXT (GLenum target, GLenum pname, const GLfloat* params);
void glConvolutionParameteriEXT (GLenum target, GLenum pname, GLint param);
void glConvolutionParameterivEXT (GLenum target, GLenum pname, const GLint* params);
void glCopyConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glCopyConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetConvolutionFilterEXT (GLenum target, GLenum format, GLenum type, void *image);
void glGetConvolutionParameterfvEXT (GLenum target, GLenum pname, GLfloat* params);
void glGetConvolutionParameterivEXT (GLenum target, GLenum pname, GLint* params);
void glGetSeparableFilterEXT (GLenum target, GLenum format, GLenum type, void *row, void *column, void *span);
void glSeparableFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *row, const void *column);
#define GL_TANGENT_ARRAY_EXT 0x8439
#define GL_BINORMAL_ARRAY_EXT 0x843A
#define GL_CURRENT_TANGENT_EXT 0x843B
#define GL_CURRENT_BINORMAL_EXT 0x843C
#define GL_TANGENT_ARRAY_TYPE_EXT 0x843E
#define GL_TANGENT_ARRAY_STRIDE_EXT 0x843F
#define GL_BINORMAL_ARRAY_TYPE_EXT 0x8440
#define GL_BINORMAL_ARRAY_STRIDE_EXT 0x8441
#define GL_TANGENT_ARRAY_POINTER_EXT 0x8442
#define GL_BINORMAL_ARRAY_POINTER_EXT 0x8443
#define GL_MAP1_TANGENT_EXT 0x8444
#define GL_MAP2_TANGENT_EXT 0x8445
#define GL_MAP1_BINORMAL_EXT 0x8446
#define GL_MAP2_BINORMAL_EXT 0x8447
void glBinormalPointerEXT (GLenum type, GLsizei stride, void *pointer);
void glTangentPointerEXT (GLenum type, GLsizei stride, void *pointer);
void glCopyImageSubDataEXT (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth);
void glCopyTexImage1DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTexImage2DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
#define GL_CULL_VERTEX_EXT 0x81AA
#define GL_CULL_VERTEX_EYE_POSITION_EXT 0x81AB
#define GL_CULL_VERTEX_OBJECT_POSITION_EXT 0x81AC
void glCullParameterdvEXT (GLenum pname, GLdouble* params);
void glCullParameterfvEXT (GLenum pname, GLfloat* params);
#define GL_PROGRAM_PIPELINE_OBJECT_EXT 0x8A4F
#define GL_PROGRAM_OBJECT_EXT 0x8B40
#define GL_SHADER_OBJECT_EXT 0x8B48
#define GL_BUFFER_OBJECT_EXT 0x9151
#define GL_QUERY_OBJECT_EXT 0x9153
#define GL_VERTEX_ARRAY_OBJECT_EXT 0x9154
void glGetObjectLabelEXT (GLenum type, GLuint object, GLsizei bufSize, GLsizei* length, GLchar *label);
void glLabelObjectEXT (GLenum type, GLuint object, GLsizei length, const GLchar* label);
void glInsertEventMarkerEXT (GLsizei length, const GLchar* marker);
void glPushGroupMarkerEXT (GLsizei length, const GLchar* marker);
void glPopGroupMarkerEXT (void);
#define GL_DEPTH_BOUNDS_TEST_EXT 0x8890
%feature("sufix", "_CONSTANT4321end");
#define GL_DEPTH_BOUNDS_EXT 0x8891
%feature("sufix", "4321end");
void glDepthBoundsEXT (GLclampd zmin, GLclampd zmax);
#define GL_DEPTH_CLAMP_EXT 0x864F
#define GL_PROGRAM_MATRIX_EXT 0x8E2D
#define GL_TRANSPOSE_PROGRAM_MATRIX_EXT 0x8E2E
#define GL_PROGRAM_MATRIX_STACK_DEPTH_EXT 0x8E2F
void glBindMultiTextureEXT (GLenum texunit, GLenum target, GLuint texture);
GLenum glCheckNamedFramebufferStatusEXT (GLuint framebuffer, GLenum target);
void glClientAttribDefaultEXT (GLbitfield mask);
void glCompressedMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const void *data);
void glCompressedMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void *data);
void glCompressedMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const void *data);
void glCompressedMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const void *data);
void glCompressedMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
void glCompressedMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
void glCompressedTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const void *data);
void glCompressedTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void *data);
void glCompressedTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const void *data);
void glCompressedTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const void *data);
void glCompressedTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
void glCompressedTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
void glCopyMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glDisableClientStateIndexedEXT (GLenum array, GLuint index);
void glDisableClientStateiEXT (GLenum array, GLuint index);
void glDisableVertexArrayAttribEXT (GLuint vaobj, GLuint index);
void glDisableVertexArrayEXT (GLuint vaobj, GLenum array);
void glEnableClientStateIndexedEXT (GLenum array, GLuint index);
void glEnableClientStateiEXT (GLenum array, GLuint index);
void glEnableVertexArrayAttribEXT (GLuint vaobj, GLuint index);
void glEnableVertexArrayEXT (GLuint vaobj, GLenum array);
void glFlushMappedNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length);
void glFramebufferDrawBufferEXT (GLuint framebuffer, GLenum mode);
void glFramebufferDrawBuffersEXT (GLuint framebuffer, GLsizei n, const GLenum* bufs);
void glFramebufferReadBufferEXT (GLuint framebuffer, GLenum mode);
void glGenerateMultiTexMipmapEXT (GLenum texunit, GLenum target);
void glGenerateTextureMipmapEXT (GLuint texture, GLenum target);
void glGetCompressedMultiTexImageEXT (GLenum texunit, GLenum target, GLint level, void *img);
void glGetCompressedTextureImageEXT (GLuint texture, GLenum target, GLint level, void *img);
void glGetDoubleIndexedvEXT (GLenum target, GLuint index, GLdouble* params);
void glGetDoublei_vEXT (GLenum pname, GLuint index, GLdouble* params);
void glGetFloatIndexedvEXT (GLenum target, GLuint index, GLfloat* params);
void glGetFloati_vEXT (GLenum pname, GLuint index, GLfloat* params);
void glGetFramebufferParameterivEXT (GLuint framebuffer, GLenum pname, GLint* param);
void glGetMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat* params);
void glGetMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, GLint* params);
void glGetMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble* params);
void glGetMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat* params);
void glGetMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, GLint* params);
void glGetMultiTexImageEXT (GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
void glGetMultiTexLevelParameterfvEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params);
void glGetMultiTexLevelParameterivEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params);
void glGetMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, GLint* params);
void glGetMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, GLuint* params);
void glGetMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat* params);
void glGetMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, GLint* params);
void glGetNamedBufferParameterivEXT (GLuint buffer, GLenum pname, GLint* params);
void glGetNamedBufferPointervEXT (GLuint buffer, GLenum pname, void** params);
void glGetNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, void *data);
void glGetNamedFramebufferAttachmentParameterivEXT (GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params);
void glGetNamedProgramLocalParameterIivEXT (GLuint program, GLenum target, GLuint index, GLint* params);
void glGetNamedProgramLocalParameterIuivEXT (GLuint program, GLenum target, GLuint index, GLuint* params);
void glGetNamedProgramLocalParameterdvEXT (GLuint program, GLenum target, GLuint index, GLdouble* params);
void glGetNamedProgramLocalParameterfvEXT (GLuint program, GLenum target, GLuint index, GLfloat* params);
void glGetNamedProgramStringEXT (GLuint program, GLenum target, GLenum pname, void *string);
void glGetNamedProgramivEXT (GLuint program, GLenum target, GLenum pname, GLint* params);
void glGetNamedRenderbufferParameterivEXT (GLuint renderbuffer, GLenum pname, GLint* params);
void glGetPointerIndexedvEXT (GLenum target, GLuint index, void** params);
void glGetPointeri_vEXT (GLenum pname, GLuint index, void** params);
void glGetTextureImageEXT (GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
void glGetTextureLevelParameterfvEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params);
void glGetTextureLevelParameterivEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params);
void glGetTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, GLint* params);
void glGetTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, GLuint* params);
void glGetTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, GLfloat* params);
void glGetTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, GLint* params);
void glGetVertexArrayIntegeri_vEXT (GLuint vaobj, GLuint index, GLenum pname, GLint* param);
void glGetVertexArrayIntegervEXT (GLuint vaobj, GLenum pname, GLint* param);
void glGetVertexArrayPointeri_vEXT (GLuint vaobj, GLuint index, GLenum pname, void** param);
void glGetVertexArrayPointervEXT (GLuint vaobj, GLenum pname, void** param);
void * glMapNamedBufferEXT (GLuint buffer, GLenum access);
void * glMapNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access);
void glMatrixFrustumEXT (GLenum matrixMode, GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f);
void glMatrixLoadIdentityEXT (GLenum matrixMode);
void glMatrixLoadTransposedEXT (GLenum matrixMode, const GLdouble* m);
void glMatrixLoadTransposefEXT (GLenum matrixMode, const GLfloat* m);
void glMatrixLoaddEXT (GLenum matrixMode, const GLdouble* m);
void glMatrixLoadfEXT (GLenum matrixMode, const GLfloat* m);
void glMatrixMultTransposedEXT (GLenum matrixMode, const GLdouble* m);
void glMatrixMultTransposefEXT (GLenum matrixMode, const GLfloat* m);
void glMatrixMultdEXT (GLenum matrixMode, const GLdouble* m);
void glMatrixMultfEXT (GLenum matrixMode, const GLfloat* m);
void glMatrixOrthoEXT (GLenum matrixMode, GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f);
void glMatrixPopEXT (GLenum matrixMode);
void glMatrixPushEXT (GLenum matrixMode);
void glMatrixRotatedEXT (GLenum matrixMode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void glMatrixRotatefEXT (GLenum matrixMode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void glMatrixScaledEXT (GLenum matrixMode, GLdouble x, GLdouble y, GLdouble z);
void glMatrixScalefEXT (GLenum matrixMode, GLfloat x, GLfloat y, GLfloat z);
void glMatrixTranslatedEXT (GLenum matrixMode, GLdouble x, GLdouble y, GLdouble z);
void glMatrixTranslatefEXT (GLenum matrixMode, GLfloat x, GLfloat y, GLfloat z);
void glMultiTexBufferEXT (GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer);
void glMultiTexCoordPointerEXT (GLenum texunit, GLint size, GLenum type, GLsizei stride, const void *pointer);
void glMultiTexEnvfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
void glMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, const GLfloat* params);
void glMultiTexEnviEXT (GLenum texunit, GLenum target, GLenum pname, GLint param);
void glMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, const GLint* params);
void glMultiTexGendEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble param);
void glMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, const GLdouble* params);
void glMultiTexGenfEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat param);
void glMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, const GLfloat* params);
void glMultiTexGeniEXT (GLenum texunit, GLenum coord, GLenum pname, GLint param);
void glMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, const GLint* params);
void glMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
void glMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void glMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void glMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, const GLint* params);
void glMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, const GLuint* params);
void glMultiTexParameterfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param);
void glMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, const GLfloat* param);
void glMultiTexParameteriEXT (GLenum texunit, GLenum target, GLenum pname, GLint param);
void glMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, const GLint* param);
void glMultiTexRenderbufferEXT (GLenum texunit, GLenum target, GLuint renderbuffer);
void glMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void glMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void glNamedBufferDataEXT (GLuint buffer, GLsizeiptr size, const void *data, GLenum usage);
void glNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, const void *data);
 void glNamedCopyBufferSubDataEXT (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
void glNamedFramebufferRenderbufferEXT (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glNamedFramebufferTexture1DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glNamedFramebufferTexture2DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glNamedFramebufferTexture3DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glNamedFramebufferTextureEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level);
void glNamedFramebufferTextureFaceEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face);
void glNamedFramebufferTextureLayerEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glNamedProgramLocalParameter4dEXT (GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glNamedProgramLocalParameter4dvEXT (GLuint program, GLenum target, GLuint index, const GLdouble* params);
void glNamedProgramLocalParameter4fEXT (GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glNamedProgramLocalParameter4fvEXT (GLuint program, GLenum target, GLuint index, const GLfloat* params);
void glNamedProgramLocalParameterI4iEXT (GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
void glNamedProgramLocalParameterI4ivEXT (GLuint program, GLenum target, GLuint index, const GLint* params);
void glNamedProgramLocalParameterI4uiEXT (GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glNamedProgramLocalParameterI4uivEXT (GLuint program, GLenum target, GLuint index, const GLuint* params);
void glNamedProgramLocalParameters4fvEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const GLfloat* params);
void glNamedProgramLocalParametersI4ivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const GLint* params);
void glNamedProgramLocalParametersI4uivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, const GLuint* params);
void glNamedProgramStringEXT (GLuint program, GLenum target, GLenum format, GLsizei len, const void *string);
void glNamedRenderbufferStorageEXT (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height);
void glNamedRenderbufferStorageMultisampleCoverageEXT (GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
void glNamedRenderbufferStorageMultisampleEXT (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void glProgramUniform1fEXT (GLuint program, GLint location, GLfloat v0);
void glProgramUniform1fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat* value);
void glProgramUniform1iEXT (GLuint program, GLint location, GLint v0);
void glProgramUniform1ivEXT (GLuint program, GLint location, GLsizei count, const GLint* value);
void glProgramUniform1uiEXT (GLuint program, GLint location, GLuint v0);
void glProgramUniform1uivEXT (GLuint program, GLint location, GLsizei count, const GLuint* value);
void glProgramUniform2fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1);
void glProgramUniform2fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat* value);
void glProgramUniform2iEXT (GLuint program, GLint location, GLint v0, GLint v1);
void glProgramUniform2ivEXT (GLuint program, GLint location, GLsizei count, const GLint* value);
void glProgramUniform2uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1);
void glProgramUniform2uivEXT (GLuint program, GLint location, GLsizei count, const GLuint* value);
void glProgramUniform3fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glProgramUniform3fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat* value);
void glProgramUniform3iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
void glProgramUniform3ivEXT (GLuint program, GLint location, GLsizei count, const GLint* value);
void glProgramUniform3uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
void glProgramUniform3uivEXT (GLuint program, GLint location, GLsizei count, const GLuint* value);
void glProgramUniform4fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glProgramUniform4fvEXT (GLuint program, GLint location, GLsizei count, const GLfloat* value);
void glProgramUniform4iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glProgramUniform4ivEXT (GLuint program, GLint location, GLsizei count, const GLint* value);
void glProgramUniform4uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glProgramUniform4uivEXT (GLuint program, GLint location, GLsizei count, const GLuint* value);
void glProgramUniformMatrix2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix2x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix2x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix3x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix3x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix4x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glProgramUniformMatrix4x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glPushClientAttribDefaultEXT (GLbitfield mask);
void glTextureBufferEXT (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer);
void glTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
void glTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void glTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void glTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, const GLint* params);
void glTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, const GLuint* params);
void glTextureParameterfEXT (GLuint texture, GLenum target, GLenum pname, GLfloat param);
void glTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, const GLfloat* param);
void glTextureParameteriEXT (GLuint texture, GLenum target, GLenum pname, GLint param);
void glTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, const GLint* param);
void glTextureRenderbufferEXT (GLuint texture, GLenum target, GLuint renderbuffer);
void glTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void glTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
GLboolean glUnmapNamedBufferEXT (GLuint buffer);
void glVertexArrayColorOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayEdgeFlagOffsetEXT (GLuint vaobj, GLuint buffer, GLsizei stride, GLintptr offset);
void glVertexArrayFogCoordOffsetEXT (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayIndexOffsetEXT (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayMultiTexCoordOffsetEXT (GLuint vaobj, GLuint buffer, GLenum texunit, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayNormalOffsetEXT (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArraySecondaryColorOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayTexCoordOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayVertexAttribIOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexArrayVertexAttribOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLintptr offset);
void glVertexArrayVertexOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset);
#define GL_COLOR_EXT 0x1800
#define GL_DEPTH_EXT 0x1801
#define GL_STENCIL_EXT 0x1802
void glDiscardFramebufferEXT (GLenum target, GLsizei numAttachments, const GLenum* attachments);
#define GL_QUERY_COUNTER_BITS_EXT 0x8864
#define GL_CURRENT_QUERY_EXT 0x8865
#define GL_QUERY_RESULT_EXT 0x8866
#define GL_QUERY_RESULT_AVAILABLE_EXT 0x8867
#define GL_TIME_ELAPSED_EXT 0x88BF
#define GL_TIMESTAMP_EXT 0x8E28
#define GL_GPU_DISJOINT_EXT 0x8FBB
void glBeginQueryEXT (GLenum target, GLuint id);
void glDeleteQueriesEXT (GLsizei n, const GLuint* ids);
void glEndQueryEXT (GLenum target);
void glGenQueriesEXT (GLsizei n, GLuint* ids);
void glGetInteger64vEXT (GLenum pname, GLint64* data);
void glGetQueryObjectivEXT (GLuint id, GLenum pname, GLint* params);
void glGetQueryObjectuivEXT (GLuint id, GLenum pname, GLuint* params);
void glGetQueryivEXT (GLenum target, GLenum pname, GLint* params);
GLboolean glIsQueryEXT (GLuint id);
void glQueryCounterEXT (GLuint id, GLenum target);
#define GL_MAX_DRAW_BUFFERS_EXT 0x8824
#define GL_DRAW_BUFFER0_EXT 0x8825
#define GL_DRAW_BUFFER1_EXT 0x8826
#define GL_DRAW_BUFFER2_EXT 0x8827
#define GL_DRAW_BUFFER3_EXT 0x8828
#define GL_DRAW_BUFFER4_EXT 0x8829
#define GL_DRAW_BUFFER5_EXT 0x882A
#define GL_DRAW_BUFFER6_EXT 0x882B
#define GL_DRAW_BUFFER7_EXT 0x882C
#define GL_DRAW_BUFFER8_EXT 0x882D
#define GL_DRAW_BUFFER9_EXT 0x882E
#define GL_DRAW_BUFFER10_EXT 0x882F
#define GL_DRAW_BUFFER11_EXT 0x8830
#define GL_DRAW_BUFFER12_EXT 0x8831
#define GL_DRAW_BUFFER13_EXT 0x8832
#define GL_DRAW_BUFFER14_EXT 0x8833
#define GL_DRAW_BUFFER15_EXT 0x8834
#define GL_MAX_COLOR_ATTACHMENTS_EXT 0x8CDF
#define GL_COLOR_ATTACHMENT0_EXT 0x8CE0
#define GL_COLOR_ATTACHMENT1_EXT 0x8CE1
#define GL_COLOR_ATTACHMENT2_EXT 0x8CE2
#define GL_COLOR_ATTACHMENT3_EXT 0x8CE3
#define GL_COLOR_ATTACHMENT4_EXT 0x8CE4
#define GL_COLOR_ATTACHMENT5_EXT 0x8CE5
#define GL_COLOR_ATTACHMENT6_EXT 0x8CE6
#define GL_COLOR_ATTACHMENT7_EXT 0x8CE7
#define GL_COLOR_ATTACHMENT8_EXT 0x8CE8
#define GL_COLOR_ATTACHMENT9_EXT 0x8CE9
#define GL_COLOR_ATTACHMENT10_EXT 0x8CEA
#define GL_COLOR_ATTACHMENT11_EXT 0x8CEB
#define GL_COLOR_ATTACHMENT12_EXT 0x8CEC
#define GL_COLOR_ATTACHMENT13_EXT 0x8CED
#define GL_COLOR_ATTACHMENT14_EXT 0x8CEE
#define GL_COLOR_ATTACHMENT15_EXT 0x8CEF
void glDrawBuffersEXT (GLsizei n, const GLenum* bufs);
void glColorMaskIndexedEXT (GLuint buf, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void glDisableIndexedEXT (GLenum target, GLuint index);
void glEnableIndexedEXT (GLenum target, GLuint index);
void glGetBooleanIndexedvEXT (GLenum value, GLuint index, GLboolean* data);
void glGetIntegerIndexedvEXT (GLenum value, GLuint index, GLint* data);
GLboolean glIsEnabledIndexedEXT (GLenum target, GLuint index);
void glBlendEquationSeparateiEXT (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void glBlendEquationiEXT (GLuint buf, GLenum mode);
void glBlendFuncSeparateiEXT (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
void glBlendFunciEXT (GLuint buf, GLenum src, GLenum dst);
void glColorMaskiEXT (GLuint buf, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void glDisableiEXT (GLenum target, GLuint index);
void glEnableiEXT (GLenum target, GLuint index);
GLboolean glIsEnablediEXT (GLenum target, GLuint index);
void glDrawElementsBaseVertexEXT (GLenum mode, GLsizei count, GLenum type, const void *indices, GLint basevertex);
void glDrawElementsInstancedBaseVertexEXT (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLint basevertex);
void glDrawRangeElementsBaseVertexEXT (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const void *indices, GLint basevertex);
void glMultiDrawElementsBaseVertexEXT (GLenum mode, const GLsizei* count, GLenum type, const void *const *indices, GLsizei primcount, const GLint *basevertex);
void glDrawArraysInstancedEXT (GLenum mode, GLint start, GLsizei count, GLsizei primcount);
void glDrawElementsInstancedEXT (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei primcount);
#define GL_MAX_ELEMENTS_VERTICES_EXT 0x80E8
#define GL_MAX_ELEMENTS_INDICES_EXT 0x80E9
void glDrawRangeElementsEXT (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const void *indices);
void glDrawTransformFeedbackEXT (GLenum mode, GLuint id);
void glDrawTransformFeedbackInstancedEXT (GLenum mode, GLuint id, GLsizei instancecount);
void glEGLImageTargetTexStorageEXT (GLenum target, GLeglImageOES image, const GLint* attrib_list);
void glEGLImageTargetTextureStorageEXT (GLuint texture, GLeglImageOES image, const GLint* attrib_list);
void glBufferStorageExternalEXT (GLenum target, GLintptr offset, GLsizeiptr size, GLeglClientBufferEXT clientBuffer, GLbitfield flags);
void glNamedBufferStorageExternalEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, GLeglClientBufferEXT clientBuffer, GLbitfield flags);
typedef void* GLeglClientBufferEXT;
#define GL_FOG_COORDINATE_SOURCE_EXT 0x8450
#define GL_FOG_COORDINATE_EXT 0x8451
#define GL_FRAGMENT_DEPTH_EXT 0x8452
#define GL_CURRENT_FOG_COORDINATE_EXT 0x8453
#define GL_FOG_COORDINATE_ARRAY_TYPE_EXT 0x8454
#define GL_FOG_COORDINATE_ARRAY_STRIDE_EXT 0x8455
#define GL_FOG_COORDINATE_ARRAY_POINTER_EXT 0x8456
#define GL_FOG_COORDINATE_ARRAY_EXT 0x8457
void glFogCoordfEXT (GLfloat coord);
void glFogCoordfvEXT (const GLfloat *coord);
void glFogCoorddEXT (GLdouble coord);
void glFogCoorddvEXT (const GLdouble *coord);
void glFogCoordPointerEXT (GLenum type, GLsizei stride, const void *pointer);
#define GL_FRAGMENT_LIGHTING_EXT 0x8400
%feature("sufix", "_CONSTANT4321end");
#define GL_FRAGMENT_COLOR_MATERIAL_EXT 0x8401
%feature("sufix", "4321end");
#define GL_FRAGMENT_COLOR_MATERIAL_FACE_EXT 0x8402
#define GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT 0x8403
#define GL_MAX_FRAGMENT_LIGHTS_EXT 0x8404
#define GL_MAX_ACTIVE_LIGHTS_EXT 0x8405
#define GL_CURRENT_RASTER_NORMAL_EXT 0x8406
#define GL_LIGHT_ENV_MODE_EXT 0x8407
#define GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT 0x8408
#define GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT 0x8409
#define GL_FRAGMENT_LIGHT_MODEL_AMBIENT_EXT 0x840A
#define GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT 0x840B
#define GL_FRAGMENT_LIGHT0_EXT 0x840C
#define GL_FRAGMENT_LIGHT7_EXT 0x8413
void glFragmentColorMaterialEXT (GLenum face, GLenum mode);
void glFragmentLightModelfEXT (GLenum pname, GLfloat param);
void glFragmentLightModelfvEXT (GLenum pname, GLfloat* params);
void glFragmentLightModeliEXT (GLenum pname, GLint param);
void glFragmentLightModelivEXT (GLenum pname, GLint* params);
void glFragmentLightfEXT (GLenum light, GLenum pname, GLfloat param);
void glFragmentLightfvEXT (GLenum light, GLenum pname, GLfloat* params);
void glFragmentLightiEXT (GLenum light, GLenum pname, GLint param);
void glFragmentLightivEXT (GLenum light, GLenum pname, GLint* params);
void glFragmentMaterialfEXT (GLenum face, GLenum pname, const GLfloat param);
void glFragmentMaterialfvEXT (GLenum face, GLenum pname, const GLfloat* params);
void glFragmentMaterialiEXT (GLenum face, GLenum pname, const GLint param);
void glFragmentMaterialivEXT (GLenum face, GLenum pname, const GLint* params);
void glGetFragmentLightfvEXT (GLenum light, GLenum pname, GLfloat* params);
void glGetFragmentLightivEXT (GLenum light, GLenum pname, GLint* params);
void glGetFragmentMaterialfvEXT (GLenum face, GLenum pname, const GLfloat* params);
void glGetFragmentMaterialivEXT (GLenum face, GLenum pname, const GLint* params);
void glLightEnviEXT (GLenum pname, GLint param);
#define GL_DRAW_FRAMEBUFFER_BINDING_EXT 0x8CA6
#define GL_READ_FRAMEBUFFER_EXT 0x8CA8
#define GL_DRAW_FRAMEBUFFER_EXT 0x8CA9
#define GL_READ_FRAMEBUFFER_BINDING_EXT 0x8CAA
void glBlitFramebufferEXT (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
#define GL_RENDERBUFFER_SAMPLES_EXT 0x8CAB
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT 0x8D56
#define GL_MAX_SAMPLES_EXT 0x8D57
void glRenderbufferStorageMultisampleEXT (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT 0x8D56
#define GL_MAX_SAMPLES_EXT 0x8D57
#define GL_SCALED_RESOLVE_FASTEST_EXT 0x90BA
#define GL_SCALED_RESOLVE_NICEST_EXT 0x90BB
#define GL_INVALID_FRAMEBUFFER_OPERATION_EXT 0x0506
#define GL_MAX_RENDERBUFFER_SIZE_EXT 0x84E8
#define GL_FRAMEBUFFER_BINDING_EXT 0x8CA6
#define GL_RENDERBUFFER_BINDING_EXT 0x8CA7
#define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT 0x8CD0
#define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT 0x8CD1
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT 0x8CD2
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT 0x8CD3
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT 0x8CD4
#define GL_FRAMEBUFFER_COMPLETE_EXT 0x8CD5
#define GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT 0x8CD6
#define GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT 0x8CD7
#define GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT 0x8CD9
#define GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT 0x8CDA
#define GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT 0x8CDB
#define GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT 0x8CDC
#define GL_FRAMEBUFFER_UNSUPPORTED_EXT 0x8CDD
#define GL_MAX_COLOR_ATTACHMENTS_EXT 0x8CDF
#define GL_COLOR_ATTACHMENT0_EXT 0x8CE0
#define GL_COLOR_ATTACHMENT1_EXT 0x8CE1
#define GL_COLOR_ATTACHMENT2_EXT 0x8CE2
#define GL_COLOR_ATTACHMENT3_EXT 0x8CE3
#define GL_COLOR_ATTACHMENT4_EXT 0x8CE4
#define GL_COLOR_ATTACHMENT5_EXT 0x8CE5
#define GL_COLOR_ATTACHMENT6_EXT 0x8CE6
#define GL_COLOR_ATTACHMENT7_EXT 0x8CE7
#define GL_COLOR_ATTACHMENT8_EXT 0x8CE8
#define GL_COLOR_ATTACHMENT9_EXT 0x8CE9
#define GL_COLOR_ATTACHMENT10_EXT 0x8CEA
#define GL_COLOR_ATTACHMENT11_EXT 0x8CEB
#define GL_COLOR_ATTACHMENT12_EXT 0x8CEC
#define GL_COLOR_ATTACHMENT13_EXT 0x8CED
#define GL_COLOR_ATTACHMENT14_EXT 0x8CEE
#define GL_COLOR_ATTACHMENT15_EXT 0x8CEF
#define GL_DEPTH_ATTACHMENT_EXT 0x8D00
#define GL_STENCIL_ATTACHMENT_EXT 0x8D20
#define GL_FRAMEBUFFER_EXT 0x8D40
#define GL_RENDERBUFFER_EXT 0x8D41
#define GL_RENDERBUFFER_WIDTH_EXT 0x8D42
#define GL_RENDERBUFFER_HEIGHT_EXT 0x8D43
#define GL_RENDERBUFFER_INTERNAL_FORMAT_EXT 0x8D44
#define GL_STENCIL_INDEX1_EXT 0x8D46
#define GL_STENCIL_INDEX4_EXT 0x8D47
#define GL_STENCIL_INDEX8_EXT 0x8D48
#define GL_STENCIL_INDEX16_EXT 0x8D49
#define GL_RENDERBUFFER_RED_SIZE_EXT 0x8D50
#define GL_RENDERBUFFER_GREEN_SIZE_EXT 0x8D51
#define GL_RENDERBUFFER_BLUE_SIZE_EXT 0x8D52
#define GL_RENDERBUFFER_ALPHA_SIZE_EXT 0x8D53
#define GL_RENDERBUFFER_DEPTH_SIZE_EXT 0x8D54
#define GL_RENDERBUFFER_STENCIL_SIZE_EXT 0x8D55
void glBindFramebufferEXT (GLenum target, GLuint framebuffer);
void glBindRenderbufferEXT (GLenum target, GLuint renderbuffer);
GLenum glCheckFramebufferStatusEXT (GLenum target);
void glDeleteFramebuffersEXT (GLsizei n, const GLuint* framebuffers);
void glDeleteRenderbuffersEXT (GLsizei n, const GLuint* renderbuffers);
void glFramebufferRenderbufferEXT (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glFramebufferTexture1DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture2DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture3DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glGenFramebuffersEXT (GLsizei n, GLuint* framebuffers);
void glGenRenderbuffersEXT (GLsizei n, GLuint* renderbuffers);
void glGenerateMipmapEXT (GLenum target);
void glGetFramebufferAttachmentParameterivEXT (GLenum target, GLenum attachment, GLenum pname, GLint* params);
void glGetRenderbufferParameterivEXT (GLenum target, GLenum pname, GLint* params);
GLboolean glIsFramebufferEXT (GLuint framebuffer);
GLboolean glIsRenderbufferEXT (GLuint renderbuffer);
void glRenderbufferStorageEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
#define GL_FRAMEBUFFER_SRGB_EXT 0x8DB9
#define GL_FRAMEBUFFER_SRGB_CAPABLE_EXT 0x8DBA
#define GL_GEOMETRY_SHADER_BIT_EXT 0x00000004
#define GL_LINES_ADJACENCY_EXT 0xA
#define GL_LINE_STRIP_ADJACENCY_EXT 0xB
#define GL_TRIANGLES_ADJACENCY_EXT 0xC
#define GL_TRIANGLE_STRIP_ADJACENCY_EXT 0xD
#define GL_LAYER_PROVOKING_VERTEX_EXT 0x825E
#define GL_UNDEFINED_VERTEX_EXT 0x8260
#define GL_GEOMETRY_SHADER_INVOCATIONS_EXT 0x887F
#define GL_GEOMETRY_LINKED_VERTICES_OUT_EXT 0x8916
#define GL_GEOMETRY_LINKED_INPUT_TYPE_EXT 0x8917
#define GL_GEOMETRY_LINKED_OUTPUT_TYPE_EXT 0x8918
#define GL_MAX_GEOMETRY_UNIFORM_BLOCKS_EXT 0x8A2C
#define GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_EXT 0x8A32
#define GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT 0x8C29
#define GL_PRIMITIVES_GENERATED_EXT 0x8C87
#define GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT 0x8DA7
#define GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT 0x8DA8
#define GL_GEOMETRY_SHADER_EXT 0x8DD9
#define GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT 0x8DDF
#define GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT 0x8DE0
#define GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT 0x8DE1
#define GL_FIRST_VERTEX_CONVENTION_EXT 0x8E4D
#define GL_LAST_VERTEX_CONVENTION_EXT 0x8E4E
#define GL_MAX_GEOMETRY_SHADER_INVOCATIONS_EXT 0x8E5A
#define GL_MAX_GEOMETRY_IMAGE_UNIFORMS_EXT 0x90CD
#define GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_EXT 0x90D7
#define GL_MAX_GEOMETRY_INPUT_COMPONENTS_EXT 0x9123
#define GL_MAX_GEOMETRY_OUTPUT_COMPONENTS_EXT 0x9124
#define GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_EXT 0x92CF
#define GL_MAX_GEOMETRY_ATOMIC_COUNTERS_EXT 0x92D5
#define GL_REFERENCED_BY_GEOMETRY_SHADER_EXT 0x9309
#define GL_FRAMEBUFFER_DEFAULT_LAYERS_EXT 0x9312
#define GL_MAX_FRAMEBUFFER_LAYERS_EXT 0x9317
#define GL_GEOMETRY_SHADER_BIT_EXT 0x00000004
#define GL_LINES_ADJACENCY_EXT 0xA
#define GL_LINE_STRIP_ADJACENCY_EXT 0xB
#define GL_TRIANGLES_ADJACENCY_EXT 0xC
#define GL_TRIANGLE_STRIP_ADJACENCY_EXT 0xD
#define GL_LAYER_PROVOKING_VERTEX_EXT 0x825E
#define GL_UNDEFINED_VERTEX_EXT 0x8260
#define GL_GEOMETRY_SHADER_INVOCATIONS_EXT 0x887F
#define GL_GEOMETRY_LINKED_VERTICES_OUT_EXT 0x8916
#define GL_GEOMETRY_LINKED_INPUT_TYPE_EXT 0x8917
#define GL_GEOMETRY_LINKED_OUTPUT_TYPE_EXT 0x8918
#define GL_MAX_GEOMETRY_UNIFORM_BLOCKS_EXT 0x8A2C
#define GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_EXT 0x8A32
#define GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT 0x8C29
#define GL_PRIMITIVES_GENERATED_EXT 0x8C87
#define GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT 0x8DA7
#define GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT 0x8DA8
#define GL_GEOMETRY_SHADER_EXT 0x8DD9
#define GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT 0x8DDF
#define GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT 0x8DE0
#define GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT 0x8DE1
#define GL_FIRST_VERTEX_CONVENTION_EXT 0x8E4D
#define GL_LAST_VERTEX_CONVENTION_EXT 0x8E4E
#define GL_MAX_GEOMETRY_SHADER_INVOCATIONS_EXT 0x8E5A
#define GL_MAX_GEOMETRY_IMAGE_UNIFORMS_EXT 0x90CD
#define GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_EXT 0x90D7
#define GL_MAX_GEOMETRY_INPUT_COMPONENTS_EXT 0x9123
#define GL_MAX_GEOMETRY_OUTPUT_COMPONENTS_EXT 0x9124
#define GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_EXT 0x92CF
#define GL_MAX_GEOMETRY_ATOMIC_COUNTERS_EXT 0x92D5
#define GL_REFERENCED_BY_GEOMETRY_SHADER_EXT 0x9309
#define GL_FRAMEBUFFER_DEFAULT_LAYERS_EXT 0x9312
#define GL_MAX_FRAMEBUFFER_LAYERS_EXT 0x9317
#define GL_GEOMETRY_SHADER_EXT 0x8DD9
#define GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT 0x8DDD
#define GL_MAX_VERTEX_VARYING_COMPONENTS_EXT 0x8DDE
#define GL_MAX_VARYING_COMPONENTS_EXT 0x8B4B
#define GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT 0x8DDF
#define GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT 0x8DE0
#define GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT 0x8DE1
#define GL_GEOMETRY_VERTICES_OUT_EXT 0x8DDA
#define GL_GEOMETRY_INPUT_TYPE_EXT 0x8DDB
#define GL_GEOMETRY_OUTPUT_TYPE_EXT 0x8DDC
#define GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT 0x8C29
#define GL_LINES_ADJACENCY_EXT 0xA
#define GL_LINE_STRIP_ADJACENCY_EXT 0xB
#define GL_TRIANGLES_ADJACENCY_EXT 0xC
#define GL_TRIANGLE_STRIP_ADJACENCY_EXT 0xD
#define GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT 0x8DA7
#define GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT 0x8DA8
#define GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT 0x8DA9
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT 0x8CD4
#define GL_PROGRAM_POINT_SIZE_EXT 0x8642
void glProgramParameteriEXT (GLuint program, GLenum pname, GLint value);
void glFramebufferTextureEXT (GLenum target, GLenum attachment, GLuint texture, GLint level);
void glFramebufferTextureFaceEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);
void glProgramEnvParameters4fvEXT (GLenum target, GLuint index, GLsizei count, const GLfloat* params);
void glProgramLocalParameters4fvEXT (GLenum target, GLuint index, GLsizei count, const GLfloat* params);
#define GL_SAMPLER_1D_ARRAY_EXT 0x8DC0
#define GL_SAMPLER_2D_ARRAY_EXT 0x8DC1
#define GL_SAMPLER_BUFFER_EXT 0x8DC2
#define GL_SAMPLER_1D_ARRAY_SHADOW_EXT 0x8DC3
#define GL_SAMPLER_2D_ARRAY_SHADOW_EXT 0x8DC4
#define GL_SAMPLER_CUBE_SHADOW_EXT 0x8DC5
#define GL_UNSIGNED_INT_VEC2_EXT 0x8DC6
#define GL_UNSIGNED_INT_VEC3_EXT 0x8DC7
#define GL_UNSIGNED_INT_VEC4_EXT 0x8DC8
#define GL_INT_SAMPLER_1D_EXT 0x8DC9
#define GL_INT_SAMPLER_2D_EXT 0x8DCA
#define GL_INT_SAMPLER_3D_EXT 0x8DCB
#define GL_INT_SAMPLER_CUBE_EXT 0x8DCC
#define GL_INT_SAMPLER_2D_RECT_EXT 0x8DCD
#define GL_INT_SAMPLER_1D_ARRAY_EXT 0x8DCE
#define GL_INT_SAMPLER_2D_ARRAY_EXT 0x8DCF
#define GL_INT_SAMPLER_BUFFER_EXT 0x8DD0
#define GL_UNSIGNED_INT_SAMPLER_1D_EXT 0x8DD1
#define GL_UNSIGNED_INT_SAMPLER_2D_EXT 0x8DD2
#define GL_UNSIGNED_INT_SAMPLER_3D_EXT 0x8DD3
#define GL_UNSIGNED_INT_SAMPLER_CUBE_EXT 0x8DD4
#define GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT 0x8DD5
#define GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT 0x8DD6
#define GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT 0x8DD7
#define GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT 0x8DD8
#define GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT 0x88FD
void glGetUniformuivEXT (GLuint program, GLint location, GLuint *params);
void glBindFragDataLocationEXT (GLuint program, GLuint color, const GLchar *name);
GLint glGetFragDataLocationEXT (GLuint program, const GLchar *name);
void glUniform1uiEXT (GLint location, GLuint v0);
void glUniform2uiEXT (GLint location, GLuint v0, GLuint v1);
void glUniform3uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2);
void glUniform4uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glUniform1uivEXT (GLint location, GLsizei count, const GLuint *value);
void glUniform2uivEXT (GLint location, GLsizei count, const GLuint *value);
void glUniform3uivEXT (GLint location, GLsizei count, const GLuint *value);
void glUniform4uivEXT (GLint location, GLsizei count, const GLuint *value);
void glVertexAttribI1iEXT (GLuint index, GLint x);
void glVertexAttribI2iEXT (GLuint index, GLint x, GLint y);
void glVertexAttribI3iEXT (GLuint index, GLint x, GLint y, GLint z);
void glVertexAttribI4iEXT (GLuint index, GLint x, GLint y, GLint z, GLint w);
void glVertexAttribI1uiEXT (GLuint index, GLuint x);
void glVertexAttribI2uiEXT (GLuint index, GLuint x, GLuint y);
void glVertexAttribI3uiEXT (GLuint index, GLuint x, GLuint y, GLuint z);
void glVertexAttribI4uiEXT (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glVertexAttribI1ivEXT (GLuint index, const GLint *v);
void glVertexAttribI2ivEXT (GLuint index, const GLint *v);
void glVertexAttribI3ivEXT (GLuint index, const GLint *v);
void glVertexAttribI4ivEXT (GLuint index, const GLint *v);
void glVertexAttribI1uivEXT (GLuint index, const GLuint *v);
void glVertexAttribI2uivEXT (GLuint index, const GLuint *v);
void glVertexAttribI3uivEXT (GLuint index, const GLuint *v);
void glVertexAttribI4uivEXT (GLuint index, const GLuint *v);
void glVertexAttribI4bvEXT (GLuint index, const GLbyte *v);
void glVertexAttribI4svEXT (GLuint index, const GLshort *v);
void glVertexAttribI4ubvEXT (GLuint index, const GLubyte *v);
void glVertexAttribI4usvEXT (GLuint index, const GLushort *v);
void glVertexAttribIPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, const void *pointer);
void glGetVertexAttribIivEXT (GLuint index, GLenum pname, GLint *params);
void glGetVertexAttribIuivEXT (GLuint index, GLenum pname, GLuint *params);
%feature("sufix", "_CONSTANT4321end");
#define GL_HISTOGRAM_EXT 0x8024
%feature("sufix", "4321end");
#define GL_PROXY_HISTOGRAM_EXT 0x8025
#define GL_HISTOGRAM_WIDTH_EXT 0x8026
#define GL_HISTOGRAM_FORMAT_EXT 0x8027
#define GL_HISTOGRAM_RED_SIZE_EXT 0x8028
#define GL_HISTOGRAM_GREEN_SIZE_EXT 0x8029
#define GL_HISTOGRAM_BLUE_SIZE_EXT 0x802A
#define GL_HISTOGRAM_ALPHA_SIZE_EXT 0x802B
#define GL_HISTOGRAM_LUMINANCE_SIZE_EXT 0x802C
#define GL_HISTOGRAM_SINK_EXT 0x802D
%feature("sufix", "_CONSTANT4321end");
#define GL_MINMAX_EXT 0x802E
%feature("sufix", "4321end");
#define GL_MINMAX_FORMAT_EXT 0x802F
#define GL_MINMAX_SINK_EXT 0x8030
void glGetHistogramEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void glGetHistogramParameterfvEXT (GLenum target, GLenum pname, GLfloat* params);
void glGetHistogramParameterivEXT (GLenum target, GLenum pname, GLint* params);
void glGetMinmaxEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void glGetMinmaxParameterfvEXT (GLenum target, GLenum pname, GLfloat* params);
void glGetMinmaxParameterivEXT (GLenum target, GLenum pname, GLint* params);
void glHistogramEXT (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void glMinmaxEXT (GLenum target, GLenum internalformat, GLboolean sink);
void glResetHistogramEXT (GLenum target);
void glResetMinmaxEXT (GLenum target);
void glIndexFuncEXT (GLenum func, GLfloat ref);
void glIndexMaterialEXT (GLenum face, GLenum mode);
#define GL_VERTEX_ATTRIB_ARRAY_DIVISOR_EXT 0x88FE
void glVertexAttribDivisorEXT (GLuint index, GLuint divisor);
#define GL_FRAGMENT_MATERIAL_EXT 0x8349
#define GL_FRAGMENT_NORMAL_EXT 0x834A
#define GL_FRAGMENT_COLOR_EXT 0x834C
#define GL_ATTENUATION_EXT 0x834D
#define GL_SHADOW_ATTENUATION_EXT 0x834E
#define GL_TEXTURE_APPLICATION_MODE_EXT 0x834F
%feature("sufix", "_CONSTANT4321end");
#define GL_TEXTURE_LIGHT_EXT 0x8350
%feature("sufix", "4321end");
#define GL_TEXTURE_MATERIAL_FACE_EXT 0x8351
#define GL_TEXTURE_MATERIAL_PARAMETER_EXT 0x8352
void glApplyTextureEXT (GLenum mode);
void glTextureLightEXT (GLenum pname);
void glTextureMaterialEXT (GLenum face, GLenum mode);
#define GL_MAP_READ_BIT_EXT 0x0001
#define GL_MAP_WRITE_BIT_EXT 0x0002
#define GL_MAP_INVALIDATE_RANGE_BIT_EXT 0x0004
#define GL_MAP_INVALIDATE_BUFFER_BIT_EXT 0x0008
#define GL_MAP_FLUSH_EXPLICIT_BIT_EXT 0x0010
#define GL_MAP_UNSYNCHRONIZED_BIT_EXT 0x0020
void glFlushMappedBufferRangeEXT (GLenum target, GLintptr offset, GLsizeiptr length);
void * glMapBufferRangeEXT (GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access);
#define GL_UUID_SIZE_EXT 16
#define GL_TEXTURE_TILING_EXT 0x9580
#define GL_DEDICATED_MEMORY_OBJECT_EXT 0x9581
#define GL_NUM_TILING_TYPES_EXT 0x9582
#define GL_TILING_TYPES_EXT 0x9583
#define GL_OPTIMAL_TILING_EXT 0x9584
#define GL_LINEAR_TILING_EXT 0x9585
#define GL_NUM_DEVICE_UUIDS_EXT 0x9596
#define GL_DEVICE_UUID_EXT 0x9597
#define GL_DRIVER_UUID_EXT 0x9598
#define GL_PROTECTED_MEMORY_OBJECT_EXT 0x959B
void glBufferStorageMemEXT (GLenum target, GLsizeiptr size, GLuint memory, GLuint64 offset);
void glCreateMemoryObjectsEXT (GLsizei n, GLuint* memoryObjects);
void glDeleteMemoryObjectsEXT (GLsizei n, const GLuint* memoryObjects);
void glGetMemoryObjectParameterivEXT (GLuint memoryObject, GLenum pname, GLint* params);
void glGetUnsignedBytei_vEXT (GLenum target, GLuint index, GLubyte* data);
void glGetUnsignedBytevEXT (GLenum pname, GLubyte* data);
GLboolean glIsMemoryObjectEXT (GLuint memoryObject);
void glMemoryObjectParameterivEXT (GLuint memoryObject, GLenum pname, const GLint* params);
void glNamedBufferStorageMemEXT (GLuint buffer, GLsizeiptr size, GLuint memory, GLuint64 offset);
void glTexStorageMem1DEXT (GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLuint memory, GLuint64 offset);
void glTexStorageMem2DEXT (GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLuint memory, GLuint64 offset);
void glTexStorageMem2DMultisampleEXT (GLenum target, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset);
void glTexStorageMem3DEXT (GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLuint memory, GLuint64 offset);
void glTexStorageMem3DMultisampleEXT (GLenum target, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset);
void glTextureStorageMem1DEXT (GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLuint memory, GLuint64 offset);
void glTextureStorageMem2DEXT (GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLuint memory, GLuint64 offset);
void glTextureStorageMem2DMultisampleEXT (GLuint texture, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset);
void glTextureStorageMem3DEXT (GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLuint memory, GLuint64 offset);
void glTextureStorageMem3DMultisampleEXT (GLuint texture, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset);
#define GL_HANDLE_TYPE_OPAQUE_FD_EXT 0x9586
void glImportMemoryFdEXT (GLuint memory, GLuint64 size, GLenum handleType, GLint fd);
#define GL_LUID_SIZE_EXT 8
#define GL_HANDLE_TYPE_OPAQUE_WIN32_EXT 0x9587
#define GL_HANDLE_TYPE_OPAQUE_WIN32_KMT_EXT 0x9588
#define GL_HANDLE_TYPE_D3D12_TILEPOOL_EXT 0x9589
#define GL_HANDLE_TYPE_D3D12_RESOURCE_EXT 0x958A
#define GL_HANDLE_TYPE_D3D11_IMAGE_EXT 0x958B
#define GL_HANDLE_TYPE_D3D11_IMAGE_KMT_EXT 0x958C
#define GL_HANDLE_TYPE_D3D12_FENCE_EXT 0x9594
#define GL_D3D12_FENCE_VALUE_EXT 0x9595
#define GL_DEVICE_LUID_EXT 0x9599
#define GL_DEVICE_NODE_MASK_EXT 0x959A
void glImportMemoryWin32HandleEXT (GLuint memory, GLuint64 size, GLenum handleType, void *handle);
void glImportMemoryWin32NameEXT (GLuint memory, GLuint64 size, GLenum handleType, const void *name);
void glMultiDrawArraysEXT (GLenum mode, const GLint* first, const GLsizei *count, GLsizei primcount);
void glMultiDrawElementsEXT (GLenum mode, GLsizei* count, GLenum type, const void *const *indices, GLsizei primcount);
void glMultiDrawArraysIndirectEXT (GLenum mode, const void *indirect, GLsizei drawcount, GLsizei stride);
void glMultiDrawElementsIndirectEXT (GLenum mode, GLenum type, const void *indirect, GLsizei drawcount, GLsizei stride);
#define GL_MULTISAMPLE_EXT 0x809D
#define GL_SAMPLE_ALPHA_TO_MASK_EXT 0x809E
#define GL_SAMPLE_ALPHA_TO_ONE_EXT 0x809F
%feature("sufix", "_CONSTANT4321end");
#define GL_SAMPLE_MASK_EXT 0x80A0
%feature("sufix", "4321end");
#define GL_1PASS_EXT 0x80A1
#define GL_2PASS_0_EXT 0x80A2
#define GL_2PASS_1_EXT 0x80A3
#define GL_4PASS_0_EXT 0x80A4
#define GL_4PASS_1_EXT 0x80A5
#define GL_4PASS_2_EXT 0x80A6
#define GL_4PASS_3_EXT 0x80A7
#define GL_SAMPLE_BUFFERS_EXT 0x80A8
#define GL_SAMPLES_EXT 0x80A9
#define GL_SAMPLE_MASK_VALUE_EXT 0x80AA
#define GL_SAMPLE_MASK_INVERT_EXT 0x80AB
%feature("sufix", "_CONSTANT4321end");
#define GL_SAMPLE_PATTERN_EXT 0x80AC
%feature("sufix", "4321end");
#define GL_MULTISAMPLE_BIT_EXT 0x20000000
void glSampleMaskEXT (GLclampf value, GLboolean invert);
void glSamplePatternEXT (GLenum pattern);
#define GL_MULTISAMPLE_EXT 0x809D
#define GL_SAMPLE_ALPHA_TO_ONE_EXT 0x809F
#define GL_RENDERBUFFER_SAMPLES_EXT 0x8CAB
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT 0x8D56
#define GL_MAX_SAMPLES_EXT 0x8D57
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT 0x8D6C
void glFramebufferTexture2DMultisampleEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLsizei samples);
#define GL_DRAW_BUFFER_EXT 0x0C01
#define GL_READ_BUFFER_EXT 0x0C02
#define GL_COLOR_ATTACHMENT_EXT 0x90F0
#define GL_MULTIVIEW_EXT 0x90F1
#define GL_MAX_MULTIVIEW_BUFFERS_EXT 0x90F2
void glDrawBuffersIndexedEXT (GLint n, const GLenum* location, const GLint *indices);
void glGetIntegeri_vEXT (GLenum target, GLuint index, GLint* data);
void glReadBufferIndexedEXT (GLenum src, GLint index);
#define GL_CURRENT_QUERY_EXT 0x8865
#define GL_QUERY_RESULT_EXT 0x8866
#define GL_QUERY_RESULT_AVAILABLE_EXT 0x8867
#define GL_ANY_SAMPLES_PASSED_EXT 0x8C2F
#define GL_ANY_SAMPLES_PASSED_CONSERVATIVE_EXT 0x8D6A
#define GL_DEPTH_STENCIL_EXT 0x84F9
#define GL_UNSIGNED_INT_24_8_EXT 0x84FA
#define GL_DEPTH24_STENCIL8_EXT 0x88F0
#define GL_TEXTURE_STENCIL_SIZE_EXT 0x88F1
#define GL_R11F_G11F_B10F_EXT 0x8C3A
#define GL_UNSIGNED_INT_10F_11F_11F_REV_EXT 0x8C3B
#define GL_RGBA_SIGNED_COMPONENTS_EXT 0x8C3C
#define GL_UNSIGNED_BYTE_3_3_2_EXT 0x8032
#define GL_UNSIGNED_SHORT_4_4_4_4_EXT 0x8033
#define GL_UNSIGNED_SHORT_5_5_5_1_EXT 0x8034
#define GL_UNSIGNED_INT_8_8_8_8_EXT 0x8035
#define GL_UNSIGNED_INT_10_10_10_2_EXT 0x8036
#define GL_TEXTURE_1D 0x0DE0
#define GL_TEXTURE_2D 0x0DE1
#define GL_PROXY_TEXTURE_1D 0x8063
#define GL_PROXY_TEXTURE_2D 0x8064
#define GL_COLOR_TABLE_FORMAT_EXT 0x80D8
#define GL_COLOR_TABLE_WIDTH_EXT 0x80D9
#define GL_COLOR_TABLE_RED_SIZE_EXT 0x80DA
#define GL_COLOR_TABLE_GREEN_SIZE_EXT 0x80DB
#define GL_COLOR_TABLE_BLUE_SIZE_EXT 0x80DC
#define GL_COLOR_TABLE_ALPHA_SIZE_EXT 0x80DD
#define GL_COLOR_TABLE_LUMINANCE_SIZE_EXT 0x80DE
#define GL_COLOR_TABLE_INTENSITY_SIZE_EXT 0x80DF
#define GL_COLOR_INDEX1_EXT 0x80E2
#define GL_COLOR_INDEX2_EXT 0x80E3
#define GL_COLOR_INDEX4_EXT 0x80E4
#define GL_COLOR_INDEX8_EXT 0x80E5
#define GL_COLOR_INDEX12_EXT 0x80E6
#define GL_COLOR_INDEX16_EXT 0x80E7
#define GL_TEXTURE_INDEX_SIZE_EXT 0x80ED
#define GL_TEXTURE_CUBE_MAP_ARB 0x8513
#define GL_PROXY_TEXTURE_CUBE_MAP_ARB 0x851B
void glColorTableEXT (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const void *data);
void glGetColorTableEXT (GLenum target, GLenum format, GLenum type, void *data);
void glGetColorTableParameterfvEXT (GLenum target, GLenum pname, GLfloat* params);
void glGetColorTableParameterivEXT (GLenum target, GLenum pname, GLint* params);
#define GL_PIXEL_PACK_BUFFER_EXT 0x88EB
#define GL_PIXEL_UNPACK_BUFFER_EXT 0x88EC
#define GL_PIXEL_PACK_BUFFER_BINDING_EXT 0x88ED
#define GL_PIXEL_UNPACK_BUFFER_BINDING_EXT 0x88EF
#define GL_PIXEL_TRANSFORM_2D_EXT 0x8330
#define GL_PIXEL_MAG_FILTER_EXT 0x8331
#define GL_PIXEL_MIN_FILTER_EXT 0x8332
#define GL_PIXEL_CUBIC_WEIGHT_EXT 0x8333
#define GL_CUBIC_EXT 0x8334
#define GL_AVERAGE_EXT 0x8335
#define GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT 0x8336
#define GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT 0x8337
#define GL_PIXEL_TRANSFORM_2D_MATRIX_EXT 0x8338
void glGetPixelTransformParameterfvEXT (GLenum target, GLenum pname, const GLfloat* params);
void glGetPixelTransformParameterivEXT (GLenum target, GLenum pname, const GLint* params);
void glPixelTransformParameterfEXT (GLenum target, GLenum pname, const GLfloat param);
void glPixelTransformParameterfvEXT (GLenum target, GLenum pname, const GLfloat* params);
void glPixelTransformParameteriEXT (GLenum target, GLenum pname, const GLint param);
void glPixelTransformParameterivEXT (GLenum target, GLenum pname, const GLint* params);
#define GL_POINT_SIZE_MIN_EXT 0x8126
#define GL_POINT_SIZE_MAX_EXT 0x8127
#define GL_POINT_FADE_THRESHOLD_SIZE_EXT 0x8128
#define GL_DISTANCE_ATTENUATION_EXT 0x8129
void glPointParameterfEXT (GLenum pname, GLfloat param);
void glPointParameterfvEXT (GLenum pname, const GLfloat* params);
%feature("sufix", "_CONSTANT4321end");
#define GL_POLYGON_OFFSET_EXT 0x8037
%feature("sufix", "4321end");
#define GL_POLYGON_OFFSET_FACTOR_EXT 0x8038
#define GL_POLYGON_OFFSET_BIAS_EXT 0x8039
void glPolygonOffsetEXT (GLfloat factor, GLfloat bias);
%feature("sufix", "_CONSTANT4321end");
#define GL_POLYGON_OFFSET_CLAMP_EXT 0x8E1B
%feature("sufix", "4321end");
void glPolygonOffsetClampEXT (GLfloat factor, GLfloat units, GLfloat clamp);
#define GL_CONTEXT_FLAG_PROTECTED_CONTENT_BIT_EXT 0x00000010
#define GL_TEXTURE_PROTECTED_EXT 0x8BFA
#define GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT 0x8E4C
#define GL_FIRST_VERTEX_CONVENTION_EXT 0x8E4D
#define GL_LAST_VERTEX_CONVENTION_EXT 0x8E4E
%feature("sufix", "_CONSTANT4321end");
#define GL_PROVOKING_VERTEX_EXT 0x8E4F
%feature("sufix", "4321end");
void glProvokingVertexEXT (GLenum mode);
#define GL_COMPRESSED_SRGB_PVRTC_2BPPV1_EXT 0x8A54
#define GL_COMPRESSED_SRGB_PVRTC_4BPPV1_EXT 0x8A55
#define GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV1_EXT 0x8A56
#define GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV1_EXT 0x8A57
#define GL_COLOR_SAMPLES_NV 0x8E20
#define GL_RASTER_MULTISAMPLE_EXT 0x9327
#define GL_MAX_RASTER_SAMPLES_EXT 0x9329
#define GL_RASTER_FIXED_SAMPLE_LOCATIONS_EXT 0x932A
#define GL_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT 0x932B
#define GL_EFFECTIVE_RASTER_SAMPLES_EXT 0x932C
#define GL_DEPTH_SAMPLES_NV 0x932D
#define GL_STENCIL_SAMPLES_NV 0x932E
#define GL_MIXED_DEPTH_SAMPLES_SUPPORTED_NV 0x932F
#define GL_MIXED_STENCIL_SAMPLES_SUPPORTED_NV 0x9330
%feature("sufix", "_CONSTANT4321end");
#define GL_COVERAGE_MODULATION_TABLE_NV 0x9331
#define GL_COVERAGE_MODULATION_NV 0x9332
%feature("sufix", "4321end");
#define GL_COVERAGE_MODULATION_TABLE_SIZE_NV 0x9333
void glCoverageModulationNV (GLenum components);
void glCoverageModulationTableNV (GLsizei n, const GLfloat* v);
void glGetCoverageModulationTableNV (GLsizei bufsize, GLfloat* v);
void glRasterSamplesEXT (GLuint samples, GLboolean fixedsamplelocations);
#define GL_BGRA_EXT 0x80E1
#define GL_UNSIGNED_SHORT_4_4_4_4_REV_EXT 0x8365
#define GL_UNSIGNED_SHORT_1_5_5_5_REV_EXT 0x8366
#define GL_BYTE 0x1400
#define GL_SHORT 0x1402
#define GL_R8_SNORM 0x8F94
#define GL_RG8_SNORM 0x8F95
#define GL_RGBA8_SNORM 0x8F97
#define GL_R16_SNORM_EXT 0x8F98
#define GL_RG16_SNORM_EXT 0x8F99
#define GL_RGBA16_SNORM_EXT 0x8F9B
#define GL_RESCALE_NORMAL_EXT 0x803A
#define GL_LOSE_CONTEXT_ON_RESET_EXT 0x8252
#define GL_GUILTY_CONTEXT_RESET_EXT 0x8253
#define GL_INNOCENT_CONTEXT_RESET_EXT 0x8254
#define GL_UNKNOWN_CONTEXT_RESET_EXT 0x8255
#define GL_RESET_NOTIFICATION_STRATEGY_EXT 0x8256
#define GL_NO_RESET_NOTIFICATION_EXT 0x8261
#define GL_CONTEXT_ROBUST_ACCESS_EXT 0x90F3
void glGetnUniformfvEXT (GLuint program, GLint location, GLsizei bufSize, GLfloat* params);
void glGetnUniformivEXT (GLuint program, GLint location, GLsizei bufSize, GLint* params);
void glReadnPixelsEXT (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void *data);
void glBeginSceneEXT (void);
void glEndSceneEXT (void);
#define GL_COLOR_SUM_EXT 0x8458
#define GL_CURRENT_SECONDARY_COLOR_EXT 0x8459
#define GL_SECONDARY_COLOR_ARRAY_SIZE_EXT 0x845A
#define GL_SECONDARY_COLOR_ARRAY_TYPE_EXT 0x845B
#define GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT 0x845C
#define GL_SECONDARY_COLOR_ARRAY_POINTER_EXT 0x845D
#define GL_SECONDARY_COLOR_ARRAY_EXT 0x845E
void glSecondaryColor3bEXT (GLbyte red, GLbyte green, GLbyte blue);
void glSecondaryColor3bvEXT (const GLbyte *v);
void glSecondaryColor3dEXT (GLdouble red, GLdouble green, GLdouble blue);
void glSecondaryColor3dvEXT (const GLdouble *v);
void glSecondaryColor3fEXT (GLfloat red, GLfloat green, GLfloat blue);
void glSecondaryColor3fvEXT (const GLfloat *v);
void glSecondaryColor3iEXT (GLint red, GLint green, GLint blue);
void glSecondaryColor3ivEXT (const GLint *v);
void glSecondaryColor3sEXT (GLshort red, GLshort green, GLshort blue);
void glSecondaryColor3svEXT (const GLshort *v);
void glSecondaryColor3ubEXT (GLubyte red, GLubyte green, GLubyte blue);
void glSecondaryColor3ubvEXT (const GLubyte *v);
void glSecondaryColor3uiEXT (GLuint red, GLuint green, GLuint blue);
void glSecondaryColor3uivEXT (const GLuint *v);
void glSecondaryColor3usEXT (GLushort red, GLushort green, GLushort blue);
void glSecondaryColor3usvEXT (const GLushort *v);
void glSecondaryColorPointerEXT (GLint size, GLenum type, GLsizei stride, const void *pointer);
#define GL_LAYOUT_GENERAL_EXT 0x958D
#define GL_LAYOUT_COLOR_ATTACHMENT_EXT 0x958E
#define GL_LAYOUT_DEPTH_STENCIL_ATTACHMENT_EXT 0x958F
#define GL_LAYOUT_DEPTH_STENCIL_READ_ONLY_EXT 0x9590
#define GL_LAYOUT_SHADER_READ_ONLY_EXT 0x9591
#define GL_LAYOUT_TRANSFER_SRC_EXT 0x9592
#define GL_LAYOUT_TRANSFER_DST_EXT 0x9593
#define GL_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_EXT 0x9530
#define GL_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_EXT 0x9531
void glDeleteSemaphoresEXT (GLsizei n, const GLuint* semaphores);
void glGenSemaphoresEXT (GLsizei n, GLuint* semaphores);
void glGetSemaphoreParameterui64vEXT (GLuint semaphore, GLenum pname, GLuint64* params);
GLboolean glIsSemaphoreEXT (GLuint semaphore);
void glSemaphoreParameterui64vEXT (GLuint semaphore, GLenum pname, const GLuint64* params);
void glSignalSemaphoreEXT (GLuint semaphore, GLuint numBufferBarriers, const GLuint* buffers, GLuint numTextureBarriers, const GLuint *textures, const GLenum *dstLayouts);
void glWaitSemaphoreEXT (GLuint semaphore, GLuint numBufferBarriers, const GLuint* buffers, GLuint numTextureBarriers, const GLuint *textures, const GLenum *srcLayouts);
void glImportSemaphoreFdEXT (GLuint semaphore, GLenum handleType, GLint fd);
void glImportSemaphoreWin32HandleEXT (GLuint semaphore, GLenum handleType, void *handle);
void glImportSemaphoreWin32NameEXT (GLuint semaphore, GLenum handleType, const void *name);
%feature("sufix", "_CONSTANT4321end");
#define GL_ACTIVE_PROGRAM_EXT 0x8B8D
%feature("sufix", "4321end");
void glActiveProgramEXT (GLuint program);
GLuint glCreateShaderProgramEXT (GLenum type, const GLchar* string);
void glUseShaderProgramEXT (GLenum type, GLuint program);
#define GL_LIGHT_MODEL_COLOR_CONTROL_EXT 0x81F8
#define GL_SINGLE_COLOR_EXT 0x81F9
#define GL_SEPARATE_SPECULAR_COLOR_EXT 0x81FA
#define GL_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT 0x8A52
void glFramebufferFetchBarrierEXT (void);
#define GL_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT 0x8A52
#define GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT 0x00000001
#define GL_ELEMENT_ARRAY_BARRIER_BIT_EXT 0x00000002
#define GL_UNIFORM_BARRIER_BIT_EXT 0x00000004
#define GL_TEXTURE_FETCH_BARRIER_BIT_EXT 0x00000008
#define GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT 0x00000020
#define GL_COMMAND_BARRIER_BIT_EXT 0x00000040
#define GL_PIXEL_BUFFER_BARRIER_BIT_EXT 0x00000080
#define GL_TEXTURE_UPDATE_BARRIER_BIT_EXT 0x00000100
#define GL_BUFFER_UPDATE_BARRIER_BIT_EXT 0x00000200
#define GL_FRAMEBUFFER_BARRIER_BIT_EXT 0x00000400
#define GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT 0x00000800
#define GL_ATOMIC_COUNTER_BARRIER_BIT_EXT 0x00001000
#define GL_MAX_IMAGE_UNITS_EXT 0x8F38
#define GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT 0x8F39
#define GL_IMAGE_BINDING_NAME_EXT 0x8F3A
#define GL_IMAGE_BINDING_LEVEL_EXT 0x8F3B
#define GL_IMAGE_BINDING_LAYERED_EXT 0x8F3C
#define GL_IMAGE_BINDING_LAYER_EXT 0x8F3D
#define GL_IMAGE_BINDING_ACCESS_EXT 0x8F3E
#define GL_IMAGE_1D_EXT 0x904C
#define GL_IMAGE_2D_EXT 0x904D
#define GL_IMAGE_3D_EXT 0x904E
#define GL_IMAGE_2D_RECT_EXT 0x904F
#define GL_IMAGE_CUBE_EXT 0x9050
#define GL_IMAGE_BUFFER_EXT 0x9051
#define GL_IMAGE_1D_ARRAY_EXT 0x9052
#define GL_IMAGE_2D_ARRAY_EXT 0x9053
#define GL_IMAGE_CUBE_MAP_ARRAY_EXT 0x9054
#define GL_IMAGE_2D_MULTISAMPLE_EXT 0x9055
#define GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT 0x9056
#define GL_INT_IMAGE_1D_EXT 0x9057
#define GL_INT_IMAGE_2D_EXT 0x9058
#define GL_INT_IMAGE_3D_EXT 0x9059
#define GL_INT_IMAGE_2D_RECT_EXT 0x905A
#define GL_INT_IMAGE_CUBE_EXT 0x905B
#define GL_INT_IMAGE_BUFFER_EXT 0x905C
#define GL_INT_IMAGE_1D_ARRAY_EXT 0x905D
#define GL_INT_IMAGE_2D_ARRAY_EXT 0x905E
#define GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT 0x905F
#define GL_INT_IMAGE_2D_MULTISAMPLE_EXT 0x9060
#define GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT 0x9061
#define GL_UNSIGNED_INT_IMAGE_1D_EXT 0x9062
#define GL_UNSIGNED_INT_IMAGE_2D_EXT 0x9063
#define GL_UNSIGNED_INT_IMAGE_3D_EXT 0x9064
#define GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT 0x9065
#define GL_UNSIGNED_INT_IMAGE_CUBE_EXT 0x9066
#define GL_UNSIGNED_INT_IMAGE_BUFFER_EXT 0x9067
#define GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT 0x9068
#define GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT 0x9069
#define GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT 0x906A
#define GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT 0x906B
#define GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT 0x906C
#define GL_MAX_IMAGE_SAMPLES_EXT 0x906D
#define GL_IMAGE_BINDING_FORMAT_EXT 0x906E
#define GL_ALL_BARRIER_BITS_EXT 0xFFFFFFFF
void glBindImageTextureEXT (GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format);
void glMemoryBarrierEXT (GLbitfield barriers);
#define GL_MAX_SHADER_PIXEL_LOCAL_STORAGE_FAST_SIZE_EXT 0x8F63
#define GL_SHADER_PIXEL_LOCAL_STORAGE_EXT 0x8F64
#define GL_MAX_SHADER_PIXEL_LOCAL_STORAGE_SIZE_EXT 0x8F67
#define GL_MAX_SHADER_COMBINED_LOCAL_STORAGE_FAST_SIZE_EXT 0x9650
#define GL_MAX_SHADER_COMBINED_LOCAL_STORAGE_SIZE_EXT 0x9651
#define GL_FRAMEBUFFER_INCOMPLETE_INSUFFICIENT_SHADER_COMBINED_LOCAL_STORAGE_EXT 0x9652
void glClearPixelLocalStorageuiEXT (GLsizei offset, GLsizei n, const GLuint* values);
void glFramebufferPixelLocalStorageSizeEXT (GLuint target, GLsizei size);
GLsizei glGetFramebufferPixelLocalStorageSizeEXT (GLuint target);
#define GL_TEXTURE_COMPARE_MODE_EXT 0x884C
#define GL_TEXTURE_COMPARE_FUNC_EXT 0x884D
#define GL_COMPARE_REF_TO_TEXTURE_EXT 0x884E
#define GL_SAMPLER_2D_SHADOW_EXT 0x8B62
#define GL_SHARED_TEXTURE_PALETTE_EXT 0x81FB
#define GL_TEXTURE_2D 0x0DE1
#define GL_TEXTURE_3D 0x806F
#define GL_TEXTURE_CUBE_MAP 0x8513
#define GL_TEXTURE_2D_ARRAY 0x8C1A
#define GL_TEXTURE_CUBE_MAP_ARRAY_OES 0x9009
#define GL_VIRTUAL_PAGE_SIZE_X_EXT 0x9195
#define GL_VIRTUAL_PAGE_SIZE_Y_EXT 0x9196
#define GL_VIRTUAL_PAGE_SIZE_Z_EXT 0x9197
#define GL_MAX_SPARSE_TEXTURE_SIZE_EXT 0x9198
#define GL_MAX_SPARSE_3D_TEXTURE_SIZE_EXT 0x9199
#define GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_EXT 0x919A
#define GL_TEXTURE_SPARSE_EXT 0x91A6
#define GL_VIRTUAL_PAGE_SIZE_INDEX_EXT 0x91A7
#define GL_NUM_VIRTUAL_PAGE_SIZES_EXT 0x91A8
#define GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_EXT 0x91A9
#define GL_NUM_SPARSE_LEVELS_EXT 0x91AA
void glTexPageCommitmentEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean commit);
void glTexturePageCommitmentEXT (GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean commit);
#define GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT 0x8210
#define GL_SRGB_EXT 0x8C40
#define GL_SRGB_ALPHA_EXT 0x8C42
#define GL_SRGB8_ALPHA8_EXT 0x8C43
#define GL_FRAMEBUFFER_SRGB_EXT 0x8DB9
#define GL_STENCIL_TAG_BITS_EXT 0x88F2
#define GL_STENCIL_CLEAR_TAG_VALUE_EXT 0x88F3
#define GL_STENCIL_TEST_TWO_SIDE_EXT 0x8910
%feature("sufix", "_CONSTANT4321end");
#define GL_ACTIVE_STENCIL_FACE_EXT 0x8911
%feature("sufix", "4321end");
void glActiveStencilFaceEXT (GLenum face);
#define GL_INCR_WRAP_EXT 0x8507
#define GL_DECR_WRAP_EXT 0x8508
void glTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void glTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
#define GL_QUADS_EXT 0x0007
#define GL_TESS_CONTROL_SHADER_BIT_EXT 0x00000008
#define GL_PATCHES_EXT 0xE
#define GL_TESS_EVALUATION_SHADER_BIT_EXT 0x00000010
#define GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED 0x8221
#define GL_MAX_TESS_CONTROL_INPUT_COMPONENTS_EXT 0x886C
#define GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS_EXT 0x886D
#define GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_EXT 0x8E1E
#define GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT 0x8E1F
#define GL_PATCH_VERTICES_EXT 0x8E72
#define GL_TESS_CONTROL_OUTPUT_VERTICES_EXT 0x8E75
#define GL_TESS_GEN_MODE_EXT 0x8E76
#define GL_TESS_GEN_SPACING_EXT 0x8E77
#define GL_TESS_GEN_VERTEX_ORDER_EXT 0x8E78
#define GL_TESS_GEN_POINT_MODE_EXT 0x8E79
#define GL_ISOLINES_EXT 0x8E7A
#define GL_FRACTIONAL_ODD_EXT 0x8E7B
#define GL_FRACTIONAL_EVEN_EXT 0x8E7C
#define GL_MAX_PATCH_VERTICES_EXT 0x8E7D
#define GL_MAX_TESS_GEN_LEVEL_EXT 0x8E7E
#define GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS_EXT 0x8E7F
#define GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT 0x8E80
#define GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_EXT 0x8E81
#define GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_EXT 0x8E82
#define GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS_EXT 0x8E83
#define GL_MAX_TESS_PATCH_COMPONENTS_EXT 0x8E84
#define GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_EXT 0x8E85
#define GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_EXT 0x8E86
#define GL_TESS_EVALUATION_SHADER_EXT 0x8E87
#define GL_TESS_CONTROL_SHADER_EXT 0x8E88
#define GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS_EXT 0x8E89
#define GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS_EXT 0x8E8A
#define GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS_EXT 0x90CB
#define GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS_EXT 0x90CC
#define GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_EXT 0x90D8
#define GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_EXT 0x90D9
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_EXT 0x92CD
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_EXT 0x92CE
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS_EXT 0x92D3
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS_EXT 0x92D4
#define GL_IS_PER_PATCH_EXT 0x92E7
#define GL_REFERENCED_BY_TESS_CONTROL_SHADER_EXT 0x9307
#define GL_REFERENCED_BY_TESS_EVALUATION_SHADER_EXT 0x9308
void glPatchParameteriEXT (GLenum pname, GLint value);
#define GL_QUADS_EXT 0x0007
#define GL_TESS_CONTROL_SHADER_BIT_EXT 0x00000008
#define GL_PATCHES_EXT 0xE
#define GL_TESS_EVALUATION_SHADER_BIT_EXT 0x00000010
#define GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED 0x8221
#define GL_MAX_TESS_CONTROL_INPUT_COMPONENTS_EXT 0x886C
#define GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS_EXT 0x886D
#define GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_EXT 0x8E1E
#define GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT 0x8E1F
#define GL_PATCH_VERTICES_EXT 0x8E72
#define GL_TESS_CONTROL_OUTPUT_VERTICES_EXT 0x8E75
#define GL_TESS_GEN_MODE_EXT 0x8E76
#define GL_TESS_GEN_SPACING_EXT 0x8E77
#define GL_TESS_GEN_VERTEX_ORDER_EXT 0x8E78
#define GL_TESS_GEN_POINT_MODE_EXT 0x8E79
#define GL_ISOLINES_EXT 0x8E7A
#define GL_FRACTIONAL_ODD_EXT 0x8E7B
#define GL_FRACTIONAL_EVEN_EXT 0x8E7C
#define GL_MAX_PATCH_VERTICES_EXT 0x8E7D
#define GL_MAX_TESS_GEN_LEVEL_EXT 0x8E7E
#define GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS_EXT 0x8E7F
#define GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT 0x8E80
#define GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_EXT 0x8E81
#define GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_EXT 0x8E82
#define GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS_EXT 0x8E83
#define GL_MAX_TESS_PATCH_COMPONENTS_EXT 0x8E84
#define GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_EXT 0x8E85
#define GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_EXT 0x8E86
#define GL_TESS_EVALUATION_SHADER_EXT 0x8E87
#define GL_TESS_CONTROL_SHADER_EXT 0x8E88
#define GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS_EXT 0x8E89
#define GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS_EXT 0x8E8A
#define GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS_EXT 0x90CB
#define GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS_EXT 0x90CC
#define GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_EXT 0x90D8
#define GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_EXT 0x90D9
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_EXT 0x92CD
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_EXT 0x92CE
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS_EXT 0x92D3
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS_EXT 0x92D4
#define GL_IS_PER_PATCH_EXT 0x92E7
#define GL_REFERENCED_BY_TESS_CONTROL_SHADER_EXT 0x9307
#define GL_REFERENCED_BY_TESS_EVALUATION_SHADER_EXT 0x9308
#define GL_ALPHA4_EXT 0x803B
#define GL_ALPHA8_EXT 0x803C
#define GL_ALPHA12_EXT 0x803D
#define GL_ALPHA16_EXT 0x803E
#define GL_LUMINANCE4_EXT 0x803F
#define GL_LUMINANCE8_EXT 0x8040
#define GL_LUMINANCE12_EXT 0x8041
#define GL_LUMINANCE16_EXT 0x8042
#define GL_LUMINANCE4_ALPHA4_EXT 0x8043
#define GL_LUMINANCE6_ALPHA2_EXT 0x8044
#define GL_LUMINANCE8_ALPHA8_EXT 0x8045
#define GL_LUMINANCE12_ALPHA4_EXT 0x8046
#define GL_LUMINANCE12_ALPHA12_EXT 0x8047
#define GL_LUMINANCE16_ALPHA16_EXT 0x8048
#define GL_INTENSITY_EXT 0x8049
#define GL_INTENSITY4_EXT 0x804A
#define GL_INTENSITY8_EXT 0x804B
#define GL_INTENSITY12_EXT 0x804C
#define GL_INTENSITY16_EXT 0x804D
#define GL_RGB2_EXT 0x804E
#define GL_RGB4_EXT 0x804F
#define GL_RGB5_EXT 0x8050
#define GL_RGB8_EXT 0x8051
#define GL_RGB10_EXT 0x8052
#define GL_RGB12_EXT 0x8053
#define GL_RGB16_EXT 0x8054
#define GL_RGBA2_EXT 0x8055
#define GL_RGBA4_EXT 0x8056
#define GL_RGB5_A1_EXT 0x8057
#define GL_RGBA8_EXT 0x8058
#define GL_RGB10_A2_EXT 0x8059
#define GL_RGBA12_EXT 0x805A
#define GL_RGBA16_EXT 0x805B
#define GL_TEXTURE_RED_SIZE_EXT 0x805C
#define GL_TEXTURE_GREEN_SIZE_EXT 0x805D
#define GL_TEXTURE_BLUE_SIZE_EXT 0x805E
#define GL_TEXTURE_ALPHA_SIZE_EXT 0x805F
#define GL_TEXTURE_LUMINANCE_SIZE_EXT 0x8060
#define GL_TEXTURE_INTENSITY_SIZE_EXT 0x8061
#define GL_REPLACE_EXT 0x8062
#define GL_PROXY_TEXTURE_1D_EXT 0x8063
#define GL_PROXY_TEXTURE_2D_EXT 0x8064
#define GL_PACK_SKIP_IMAGES_EXT 0x806B
#define GL_PACK_IMAGE_HEIGHT_EXT 0x806C
#define GL_UNPACK_SKIP_IMAGES_EXT 0x806D
#define GL_UNPACK_IMAGE_HEIGHT_EXT 0x806E
#define GL_TEXTURE_3D_EXT 0x806F
#define GL_PROXY_TEXTURE_3D_EXT 0x8070
#define GL_TEXTURE_DEPTH_EXT 0x8071
#define GL_TEXTURE_WRAP_R_EXT 0x8072
#define GL_MAX_3D_TEXTURE_SIZE_EXT 0x8073
void glTexImage3DEXT (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
#define GL_TEXTURE_1D_ARRAY_EXT 0x8C18
#define GL_PROXY_TEXTURE_1D_ARRAY_EXT 0x8C19
#define GL_TEXTURE_2D_ARRAY_EXT 0x8C1A
#define GL_PROXY_TEXTURE_2D_ARRAY_EXT 0x8C1B
#define GL_TEXTURE_BINDING_1D_ARRAY_EXT 0x8C1C
#define GL_TEXTURE_BINDING_2D_ARRAY_EXT 0x8C1D
#define GL_MAX_ARRAY_TEXTURE_LAYERS_EXT 0x88FF
#define GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT 0x884E
void glFramebufferTextureLayerEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
#define GL_TEXTURE_BORDER_COLOR_EXT 0x1004
#define GL_CLAMP_TO_BORDER_EXT 0x812D
void glGetSamplerParameterIivEXT (GLuint sampler, GLenum pname, GLint* params);
void glGetSamplerParameterIuivEXT (GLuint sampler, GLenum pname, GLuint* params);
void glSamplerParameterIivEXT (GLuint sampler, GLenum pname, const GLint* params);
void glSamplerParameterIuivEXT (GLuint sampler, GLenum pname, const GLuint* params);
#define GL_TEXTURE_BUFFER_BINDING_EXT 0x8C2A
#define GL_MAX_TEXTURE_BUFFER_SIZE_EXT 0x8C2B
#define GL_TEXTURE_BINDING_BUFFER_EXT 0x8C2C
#define GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT 0x8C2D
#define GL_SAMPLER_BUFFER_EXT 0x8DC2
#define GL_INT_SAMPLER_BUFFER_EXT 0x8DD0
#define GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT 0x8DD8
#define GL_IMAGE_BUFFER_EXT 0x9051
#define GL_INT_IMAGE_BUFFER_EXT 0x905C
#define GL_UNSIGNED_INT_IMAGE_BUFFER_EXT 0x9067
#define GL_TEXTURE_BUFFER_OFFSET_EXT 0x919D
#define GL_TEXTURE_BUFFER_SIZE_EXT 0x919E
#define GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT_EXT 0x919F
%feature("sufix", "_CONSTANT4321end");
#define GL_TEXTURE_BUFFER_EXT 0x8C2A
%feature("sufix", "4321end");
#define GL_MAX_TEXTURE_BUFFER_SIZE_EXT 0x8C2B
#define GL_TEXTURE_BINDING_BUFFER_EXT 0x8C2C
#define GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT 0x8C2D
#define GL_TEXTURE_BUFFER_FORMAT_EXT 0x8C2E
void glTexBufferEXT (GLenum target, GLenum internalformat, GLuint buffer);
#define GL_TEXTURE_ASTC_DECODE_PRECISION_EXT 0x8F69
#define GL_TEXTURE_ASTC_DECODE_PRECISION_EXT 0x8F69
#define GL_COMPRESSED_RGBA_BPTC_UNORM_EXT 0x8E8C
#define GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT 0x8E8D
#define GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT 0x8E8E
#define GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT 0x8E8F
#define GL_COMPRESSED_LUMINANCE_LATC1_EXT 0x8C70
#define GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT 0x8C71
#define GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT 0x8C72
#define GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT 0x8C73
#define GL_COMPRESSED_RED_RGTC1_EXT 0x8DBB
#define GL_COMPRESSED_SIGNED_RED_RGTC1_EXT 0x8DBC
#define GL_COMPRESSED_RED_GREEN_RGTC2_EXT 0x8DBD
#define GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT 0x8DBE
#define GL_COMPRESSED_RGB_S3TC_DXT1_EXT 0x83F0
#define GL_COMPRESSED_RGBA_S3TC_DXT1_EXT 0x83F1
#define GL_COMPRESSED_RGBA_S3TC_DXT3_EXT 0x83F2
#define GL_COMPRESSED_RGBA_S3TC_DXT5_EXT 0x83F3
#define GL_COMPRESSED_SRGB_S3TC_DXT1_EXT 0x8C4C
#define GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT 0x8C4D
#define GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT 0x8C4E
#define GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT 0x8C4F
#define GL_NORMAL_MAP_EXT 0x8511
#define GL_REFLECTION_MAP_EXT 0x8512
#define GL_TEXTURE_CUBE_MAP_EXT 0x8513
#define GL_TEXTURE_BINDING_CUBE_MAP_EXT 0x8514
#define GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT 0x8515
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT 0x8516
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT 0x8517
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT 0x8518
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT 0x8519
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT 0x851A
#define GL_PROXY_TEXTURE_CUBE_MAP_EXT 0x851B
#define GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT 0x851C
#define GL_TEXTURE_CUBE_MAP_ARRAY_EXT 0x9009
#define GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_EXT 0x900A
#define GL_SAMPLER_CUBE_MAP_ARRAY_EXT 0x900C
#define GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_EXT 0x900D
#define GL_INT_SAMPLER_CUBE_MAP_ARRAY_EXT 0x900E
#define GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_EXT 0x900F
#define GL_IMAGE_CUBE_MAP_ARRAY_EXT 0x9054
#define GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT 0x905F
#define GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT 0x906A
#define GL_CLAMP_TO_EDGE_EXT	0x812F
#define GL_COMBINE_EXT 0x8570
#define GL_COMBINE_RGB_EXT 0x8571
#define GL_COMBINE_ALPHA_EXT 0x8572
#define GL_RGB_SCALE_EXT 0x8573
#define GL_ADD_SIGNED_EXT 0x8574
#define GL_INTERPOLATE_EXT 0x8575
#define GL_CONSTANT_EXT 0x8576
#define GL_PRIMARY_COLOR_EXT 0x8577
#define GL_PREVIOUS_EXT 0x8578
#define GL_SOURCE0_RGB_EXT 0x8580
#define GL_SOURCE1_RGB_EXT 0x8581
#define GL_SOURCE2_RGB_EXT 0x8582
#define GL_SOURCE0_ALPHA_EXT 0x8588
#define GL_SOURCE1_ALPHA_EXT 0x8589
#define GL_SOURCE2_ALPHA_EXT 0x858A
#define GL_OPERAND0_RGB_EXT 0x8590
#define GL_OPERAND1_RGB_EXT 0x8591
#define GL_OPERAND2_RGB_EXT 0x8592
#define GL_OPERAND0_ALPHA_EXT 0x8598
#define GL_OPERAND1_ALPHA_EXT 0x8599
#define GL_OPERAND2_ALPHA_EXT 0x859A
#define GL_DOT3_RGB_EXT 0x8740
#define GL_DOT3_RGBA_EXT 0x8741
#define GL_TEXTURE_MAX_ANISOTROPY_EXT 0x84FE
#define GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT 0x84FF
#define GL_TEXTURE_REDUCTION_MODE_EXT 0x9366
#define GL_WEIGHTED_AVERAGE_EXT 0x9367
#define GL_BGRA_EXT 0x80E1
#define GL_TEXTURE_FORMAT_SRGB_OVERRIDE_EXT 0x8FBF
#define GL_RGBA32UI_EXT 0x8D70
#define GL_RGB32UI_EXT 0x8D71
#define GL_ALPHA32UI_EXT 0x8D72
#define GL_INTENSITY32UI_EXT 0x8D73
#define GL_LUMINANCE32UI_EXT 0x8D74
#define GL_LUMINANCE_ALPHA32UI_EXT 0x8D75
#define GL_RGBA16UI_EXT 0x8D76
#define GL_RGB16UI_EXT 0x8D77
#define GL_ALPHA16UI_EXT 0x8D78
#define GL_INTENSITY16UI_EXT 0x8D79
#define GL_LUMINANCE16UI_EXT 0x8D7A
#define GL_LUMINANCE_ALPHA16UI_EXT 0x8D7B
#define GL_RGBA8UI_EXT 0x8D7C
#define GL_RGB8UI_EXT 0x8D7D
#define GL_ALPHA8UI_EXT 0x8D7E
#define GL_INTENSITY8UI_EXT 0x8D7F
#define GL_LUMINANCE8UI_EXT 0x8D80
#define GL_LUMINANCE_ALPHA8UI_EXT 0x8D81
#define GL_RGBA32I_EXT 0x8D82
#define GL_RGB32I_EXT 0x8D83
#define GL_ALPHA32I_EXT 0x8D84
#define GL_INTENSITY32I_EXT 0x8D85
#define GL_LUMINANCE32I_EXT 0x8D86
#define GL_LUMINANCE_ALPHA32I_EXT 0x8D87
#define GL_RGBA16I_EXT 0x8D88
#define GL_RGB16I_EXT 0x8D89
#define GL_ALPHA16I_EXT 0x8D8A
#define GL_INTENSITY16I_EXT 0x8D8B
#define GL_LUMINANCE16I_EXT 0x8D8C
#define GL_LUMINANCE_ALPHA16I_EXT 0x8D8D
#define GL_RGBA8I_EXT 0x8D8E
#define GL_RGB8I_EXT 0x8D8F
#define GL_ALPHA8I_EXT 0x8D90
#define GL_INTENSITY8I_EXT 0x8D91
#define GL_LUMINANCE8I_EXT 0x8D92
#define GL_LUMINANCE_ALPHA8I_EXT 0x8D93
#define GL_RED_INTEGER_EXT 0x8D94
#define GL_GREEN_INTEGER_EXT 0x8D95
#define GL_BLUE_INTEGER_EXT 0x8D96
#define GL_ALPHA_INTEGER_EXT 0x8D97
#define GL_RGB_INTEGER_EXT 0x8D98
#define GL_RGBA_INTEGER_EXT 0x8D99
#define GL_BGR_INTEGER_EXT 0x8D9A
#define GL_BGRA_INTEGER_EXT 0x8D9B
#define GL_LUMINANCE_INTEGER_EXT 0x8D9C
#define GL_LUMINANCE_ALPHA_INTEGER_EXT 0x8D9D
#define GL_RGBA_INTEGER_MODE_EXT 0x8D9E
void glTexParameterIivEXT (GLenum target, GLenum pname, const GLint *params);
void glTexParameterIuivEXT (GLenum target, GLenum pname, const GLuint *params);
void glGetTexParameterIivEXT (GLenum target, GLenum pname, GLint *params);
void glGetTexParameterIuivEXT (GLenum target, GLenum pname, GLuint *params);
void glClearColorIiEXT (GLint red, GLint green, GLint blue, GLint alpha);
void glClearColorIuiEXT (GLuint red, GLuint green, GLuint blue, GLuint alpha);
#define GL_MAX_TEXTURE_LOD_BIAS_EXT 0x84FD
#define GL_TEXTURE_FILTER_CONTROL_EXT 0x8500
#define GL_TEXTURE_LOD_BIAS_EXT 0x8501
#define GL_MIRROR_CLAMP_EXT 0x8742
#define GL_MIRROR_CLAMP_TO_EDGE_EXT 0x8743
#define GL_MIRROR_CLAMP_TO_BORDER_EXT 0x8912
#define GL_MIRROR_CLAMP_TO_EDGE_EXT 0x8743
#define GL_RGB16_EXT 0x8054
#define GL_RGBA16_EXT 0x805B
#define GL_R16_EXT 0x822A
#define GL_RG16_EXT 0x822C
#define GL_R16_SNORM_EXT 0x8F98
#define GL_RG16_SNORM_EXT 0x8F99
#define GL_RGB16_SNORM_EXT 0x8F9A
#define GL_RGBA16_SNORM_EXT 0x8F9B
#define GL_TEXTURE_PRIORITY_EXT 0x8066
#define GL_TEXTURE_RESIDENT_EXT 0x8067
#define GL_TEXTURE_1D_BINDING_EXT 0x8068
#define GL_TEXTURE_2D_BINDING_EXT 0x8069
#define GL_TEXTURE_3D_BINDING_EXT 0x806A
GLboolean glAreTexturesResidentEXT (GLsizei n, const GLuint* textures, GLboolean* residences);
void glBindTextureEXT (GLenum target, GLuint texture);
void glDeleteTexturesEXT (GLsizei n, const GLuint* textures);
void glGenTexturesEXT (GLsizei n, GLuint* textures);
GLboolean glIsTextureEXT (GLuint texture);
void glPrioritizeTexturesEXT (GLsizei n, const GLuint* textures, const GLclampf* priorities);
#define GL_PERTURB_EXT 0x85AE
%feature("sufix", "_CONSTANT4321end");
#define GL_TEXTURE_NORMAL_EXT 0x85AF
%feature("sufix", "4321end");
void glTextureNormalEXT (GLenum mode);
#define GL_TEXTURE_RECTANGLE_EXT 0x84F5
#define GL_TEXTURE_BINDING_RECTANGLE_EXT 0x84F6
#define GL_PROXY_TEXTURE_RECTANGLE_EXT 0x84F7
#define GL_MAX_RECTANGLE_TEXTURE_SIZE_EXT 0x84F8
#define GL_RED_EXT 0x1903
#define GL_RG_EXT 0x8227
#define GL_R8_EXT 0x8229
#define GL_RG8_EXT 0x822B
#define GL_RGB9_E5_EXT 0x8C3D
#define GL_UNSIGNED_INT_5_9_9_9_REV_EXT 0x8C3E
#define GL_TEXTURE_SHARED_SIZE_EXT 0x8C3F
#define GL_RED_SNORM 0x8F90
#define GL_RG_SNORM 0x8F91
#define GL_RGB_SNORM 0x8F92
#define GL_RGBA_SNORM 0x8F93
#define GL_R8_SNORM 0x8F94
#define GL_RG8_SNORM 0x8F95
#define GL_RGB8_SNORM 0x8F96
#define GL_RGBA8_SNORM 0x8F97
#define GL_R16_SNORM 0x8F98
#define GL_RG16_SNORM 0x8F99
#define GL_RGB16_SNORM 0x8F9A
#define GL_RGBA16_SNORM 0x8F9B
#define GL_SIGNED_NORMALIZED 0x8F9C
#define GL_ALPHA_SNORM 0x9010
#define GL_LUMINANCE_SNORM 0x9011
#define GL_LUMINANCE_ALPHA_SNORM 0x9012
#define GL_INTENSITY_SNORM 0x9013
#define GL_ALPHA8_SNORM 0x9014
#define GL_LUMINANCE8_SNORM 0x9015
#define GL_LUMINANCE8_ALPHA8_SNORM 0x9016
#define GL_INTENSITY8_SNORM 0x9017
#define GL_ALPHA16_SNORM 0x9018
#define GL_LUMINANCE16_SNORM 0x9019
#define GL_LUMINANCE16_ALPHA16_SNORM 0x901A
#define GL_INTENSITY16_SNORM 0x901B
#define GL_SRGB_EXT 0x8C40
#define GL_SRGB8_EXT 0x8C41
#define GL_SRGB_ALPHA_EXT 0x8C42
#define GL_SRGB8_ALPHA8_EXT 0x8C43
#define GL_SLUMINANCE_ALPHA_EXT 0x8C44
#define GL_SLUMINANCE8_ALPHA8_EXT 0x8C45
#define GL_SLUMINANCE_EXT 0x8C46
#define GL_SLUMINANCE8_EXT 0x8C47
#define GL_COMPRESSED_SRGB_EXT 0x8C48
#define GL_COMPRESSED_SRGB_ALPHA_EXT 0x8C49
#define GL_COMPRESSED_SLUMINANCE_EXT 0x8C4A
#define GL_COMPRESSED_SLUMINANCE_ALPHA_EXT 0x8C4B
#define GL_COMPRESSED_SRGB_S3TC_DXT1_EXT 0x8C4C
#define GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT 0x8C4D
#define GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT 0x8C4E
#define GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT 0x8C4F
#define GL_TEXTURE_SRGB_DECODE_EXT 0x8A48
#define GL_DECODE_EXT 0x8A49
#define GL_SKIP_DECODE_EXT 0x8A4A
#define GL_SR8_EXT 0x8FBD
#define GL_SRG8_EXT 0x8FBE
#define GL_ALPHA8_EXT 0x803C
#define GL_LUMINANCE8_EXT 0x8040
#define GL_LUMINANCE8_ALPHA8_EXT 0x8045
#define GL_RGB10_EXT 0x8052
#define GL_RGB10_A2_EXT 0x8059
#define GL_R8_EXT 0x8229
#define GL_RG8_EXT 0x822B
#define GL_R16F_EXT 0x822D
#define GL_R32F_EXT 0x822E
#define GL_RG16F_EXT 0x822F
#define GL_RG32F_EXT 0x8230
#define GL_RGBA32F_EXT 0x8814
#define GL_RGB32F_EXT 0x8815
#define GL_ALPHA32F_EXT 0x8816
#define GL_LUMINANCE32F_EXT 0x8818
#define GL_LUMINANCE_ALPHA32F_EXT 0x8819
#define GL_RGBA16F_EXT 0x881A
#define GL_RGB16F_EXT 0x881B
#define GL_ALPHA16F_EXT 0x881C
#define GL_LUMINANCE16F_EXT 0x881E
#define GL_LUMINANCE_ALPHA16F_EXT 0x881F
#define GL_RGB_RAW_422_APPLE 0x8A51
#define GL_TEXTURE_IMMUTABLE_FORMAT_EXT 0x912F
#define GL_BGRA8_EXT 0x93A1
void glTexStorage1DEXT (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
void glTexStorage2DEXT (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
void glTexStorage3DEXT (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
void glTextureStorage1DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
void glTextureStorage2DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
void glTextureStorage3DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
#define GL_TEXTURE_SWIZZLE_R_EXT 0x8E42
#define GL_TEXTURE_SWIZZLE_G_EXT 0x8E43
#define GL_TEXTURE_SWIZZLE_B_EXT 0x8E44
#define GL_TEXTURE_SWIZZLE_A_EXT 0x8E45
#define GL_TEXTURE_SWIZZLE_RGBA_EXT 0x8E46
#define GL_UNSIGNED_INT_2_10_10_10_REV_EXT 0x8368
#define GL_TEXTURE_VIEW_MIN_LEVEL_EXT 0x82DB
#define GL_TEXTURE_VIEW_NUM_LEVELS_EXT 0x82DC
#define GL_TEXTURE_VIEW_MIN_LAYER_EXT 0x82DD
#define GL_TEXTURE_VIEW_NUM_LAYERS_EXT 0x82DE
#define GL_TEXTURE_IMMUTABLE_LEVELS 0x82DF
void glTextureViewEXT (GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers);
#define GL_TIME_ELAPSED_EXT 0x88BF
void glGetQueryObjecti64vEXT (GLuint id, GLenum pname, GLint64EXT *params);
void glGetQueryObjectui64vEXT (GLuint id, GLenum pname, GLuint64EXT *params);
#define GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT 0x8C76
#define GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT 0x8C7F
#define GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT 0x8C80
%feature("sufix", "_CONSTANT4321end");
#define GL_TRANSFORM_FEEDBACK_VARYINGS_EXT 0x8C83
%feature("sufix", "4321end");
#define GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT 0x8C84
#define GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT 0x8C85
#define GL_PRIMITIVES_GENERATED_EXT 0x8C87
#define GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT 0x8C88
#define GL_RASTERIZER_DISCARD_EXT 0x8C89
#define GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT 0x8C8A
#define GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT 0x8C8B
#define GL_INTERLEAVED_ATTRIBS_EXT 0x8C8C
#define GL_SEPARATE_ATTRIBS_EXT 0x8C8D
#define GL_TRANSFORM_FEEDBACK_BUFFER_EXT 0x8C8E
#define GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT 0x8C8F
void glBeginTransformFeedbackEXT (GLenum primitiveMode);
void glBindBufferBaseEXT (GLenum target, GLuint index, GLuint buffer);
void glBindBufferOffsetEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
void glBindBufferRangeEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glEndTransformFeedbackEXT (void);
void glGetTransformFeedbackVaryingEXT (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei *size, GLenum *type, GLchar *name);
void glTransformFeedbackVaryingsEXT (GLuint program, GLsizei count, const GLchar * const* varyings, GLenum bufferMode);
#define GL_UNPACK_ROW_LENGTH_EXT 0x0CF2
#define GL_UNPACK_SKIP_ROWS_EXT 0x0CF3
#define GL_UNPACK_SKIP_PIXELS_EXT 0x0CF4
#define GL_DOUBLE_EXT 0x140A
#define GL_VERTEX_ARRAY_EXT 0x8074
#define GL_NORMAL_ARRAY_EXT 0x8075
#define GL_COLOR_ARRAY_EXT 0x8076
#define GL_INDEX_ARRAY_EXT 0x8077
#define GL_TEXTURE_COORD_ARRAY_EXT 0x8078
#define GL_EDGE_FLAG_ARRAY_EXT 0x8079
#define GL_VERTEX_ARRAY_SIZE_EXT 0x807A
#define GL_VERTEX_ARRAY_TYPE_EXT 0x807B
#define GL_VERTEX_ARRAY_STRIDE_EXT 0x807C
#define GL_VERTEX_ARRAY_COUNT_EXT 0x807D
#define GL_NORMAL_ARRAY_TYPE_EXT 0x807E
#define GL_NORMAL_ARRAY_STRIDE_EXT 0x807F
#define GL_NORMAL_ARRAY_COUNT_EXT 0x8080
#define GL_COLOR_ARRAY_SIZE_EXT 0x8081
#define GL_COLOR_ARRAY_TYPE_EXT 0x8082
#define GL_COLOR_ARRAY_STRIDE_EXT 0x8083
#define GL_COLOR_ARRAY_COUNT_EXT 0x8084
#define GL_INDEX_ARRAY_TYPE_EXT 0x8085
#define GL_INDEX_ARRAY_STRIDE_EXT 0x8086
#define GL_INDEX_ARRAY_COUNT_EXT 0x8087
#define GL_TEXTURE_COORD_ARRAY_SIZE_EXT 0x8088
#define GL_TEXTURE_COORD_ARRAY_TYPE_EXT 0x8089
#define GL_TEXTURE_COORD_ARRAY_STRIDE_EXT 0x808A
#define GL_TEXTURE_COORD_ARRAY_COUNT_EXT 0x808B
#define GL_EDGE_FLAG_ARRAY_STRIDE_EXT 0x808C
#define GL_EDGE_FLAG_ARRAY_COUNT_EXT 0x808D
#define GL_VERTEX_ARRAY_POINTER_EXT 0x808E
#define GL_NORMAL_ARRAY_POINTER_EXT 0x808F
#define GL_COLOR_ARRAY_POINTER_EXT 0x8090
#define GL_INDEX_ARRAY_POINTER_EXT 0x8091
#define GL_TEXTURE_COORD_ARRAY_POINTER_EXT 0x8092
#define GL_EDGE_FLAG_ARRAY_POINTER_EXT 0x8093
void glArrayElementEXT (GLint i);
void glColorPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glDrawArraysEXT (GLenum mode, GLint first, GLsizei count);
void glEdgeFlagPointerEXT (GLsizei stride, GLsizei count, const GLboolean* pointer);
void glIndexPointerEXT (GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glNormalPointerEXT (GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glTexCoordPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glVertexPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
#define GL_BGRA 0x80E1
void glBindArraySetEXT (const void *arrayset);
const void * glCreateArraySetExt (void);
void glDeleteArraySetsEXT (GLsizei n, const void *arrayset[]);
#define GL_DOUBLE_MAT2_EXT 0x8F46
#define GL_DOUBLE_MAT3_EXT 0x8F47
#define GL_DOUBLE_MAT4_EXT 0x8F48
#define GL_DOUBLE_MAT2x3_EXT 0x8F49
#define GL_DOUBLE_MAT2x4_EXT 0x8F4A
#define GL_DOUBLE_MAT3x2_EXT 0x8F4B
#define GL_DOUBLE_MAT3x4_EXT 0x8F4C
#define GL_DOUBLE_MAT4x2_EXT 0x8F4D
#define GL_DOUBLE_MAT4x3_EXT 0x8F4E
#define GL_DOUBLE_VEC2_EXT 0x8FFC
#define GL_DOUBLE_VEC3_EXT 0x8FFD
#define GL_DOUBLE_VEC4_EXT 0x8FFE
void glGetVertexAttribLdvEXT (GLuint index, GLenum pname, GLdouble* params);
void glVertexArrayVertexAttribLOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
void glVertexAttribL1dEXT (GLuint index, GLdouble x);
void glVertexAttribL1dvEXT (GLuint index, const GLdouble* v);
void glVertexAttribL2dEXT (GLuint index, GLdouble x, GLdouble y);
void glVertexAttribL2dvEXT (GLuint index, const GLdouble* v);
void glVertexAttribL3dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttribL3dvEXT (GLuint index, const GLdouble* v);
void glVertexAttribL4dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttribL4dvEXT (GLuint index, const GLdouble* v);
void glVertexAttribLPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, const void *pointer);
#define GL_VERTEX_SHADER_EXT 0x8780
#define GL_VERTEX_SHADER_BINDING_EXT 0x8781
#define GL_OP_INDEX_EXT 0x8782
#define GL_OP_NEGATE_EXT 0x8783
#define GL_OP_DOT3_EXT 0x8784
#define GL_OP_DOT4_EXT 0x8785
#define GL_OP_MUL_EXT 0x8786
#define GL_OP_ADD_EXT 0x8787
#define GL_OP_MADD_EXT 0x8788
#define GL_OP_FRAC_EXT 0x8789
#define GL_OP_MAX_EXT 0x878A
#define GL_OP_MIN_EXT 0x878B
#define GL_OP_SET_GE_EXT 0x878C
#define GL_OP_SET_LT_EXT 0x878D
#define GL_OP_CLAMP_EXT 0x878E
#define GL_OP_FLOOR_EXT 0x878F
#define GL_OP_ROUND_EXT 0x8790
#define GL_OP_EXP_BASE_2_EXT 0x8791
#define GL_OP_LOG_BASE_2_EXT 0x8792
#define GL_OP_POWER_EXT 0x8793
#define GL_OP_RECIP_EXT 0x8794
#define GL_OP_RECIP_SQRT_EXT 0x8795
#define GL_OP_SUB_EXT 0x8796
#define GL_OP_CROSS_PRODUCT_EXT 0x8797
#define GL_OP_MULTIPLY_MATRIX_EXT 0x8798
#define GL_OP_MOV_EXT 0x8799
#define GL_OUTPUT_VERTEX_EXT 0x879A
#define GL_OUTPUT_COLOR0_EXT 0x879B
#define GL_OUTPUT_COLOR1_EXT 0x879C
#define GL_OUTPUT_TEXTURE_COORD0_EXT 0x879D
#define GL_OUTPUT_TEXTURE_COORD1_EXT 0x879E
#define GL_OUTPUT_TEXTURE_COORD2_EXT 0x879F
#define GL_OUTPUT_TEXTURE_COORD3_EXT 0x87A0
#define GL_OUTPUT_TEXTURE_COORD4_EXT 0x87A1
#define GL_OUTPUT_TEXTURE_COORD5_EXT 0x87A2
#define GL_OUTPUT_TEXTURE_COORD6_EXT 0x87A3
#define GL_OUTPUT_TEXTURE_COORD7_EXT 0x87A4
#define GL_OUTPUT_TEXTURE_COORD8_EXT 0x87A5
#define GL_OUTPUT_TEXTURE_COORD9_EXT 0x87A6
#define GL_OUTPUT_TEXTURE_COORD10_EXT 0x87A7
#define GL_OUTPUT_TEXTURE_COORD11_EXT 0x87A8
#define GL_OUTPUT_TEXTURE_COORD12_EXT 0x87A9
#define GL_OUTPUT_TEXTURE_COORD13_EXT 0x87AA
#define GL_OUTPUT_TEXTURE_COORD14_EXT 0x87AB
#define GL_OUTPUT_TEXTURE_COORD15_EXT 0x87AC
#define GL_OUTPUT_TEXTURE_COORD16_EXT 0x87AD
#define GL_OUTPUT_TEXTURE_COORD17_EXT 0x87AE
#define GL_OUTPUT_TEXTURE_COORD18_EXT 0x87AF
#define GL_OUTPUT_TEXTURE_COORD19_EXT 0x87B0
#define GL_OUTPUT_TEXTURE_COORD20_EXT 0x87B1
#define GL_OUTPUT_TEXTURE_COORD21_EXT 0x87B2
#define GL_OUTPUT_TEXTURE_COORD22_EXT 0x87B3
#define GL_OUTPUT_TEXTURE_COORD23_EXT 0x87B4
#define GL_OUTPUT_TEXTURE_COORD24_EXT 0x87B5
#define GL_OUTPUT_TEXTURE_COORD25_EXT 0x87B6
#define GL_OUTPUT_TEXTURE_COORD26_EXT 0x87B7
#define GL_OUTPUT_TEXTURE_COORD27_EXT 0x87B8
#define GL_OUTPUT_TEXTURE_COORD28_EXT 0x87B9
#define GL_OUTPUT_TEXTURE_COORD29_EXT 0x87BA
#define GL_OUTPUT_TEXTURE_COORD30_EXT 0x87BB
#define GL_OUTPUT_TEXTURE_COORD31_EXT 0x87BC
#define GL_OUTPUT_FOG_EXT 0x87BD
#define GL_SCALAR_EXT 0x87BE
#define GL_VECTOR_EXT 0x87BF
#define GL_MATRIX_EXT 0x87C0
#define GL_VARIANT_EXT 0x87C1
#define GL_INVARIANT_EXT 0x87C2
#define GL_LOCAL_CONSTANT_EXT 0x87C3
#define GL_LOCAL_EXT 0x87C4
#define GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT 0x87C5
#define GL_MAX_VERTEX_SHADER_VARIANTS_EXT 0x87C6
#define GL_MAX_VERTEX_SHADER_INVARIANTS_EXT 0x87C7
#define GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT 0x87C8
#define GL_MAX_VERTEX_SHADER_LOCALS_EXT 0x87C9
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT 0x87CA
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT 0x87CB
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT 0x87CC
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT 0x87CD
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT 0x87CE
#define GL_VERTEX_SHADER_INSTRUCTIONS_EXT 0x87CF
#define GL_VERTEX_SHADER_VARIANTS_EXT 0x87D0
#define GL_VERTEX_SHADER_INVARIANTS_EXT 0x87D1
#define GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT 0x87D2
#define GL_VERTEX_SHADER_LOCALS_EXT 0x87D3
#define GL_VERTEX_SHADER_OPTIMIZED_EXT 0x87D4
#define GL_X_EXT 0x87D5
#define GL_Y_EXT 0x87D6
#define GL_Z_EXT 0x87D7
#define GL_W_EXT 0x87D8
#define GL_NEGATIVE_X_EXT 0x87D9
#define GL_NEGATIVE_Y_EXT 0x87DA
#define GL_NEGATIVE_Z_EXT 0x87DB
#define GL_NEGATIVE_W_EXT 0x87DC
#define GL_ZERO_EXT 0x87DD
#define GL_ONE_EXT 0x87DE
#define GL_NEGATIVE_ONE_EXT 0x87DF
#define GL_NORMALIZED_RANGE_EXT 0x87E0
#define GL_FULL_RANGE_EXT 0x87E1
#define GL_CURRENT_VERTEX_EXT 0x87E2
#define GL_MVP_MATRIX_EXT 0x87E3
#define GL_VARIANT_VALUE_EXT 0x87E4
#define GL_VARIANT_DATATYPE_EXT 0x87E5
#define GL_VARIANT_ARRAY_STRIDE_EXT 0x87E6
#define GL_VARIANT_ARRAY_TYPE_EXT 0x87E7
#define GL_VARIANT_ARRAY_EXT 0x87E8
#define GL_VARIANT_ARRAY_POINTER_EXT 0x87E9
#define GL_INVARIANT_VALUE_EXT 0x87EA
#define GL_INVARIANT_DATATYPE_EXT 0x87EB
#define GL_LOCAL_CONSTANT_VALUE_EXT 0x87EC
#define GL_LOCAL_CONSTANT_DATATYPE_EXT 0x87ED
void glBeginVertexShaderEXT (void);
void glEndVertexShaderEXT (void);
void glBindVertexShaderEXT (GLuint id);
GLuint glGenVertexShadersEXT (GLuint range);
void glDeleteVertexShaderEXT (GLuint id);
void glShaderOp1EXT (GLenum op, GLuint res, GLuint arg1);
void glShaderOp2EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2);
void glShaderOp3EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3);
void glSwizzleEXT (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
void glWriteMaskEXT (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
void glInsertComponentEXT (GLuint res, GLuint src, GLuint num);
void glExtractComponentEXT (GLuint res, GLuint src, GLuint num);
GLuint glGenSymbolsEXT (GLenum dataType, GLenum storageType, GLenum range, GLuint components);
void glSetInvariantEXT (GLuint id, GLenum type, void *addr);
void glSetLocalConstantEXT (GLuint id, GLenum type, void *addr);
void glVariantbvEXT (GLuint id, GLbyte *addr);
void glVariantsvEXT (GLuint id, GLshort *addr);
void glVariantivEXT (GLuint id, GLint *addr);
void glVariantfvEXT (GLuint id, GLfloat *addr);
void glVariantdvEXT (GLuint id, GLdouble *addr);
void glVariantubvEXT (GLuint id, GLubyte *addr);
void glVariantusvEXT (GLuint id, GLushort *addr);
void glVariantuivEXT (GLuint id, GLuint *addr);
void glVariantPointerEXT (GLuint id, GLenum type, GLuint stride, void *addr);
void glEnableVariantClientStateEXT (GLuint id);
void glDisableVariantClientStateEXT (GLuint id);
GLuint glBindLightParameterEXT (GLenum light, GLenum value);
GLuint glBindMaterialParameterEXT (GLenum face, GLenum value);
GLuint glBindTexGenParameterEXT (GLenum unit, GLenum coord, GLenum value);
GLuint glBindTextureUnitParameterEXT (GLenum unit, GLenum value);
GLuint glBindParameterEXT (GLenum value);
GLboolean glIsVariantEnabledEXT (GLuint id, GLenum cap);
void glGetVariantBooleanvEXT (GLuint id, GLenum value, GLboolean *data);
void glGetVariantIntegervEXT (GLuint id, GLenum value, GLint *data);
void glGetVariantFloatvEXT (GLuint id, GLenum value, GLfloat *data);
void glGetVariantPointervEXT (GLuint id, GLenum value, void **data);
void glGetInvariantBooleanvEXT (GLuint id, GLenum value, GLboolean *data);
void glGetInvariantIntegervEXT (GLuint id, GLenum value, GLint *data);
void glGetInvariantFloatvEXT (GLuint id, GLenum value, GLfloat *data);
void glGetLocalConstantBooleanvEXT (GLuint id, GLenum value, GLboolean *data);
void glGetLocalConstantIntegervEXT (GLuint id, GLenum value, GLint *data);
void glGetLocalConstantFloatvEXT (GLuint id, GLenum value, GLfloat *data);
#define GL_MODELVIEW0_STACK_DEPTH_EXT 0x0BA3
#define GL_MODELVIEW0_MATRIX_EXT 0x0BA6
#define GL_MODELVIEW0_EXT 0x1700
#define GL_MODELVIEW1_STACK_DEPTH_EXT 0x8502
#define GL_MODELVIEW1_MATRIX_EXT 0x8506
#define GL_VERTEX_WEIGHTING_EXT 0x8509
#define GL_MODELVIEW1_EXT 0x850A
#define GL_CURRENT_VERTEX_WEIGHT_EXT 0x850B
#define GL_VERTEX_WEIGHT_ARRAY_EXT 0x850C
#define GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT 0x850D
#define GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT 0x850E
#define GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT 0x850F
#define GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT 0x8510
void glVertexWeightPointerEXT (GLint size, GLenum type, GLsizei stride, void *pointer);
void glVertexWeightfEXT (GLfloat weight);
void glVertexWeightfvEXT (GLfloat* weight);
GLboolean glAcquireKeyedMutexWin32EXT (GLuint memory, GLuint64 key, GLuint timeout);
GLboolean glReleaseKeyedMutexWin32EXT (GLuint memory, GLuint64 key);
#define GL_INCLUSIVE_EXT 0x8F10
#define GL_EXCLUSIVE_EXT 0x8F11
#define GL_WINDOW_RECTANGLE_EXT 0x8F12
#define GL_WINDOW_RECTANGLE_MODE_EXT 0x8F13
#define GL_MAX_WINDOW_RECTANGLES_EXT 0x8F14
#define GL_NUM_WINDOW_RECTANGLES_EXT 0x8F15
void glWindowRectanglesEXT (GLenum mode, GLsizei count, const GLint box[]);
#define GL_SYNC_X11_FENCE_EXT 0x90E1
GLsync glImportSyncEXT (GLenum external_sync_type, GLintptr external_sync, GLbitfield flags);
#define GL_SAMPLER_EXTERNAL_2D_Y2Y_EXT 0x8BE7
#define GL_GCCSO_SHADER_BINARY_FJ 0x9260
#define GL_GLU_NURBS_MODE_EXT 100160
#define GL_GLU_NURBS_TESSELLATOR_EXT 100161
#define GL_GLU_NURBS_RENDERER_EXT 100162
#define GL_GLU_NURBS_BEGIN_EXT 100164
#define GL_GLU_NURBS_VERTEX_EXT 100165
#define GL_GLU_NURBS_NORMAL_EXT 100166
#define GL_GLU_NURBS_COLOR_EXT 100167
#define GL_GLU_NURBS_TEXTURE_COORD_EXT 100168
#define GL_GLU_NURBS_END_EXT 100169
#define GL_GLU_NURBS_BEGIN_DATA_EXT 100170
#define GL_GLU_NURBS_VERTEX_DATA_EXT 100171
#define GL_GLU_NURBS_NORMAL_DATA_EXT 100172
#define GL_GLU_NURBS_COLOR_DATA_EXT 100173
#define GL_GLU_NURBS_TEXTURE_COORD_DATA_EXT 100174
#define GL_GLU_NURBS_END_DATA_EXT 100175
#define GL_OBJECT_PARAMETRIC_ERROR_EXT 100208
#define GL_OBJECT_PATH_LENGTH_EXT 100209
GLint gluTexFilterFuncSGI (GLenum target, GLenum filtertype, const GLfloat* parms, GLint n, GLfloat *weights);
void glFrameTerminatorGREMEDY (void);
void glStringMarkerGREMEDY (GLsizei len, const void *string);
void glGetImageTransformParameterfvHP (GLenum target, GLenum pname, const GLfloat* params);
void glGetImageTransformParameterivHP (GLenum target, GLenum pname, const GLint* params);
void glImageTransformParameterfHP (GLenum target, GLenum pname, const GLfloat param);
void glImageTransformParameterfvHP (GLenum target, GLenum pname, const GLfloat* params);
void glImageTransformParameteriHP (GLenum target, GLenum pname, const GLint param);
void glImageTransformParameterivHP (GLenum target, GLenum pname, const GLint* params);
#define GL_CULL_VERTEX_IBM 103050
void glMultiModeDrawArraysIBM (const GLenum* mode, const GLint *first, const GLsizei *count, GLsizei primcount, GLint modestride);
void glMultiModeDrawElementsIBM (const GLenum* mode, const GLsizei *count, GLenum type, const void *const *indices, GLsizei primcount, GLint modestride);
#define GL_RASTER_POSITION_UNCLIPPED_IBM 103010
#define GL_ALL_STATIC_DATA_IBM 103060
#define GL_STATIC_VERTEX_ARRAY_IBM 103061
#define GL_MIRRORED_REPEAT_IBM 0x8370
#define GL_VERTEX_ARRAY_LIST_IBM 103070
#define GL_NORMAL_ARRAY_LIST_IBM 103071
#define GL_COLOR_ARRAY_LIST_IBM 103072
#define GL_INDEX_ARRAY_LIST_IBM 103073
#define GL_TEXTURE_COORD_ARRAY_LIST_IBM 103074
#define GL_EDGE_FLAG_ARRAY_LIST_IBM 103075
#define GL_FOG_COORDINATE_ARRAY_LIST_IBM 103076
#define GL_SECONDARY_COLOR_ARRAY_LIST_IBM 103077
#define GL_VERTEX_ARRAY_LIST_STRIDE_IBM 103080
#define GL_NORMAL_ARRAY_LIST_STRIDE_IBM 103081
#define GL_COLOR_ARRAY_LIST_STRIDE_IBM 103082
#define GL_INDEX_ARRAY_LIST_STRIDE_IBM 103083
#define GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM 103084
#define GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM 103085
#define GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM 103086
#define GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM 103087
void glColorPointerListIBM (GLint size, GLenum type, GLint stride, const void** pointer, GLint ptrstride);
void glEdgeFlagPointerListIBM (GLint stride, const GLboolean ** pointer, GLint ptrstride);
void glFogCoordPointerListIBM (GLenum type, GLint stride, const void** pointer, GLint ptrstride);
void glIndexPointerListIBM (GLenum type, GLint stride, const void** pointer, GLint ptrstride);
void glNormalPointerListIBM (GLenum type, GLint stride, const void** pointer, GLint ptrstride);
void glSecondaryColorPointerListIBM (GLint size, GLenum type, GLint stride, const void** pointer, GLint ptrstride);
void glTexCoordPointerListIBM (GLint size, GLenum type, GLint stride, const void** pointer, GLint ptrstride);
void glVertexPointerListIBM (GLint size, GLenum type, GLint stride, const void** pointer, GLint ptrstride);
GLuint64 glGetTextureHandleIMG (GLuint texture);
GLuint64 glGetTextureSamplerHandleIMG (GLuint texture, GLuint sampler);
void glProgramUniformHandleui64IMG (GLuint program, GLint location, GLuint64 value);
void glProgramUniformHandleui64vIMG (GLuint program, GLint location, GLsizei count, const GLuint64* values);
void glUniformHandleui64IMG (GLint location, GLuint64 value);
void glUniformHandleui64vIMG (GLint location, GLsizei count, const GLuint64* value);
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_AND_DOWNSAMPLE_IMG 0x913C
#define GL_NUM_DOWNSAMPLE_SCALES_IMG 0x913D
#define GL_DOWNSAMPLE_SCALES_IMG 0x913E
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SCALE_IMG 0x913F
void glFramebufferTexture2DDownsampleIMG (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint xscale, GLint yscale);
void glFramebufferTextureLayerDownsampleIMG (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer, GLint xscale, GLint yscale);
#define GL_RENDERBUFFER_SAMPLES_IMG 0x9133
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_IMG 0x9134
#define GL_MAX_SAMPLES_IMG 0x9135
#define GL_TEXTURE_SAMPLES_IMG 0x9136
void glFramebufferTexture2DMultisampleIMG (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLsizei samples);
void glRenderbufferStorageMultisampleIMG (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
#define GL_SGX_PROGRAM_BINARY_IMG 0x9130
#define GL_BGRA_IMG 0x80E1
#define GL_UNSIGNED_SHORT_4_4_4_4_REV_IMG 0x8365
#define GL_SGX_BINARY_IMG 0x8C0A
#define GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG 0x8C00
#define GL_COMPRESSED_RGB_PVRTC_2BPPV1_IMG 0x8C01
#define GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG 0x8C02
#define GL_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG 0x8C03
#define GL_COMPRESSED_RGBA_PVRTC_2BPPV2_IMG 0x9137
#define GL_COMPRESSED_RGBA_PVRTC_4BPPV2_IMG 0x9138
#define GL_DOT3_RGBA_IMG 0x86AF
#define GL_MODULATE_COLOR_IMG 0x8C04
#define GL_RECIP_ADD_SIGNED_ALPHA_IMG 0x8C05
#define GL_TEXTURE_ALPHA_MODULATE_IMG 0x8C06
#define GL_FACTOR_ALPHA_MODULATE_IMG 0x8C07
#define GL_FRAGMENT_ALPHA_MODULATE_IMG 0x8C08
#define GL_ADD_BLEND_IMG 0x8C09
#define GL_CUBIC_IMG 0x9139
#define GL_CUBIC_MIPMAP_NEAREST_IMG 0x913A
#define GL_CUBIC_MIPMAP_LINEAR_IMG 0x913B
#define GL_RED_MIN_CLAMP_INGR 0x8560
#define GL_GREEN_MIN_CLAMP_INGR 0x8561
#define GL_BLUE_MIN_CLAMP_INGR 0x8562
#define GL_ALPHA_MIN_CLAMP_INGR 0x8563
#define GL_RED_MAX_CLAMP_INGR 0x8564
#define GL_GREEN_MAX_CLAMP_INGR 0x8565
#define GL_BLUE_MAX_CLAMP_INGR 0x8566
#define GL_ALPHA_MAX_CLAMP_INGR 0x8567
#define GL_INTERLACE_READ_INGR 0x8568
#define GL_BLACKHOLE_RENDER_INTEL 0x83FC
#define GL_CONSERVATIVE_RASTERIZATION_INTEL 0x83FE
#define GL_LAYOUT_DEFAULT_INTEL 0
#define GL_LAYOUT_LINEAR_INTEL 1
#define GL_LAYOUT_LINEAR_CPU_CACHED_INTEL 2
#define GL_TEXTURE_MEMORY_LAYOUT_INTEL 0x83FF
void * glMapTexture2DINTEL (GLuint texture, GLint level, GLbitfield access, GLint* stride, GLenum *layout);
void glSyncTextureINTEL (GLuint texture);
void glUnmapTexture2DINTEL (GLuint texture, GLint level);
#define GL_PARALLEL_ARRAYS_INTEL 0x83F4
#define GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL 0x83F5
#define GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL 0x83F6
#define GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL 0x83F7
#define GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL 0x83F8
void glColorPointervINTEL (GLint size, GLenum type, const void** pointer);
void glNormalPointervINTEL (GLenum type, const void** pointer);
void glTexCoordPointervINTEL (GLint size, GLenum type, const void** pointer);
void glVertexPointervINTEL (GLint size, GLenum type, const void** pointer);
#define GL_PERFQUERY_SINGLE_CONTEXT_INTEL 0x0000
#define GL_PERFQUERY_GLOBAL_CONTEXT_INTEL 0x0001
#define GL_PERFQUERY_DONOT_FLUSH_INTEL 0x83F9
#define GL_PERFQUERY_FLUSH_INTEL 0x83FA
#define GL_PERFQUERY_WAIT_INTEL 0x83FB
#define GL_PERFQUERY_COUNTER_EVENT_INTEL 0x94F0
#define GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL 0x94F1
#define GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL 0x94F2
#define GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL 0x94F3
#define GL_PERFQUERY_COUNTER_RAW_INTEL 0x94F4
#define GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL 0x94F5
#define GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL 0x94F8
#define GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL 0x94F9
#define GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL 0x94FA
#define GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL 0x94FB
#define GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL 0x94FC
#define GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL 0x94FD
#define GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL 0x94FE
#define GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL 0x94FF
#define GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL 0x9500
void glBeginPerfQueryINTEL (GLuint queryHandle);
void glCreatePerfQueryINTEL (GLuint queryId, GLuint* queryHandle);
void glDeletePerfQueryINTEL (GLuint queryHandle);
void glEndPerfQueryINTEL (GLuint queryHandle);
void glGetFirstPerfQueryIdINTEL (GLuint* queryId);
void glGetNextPerfQueryIdINTEL (GLuint queryId, GLuint* nextQueryId);
void glGetPerfCounterInfoINTEL (GLuint queryId, GLuint counterId, GLuint counterNameLength, GLchar* counterName, GLuint counterDescLength, GLchar *counterDesc, GLuint *counterOffset, GLuint *counterDataSize, GLuint *counterTypeEnum, GLuint *counterDataTypeEnum, GLuint64 *rawCounterMaxValue);
void glGetPerfQueryDataINTEL (GLuint queryHandle, GLuint flags, GLsizei dataSize, void *data, GLuint *bytesWritten);
void glGetPerfQueryIdByNameINTEL (GLchar* queryName, GLuint *queryId);
void glGetPerfQueryInfoINTEL (GLuint queryId, GLuint queryNameLength, GLchar* queryName, GLuint *dataSize, GLuint *noCounters, GLuint *noInstances, GLuint *capsMask);
void glTexScissorFuncINTEL (GLenum target, GLenum lfunc, GLenum hfunc);
void glTexScissorINTEL (GLenum target, GLclampf tlow, GLclampf thigh);
#define GL_BLEND_ADVANCED_COHERENT_KHR 0x9285
#define GL_MULTIPLY_KHR 0x9294
#define GL_SCREEN_KHR 0x9295
#define GL_OVERLAY_KHR 0x9296
#define GL_DARKEN_KHR 0x9297
#define GL_LIGHTEN_KHR 0x9298
#define GL_COLORDODGE_KHR 0x9299
#define GL_COLORBURN_KHR 0x929A
#define GL_HARDLIGHT_KHR 0x929B
#define GL_SOFTLIGHT_KHR 0x929C
#define GL_DIFFERENCE_KHR 0x929E
#define GL_EXCLUSION_KHR 0x92A0
#define GL_HSL_HUE_KHR 0x92AD
#define GL_HSL_SATURATION_KHR 0x92AE
#define GL_HSL_COLOR_KHR 0x92AF
#define GL_HSL_LUMINOSITY_KHR 0x92B0
void glBlendBarrierKHR (void);
#define GL_CONTEXT_RELEASE_BEHAVIOR 0x82FB
#define GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH 0x82FC
#define GL_CONTEXT_FLAG_DEBUG_BIT 0x00000002
#define GL_STACK_OVERFLOW 0x0503
#define GL_STACK_UNDERFLOW 0x0504
#define GL_DEBUG_OUTPUT_SYNCHRONOUS 0x8242
#define GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH 0x8243
#define GL_DEBUG_CALLBACK_FUNCTION 0x8244
#define GL_DEBUG_CALLBACK_USER_PARAM 0x8245
#define GL_DEBUG_SOURCE_API 0x8246
#define GL_DEBUG_SOURCE_WINDOW_SYSTEM 0x8247
#define GL_DEBUG_SOURCE_SHADER_COMPILER 0x8248
#define GL_DEBUG_SOURCE_THIRD_PARTY 0x8249
#define GL_DEBUG_SOURCE_APPLICATION 0x824A
#define GL_DEBUG_SOURCE_OTHER 0x824B
#define GL_DEBUG_TYPE_ERROR 0x824C
#define GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR 0x824D
#define GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR 0x824E
#define GL_DEBUG_TYPE_PORTABILITY 0x824F
#define GL_DEBUG_TYPE_PERFORMANCE 0x8250
#define GL_DEBUG_TYPE_OTHER 0x8251
#define GL_DEBUG_TYPE_MARKER 0x8268
#define GL_DEBUG_TYPE_PUSH_GROUP 0x8269
#define GL_DEBUG_TYPE_POP_GROUP 0x826A
#define GL_DEBUG_SEVERITY_NOTIFICATION 0x826B
#define GL_MAX_DEBUG_GROUP_STACK_DEPTH 0x826C
#define GL_DEBUG_GROUP_STACK_DEPTH 0x826D
#define GL_BUFFER 0x82E0
#define GL_SHADER 0x82E1
#define GL_PROGRAM 0x82E2
#define GL_QUERY 0x82E3
#define GL_PROGRAM_PIPELINE 0x82E4
#define GL_SAMPLER 0x82E6
#define GL_DISPLAY_LIST 0x82E7
#define GL_MAX_LABEL_LENGTH 0x82E8
#define GL_MAX_DEBUG_MESSAGE_LENGTH 0x9143
#define GL_MAX_DEBUG_LOGGED_MESSAGES 0x9144
#define GL_DEBUG_LOGGED_MESSAGES 0x9145
#define GL_DEBUG_SEVERITY_HIGH 0x9146
#define GL_DEBUG_SEVERITY_MEDIUM 0x9147
#define GL_DEBUG_SEVERITY_LOW 0x9148
#define GL_DEBUG_OUTPUT 0x92E0
void glDebugMessageCallback (GLDEBUGPROC callback, const void *userParam);
void glDebugMessageControl (GLenum source, GLenum type, GLenum severity, GLsizei count, const GLuint* ids, GLboolean enabled);
void glDebugMessageInsert (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar* buf);
GLuint glGetDebugMessageLog (GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog);
void glGetObjectLabel (GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar *label);
void glGetObjectPtrLabel (void* ptr, GLsizei bufSize, GLsizei* length, GLchar *label);
void glObjectLabel (GLenum identifier, GLuint name, GLsizei length, const GLchar* label);
void glObjectPtrLabel (void* ptr, GLsizei length, const GLchar* label);
void glPopDebugGroup (void);
void glPushDebugGroup (GLenum source, GLuint id, GLsizei length, const GLchar * message);
#define GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR 0x00000008
%feature("sufix", "_CONSTANT4321end");
#define GL_MAX_SHADER_COMPILER_THREADS_KHR 0x91B0
%feature("sufix", "4321end");
#define GL_COMPLETION_STATUS_KHR 0x91B1
void glMaxShaderCompilerThreadsKHR (GLuint count);
#define GL_CONTEXT_LOST 0x0507
#define GL_LOSE_CONTEXT_ON_RESET 0x8252
#define GL_GUILTY_CONTEXT_RESET 0x8253
#define GL_INNOCENT_CONTEXT_RESET 0x8254
#define GL_UNKNOWN_CONTEXT_RESET 0x8255
#define GL_RESET_NOTIFICATION_STRATEGY 0x8256
#define GL_NO_RESET_NOTIFICATION 0x8261
#define GL_CONTEXT_ROBUST_ACCESS 0x90F3
void glGetnUniformfv (GLuint program, GLint location, GLsizei bufSize, GLfloat* params);
void glGetnUniformiv (GLuint program, GLint location, GLsizei bufSize, GLint* params);
void glGetnUniformuiv (GLuint program, GLint location, GLsizei bufSize, GLuint* params);
void glReadnPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void *data);
#define GL_SUBGROUP_FEATURE_BASIC_BIT_KHR 0x00000001
#define GL_SUBGROUP_FEATURE_VOTE_BIT_KHR 0x00000002
#define GL_SUBGROUP_FEATURE_ARITHMETIC_BIT_KHR 0x00000004
#define GL_SUBGROUP_FEATURE_BALLOT_BIT_KHR 0x00000008
#define GL_SUBGROUP_FEATURE_SHUFFLE_BIT_KHR 0x00000010
#define GL_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT_KHR 0x00000020
#define GL_SUBGROUP_FEATURE_CLUSTERED_BIT_KHR 0x00000040
#define GL_SUBGROUP_FEATURE_QUAD_BIT_KHR 0x00000080
#define GL_SUBGROUP_SIZE_KHR 0x9532
#define GL_SUBGROUP_SUPPORTED_STAGES_KHR 0x9533
#define GL_SUBGROUP_SUPPORTED_FEATURES_KHR 0x9534
#define GL_SUBGROUP_QUAD_ALL_STAGES_KHR 0x9535
#define GL_COMPRESSED_RGBA_ASTC_4x4_KHR 0x93B0
#define GL_COMPRESSED_RGBA_ASTC_5x4_KHR 0x93B1
#define GL_COMPRESSED_RGBA_ASTC_5x5_KHR 0x93B2
#define GL_COMPRESSED_RGBA_ASTC_6x5_KHR 0x93B3
#define GL_COMPRESSED_RGBA_ASTC_6x6_KHR 0x93B4
#define GL_COMPRESSED_RGBA_ASTC_8x5_KHR 0x93B5
#define GL_COMPRESSED_RGBA_ASTC_8x6_KHR 0x93B6
#define GL_COMPRESSED_RGBA_ASTC_8x8_KHR 0x93B7
#define GL_COMPRESSED_RGBA_ASTC_10x5_KHR 0x93B8
#define GL_COMPRESSED_RGBA_ASTC_10x6_KHR 0x93B9
#define GL_COMPRESSED_RGBA_ASTC_10x8_KHR 0x93BA
#define GL_COMPRESSED_RGBA_ASTC_10x10_KHR 0x93BB
#define GL_COMPRESSED_RGBA_ASTC_12x10_KHR 0x93BC
#define GL_COMPRESSED_RGBA_ASTC_12x12_KHR 0x93BD
#define GL_COMPRESSED_RGBA_ASTC_3x3x3_OES 0x93C0
#define GL_COMPRESSED_RGBA_ASTC_4x3x3_OES 0x93C1
#define GL_COMPRESSED_RGBA_ASTC_4x4x3_OES 0x93C2
#define GL_COMPRESSED_RGBA_ASTC_4x4x4_OES 0x93C3
#define GL_COMPRESSED_RGBA_ASTC_5x4x4_OES 0x93C4
#define GL_COMPRESSED_RGBA_ASTC_5x5x4_OES 0x93C5
#define GL_COMPRESSED_RGBA_ASTC_5x5x5_OES 0x93C6
#define GL_COMPRESSED_RGBA_ASTC_6x5x5_OES 0x93C7
#define GL_COMPRESSED_RGBA_ASTC_6x6x5_OES 0x93C8
#define GL_COMPRESSED_RGBA_ASTC_6x6x6_OES 0x93C9
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR 0x93D0
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR 0x93D1
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR 0x93D2
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR 0x93D3
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR 0x93D4
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR 0x93D5
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR 0x93D6
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR 0x93D7
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR 0x93D8
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR 0x93D9
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR 0x93DA
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR 0x93DB
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR 0x93DC
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR 0x93DD
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES 0x93E0
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES 0x93E1
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES 0x93E2
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES 0x93E3
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES 0x93E4
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES 0x93E5
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES 0x93E6
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES 0x93E7
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES 0x93E8
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES 0x93E9
#define GL_COMPRESSED_RGBA_ASTC_4x4_KHR 0x93B0
#define GL_COMPRESSED_RGBA_ASTC_5x4_KHR 0x93B1
#define GL_COMPRESSED_RGBA_ASTC_5x5_KHR 0x93B2
#define GL_COMPRESSED_RGBA_ASTC_6x5_KHR 0x93B3
#define GL_COMPRESSED_RGBA_ASTC_6x6_KHR 0x93B4
#define GL_COMPRESSED_RGBA_ASTC_8x5_KHR 0x93B5
#define GL_COMPRESSED_RGBA_ASTC_8x6_KHR 0x93B6
#define GL_COMPRESSED_RGBA_ASTC_8x8_KHR 0x93B7
#define GL_COMPRESSED_RGBA_ASTC_10x5_KHR 0x93B8
#define GL_COMPRESSED_RGBA_ASTC_10x6_KHR 0x93B9
#define GL_COMPRESSED_RGBA_ASTC_10x8_KHR 0x93BA
#define GL_COMPRESSED_RGBA_ASTC_10x10_KHR 0x93BB
#define GL_COMPRESSED_RGBA_ASTC_12x10_KHR 0x93BC
#define GL_COMPRESSED_RGBA_ASTC_12x12_KHR 0x93BD
#define GL_COMPRESSED_RGBA_ASTC_3x3x3_OES 0x93C0
#define GL_COMPRESSED_RGBA_ASTC_4x3x3_OES 0x93C1
#define GL_COMPRESSED_RGBA_ASTC_4x4x3_OES 0x93C2
#define GL_COMPRESSED_RGBA_ASTC_4x4x4_OES 0x93C3
#define GL_COMPRESSED_RGBA_ASTC_5x4x4_OES 0x93C4
#define GL_COMPRESSED_RGBA_ASTC_5x5x4_OES 0x93C5
#define GL_COMPRESSED_RGBA_ASTC_5x5x5_OES 0x93C6
#define GL_COMPRESSED_RGBA_ASTC_6x5x5_OES 0x93C7
#define GL_COMPRESSED_RGBA_ASTC_6x6x5_OES 0x93C8
#define GL_COMPRESSED_RGBA_ASTC_6x6x6_OES 0x93C9
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR 0x93D0
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR 0x93D1
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR 0x93D2
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR 0x93D3
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR 0x93D4
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR 0x93D5
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR 0x93D6
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR 0x93D7
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR 0x93D8
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR 0x93D9
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR 0x93DA
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR 0x93DB
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR 0x93DC
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR 0x93DD
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES 0x93E0
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES 0x93E1
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES 0x93E2
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES 0x93E3
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES 0x93E4
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES 0x93E5
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES 0x93E6
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES 0x93E7
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES 0x93E8
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES 0x93E9
#define GL_KTX_FRONT_REGION 0x0
#define GL_KTX_BACK_REGION 0x1
#define GL_KTX_Z_REGION 0x2
#define GL_KTX_STENCIL_REGION 0x3
GLuint glBufferRegionEnabled (void);
GLuint glNewBufferRegion (GLenum region);
void glDeleteBufferRegion (GLenum region);
void glReadBufferRegion (GLuint region, GLint x, GLint y, GLsizei width, GLsizei height);
void glDrawBufferRegion (GLuint region, GLint x, GLint y, GLsizei width, GLsizei height, GLint xDest, GLint yDest);
#define GL_FRAMEBUFFER_FLIP_Y_MESA 0x8BBB
void glFramebufferParameteriMESA (GLenum target, GLenum pname, GLint param);
void glGetFramebufferParameterivMESA (GLenum target, GLenum pname, GLint* params);
#define GL_PACK_INVERT_MESA 0x8758
#define GL_PROGRAM_BINARY_FORMAT_MESA 0x875F
void glResizeBuffersMESA (void);
void glWindowPos2dMESA (GLdouble x, GLdouble y);
void glWindowPos2dvMESA (const GLdouble* p);
void glWindowPos2fMESA (GLfloat x, GLfloat y);
void glWindowPos2fvMESA (const GLfloat* p);
void glWindowPos2iMESA (GLint x, GLint y);
void glWindowPos2ivMESA (const GLint* p);
void glWindowPos2sMESA (GLshort x, GLshort y);
void glWindowPos2svMESA (const GLshort* p);
void glWindowPos3dMESA (GLdouble x, GLdouble y, GLdouble z);
void glWindowPos3dvMESA (const GLdouble* p);
void glWindowPos3fMESA (GLfloat x, GLfloat y, GLfloat z);
void glWindowPos3fvMESA (const GLfloat* p);
void glWindowPos3iMESA (GLint x, GLint y, GLint z);
void glWindowPos3ivMESA (const GLint* p);
void glWindowPos3sMESA (GLshort x, GLshort y, GLshort z);
void glWindowPos3svMESA (const GLshort* p);
void glWindowPos4dMESA (GLdouble x, GLdouble y, GLdouble z, GLdouble);
void glWindowPos4dvMESA (const GLdouble* p);
void glWindowPos4fMESA (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glWindowPos4fvMESA (const GLfloat* p);
void glWindowPos4iMESA (GLint x, GLint y, GLint z, GLint w);
void glWindowPos4ivMESA (const GLint* p);
void glWindowPos4sMESA (GLshort x, GLshort y, GLshort z, GLshort w);
void glWindowPos4svMESA (const GLshort* p);
#define GL_TEXTURE_1D_STACK_MESAX 0x8759
#define GL_TEXTURE_2D_STACK_MESAX 0x875A
#define GL_PROXY_TEXTURE_1D_STACK_MESAX 0x875B
#define GL_PROXY_TEXTURE_2D_STACK_MESAX 0x875C
#define GL_TEXTURE_1D_STACK_BINDING_MESAX 0x875D
#define GL_TEXTURE_2D_STACK_BINDING_MESAX 0x875E
#define GL_UNSIGNED_SHORT_8_8_MESA 0x85BA
#define GL_UNSIGNED_SHORT_8_8_REV_MESA 0x85BB
#define GL_YCBCR_MESA 0x8757
#define GL_3DVISION_STEREO_NV 0x90F4
#define GL_STEREO_SEPARATION_NV 0x90F5
#define GL_STEREO_CONVERGENCE_NV 0x90F6
#define GL_STEREO_CUTOFF_NV 0x90F7
#define GL_STEREO_PROJECTION_NV 0x90F8
#define GL_STEREO_PROJECTION_PERSPECTIVE_NV 0x90F9
#define GL_STEREO_PROJECTION_ORTHO_NV 0x90FA
void glStereoParameterfNV (GLenum pname, GLfloat param);
void glStereoParameteriNV (GLenum pname, GLint param);
#define GL_ALPHA_TO_COVERAGE_DITHER_MODE_NV 0x92BF
#define GL_ALPHA_TO_COVERAGE_DITHER_DEFAULT_NV 0x934D
#define GL_ALPHA_TO_COVERAGE_DITHER_ENABLE_NV 0x934E
#define GL_ALPHA_TO_COVERAGE_DITHER_DISABLE_NV 0x934F
void glAlphaToCoverageDitherControlNV (GLenum mode);
#define GL_BGR_NV 0x80E0
void glMultiDrawArraysIndirectBindlessNV (GLenum mode, const void *indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount);
void glMultiDrawElementsIndirectBindlessNV (GLenum mode, GLenum type, const void *indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount);
void glMultiDrawArraysIndirectBindlessCountNV (GLenum mode, const void *indirect, GLintptr drawCount, GLsizei maxDrawCount, GLsizei stride, GLint vertexBufferCount);
void glMultiDrawElementsIndirectBindlessCountNV (GLenum mode, GLenum type, const void *indirect, GLintptr drawCount, GLsizei maxDrawCount, GLsizei stride, GLint vertexBufferCount);
GLuint64 glGetImageHandleNV (GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format);
GLuint64 glGetTextureHandleNV (GLuint texture);
GLuint64 glGetTextureSamplerHandleNV (GLuint texture, GLuint sampler);
GLboolean glIsImageHandleResidentNV (GLuint64 handle);
GLboolean glIsTextureHandleResidentNV (GLuint64 handle);
void glMakeImageHandleNonResidentNV (GLuint64 handle);
void glMakeImageHandleResidentNV (GLuint64 handle, GLenum access);
void glMakeTextureHandleNonResidentNV (GLuint64 handle);
void glMakeTextureHandleResidentNV (GLuint64 handle);
void glProgramUniformHandleui64NV (GLuint program, GLint location, GLuint64 value);
void glProgramUniformHandleui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64* values);
void glUniformHandleui64NV (GLint location, GLuint64 value);
void glUniformHandleui64vNV (GLint location, GLsizei count, const GLuint64* value);
#define GL_XOR_NV 0x1506
#define GL_RED_NV 0x1903
#define GL_GREEN_NV 0x1904
#define GL_BLUE_NV 0x1905
#define GL_BLEND_PREMULTIPLIED_SRC_NV 0x9280
#define GL_BLEND_OVERLAP_NV 0x9281
#define GL_UNCORRELATED_NV 0x9282
#define GL_DISJOINT_NV 0x9283
#define GL_CONJOINT_NV 0x9284
#define GL_BLEND_ADVANCED_COHERENT_NV 0x9285
#define GL_SRC_NV 0x9286
#define GL_DST_NV 0x9287
#define GL_SRC_OVER_NV 0x9288
#define GL_DST_OVER_NV 0x9289
#define GL_SRC_IN_NV 0x928A
#define GL_DST_IN_NV 0x928B
#define GL_SRC_OUT_NV 0x928C
#define GL_DST_OUT_NV 0x928D
#define GL_SRC_ATOP_NV 0x928E
#define GL_DST_ATOP_NV 0x928F
#define GL_PLUS_NV 0x9291
#define GL_PLUS_DARKER_NV 0x9292
#define GL_MULTIPLY_NV 0x9294
#define GL_SCREEN_NV 0x9295
#define GL_OVERLAY_NV 0x9296
#define GL_DARKEN_NV 0x9297
#define GL_LIGHTEN_NV 0x9298
#define GL_COLORDODGE_NV 0x9299
#define GL_COLORBURN_NV 0x929A
#define GL_HARDLIGHT_NV 0x929B
#define GL_SOFTLIGHT_NV 0x929C
#define GL_DIFFERENCE_NV 0x929E
#define GL_MINUS_NV 0x929F
#define GL_EXCLUSION_NV 0x92A0
#define GL_CONTRAST_NV 0x92A1
#define GL_INVERT_RGB_NV 0x92A3
#define GL_LINEARDODGE_NV 0x92A4
#define GL_LINEARBURN_NV 0x92A5
#define GL_VIVIDLIGHT_NV 0x92A6
#define GL_LINEARLIGHT_NV 0x92A7
#define GL_PINLIGHT_NV 0x92A8
#define GL_HARDMIX_NV 0x92A9
#define GL_HSL_HUE_NV 0x92AD
#define GL_HSL_SATURATION_NV 0x92AE
#define GL_HSL_COLOR_NV 0x92AF
#define GL_HSL_LUMINOSITY_NV 0x92B0
#define GL_PLUS_CLAMPED_NV 0x92B1
#define GL_PLUS_CLAMPED_ALPHA_NV 0x92B2
#define GL_MINUS_CLAMPED_NV 0x92B3
#define GL_INVERT_OVG_NV 0x92B4
void glBlendBarrierNV (void);
void glBlendParameteriNV (GLenum pname, GLint value);
#define GL_FACTOR_MIN_AMD 0x901C
#define GL_FACTOR_MAX_AMD 0x901D
%feature("sufix", "_CONSTANT4321end");
#define GL_VIEWPORT_POSITION_W_SCALE_NV 0x937C
%feature("sufix", "4321end");
#define GL_VIEWPORT_POSITION_W_SCALE_X_COEFF_NV 0x937D
#define GL_VIEWPORT_POSITION_W_SCALE_Y_COEFF_NV 0x937E
void glViewportPositionWScaleNV (GLuint index, GLfloat xcoeff, GLfloat ycoeff);
#define GL_TERMINATE_SEQUENCE_COMMAND_NV 0x0000
#define GL_NOP_COMMAND_NV 0x0001
#define GL_DRAW_ELEMENTS_COMMAND_NV 0x0002
#define GL_DRAW_ARRAYS_COMMAND_NV 0x0003
#define GL_DRAW_ELEMENTS_STRIP_COMMAND_NV 0x0004
#define GL_DRAW_ARRAYS_STRIP_COMMAND_NV 0x0005
#define GL_DRAW_ELEMENTS_INSTANCED_COMMAND_NV 0x0006
#define GL_DRAW_ARRAYS_INSTANCED_COMMAND_NV 0x0007
#define GL_ELEMENT_ADDRESS_COMMAND_NV 0x0008
#define GL_ATTRIBUTE_ADDRESS_COMMAND_NV 0x0009
#define GL_UNIFORM_ADDRESS_COMMAND_NV 0x000a
#define GL_BLEND_COLOR_COMMAND_NV 0x000b
#define GL_STENCIL_REF_COMMAND_NV 0x000c
#define GL_LINE_WIDTH_COMMAND_NV 0x000d
#define GL_POLYGON_OFFSET_COMMAND_NV 0x000e
#define GL_ALPHA_REF_COMMAND_NV 0x000f
#define GL_VIEWPORT_COMMAND_NV 0x0010
#define GL_SCISSOR_COMMAND_NV 0x0011
#define GL_FRONT_FACE_COMMAND_NV 0x0012
void glCallCommandListNV (GLuint list);
void glCommandListSegmentsNV (GLuint list, GLuint segments);
void glCompileCommandListNV (GLuint list);
void glCreateCommandListsNV (GLsizei n, GLuint* lists);
void glCreateStatesNV (GLsizei n, GLuint* states);
void glDeleteCommandListsNV (GLsizei n, const GLuint* lists);
void glDeleteStatesNV (GLsizei n, const GLuint* states);
void glDrawCommandsAddressNV (GLenum primitiveMode, const GLuint64* indirects, const GLsizei* sizes, GLuint count);
void glDrawCommandsNV (GLenum primitiveMode, GLuint buffer, const GLintptr* indirects, const GLsizei* sizes, GLuint count);
void glDrawCommandsStatesAddressNV (const GLuint64* indirects, const GLsizei* sizes, const GLuint* states, const GLuint* fbos, GLuint count);
void glDrawCommandsStatesNV (GLuint buffer, const GLintptr* indirects, const GLsizei* sizes, const GLuint* states, const GLuint* fbos, GLuint count);
GLuint glGetCommandHeaderNV (GLenum tokenID, GLuint size);
GLushort glGetStageIndexNV (GLenum shadertype);
GLboolean glIsCommandListNV (GLuint list);
GLboolean glIsStateNV (GLuint state);
void glListDrawCommandsStatesClientNV (GLuint list, GLuint segment, const void** indirects, const GLsizei* sizes, const GLuint* states, const GLuint* fbos, GLuint count);
void glStateCaptureNV (GLuint state, GLenum mode);
#define GL_COMPUTE_PROGRAM_NV 0x90FB
#define GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV 0x90FC
#define GL_QUERY_WAIT_NV 0x8E13
#define GL_QUERY_NO_WAIT_NV 0x8E14
#define GL_QUERY_BY_REGION_WAIT_NV 0x8E15
#define GL_QUERY_BY_REGION_NO_WAIT_NV 0x8E16
void glBeginConditionalRenderNV (GLuint id, GLenum mode);
void glEndConditionalRenderNV (void);
#define GL_CONSERVATIVE_RASTERIZATION_NV 0x9346
#define GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV 0x9347
#define GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV 0x9348
#define GL_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV 0x9349
void glSubpixelPrecisionBiasNV (GLuint xbits, GLuint ybits);
#define GL_CONSERVATIVE_RASTER_DILATE_NV 0x9379
#define GL_CONSERVATIVE_RASTER_DILATE_RANGE_NV 0x937A
#define GL_CONSERVATIVE_RASTER_DILATE_GRANULARITY_NV 0x937B
void glConservativeRasterParameterfNV (GLenum pname, GLfloat value);
#define GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_NV 0x9550
#define GL_CONSERVATIVE_RASTER_MODE_NV 0x954D
#define GL_CONSERVATIVE_RASTER_MODE_POST_SNAP_NV 0x954E
#define GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_TRIANGLES_NV 0x954F
void glConservativeRasterParameteriNV (GLenum pname, GLint param);
#define GL_COPY_READ_BUFFER_NV 0x8F36
#define GL_COPY_WRITE_BUFFER_NV 0x8F37
void glCopyBufferSubDataNV (GLenum readtarget, GLenum writetarget, GLintptr readoffset, GLintptr writeoffset, GLsizeiptr size);
#define GL_DEPTH_STENCIL_TO_RGBA_NV 0x886E
#define GL_DEPTH_STENCIL_TO_BGRA_NV 0x886F
void glCopyImageSubDataNV (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth);
#define GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV 0x90D0
#define GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV 0x90D1
#define GL_DEPTH_COMPONENT32F_NV 0x8DAB
#define GL_DEPTH32F_STENCIL8_NV 0x8DAC
#define GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV 0x8DAD
#define GL_DEPTH_BUFFER_FLOAT_MODE_NV 0x8DAF
void glDepthRangedNV (GLdouble zNear, GLdouble zFar);
void glClearDepthdNV (GLdouble depth);
void glDepthBoundsdNV (GLdouble zmin, GLdouble zmax);
#define GL_DEPTH_CLAMP_NV 0x864F
#define GL_DEPTH_COMPONENT16_NONLINEAR_NV 0x8E2C
#define GL_SAMPLE_COUNT_BITS_NV 0x8864
#define GL_CURRENT_SAMPLE_COUNT_QUERY_NV 0x8865
#define GL_QUERY_RESULT_NV 0x8866
#define GL_QUERY_RESULT_AVAILABLE_NV 0x8867
#define GL_SAMPLE_COUNT_NV 0x8914
#define GL_MAX_DRAW_BUFFERS_NV 0x8824
#define GL_DRAW_BUFFER0_NV 0x8825
#define GL_DRAW_BUFFER1_NV 0x8826
#define GL_DRAW_BUFFER2_NV 0x8827
#define GL_DRAW_BUFFER3_NV 0x8828
#define GL_DRAW_BUFFER4_NV 0x8829
#define GL_DRAW_BUFFER5_NV 0x882A
#define GL_DRAW_BUFFER6_NV 0x882B
#define GL_DRAW_BUFFER7_NV 0x882C
#define GL_DRAW_BUFFER8_NV 0x882D
#define GL_DRAW_BUFFER9_NV 0x882E
#define GL_DRAW_BUFFER10_NV 0x882F
#define GL_DRAW_BUFFER11_NV 0x8830
#define GL_DRAW_BUFFER12_NV 0x8831
#define GL_DRAW_BUFFER13_NV 0x8832
#define GL_DRAW_BUFFER14_NV 0x8833
#define GL_DRAW_BUFFER15_NV 0x8834
#define GL_COLOR_ATTACHMENT0_NV 0x8CE0
#define GL_COLOR_ATTACHMENT1_NV 0x8CE1
#define GL_COLOR_ATTACHMENT2_NV 0x8CE2
#define GL_COLOR_ATTACHMENT3_NV 0x8CE3
#define GL_COLOR_ATTACHMENT4_NV 0x8CE4
#define GL_COLOR_ATTACHMENT5_NV 0x8CE5
#define GL_COLOR_ATTACHMENT6_NV 0x8CE6
#define GL_COLOR_ATTACHMENT7_NV 0x8CE7
#define GL_COLOR_ATTACHMENT8_NV 0x8CE8
#define GL_COLOR_ATTACHMENT9_NV 0x8CE9
#define GL_COLOR_ATTACHMENT10_NV 0x8CEA
#define GL_COLOR_ATTACHMENT11_NV 0x8CEB
#define GL_COLOR_ATTACHMENT12_NV 0x8CEC
#define GL_COLOR_ATTACHMENT13_NV 0x8CED
#define GL_COLOR_ATTACHMENT14_NV 0x8CEE
#define GL_COLOR_ATTACHMENT15_NV 0x8CEF
void glDrawBuffersNV (GLsizei n, const GLenum* bufs);
void glDrawArraysInstancedNV (GLenum mode, GLint first, GLsizei count, GLsizei primcount);
void glDrawElementsInstancedNV (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei primcount);
void glDrawTextureNV (GLuint texture, GLuint sampler, GLfloat x0, GLfloat y0, GLfloat x1, GLfloat y1, GLfloat z, GLfloat s0, GLfloat t0, GLfloat s1, GLfloat t1);
void glDrawVkImageNV (GLuint64 vkImage, GLuint sampler, GLfloat x0, GLfloat y0, GLfloat x1, GLfloat y1, GLfloat z, GLfloat s0, GLfloat t0, GLfloat s1, GLfloat t1);
GLVULKANPROCNV glGetVkProcAddrNV (const GLchar* name);
void glSignalVkFenceNV (GLuint64 vkFence);
void glSignalVkSemaphoreNV (GLuint64 vkSemaphore);
void glWaitVkSemaphoreNV (GLuint64 vkSemaphore);
#define GL_TEXTURE_EXTERNAL_OES 0x8D65
#define GL_SAMPLER_EXTERNAL_OES 0x8D66
#define GL_TEXTURE_BINDING_EXTERNAL_OES 0x8D67
#define GL_REQUIRED_TEXTURE_IMAGE_UNITS_OES 0x8D68
#define GL_EVAL_2D_NV 0x86C0
#define GL_EVAL_TRIANGULAR_2D_NV 0x86C1
#define GL_MAP_TESSELLATION_NV 0x86C2
#define GL_MAP_ATTRIB_U_ORDER_NV 0x86C3
#define GL_MAP_ATTRIB_V_ORDER_NV 0x86C4
#define GL_EVAL_FRACTIONAL_TESSELLATION_NV 0x86C5
#define GL_EVAL_VERTEX_ATTRIB0_NV 0x86C6
#define GL_EVAL_VERTEX_ATTRIB1_NV 0x86C7
#define GL_EVAL_VERTEX_ATTRIB2_NV 0x86C8
#define GL_EVAL_VERTEX_ATTRIB3_NV 0x86C9
#define GL_EVAL_VERTEX_ATTRIB4_NV 0x86CA
#define GL_EVAL_VERTEX_ATTRIB5_NV 0x86CB
#define GL_EVAL_VERTEX_ATTRIB6_NV 0x86CC
#define GL_EVAL_VERTEX_ATTRIB7_NV 0x86CD
#define GL_EVAL_VERTEX_ATTRIB8_NV 0x86CE
#define GL_EVAL_VERTEX_ATTRIB9_NV 0x86CF
#define GL_EVAL_VERTEX_ATTRIB10_NV 0x86D0
#define GL_EVAL_VERTEX_ATTRIB11_NV 0x86D1
#define GL_EVAL_VERTEX_ATTRIB12_NV 0x86D2
#define GL_EVAL_VERTEX_ATTRIB13_NV 0x86D3
#define GL_EVAL_VERTEX_ATTRIB14_NV 0x86D4
#define GL_EVAL_VERTEX_ATTRIB15_NV 0x86D5
#define GL_MAX_MAP_TESSELLATION_NV 0x86D6
#define GL_MAX_RATIONAL_EVAL_ORDER_NV 0x86D7
void glEvalMapsNV (GLenum target, GLenum mode);
void glGetMapAttribParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat* params);
void glGetMapAttribParameterivNV (GLenum target, GLuint index, GLenum pname, GLint* params);
void glGetMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, void *points);
void glGetMapParameterfvNV (GLenum target, GLenum pname, GLfloat* params);
void glGetMapParameterivNV (GLenum target, GLenum pname, GLint* params);
void glMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const void *points);
void glMapParameterfvNV (GLenum target, GLenum pname, const GLfloat* params);
void glMapParameterivNV (GLenum target, GLenum pname, const GLint* params);
#define GL_SAMPLE_POSITION_NV 0x8E50
#define GL_SAMPLE_MASK_NV 0x8E51
#define GL_SAMPLE_MASK_VALUE_NV 0x8E52
#define GL_TEXTURE_BINDING_RENDERBUFFER_NV 0x8E53
#define GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV 0x8E54
#define GL_TEXTURE_RENDERBUFFER_NV 0x8E55
#define GL_SAMPLER_RENDERBUFFER_NV 0x8E56
#define GL_INT_SAMPLER_RENDERBUFFER_NV 0x8E57
#define GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV 0x8E58
#define GL_MAX_SAMPLE_MASK_WORDS_NV 0x8E59
void glGetMultisamplefvNV (GLenum pname, GLuint index, GLfloat* val);
void glSampleMaskIndexedNV (GLuint index, GLbitfield mask);
void glTexRenderbufferNV (GLenum target, GLuint renderbuffer);
#define GL_MAX_COLOR_ATTACHMENTS_NV 0x8CDF
#define GL_COLOR_ATTACHMENT0_NV 0x8CE0
#define GL_COLOR_ATTACHMENT1_NV 0x8CE1
#define GL_COLOR_ATTACHMENT2_NV 0x8CE2
#define GL_COLOR_ATTACHMENT3_NV 0x8CE3
#define GL_COLOR_ATTACHMENT4_NV 0x8CE4
#define GL_COLOR_ATTACHMENT5_NV 0x8CE5
#define GL_COLOR_ATTACHMENT6_NV 0x8CE6
#define GL_COLOR_ATTACHMENT7_NV 0x8CE7
#define GL_COLOR_ATTACHMENT8_NV 0x8CE8
#define GL_COLOR_ATTACHMENT9_NV 0x8CE9
#define GL_COLOR_ATTACHMENT10_NV 0x8CEA
#define GL_COLOR_ATTACHMENT11_NV 0x8CEB
#define GL_COLOR_ATTACHMENT12_NV 0x8CEC
#define GL_COLOR_ATTACHMENT13_NV 0x8CED
#define GL_COLOR_ATTACHMENT14_NV 0x8CEE
#define GL_COLOR_ATTACHMENT15_NV 0x8CEF
#define GL_ALL_COMPLETED_NV 0x84F2
#define GL_FENCE_STATUS_NV 0x84F3
#define GL_FENCE_CONDITION_NV 0x84F4
void glDeleteFencesNV (GLsizei n, const GLuint* fences);
void glFinishFenceNV (GLuint fence);
void glGenFencesNV (GLsizei n, GLuint* fences);
void glGetFenceivNV (GLuint fence, GLenum pname, GLint* params);
GLboolean glIsFenceNV (GLuint fence);
void glSetFenceNV (GLuint fence, GLenum condition);
GLboolean glTestFenceNV (GLuint fence);
#define GL_FILL_RECTANGLE_NV 0x933C
#define GL_FLOAT_R_NV 0x8880
#define GL_FLOAT_RG_NV 0x8881
#define GL_FLOAT_RGB_NV 0x8882
#define GL_FLOAT_RGBA_NV 0x8883
#define GL_FLOAT_R16_NV 0x8884
#define GL_FLOAT_R32_NV 0x8885
#define GL_FLOAT_RG16_NV 0x8886
#define GL_FLOAT_RG32_NV 0x8887
#define GL_FLOAT_RGB16_NV 0x8888
#define GL_FLOAT_RGB32_NV 0x8889
#define GL_FLOAT_RGBA16_NV 0x888A
#define GL_FLOAT_RGBA32_NV 0x888B
#define GL_TEXTURE_FLOAT_COMPONENTS_NV 0x888C
#define GL_FLOAT_CLEAR_COLOR_VALUE_NV 0x888D
#define GL_FLOAT_RGBA_MODE_NV 0x888E
#define GL_FOG_DISTANCE_MODE_NV 0x855A
#define GL_EYE_RADIAL_NV 0x855B
#define GL_EYE_PLANE_ABSOLUTE_NV 0x855C
#define GL_FRAGMENT_COVERAGE_TO_COLOR_NV 0x92DD
%feature("sufix", "_CONSTANT4321end");
#define GL_FRAGMENT_COVERAGE_COLOR_NV 0x92DE
%feature("sufix", "4321end");
void glFragmentCoverageColorNV (GLuint color);
#define GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV 0x8868
#define GL_FRAGMENT_PROGRAM_NV 0x8870
#define GL_MAX_TEXTURE_COORDS_NV 0x8871
#define GL_MAX_TEXTURE_IMAGE_UNITS_NV 0x8872
#define GL_FRAGMENT_PROGRAM_BINDING_NV 0x8873
#define GL_PROGRAM_ERROR_STRING_NV 0x8874
void glGetProgramNamedParameterdvNV (GLuint id, GLsizei len, const GLubyte* name, GLdouble *params);
void glGetProgramNamedParameterfvNV (GLuint id, GLsizei len, const GLubyte* name, GLfloat *params);
void glProgramNamedParameter4dNV (GLuint id, GLsizei len, const GLubyte* name, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramNamedParameter4dvNV (GLuint id, GLsizei len, const GLubyte* name, const GLdouble v[]);
void glProgramNamedParameter4fNV (GLuint id, GLsizei len, const GLubyte* name, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramNamedParameter4fvNV (GLuint id, GLsizei len, const GLubyte* name, const GLfloat v[]);
#define GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV 0x88F4
#define GL_MAX_PROGRAM_CALL_DEPTH_NV 0x88F5
#define GL_MAX_PROGRAM_IF_DEPTH_NV 0x88F6
#define GL_MAX_PROGRAM_LOOP_DEPTH_NV 0x88F7
#define GL_MAX_PROGRAM_LOOP_COUNT_NV 0x88F8
#define GL_DRAW_FRAMEBUFFER_BINDING_NV 0x8CA6
#define GL_READ_FRAMEBUFFER_NV 0x8CA8
#define GL_DRAW_FRAMEBUFFER_NV 0x8CA9
#define GL_READ_FRAMEBUFFER_BINDING_NV 0x8CAA
void glBlitFramebufferNV (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
#define GL_COLOR_SAMPLES_NV 0x8E20
#define GL_RASTER_MULTISAMPLE_EXT 0x9327
%feature("sufix", "_CONSTANT4321end");
#define GL_RASTER_SAMPLES_EXT 0x9328
%feature("sufix", "4321end");
#define GL_MAX_RASTER_SAMPLES_EXT 0x9329
#define GL_RASTER_FIXED_SAMPLE_LOCATIONS_EXT 0x932A
#define GL_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT 0x932B
#define GL_EFFECTIVE_RASTER_SAMPLES_EXT 0x932C
#define GL_DEPTH_SAMPLES_NV 0x932D
#define GL_STENCIL_SAMPLES_NV 0x932E
#define GL_MIXED_DEPTH_SAMPLES_SUPPORTED_NV 0x932F
#define GL_MIXED_STENCIL_SAMPLES_SUPPORTED_NV 0x9330
#define GL_COVERAGE_MODULATION_TABLE_SIZE_NV 0x9333
#define GL_RENDERBUFFER_SAMPLES_NV 0x8CAB
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_NV 0x8D56
#define GL_MAX_SAMPLES_NV 0x8D57
void glRenderbufferStorageMultisampleNV (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
#define GL_RENDERBUFFER_COVERAGE_SAMPLES_NV 0x8CAB
#define GL_RENDERBUFFER_COLOR_SAMPLES_NV  0x8E10
#define GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV 0x8E11
#define GL_MULTISAMPLE_COVERAGE_MODES_NV 0x8E12
void glRenderbufferStorageMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
#define GL_GEOMETRY_PROGRAM_NV 0x8C26
#define GL_MAX_PROGRAM_OUTPUT_VERTICES_NV 0x8C27
#define GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV 0x8C28
void glProgramVertexLimitNV (GLenum target, GLint limit);
#define GL_PER_GPU_STORAGE_BIT_NV 0x0800
#define GL_MULTICAST_GPUS_NV 0x92BA
#define GL_PER_GPU_STORAGE_NV 0x9548
#define GL_MULTICAST_PROGRAMMABLE_SAMPLE_LOCATION_NV 0x9549
%feature("sufix", "_CONSTANT4321end");
#define GL_RENDER_GPU_MASK_NV 0x9558
%feature("sufix", "4321end");
void glMulticastBarrierNV (void);
void glMulticastBlitFramebufferNV (GLuint srcGpu, GLuint dstGpu, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
void glMulticastBufferSubDataNV (GLbitfield gpuMask, GLuint buffer, GLintptr offset, GLsizeiptr size, const void *data);
void glMulticastCopyBufferSubDataNV (GLuint readGpu, GLbitfield writeGpuMask, GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
void glMulticastCopyImageSubDataNV (GLuint srcGpu, GLbitfield dstGpuMask, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth);
void glMulticastFramebufferSampleLocationsfvNV (GLuint gpu, GLuint framebuffer, GLuint start, GLsizei count, const GLfloat* v);
void glMulticastGetQueryObjecti64vNV (GLuint gpu, GLuint id, GLenum pname, GLint64* params);
void glMulticastGetQueryObjectivNV (GLuint gpu, GLuint id, GLenum pname, GLint* params);
void glMulticastGetQueryObjectui64vNV (GLuint gpu, GLuint id, GLenum pname, GLuint64* params);
void glMulticastGetQueryObjectuivNV (GLuint gpu, GLuint id, GLenum pname, GLuint* params);
void glMulticastWaitSyncNV (GLuint signalGpu, GLbitfield waitGpuMask);
void glRenderGpuMaskNV (GLbitfield mask);
#define GL_MIN_PROGRAM_TEXEL_OFFSET_NV 0x8904
#define GL_MAX_PROGRAM_TEXEL_OFFSET_NV 0x8905
#define GL_PROGRAM_ATTRIB_COMPONENTS_NV 0x8906
#define GL_PROGRAM_RESULT_COMPONENTS_NV 0x8907
#define GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV 0x8908
#define GL_MAX_PROGRAM_RESULT_COMPONENTS_NV 0x8909
#define GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV 0x8DA5
#define GL_MAX_PROGRAM_GENERIC_RESULTS_NV 0x8DA6
void glProgramLocalParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
void glProgramLocalParameterI4ivNV (GLenum target, GLuint index, const GLint *params);
void glProgramLocalParametersI4ivNV (GLenum target, GLuint index, GLsizei count, const GLint *params);
void glProgramLocalParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glProgramLocalParameterI4uivNV (GLenum target, GLuint index, const GLuint *params);
void glProgramLocalParametersI4uivNV (GLenum target, GLuint index, GLsizei count, const GLuint *params);
void glProgramEnvParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
void glProgramEnvParameterI4ivNV (GLenum target, GLuint index, const GLint *params);
void glProgramEnvParametersI4ivNV (GLenum target, GLuint index, GLsizei count, const GLint *params);
void glProgramEnvParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glProgramEnvParameterI4uivNV (GLenum target, GLuint index, const GLuint *params);
void glProgramEnvParametersI4uivNV (GLenum target, GLuint index, GLsizei count, const GLuint *params);
#define GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV 0x8E5A
#define GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV 0x8E5B
#define GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV 0x8E5C
#define GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV 0x8E5D
#define GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV 0x8E5E
#define GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV 0x8E5F
#define GL_INT64_NV 0x140E
#define GL_UNSIGNED_INT64_NV 0x140F
#define GL_INT8_NV 0x8FE0
#define GL_INT8_VEC2_NV 0x8FE1
#define GL_INT8_VEC3_NV 0x8FE2
#define GL_INT8_VEC4_NV 0x8FE3
#define GL_INT16_NV 0x8FE4
#define GL_INT16_VEC2_NV 0x8FE5
#define GL_INT16_VEC3_NV 0x8FE6
#define GL_INT16_VEC4_NV 0x8FE7
#define GL_INT64_VEC2_NV 0x8FE9
#define GL_INT64_VEC3_NV 0x8FEA
#define GL_INT64_VEC4_NV 0x8FEB
#define GL_UNSIGNED_INT8_NV 0x8FEC
#define GL_UNSIGNED_INT8_VEC2_NV 0x8FED
#define GL_UNSIGNED_INT8_VEC3_NV 0x8FEE
#define GL_UNSIGNED_INT8_VEC4_NV 0x8FEF
#define GL_UNSIGNED_INT16_NV 0x8FF0
#define GL_UNSIGNED_INT16_VEC2_NV 0x8FF1
#define GL_UNSIGNED_INT16_VEC3_NV 0x8FF2
#define GL_UNSIGNED_INT16_VEC4_NV 0x8FF3
#define GL_UNSIGNED_INT64_VEC2_NV 0x8FF5
#define GL_UNSIGNED_INT64_VEC3_NV 0x8FF6
#define GL_UNSIGNED_INT64_VEC4_NV 0x8FF7
#define GL_FLOAT16_NV 0x8FF8
#define GL_FLOAT16_VEC2_NV 0x8FF9
#define GL_FLOAT16_VEC3_NV 0x8FFA
#define GL_FLOAT16_VEC4_NV 0x8FFB
void glGetUniformi64vNV (GLuint program, GLint location, GLint64EXT* params);
void glGetUniformui64vNV (GLuint program, GLint location, GLuint64EXT* params);
void glProgramUniform1i64NV (GLuint program, GLint location, GLint64EXT x);
void glProgramUniform1i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT* value);
void glProgramUniform1ui64NV (GLuint program, GLint location, GLuint64EXT x);
void glProgramUniform1ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
void glProgramUniform2i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y);
void glProgramUniform2i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT* value);
void glProgramUniform2ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y);
void glProgramUniform2ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
void glProgramUniform3i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
void glProgramUniform3i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT* value);
void glProgramUniform3ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
void glProgramUniform3ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
void glProgramUniform4i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
void glProgramUniform4i64vNV (GLuint program, GLint location, GLsizei count, const GLint64EXT* value);
void glProgramUniform4ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
void glProgramUniform4ui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
void glUniform1i64NV (GLint location, GLint64EXT x);
void glUniform1i64vNV (GLint location, GLsizei count, const GLint64EXT* value);
void glUniform1ui64NV (GLint location, GLuint64EXT x);
void glUniform1ui64vNV (GLint location, GLsizei count, const GLuint64EXT* value);
void glUniform2i64NV (GLint location, GLint64EXT x, GLint64EXT y);
void glUniform2i64vNV (GLint location, GLsizei count, const GLint64EXT* value);
void glUniform2ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y);
void glUniform2ui64vNV (GLint location, GLsizei count, const GLuint64EXT* value);
void glUniform3i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z);
void glUniform3i64vNV (GLint location, GLsizei count, const GLint64EXT* value);
void glUniform3ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
void glUniform3ui64vNV (GLint location, GLsizei count, const GLuint64EXT* value);
void glUniform4i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
void glUniform4i64vNV (GLint location, GLsizei count, const GLint64EXT* value);
void glUniform4ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
void glUniform4ui64vNV (GLint location, GLsizei count, const GLuint64EXT* value);
#define GL_HALF_FLOAT_NV 0x140B
void glColor3hNV (GLhalf red, GLhalf green, GLhalf blue);
void glColor3hvNV (const GLhalf* v);
void glColor4hNV (GLhalf red, GLhalf green, GLhalf blue, GLhalf alpha);
void glColor4hvNV (const GLhalf* v);
void glFogCoordhNV (GLhalf fog);
void glFogCoordhvNV (const GLhalf* fog);
void glMultiTexCoord1hNV (GLenum target, GLhalf s);
void glMultiTexCoord1hvNV (GLenum target, const GLhalf* v);
void glMultiTexCoord2hNV (GLenum target, GLhalf s, GLhalf t);
void glMultiTexCoord2hvNV (GLenum target, const GLhalf* v);
void glMultiTexCoord3hNV (GLenum target, GLhalf s, GLhalf t, GLhalf r);
void glMultiTexCoord3hvNV (GLenum target, const GLhalf* v);
void glMultiTexCoord4hNV (GLenum target, GLhalf s, GLhalf t, GLhalf r, GLhalf q);
void glMultiTexCoord4hvNV (GLenum target, const GLhalf* v);
void glNormal3hNV (GLhalf nx, GLhalf ny, GLhalf nz);
void glNormal3hvNV (const GLhalf* v);
void glSecondaryColor3hNV (GLhalf red, GLhalf green, GLhalf blue);
void glSecondaryColor3hvNV (const GLhalf* v);
void glTexCoord1hNV (GLhalf s);
void glTexCoord1hvNV (const GLhalf* v);
void glTexCoord2hNV (GLhalf s, GLhalf t);
void glTexCoord2hvNV (const GLhalf* v);
void glTexCoord3hNV (GLhalf s, GLhalf t, GLhalf r);
void glTexCoord3hvNV (const GLhalf* v);
void glTexCoord4hNV (GLhalf s, GLhalf t, GLhalf r, GLhalf q);
void glTexCoord4hvNV (const GLhalf* v);
void glVertex2hNV (GLhalf x, GLhalf y);
void glVertex2hvNV (const GLhalf* v);
void glVertex3hNV (GLhalf x, GLhalf y, GLhalf z);
void glVertex3hvNV (const GLhalf* v);
void glVertex4hNV (GLhalf x, GLhalf y, GLhalf z, GLhalf w);
void glVertex4hvNV (const GLhalf* v);
void glVertexAttrib1hNV (GLuint index, GLhalf x);
void glVertexAttrib1hvNV (GLuint index, const GLhalf* v);
void glVertexAttrib2hNV (GLuint index, GLhalf x, GLhalf y);
void glVertexAttrib2hvNV (GLuint index, const GLhalf* v);
void glVertexAttrib3hNV (GLuint index, GLhalf x, GLhalf y, GLhalf z);
void glVertexAttrib3hvNV (GLuint index, const GLhalf* v);
void glVertexAttrib4hNV (GLuint index, GLhalf x, GLhalf y, GLhalf z, GLhalf w);
void glVertexAttrib4hvNV (GLuint index, const GLhalf* v);
void glVertexAttribs1hvNV (GLuint index, GLsizei n, const GLhalf* v);
void glVertexAttribs2hvNV (GLuint index, GLsizei n, const GLhalf* v);
void glVertexAttribs3hvNV (GLuint index, GLsizei n, const GLhalf* v);
void glVertexAttribs4hvNV (GLuint index, GLsizei n, const GLhalf* v);
void glVertexWeighthNV (GLhalf weight);
void glVertexWeighthvNV (const GLhalf* weight);
typedef unsigned short GLhalf;
#define GL_VERTEX_ATTRIB_ARRAY_DIVISOR_NV 0x88FE
void glVertexAttribDivisorNV (GLuint index, GLuint divisor);
#define GL_MULTISAMPLES_NV 0x9371
#define GL_SUPERSAMPLE_SCALE_X_NV 0x9372
#define GL_SUPERSAMPLE_SCALE_Y_NV 0x9373
#define GL_CONFORMANT_NV 0x9374
void glGetInternalformatSampleivNV (GLenum target, GLenum internalformat, GLsizei samples, GLenum pname, GLsizei bufSize, GLint* params);
#define GL_MAX_SHININESS_NV 0x8504
#define GL_MAX_SPOT_EXPONENT_NV 0x8505
#define GL_ATTACHED_MEMORY_OBJECT_NV 0x95A4
#define GL_ATTACHED_MEMORY_OFFSET_NV 0x95A5
#define GL_MEMORY_ATTACHABLE_ALIGNMENT_NV 0x95A6
#define GL_MEMORY_ATTACHABLE_SIZE_NV 0x95A7
#define GL_MEMORY_ATTACHABLE_NV 0x95A8
#define GL_DETACHED_MEMORY_INCARNATION_NV 0x95A9
#define GL_DETACHED_TEXTURES_NV 0x95AA
#define GL_DETACHED_BUFFERS_NV 0x95AB
#define GL_MAX_DETACHED_TEXTURES_NV 0x95AC
#define GL_MAX_DETACHED_BUFFERS_NV 0x95AD
void glBufferAttachMemoryNV (GLenum target, GLuint memory, GLuint64 offset);
void glGetMemoryObjectDetachedResourcesuivNV (GLuint memory, GLenum pname, GLint first, GLsizei count, GLuint* params);
void glNamedBufferAttachMemoryNV (GLuint buffer, GLuint memory, GLuint64 offset);
void glResetMemoryObjectParameterNV (GLuint memory, GLenum pname);
void glTexAttachMemoryNV (GLenum target, GLuint memory, GLuint64 offset);
void glTextureAttachMemoryNV (GLuint texture, GLuint memory, GLuint64 offset);
#define GL_MESH_SHADER_BIT_NV 0x00000040
#define GL_TASK_SHADER_BIT_NV 0x00000080
#define GL_MAX_MESH_UNIFORM_BLOCKS_NV 0x8E60
#define GL_MAX_MESH_TEXTURE_IMAGE_UNITS_NV 0x8E61
#define GL_MAX_MESH_IMAGE_UNIFORMS_NV 0x8E62
#define GL_MAX_MESH_UNIFORM_COMPONENTS_NV 0x8E63
#define GL_MAX_MESH_ATOMIC_COUNTER_BUFFERS_NV 0x8E64
#define GL_MAX_MESH_ATOMIC_COUNTERS_NV 0x8E65
#define GL_MAX_MESH_SHADER_STORAGE_BLOCKS_NV 0x8E66
#define GL_MAX_COMBINED_MESH_UNIFORM_COMPONENTS_NV 0x8E67
#define GL_MAX_TASK_UNIFORM_BLOCKS_NV 0x8E68
#define GL_MAX_TASK_TEXTURE_IMAGE_UNITS_NV 0x8E69
#define GL_MAX_TASK_IMAGE_UNIFORMS_NV 0x8E6A
#define GL_MAX_TASK_UNIFORM_COMPONENTS_NV 0x8E6B
#define GL_MAX_TASK_ATOMIC_COUNTER_BUFFERS_NV 0x8E6C
#define GL_MAX_TASK_ATOMIC_COUNTERS_NV 0x8E6D
#define GL_MAX_TASK_SHADER_STORAGE_BLOCKS_NV 0x8E6E
#define GL_MAX_COMBINED_TASK_UNIFORM_COMPONENTS_NV 0x8E6F
#define GL_MESH_OUTPUT_PER_VERTEX_GRANULARITY_NV 0x92DF
#define GL_MAX_MESH_TOTAL_MEMORY_SIZE_NV 0x9536
#define GL_MAX_TASK_TOTAL_MEMORY_SIZE_NV 0x9537
#define GL_MAX_MESH_OUTPUT_VERTICES_NV 0x9538
#define GL_MAX_MESH_OUTPUT_PRIMITIVES_NV 0x9539
#define GL_MAX_TASK_OUTPUT_COUNT_NV 0x953A
#define GL_MAX_MESH_WORK_GROUP_SIZE_NV 0x953B
#define GL_MAX_TASK_WORK_GROUP_SIZE_NV 0x953C
#define GL_MAX_DRAW_MESH_TASKS_COUNT_NV 0x953D
#define GL_MESH_WORK_GROUP_SIZE_NV 0x953E
#define GL_TASK_WORK_GROUP_SIZE_NV 0x953F
#define GL_MESH_OUTPUT_PER_PRIMITIVE_GRANULARITY_NV 0x9543
#define GL_MAX_MESH_VIEWS_NV 0x9557
#define GL_MESH_SHADER_NV 0x9559
#define GL_TASK_SHADER_NV 0x955A
#define GL_MESH_VERTICES_OUT_NV 0x9579
#define GL_MESH_PRIMITIVES_OUT_NV 0x957A
#define GL_MESH_OUTPUT_TYPE_NV 0x957B
#define GL_MESH_SUBROUTINE_NV 0x957C
#define GL_TASK_SUBROUTINE_NV 0x957D
#define GL_MESH_SUBROUTINE_UNIFORM_NV 0x957E
#define GL_TASK_SUBROUTINE_UNIFORM_NV 0x957F
#define GL_UNIFORM_BLOCK_REFERENCED_BY_MESH_SHADER_NV 0x959C
#define GL_UNIFORM_BLOCK_REFERENCED_BY_TASK_SHADER_NV 0x959D
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_MESH_SHADER_NV 0x959E
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TASK_SHADER_NV 0x959F
#define GL_REFERENCED_BY_MESH_SHADER_NV 0x95A0
#define GL_REFERENCED_BY_TASK_SHADER_NV 0x95A1
#define GL_MAX_MESH_WORK_GROUP_INVOCATIONS_NV 0x95A2
#define GL_MAX_TASK_WORK_GROUP_INVOCATIONS_NV 0x95A3
void glDrawMeshTasksIndirectNV (GLintptr indirect);
void glDrawMeshTasksNV (GLuint first, GLuint count);
void glMultiDrawMeshTasksIndirectCountNV (GLintptr indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride);
void glMultiDrawMeshTasksIndirectNV (GLintptr indirect, GLsizei drawcount, GLsizei stride);
#define GL_COLOR_SAMPLES_NV 0x8E20
#define GL_MULTISAMPLE_FILTER_HINT_NV 0x8534
#define GL_FLOAT_MAT2x3_NV 0x8B65
#define GL_FLOAT_MAT2x4_NV 0x8B66
#define GL_FLOAT_MAT3x2_NV 0x8B67
#define GL_FLOAT_MAT3x4_NV 0x8B68
#define GL_FLOAT_MAT4x2_NV 0x8B69
#define GL_FLOAT_MAT4x3_NV 0x8B6A
void glUniformMatrix2x3fvNV (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glUniformMatrix2x4fvNV (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glUniformMatrix3x2fvNV (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glUniformMatrix3x4fvNV (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glUniformMatrix4x2fvNV (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
void glUniformMatrix4x3fvNV (GLint location, GLsizei count, GLboolean transpose, const GLfloat* value);
#define GL_PIXEL_COUNTER_BITS_NV 0x8864
#define GL_CURRENT_OCCLUSION_QUERY_ID_NV 0x8865
#define GL_PIXEL_COUNT_NV 0x8866
#define GL_PIXEL_COUNT_AVAILABLE_NV 0x8867
void glBeginOcclusionQueryNV (GLuint id);
void glDeleteOcclusionQueriesNV (GLsizei n, const GLuint* ids);
void glEndOcclusionQueryNV (void);
void glGenOcclusionQueriesNV (GLsizei n, GLuint* ids);
void glGetOcclusionQueryivNV (GLuint id, GLenum pname, GLint* params);
void glGetOcclusionQueryuivNV (GLuint id, GLenum pname, GLuint* params);
GLboolean glIsOcclusionQueryNV (GLuint id);
#define GL_DEPTH_STENCIL_NV 0x84F9
#define GL_UNSIGNED_INT_24_8_NV 0x84FA
#define GL_R11F_G11F_B10F_NV 0x8C3A
#define GL_UNSIGNED_INT_10F_11F_11F_REV_NV 0x8C3B
#define GL_R11F_G11F_B10F_NV 0x8C3A
#define GL_UNSIGNED_INT_10F_11F_11F_REV_NV 0x8C3B
#define GL_PACK_ROW_LENGTH_NV 0x0D02
#define GL_PACK_SKIP_ROWS_NV 0x0D03
#define GL_PACK_SKIP_PIXELS_NV 0x0D04
#define GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV 0x8DA2
#define GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV 0x8DA3
#define GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV 0x8DA4
#define GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV 0x8DA0
#define GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV 0x8DA1
void glProgramBufferParametersfvNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLfloat *params);
void glProgramBufferParametersIivNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLint *params);
void glProgramBufferParametersIuivNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLuint *params);
#define GL_CLOSE_PATH_NV 0x00
#define GL_BOLD_BIT_NV 0x01
#define GL_GLYPH_WIDTH_BIT_NV 0x01
#define GL_GLYPH_HEIGHT_BIT_NV 0x02
#define GL_ITALIC_BIT_NV 0x02
#define GL_MOVE_TO_NV 0x02
#define GL_RELATIVE_MOVE_TO_NV 0x03
#define GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV 0x04
#define GL_LINE_TO_NV 0x04
#define GL_RELATIVE_LINE_TO_NV 0x05
#define GL_HORIZONTAL_LINE_TO_NV 0x06
#define GL_RELATIVE_HORIZONTAL_LINE_TO_NV 0x07
#define GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV 0x08
#define GL_VERTICAL_LINE_TO_NV 0x08
#define GL_RELATIVE_VERTICAL_LINE_TO_NV 0x09
#define GL_QUADRATIC_CURVE_TO_NV 0x0A
#define GL_RELATIVE_QUADRATIC_CURVE_TO_NV 0x0B
#define GL_CUBIC_CURVE_TO_NV 0x0C
#define GL_RELATIVE_CUBIC_CURVE_TO_NV 0x0D
#define GL_SMOOTH_QUADRATIC_CURVE_TO_NV 0x0E
#define GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV 0x0F
#define GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV 0x10
#define GL_SMOOTH_CUBIC_CURVE_TO_NV 0x10
#define GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV 0x11
#define GL_SMALL_CCW_ARC_TO_NV 0x12
#define GL_RELATIVE_SMALL_CCW_ARC_TO_NV 0x13
#define GL_SMALL_CW_ARC_TO_NV 0x14
#define GL_RELATIVE_SMALL_CW_ARC_TO_NV 0x15
#define GL_LARGE_CCW_ARC_TO_NV 0x16
#define GL_RELATIVE_LARGE_CCW_ARC_TO_NV 0x17
#define GL_LARGE_CW_ARC_TO_NV 0x18
#define GL_RELATIVE_LARGE_CW_ARC_TO_NV 0x19
#define GL_CONIC_CURVE_TO_NV 0x1A
#define GL_RELATIVE_CONIC_CURVE_TO_NV 0x1B
#define GL_GLYPH_VERTICAL_BEARING_X_BIT_NV 0x20
#define GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV 0x40
#define GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV 0x80
#define GL_ROUNDED_RECT_NV 0xE8
#define GL_RELATIVE_ROUNDED_RECT_NV 0xE9
#define GL_ROUNDED_RECT2_NV 0xEA
#define GL_RELATIVE_ROUNDED_RECT2_NV 0xEB
#define GL_ROUNDED_RECT4_NV 0xEC
#define GL_RELATIVE_ROUNDED_RECT4_NV 0xED
#define GL_ROUNDED_RECT8_NV 0xEE
#define GL_RELATIVE_ROUNDED_RECT8_NV 0xEF
#define GL_RESTART_PATH_NV 0xF0
#define GL_DUP_FIRST_CUBIC_CURVE_TO_NV 0xF2
#define GL_DUP_LAST_CUBIC_CURVE_TO_NV 0xF4
#define GL_RECT_NV 0xF6
#define GL_RELATIVE_RECT_NV 0xF7
#define GL_CIRCULAR_CCW_ARC_TO_NV 0xF8
#define GL_CIRCULAR_CW_ARC_TO_NV 0xFA
#define GL_CIRCULAR_TANGENT_ARC_TO_NV 0xFC
#define GL_ARC_TO_NV 0xFE
#define GL_RELATIVE_ARC_TO_NV 0xFF
#define GL_GLYPH_HAS_KERNING_BIT_NV 0x100
#define GL_PRIMARY_COLOR_NV 0x852C
#define GL_SECONDARY_COLOR_NV 0x852D
#define GL_PRIMARY_COLOR 0x8577
#define GL_PATH_FORMAT_SVG_NV 0x9070
#define GL_PATH_FORMAT_PS_NV 0x9071
#define GL_STANDARD_FONT_NAME_NV 0x9072
#define GL_SYSTEM_FONT_NAME_NV 0x9073
#define GL_FILE_NAME_NV 0x9074
#define GL_PATH_STROKE_WIDTH_NV 0x9075
#define GL_PATH_END_CAPS_NV 0x9076
#define GL_PATH_INITIAL_END_CAP_NV 0x9077
#define GL_PATH_TERMINAL_END_CAP_NV 0x9078
#define GL_PATH_JOIN_STYLE_NV 0x9079
#define GL_PATH_MITER_LIMIT_NV 0x907A
#define GL_PATH_DASH_CAPS_NV 0x907B
#define GL_PATH_INITIAL_DASH_CAP_NV 0x907C
#define GL_PATH_TERMINAL_DASH_CAP_NV 0x907D
#define GL_PATH_DASH_OFFSET_NV 0x907E
#define GL_PATH_CLIENT_LENGTH_NV 0x907F
#define GL_PATH_FILL_MODE_NV 0x9080
#define GL_PATH_FILL_MASK_NV 0x9081
#define GL_PATH_FILL_COVER_MODE_NV 0x9082
#define GL_PATH_STROKE_COVER_MODE_NV 0x9083
#define GL_PATH_STROKE_MASK_NV 0x9084
#define GL_PATH_STROKE_BOUND_NV 0x9086
#define GL_COUNT_UP_NV 0x9088
#define GL_COUNT_DOWN_NV 0x9089
#define GL_PATH_OBJECT_BOUNDING_BOX_NV 0x908A
#define GL_CONVEX_HULL_NV 0x908B
#define GL_BOUNDING_BOX_NV 0x908D
#define GL_TRANSLATE_X_NV 0x908E
#define GL_TRANSLATE_Y_NV 0x908F
#define GL_TRANSLATE_2D_NV 0x9090
#define GL_TRANSLATE_3D_NV 0x9091
#define GL_AFFINE_2D_NV 0x9092
#define GL_AFFINE_3D_NV 0x9094
#define GL_TRANSPOSE_AFFINE_2D_NV 0x9096
#define GL_TRANSPOSE_AFFINE_3D_NV 0x9098
#define GL_UTF8_NV 0x909A
#define GL_UTF16_NV 0x909B
#define GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV 0x909C
#define GL_PATH_COMMAND_COUNT_NV 0x909D
#define GL_PATH_COORD_COUNT_NV 0x909E
#define GL_PATH_DASH_ARRAY_COUNT_NV 0x909F
#define GL_PATH_COMPUTED_LENGTH_NV 0x90A0
#define GL_PATH_FILL_BOUNDING_BOX_NV 0x90A1
#define GL_PATH_STROKE_BOUNDING_BOX_NV 0x90A2
#define GL_SQUARE_NV 0x90A3
#define GL_ROUND_NV 0x90A4
#define GL_TRIANGULAR_NV 0x90A5
#define GL_BEVEL_NV 0x90A6
#define GL_MITER_REVERT_NV 0x90A7
#define GL_MITER_TRUNCATE_NV 0x90A8
#define GL_SKIP_MISSING_GLYPH_NV 0x90A9
#define GL_USE_MISSING_GLYPH_NV 0x90AA
#define GL_PATH_ERROR_POSITION_NV 0x90AB
#define GL_PATH_FOG_GEN_MODE_NV 0x90AC
#define GL_ACCUM_ADJACENT_PAIRS_NV 0x90AD
#define GL_ADJACENT_PAIRS_NV 0x90AE
#define GL_FIRST_TO_REST_NV 0x90AF
#define GL_PATH_GEN_MODE_NV 0x90B0
#define GL_PATH_GEN_COEFF_NV 0x90B1
#define GL_PATH_GEN_COLOR_FORMAT_NV 0x90B2
#define GL_PATH_GEN_COMPONENTS_NV 0x90B3
#define GL_PATH_DASH_OFFSET_RESET_NV 0x90B4
#define GL_MOVE_TO_RESETS_NV 0x90B5
#define GL_MOVE_TO_CONTINUES_NV 0x90B6
%feature("sufix", "_CONSTANT4321end");
#define GL_PATH_STENCIL_FUNC_NV 0x90B7
%feature("sufix", "4321end");
#define GL_PATH_STENCIL_REF_NV 0x90B8
#define GL_PATH_STENCIL_VALUE_MASK_NV 0x90B9
#define GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV 0x90BD
#define GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV 0x90BE
%feature("sufix", "_CONSTANT4321end");
#define GL_PATH_COVER_DEPTH_FUNC_NV 0x90BF
%feature("sufix", "4321end");
#define GL_FONT_GLYPHS_AVAILABLE_NV 0x9368
#define GL_FONT_TARGET_UNAVAILABLE_NV 0x9369
#define GL_FONT_UNAVAILABLE_NV 0x936A
#define GL_FONT_UNINTELLIGIBLE_NV 0x936B
#define GL_STANDARD_FONT_FORMAT_NV 0x936C
#define GL_FRAGMENT_INPUT_NV 0x936D
#define GL_FONT_X_MIN_BOUNDS_BIT_NV 0x00010000
#define GL_FONT_Y_MIN_BOUNDS_BIT_NV 0x00020000
#define GL_FONT_X_MAX_BOUNDS_BIT_NV 0x00040000
#define GL_FONT_Y_MAX_BOUNDS_BIT_NV 0x00080000
#define GL_FONT_UNITS_PER_EM_BIT_NV 0x00100000
#define GL_FONT_ASCENDER_BIT_NV 0x00200000
#define GL_FONT_DESCENDER_BIT_NV 0x00400000
#define GL_FONT_HEIGHT_BIT_NV 0x00800000
#define GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV 0x01000000
#define GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV 0x02000000
#define GL_FONT_UNDERLINE_POSITION_BIT_NV 0x04000000
#define GL_FONT_UNDERLINE_THICKNESS_BIT_NV 0x08000000
#define GL_FONT_HAS_KERNING_BIT_NV 0x10000000
#define GL_FONT_NUM_GLYPH_INDICES_BIT_NV 0x20000000
void glCopyPathNV (GLuint resultPath, GLuint srcPath);
void glCoverFillPathInstancedNV (GLsizei numPaths, GLenum pathNameType, const void *paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const GLfloat *transformValues);
void glCoverFillPathNV (GLuint path, GLenum coverMode);
void glCoverStrokePathInstancedNV (GLsizei numPaths, GLenum pathNameType, const void *paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const GLfloat *transformValues);
void glCoverStrokePathNV (GLuint path, GLenum coverMode);
void glDeletePathsNV (GLuint path, GLsizei range);
GLuint glGenPathsNV (GLsizei range);
void glGetPathColorGenfvNV (GLenum color, GLenum pname, GLfloat* value);
void glGetPathColorGenivNV (GLenum color, GLenum pname, GLint* value);
void glGetPathCommandsNV (GLuint path, GLubyte* commands);
void glGetPathCoordsNV (GLuint path, GLfloat* coords);
void glGetPathDashArrayNV (GLuint path, GLfloat* dashArray);
GLfloat glGetPathLengthNV (GLuint path, GLsizei startSegment, GLsizei numSegments);
void glGetPathMetricRangeNV (GLbitfield metricQueryMask, GLuint firstPathName, GLsizei numPaths, GLsizei stride, GLfloat* metrics);
void glGetPathMetricsNV (GLbitfield metricQueryMask, GLsizei numPaths, GLenum pathNameType, const void *paths, GLuint pathBase, GLsizei stride, GLfloat *metrics);
void glGetPathParameterfvNV (GLuint path, GLenum pname, GLfloat* value);
void glGetPathParameterivNV (GLuint path, GLenum pname, GLint* value);
void glGetPathSpacingNV (GLenum pathListMode, GLsizei numPaths, GLenum pathNameType, const void *paths, GLuint pathBase, GLfloat advanceScale, GLfloat kerningScale, GLenum transformType, GLfloat *returnedSpacing);
void glGetPathTexGenfvNV (GLenum texCoordSet, GLenum pname, GLfloat* value);
void glGetPathTexGenivNV (GLenum texCoordSet, GLenum pname, GLint* value);
void glGetProgramResourcefvNV (GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const GLenum* props, GLsizei bufSize, GLsizei *length, GLfloat *params);
void glInterpolatePathsNV (GLuint resultPath, GLuint pathA, GLuint pathB, GLfloat weight);
GLboolean glIsPathNV (GLuint path);
GLboolean glIsPointInFillPathNV (GLuint path, GLuint mask, GLfloat x, GLfloat y);
GLboolean glIsPointInStrokePathNV (GLuint path, GLfloat x, GLfloat y);
void glMatrixLoad3x2fNV (GLenum matrixMode, const GLfloat* m);
void glMatrixLoad3x3fNV (GLenum matrixMode, const GLfloat* m);
void glMatrixLoadTranspose3x3fNV (GLenum matrixMode, const GLfloat* m);
void glMatrixMult3x2fNV (GLenum matrixMode, const GLfloat* m);
void glMatrixMult3x3fNV (GLenum matrixMode, const GLfloat* m);
void glMatrixMultTranspose3x3fNV (GLenum matrixMode, const GLfloat* m);
void glPathColorGenNV (GLenum color, GLenum genMode, GLenum colorFormat, const GLfloat* coeffs);
void glPathCommandsNV (GLuint path, GLsizei numCommands, const GLubyte* commands, GLsizei numCoords, GLenum coordType, const void*coords);
void glPathCoordsNV (GLuint path, GLsizei numCoords, GLenum coordType, const void *coords);
void glPathCoverDepthFuncNV (GLenum zfunc);
void glPathDashArrayNV (GLuint path, GLsizei dashCount, const GLfloat* dashArray);
void glPathFogGenNV (GLenum genMode);
GLenum glPathGlyphIndexArrayNV (GLuint firstPathName, GLenum fontTarget, const void *fontName, GLbitfield fontStyle, GLuint firstGlyphIndex, GLsizei numGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
GLenum glPathGlyphIndexRangeNV (GLenum fontTarget, const void *fontName, GLbitfield fontStyle, GLuint pathParameterTemplate, GLfloat emScale, GLuint baseAndCount[2]);
void glPathGlyphRangeNV (GLuint firstPathName, GLenum fontTarget, const void *fontName, GLbitfield fontStyle, GLuint firstGlyph, GLsizei numGlyphs, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
void glPathGlyphsNV (GLuint firstPathName, GLenum fontTarget, const void *fontName, GLbitfield fontStyle, GLsizei numGlyphs, GLenum type, const void*charcodes, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
GLenum glPathMemoryGlyphIndexArrayNV (GLuint firstPathName, GLenum fontTarget, GLsizeiptr fontSize, const void *fontData, GLsizei faceIndex, GLuint firstGlyphIndex, GLsizei numGlyphs, GLuint pathParameterTemplate, GLfloat emScale);
void glPathParameterfNV (GLuint path, GLenum pname, GLfloat value);
void glPathParameterfvNV (GLuint path, GLenum pname, const GLfloat* value);
void glPathParameteriNV (GLuint path, GLenum pname, GLint value);
void glPathParameterivNV (GLuint path, GLenum pname, const GLint* value);
void glPathStencilDepthOffsetNV (GLfloat factor, GLfloat units);
void glPathStencilFuncNV (GLenum func, GLint ref, GLuint mask);
void glPathStringNV (GLuint path, GLenum format, GLsizei length, const void *pathString);
void glPathSubCommandsNV (GLuint path, GLsizei commandStart, GLsizei commandsToDelete, GLsizei numCommands, const GLubyte* commands, GLsizei numCoords, GLenum coordType, const void*coords);
void glPathSubCoordsNV (GLuint path, GLsizei coordStart, GLsizei numCoords, GLenum coordType, const void *coords);
void glPathTexGenNV (GLenum texCoordSet, GLenum genMode, GLint components, const GLfloat* coeffs);
GLboolean glPointAlongPathNV (GLuint path, GLsizei startSegment, GLsizei numSegments, GLfloat distance, GLfloat* x, GLfloat *y, GLfloat *tangentX, GLfloat *tangentY);
void glProgramPathFragmentInputGenNV (GLuint program, GLint location, GLenum genMode, GLint components, const GLfloat* coeffs);
void glStencilFillPathInstancedNV (GLsizei numPaths, GLenum pathNameType, const void *paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum transformType, const GLfloat *transformValues);
void glStencilFillPathNV (GLuint path, GLenum fillMode, GLuint mask);
void glStencilStrokePathInstancedNV (GLsizei numPaths, GLenum pathNameType, const void *paths, GLuint pathBase, GLint reference, GLuint mask, GLenum transformType, const GLfloat *transformValues);
void glStencilStrokePathNV (GLuint path, GLint reference, GLuint mask);
void glStencilThenCoverFillPathInstancedNV (GLsizei numPaths, GLenum pathNameType, const void *paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum coverMode, GLenum transformType, const GLfloat *transformValues);
void glStencilThenCoverFillPathNV (GLuint path, GLenum fillMode, GLuint mask, GLenum coverMode);
void glStencilThenCoverStrokePathInstancedNV (GLsizei numPaths, GLenum pathNameType, const void *paths, GLuint pathBase, GLint reference, GLuint mask, GLenum coverMode, GLenum transformType, const GLfloat *transformValues);
void glStencilThenCoverStrokePathNV (GLuint path, GLint reference, GLuint mask, GLenum coverMode);
void glTransformPathNV (GLuint resultPath, GLuint srcPath, GLenum transformType, const GLfloat* transformValues);
void glWeightPathsNV (GLuint resultPath, GLsizei numPaths, const GLuint paths[], const GLfloat weights[]);
#define GL_SHARED_EDGE_NV 0xC0
#define GL_PIXEL_PACK_BUFFER_NV 0x88EB
#define GL_PIXEL_UNPACK_BUFFER_NV 0x88EC
#define GL_PIXEL_PACK_BUFFER_BINDING_NV 0x88ED
#define GL_PIXEL_UNPACK_BUFFER_BINDING_NV 0x88EF
#define GL_WRITE_PIXEL_DATA_RANGE_NV 0x8878
#define GL_READ_PIXEL_DATA_RANGE_NV 0x8879
#define GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV 0x887A
#define GL_READ_PIXEL_DATA_RANGE_LENGTH_NV 0x887B
#define GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV 0x887C
#define GL_READ_PIXEL_DATA_RANGE_POINTER_NV 0x887D
void glFlushPixelDataRangeNV (GLenum target);
void glPixelDataRangeNV (GLenum target, GLsizei length, void *pointer);
#define GL_NVIDIA_PLATFORM_BINARY_NV 0x890B
#define GL_POINT_SPRITE_NV 0x8861
#define GL_COORD_REPLACE_NV 0x8862
#define GL_POINT_SPRITE_R_MODE_NV 0x8863
void glPointParameteriNV (GLenum pname, GLint param);
void glPointParameterivNV (GLenum pname, const GLint* params);
%feature("sufix", "_CONSTANT4321end");
#define GL_POLYGON_MODE_NV 0x0B40
%feature("sufix", "4321end");
#define GL_POINT_NV 0x1B00
#define GL_LINE_NV 0x1B01
#define GL_FILL_NV 0x1B02
#define GL_POLYGON_OFFSET_POINT_NV 0x2A01
#define GL_POLYGON_OFFSET_LINE_NV 0x2A02
void glPolygonModeNV (GLenum face, GLenum mode);
#define GL_FRAME_NV 0x8E26
#define GL_FIELDS_NV 0x8E27
#define GL_CURRENT_TIME_NV 0x8E28
#define GL_NUM_FILL_STREAMS_NV 0x8E29
#define GL_PRESENT_TIME_NV 0x8E2A
#define GL_PRESENT_DURATION_NV 0x8E2B
void glGetVideoi64vNV (GLuint video_slot, GLenum pname, GLint64EXT* params);
void glGetVideoivNV (GLuint video_slot, GLenum pname, GLint* params);
void glGetVideoui64vNV (GLuint video_slot, GLenum pname, GLuint64EXT* params);
void glGetVideouivNV (GLuint video_slot, GLenum pname, GLuint* params);
void glPresentFrameDualFillNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3);
void glPresentFrameKeyedNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1);
%feature("sufix", "_CONSTANT4321end");
#define GL_PRIMITIVE_RESTART_NV 0x8558
#define GL_PRIMITIVE_RESTART_INDEX_NV 0x8559
%feature("sufix", "4321end");
void glPrimitiveRestartIndexNV (GLuint index);
void glPrimitiveRestartNV (void);
%feature("sufix", "_CONSTANT4321end");
#define GL_READ_BUFFER_NV 0x0C02
%feature("sufix", "4321end");
void glReadBufferNV (GLenum mode);
#define GL_REGISTER_COMBINERS_NV 0x8522
#define GL_VARIABLE_A_NV 0x8523
#define GL_VARIABLE_B_NV 0x8524
#define GL_VARIABLE_C_NV 0x8525
#define GL_VARIABLE_D_NV 0x8526
#define GL_VARIABLE_E_NV 0x8527
#define GL_VARIABLE_F_NV 0x8528
#define GL_VARIABLE_G_NV 0x8529
#define GL_CONSTANT_COLOR0_NV 0x852A
#define GL_CONSTANT_COLOR1_NV 0x852B
#define GL_PRIMARY_COLOR_NV 0x852C
#define GL_SECONDARY_COLOR_NV 0x852D
#define GL_SPARE0_NV 0x852E
#define GL_SPARE1_NV 0x852F
#define GL_DISCARD_NV 0x8530
#define GL_E_TIMES_F_NV 0x8531
#define GL_SPARE0_PLUS_SECONDARY_COLOR_NV 0x8532
#define GL_UNSIGNED_IDENTITY_NV 0x8536
#define GL_UNSIGNED_INVERT_NV 0x8537
#define GL_EXPAND_NORMAL_NV 0x8538
#define GL_EXPAND_NEGATE_NV 0x8539
#define GL_HALF_BIAS_NORMAL_NV 0x853A
#define GL_HALF_BIAS_NEGATE_NV 0x853B
#define GL_SIGNED_IDENTITY_NV 0x853C
#define GL_SIGNED_NEGATE_NV 0x853D
#define GL_SCALE_BY_TWO_NV 0x853E
#define GL_SCALE_BY_FOUR_NV 0x853F
#define GL_SCALE_BY_ONE_HALF_NV 0x8540
#define GL_BIAS_BY_NEGATIVE_ONE_HALF_NV 0x8541
%feature("sufix", "_CONSTANT4321end");
#define GL_COMBINER_INPUT_NV 0x8542
%feature("sufix", "4321end");
#define GL_COMBINER_MAPPING_NV 0x8543
#define GL_COMBINER_COMPONENT_USAGE_NV 0x8544
#define GL_COMBINER_AB_DOT_PRODUCT_NV 0x8545
#define GL_COMBINER_CD_DOT_PRODUCT_NV 0x8546
#define GL_COMBINER_MUX_SUM_NV 0x8547
#define GL_COMBINER_SCALE_NV 0x8548
#define GL_COMBINER_BIAS_NV 0x8549
#define GL_COMBINER_AB_OUTPUT_NV 0x854A
#define GL_COMBINER_CD_OUTPUT_NV 0x854B
#define GL_COMBINER_SUM_OUTPUT_NV 0x854C
#define GL_MAX_GENERAL_COMBINERS_NV 0x854D
#define GL_NUM_GENERAL_COMBINERS_NV 0x854E
#define GL_COLOR_SUM_CLAMP_NV 0x854F
#define GL_COMBINER0_NV 0x8550
#define GL_COMBINER1_NV 0x8551
#define GL_COMBINER2_NV 0x8552
#define GL_COMBINER3_NV 0x8553
#define GL_COMBINER4_NV 0x8554
#define GL_COMBINER5_NV 0x8555
#define GL_COMBINER6_NV 0x8556
#define GL_COMBINER7_NV 0x8557
void glCombinerInputNV (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
void glCombinerOutputNV (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum);
void glCombinerParameterfNV (GLenum pname, GLfloat param);
void glCombinerParameterfvNV (GLenum pname, const GLfloat* params);
void glCombinerParameteriNV (GLenum pname, GLint param);
void glCombinerParameterivNV (GLenum pname, const GLint* params);
void glFinalCombinerInputNV (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
void glGetCombinerInputParameterfvNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params);
void glGetCombinerInputParameterivNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params);
void glGetCombinerOutputParameterfvNV (GLenum stage, GLenum portion, GLenum pname, GLfloat* params);
void glGetCombinerOutputParameterivNV (GLenum stage, GLenum portion, GLenum pname, GLint* params);
void glGetFinalCombinerInputParameterfvNV (GLenum variable, GLenum pname, GLfloat* params);
void glGetFinalCombinerInputParameterivNV (GLenum variable, GLenum pname, GLint* params);
#define GL_PER_STAGE_CONSTANTS_NV 0x8535
void glCombinerStageParameterfvNV (GLenum stage, GLenum pname, const GLfloat* params);
void glGetCombinerStageParameterfvNV (GLenum stage, GLenum pname, GLfloat* params);
#define GL_REPRESENTATIVE_FRAGMENT_TEST_NV 0x937F
#define GL_PURGED_CONTEXT_RESET_NV 0x92BB
#define GL_SAMPLE_LOCATION_NV 0x8E50
#define GL_SAMPLE_LOCATION_SUBPIXEL_BITS_NV 0x933D
#define GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV 0x933E
#define GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV 0x933F
#define GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV 0x9340
#define GL_PROGRAMMABLE_SAMPLE_LOCATION_NV 0x9341
#define GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV 0x9342
#define GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV 0x9343
void glFramebufferSampleLocationsfvNV (GLenum target, GLuint start, GLsizei count, const GLfloat* v);
void glNamedFramebufferSampleLocationsfvNV (GLuint framebuffer, GLuint start, GLsizei count, const GLfloat* v);
void glResolveDepthValuesNV (void);
#define GL_SCISSOR_TEST_EXCLUSIVE_NV 0x9555
#define GL_SCISSOR_BOX_EXCLUSIVE_NV 0x9556
void glScissorExclusiveArrayvNV (GLuint first, GLsizei count, const GLint* v);
void glScissorExclusiveNV (GLint x, GLint y, GLsizei width, GLsizei height);
#define GL_BUFFER_GPU_ADDRESS_NV 0x8F1D
#define GL_GPU_ADDRESS_NV 0x8F34
#define GL_MAX_SHADER_BUFFER_ADDRESS_NV 0x8F35
void glGetBufferParameterui64vNV (GLenum target, GLenum pname, GLuint64EXT* params);
void glGetIntegerui64vNV (GLenum value, GLuint64EXT* result);
void glGetNamedBufferParameterui64vNV (GLuint buffer, GLenum pname, GLuint64EXT* params);
GLboolean glIsBufferResidentNV (GLenum target);
GLboolean glIsNamedBufferResidentNV (GLuint buffer);
void glMakeBufferNonResidentNV (GLenum target);
void glMakeBufferResidentNV (GLenum target, GLenum access);
void glMakeNamedBufferNonResidentNV (GLuint buffer);
void glMakeNamedBufferResidentNV (GLuint buffer, GLenum access);
void glProgramUniformui64NV (GLuint program, GLint location, GLuint64EXT value);
void glProgramUniformui64vNV (GLuint program, GLint location, GLsizei count, const GLuint64EXT* value);
void glUniformui64NV (GLint location, GLuint64EXT value);
void glUniformui64vNV (GLint location, GLsizei count, const GLuint64EXT* value);
#define GL_SUBGROUP_FEATURE_PARTITIONED_BIT_NV 0x00000100
#define GL_WARP_SIZE_NV 0x9339
#define GL_WARPS_PER_SM_NV 0x933A
#define GL_SM_COUNT_NV 0x933B
#define GL_SHADING_RATE_IMAGE_BINDING_NV 0x955B
#define GL_SHADING_RATE_IMAGE_TEXEL_WIDTH_NV 0x955C
#define GL_SHADING_RATE_IMAGE_TEXEL_HEIGHT_NV 0x955D
#define GL_SHADING_RATE_IMAGE_PALETTE_SIZE_NV 0x955E
#define GL_MAX_COARSE_FRAGMENT_SAMPLES_NV 0x955F
#define GL_SHADING_RATE_IMAGE_NV 0x9563
#define GL_SHADING_RATE_NO_INVOCATIONS_NV 0x9564
#define GL_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV 0x9565
#define GL_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV 0x9566
#define GL_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV 0x9567
#define GL_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV 0x9568
#define GL_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV 0x9569
#define GL_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV 0x956A
#define GL_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV 0x956B
#define GL_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV 0x956C
#define GL_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV 0x956D
#define GL_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV 0x956E
#define GL_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV 0x956F
#define GL_SHADING_RATE_SAMPLE_ORDER_DEFAULT_NV 0x95AE
#define GL_SHADING_RATE_SAMPLE_ORDER_PIXEL_MAJOR_NV 0x95AF
#define GL_SHADING_RATE_SAMPLE_ORDER_SAMPLE_MAJOR_NV 0x95B0
void glBindShadingRateImageNV (GLuint texture);
void glGetShadingRateImagePaletteNV (GLuint viewport, GLuint entry, GLenum* rate);
void glGetShadingRateSampleLocationivNV (GLenum rate, GLuint samples, GLuint index, GLint* location);
void glShadingRateImageBarrierNV (GLenum order);
void glShadingRateImagePaletteNV (GLuint viewport, GLuint first, GLsizei count, const GLenum* rates);
void glShadingRateSampleOrderCustomNV (GLenum rate, GLuint samples, const GLint* locations);
#define GL_SAMPLER_2D_ARRAY_SHADOW_NV 0x8DC4
#define GL_SAMPLER_CUBE_SHADOW_NV 0x8DC5
#define GL_ETC1_SRGB8_NV 0x88EE
#define GL_SRGB8_NV 0x8C41
#define GL_SLUMINANCE_ALPHA_NV 0x8C44
#define GL_SLUMINANCE8_ALPHA8_NV 0x8C45
#define GL_SLUMINANCE_NV 0x8C46
#define GL_SLUMINANCE8_NV 0x8C47
#define GL_COMPRESSED_SRGB_S3TC_DXT1_NV 0x8C4C
#define GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV 0x8C4D
#define GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV 0x8C4E
#define GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV 0x8C4F
#define GL_MAX_PROGRAM_PATCH_ATTRIBS_NV 0x86D8
#define GL_TESS_CONTROL_PROGRAM_NV 0x891E
#define GL_TESS_EVALUATION_PROGRAM_NV 0x891F
#define GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV 0x8C74
#define GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV 0x8C75
#define GL_EMBOSS_LIGHT_NV 0x855D
#define GL_EMBOSS_CONSTANT_NV 0x855E
#define GL_EMBOSS_MAP_NV 0x855F
#define GL_NORMAL_MAP_NV 0x8511
#define GL_REFLECTION_MAP_NV 0x8512
#define GL_UNPACK_SKIP_IMAGES_NV 0x806D
#define GL_UNPACK_IMAGE_HEIGHT_NV 0x806E
#define GL_MAX_ARRAY_TEXTURE_LAYERS_NV 0x88FF
#define GL_TEXTURE_2D_ARRAY_NV 0x8C1A
#define GL_TEXTURE_BINDING_2D_ARRAY_NV 0x8C1D
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_NV 0x8CD4
#define GL_SAMPLER_2D_ARRAY_NV 0x8DC1
void glCompressedTexImage3DNV (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const void *data);
void glCompressedTexSubImage3DNV (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
void glCopyTexSubImage3DNV (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glFramebufferTextureLayerNV (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
void glTexImage3DNV (GLenum target, GLint level, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexSubImage3DNV (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void glTextureBarrierNV (void);
#define GL_TEXTURE_BORDER_COLOR_NV 0x1004
#define GL_CLAMP_TO_BORDER_NV 0x812D
#define GL_COMPRESSED_LUMINANCE_LATC1_NV 0x8C70
#define GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_NV 0x8C71
#define GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_NV 0x8C72
#define GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_NV 0x8C73
#define GL_COMPRESSED_RGB_S3TC_DXT1_NV 0x83F0
#define GL_COMPRESSED_RGBA_S3TC_DXT1_NV 0x83F1
#define GL_COMPRESSED_RGBA_S3TC_DXT3_NV 0x83F2
#define GL_COMPRESSED_RGBA_S3TC_DXT5_NV 0x83F3
#define GL_COMBINE4_NV 0x8503
#define GL_SOURCE3_RGB_NV 0x8583
#define GL_SOURCE3_ALPHA_NV 0x858B
#define GL_OPERAND3_RGB_NV 0x8593
#define GL_OPERAND3_ALPHA_NV 0x859B
#define GL_TEXTURE_UNSIGNED_REMAP_MODE_NV 0x888F
#define GL_TEXTURE_COVERAGE_SAMPLES_NV 0x9045
#define GL_TEXTURE_COLOR_SAMPLES_NV 0x9046
void glTexImage2DMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
void glTexImage3DMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
void glTextureImage2DMultisampleCoverageNV (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
void glTextureImage2DMultisampleNV (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations);
void glTextureImage3DMultisampleCoverageNV (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
void glTextureImage3DMultisampleNV (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations);
#define GL_TEXTURE_RECTANGLE_NV 0x84F5
#define GL_TEXTURE_BINDING_RECTANGLE_NV 0x84F6
#define GL_PROXY_TEXTURE_RECTANGLE_NV 0x84F7
#define GL_MAX_RECTANGLE_TEXTURE_SIZE_NV 0x84F8
#define GL_OFFSET_TEXTURE_RECTANGLE_NV 0x864C
#define GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV 0x864D
#define GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV 0x864E
#define GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV 0x86D9
#define GL_UNSIGNED_INT_S8_S8_8_8_NV 0x86DA
#define GL_UNSIGNED_INT_8_8_S8_S8_REV_NV 0x86DB
#define GL_DSDT_MAG_INTENSITY_NV 0x86DC
#define GL_SHADER_CONSISTENT_NV 0x86DD
#define GL_TEXTURE_SHADER_NV 0x86DE
#define GL_SHADER_OPERATION_NV 0x86DF
#define GL_CULL_MODES_NV 0x86E0
#define GL_OFFSET_TEXTURE_MATRIX_NV 0x86E1
#define GL_OFFSET_TEXTURE_SCALE_NV 0x86E2
#define GL_OFFSET_TEXTURE_BIAS_NV 0x86E3
#define GL_PREVIOUS_TEXTURE_INPUT_NV 0x86E4
#define GL_CONST_EYE_NV 0x86E5
#define GL_PASS_THROUGH_NV 0x86E6
#define GL_CULL_FRAGMENT_NV 0x86E7
#define GL_OFFSET_TEXTURE_2D_NV 0x86E8
#define GL_DEPENDENT_AR_TEXTURE_2D_NV 0x86E9
#define GL_DEPENDENT_GB_TEXTURE_2D_NV 0x86EA
#define GL_DOT_PRODUCT_NV 0x86EC
#define GL_DOT_PRODUCT_DEPTH_REPLACE_NV 0x86ED
#define GL_DOT_PRODUCT_TEXTURE_2D_NV 0x86EE
#define GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV 0x86F0
#define GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV 0x86F1
#define GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV 0x86F2
#define GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV 0x86F3
#define GL_HILO_NV 0x86F4
#define GL_DSDT_NV 0x86F5
#define GL_DSDT_MAG_NV 0x86F6
#define GL_DSDT_MAG_VIB_NV 0x86F7
#define GL_HILO16_NV 0x86F8
#define GL_SIGNED_HILO_NV 0x86F9
#define GL_SIGNED_HILO16_NV 0x86FA
#define GL_SIGNED_RGBA_NV 0x86FB
#define GL_SIGNED_RGBA8_NV 0x86FC
#define GL_SIGNED_RGB_NV 0x86FE
#define GL_SIGNED_RGB8_NV 0x86FF
#define GL_SIGNED_LUMINANCE_NV 0x8701
#define GL_SIGNED_LUMINANCE8_NV 0x8702
#define GL_SIGNED_LUMINANCE_ALPHA_NV 0x8703
#define GL_SIGNED_LUMINANCE8_ALPHA8_NV 0x8704
#define GL_SIGNED_ALPHA_NV 0x8705
#define GL_SIGNED_ALPHA8_NV 0x8706
#define GL_SIGNED_INTENSITY_NV 0x8707
#define GL_SIGNED_INTENSITY8_NV 0x8708
#define GL_DSDT8_NV 0x8709
#define GL_DSDT8_MAG8_NV 0x870A
#define GL_DSDT8_MAG8_INTENSITY8_NV 0x870B
#define GL_SIGNED_RGB_UNSIGNED_ALPHA_NV 0x870C
#define GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV 0x870D
#define GL_HI_SCALE_NV 0x870E
#define GL_LO_SCALE_NV 0x870F
#define GL_DS_SCALE_NV 0x8710
#define GL_DT_SCALE_NV 0x8711
#define GL_MAGNITUDE_SCALE_NV 0x8712
#define GL_VIBRANCE_SCALE_NV 0x8713
#define GL_HI_BIAS_NV 0x8714
#define GL_LO_BIAS_NV 0x8715
#define GL_DS_BIAS_NV 0x8716
#define GL_DT_BIAS_NV 0x8717
#define GL_MAGNITUDE_BIAS_NV 0x8718
#define GL_VIBRANCE_BIAS_NV 0x8719
#define GL_TEXTURE_BORDER_VALUES_NV 0x871A
#define GL_TEXTURE_HI_SIZE_NV 0x871B
#define GL_TEXTURE_LO_SIZE_NV 0x871C
#define GL_TEXTURE_DS_SIZE_NV 0x871D
#define GL_TEXTURE_DT_SIZE_NV 0x871E
#define GL_TEXTURE_MAG_SIZE_NV 0x871F
#define GL_OFFSET_TEXTURE_2D_MATRIX_NV 0x86E1
#define GL_OFFSET_TEXTURE_2D_BIAS_NV 0x86E3
#define GL_OFFSET_TEXTURE_2D_SCALE_NV 0x86E2
#define GL_UNSIGNED_INT_S8_S8_8_8_NV 0x86DA
#define GL_UNSIGNED_INT_8_8_S8_S8_REV_NV 0x86DB
#define GL_DSDT_MAG_INTENSITY_NV 0x86DC
#define GL_DOT_PRODUCT_TEXTURE_3D_NV 0x86EF
#define GL_HILO_NV 0x86F4
#define GL_DSDT_NV 0x86F5
#define GL_DSDT_MAG_NV 0x86F6
#define GL_DSDT_MAG_VIB_NV 0x86F7
#define GL_HILO16_NV 0x86F8
#define GL_SIGNED_HILO_NV 0x86F9
#define GL_SIGNED_HILO16_NV 0x86FA
#define GL_SIGNED_RGBA_NV 0x86FB
#define GL_SIGNED_RGBA8_NV 0x86FC
#define GL_SIGNED_RGB_NV 0x86FE
#define GL_SIGNED_RGB8_NV 0x86FF
#define GL_SIGNED_LUMINANCE_NV 0x8701
#define GL_SIGNED_LUMINANCE8_NV 0x8702
#define GL_SIGNED_LUMINANCE_ALPHA_NV 0x8703
#define GL_SIGNED_LUMINANCE8_ALPHA8_NV 0x8704
#define GL_SIGNED_ALPHA_NV 0x8705
#define GL_SIGNED_ALPHA8_NV 0x8706
#define GL_SIGNED_INTENSITY_NV 0x8707
#define GL_SIGNED_INTENSITY8_NV 0x8708
#define GL_DSDT8_NV 0x8709
#define GL_DSDT8_MAG8_NV 0x870A
#define GL_DSDT8_MAG8_INTENSITY8_NV 0x870B
#define GL_SIGNED_RGB_UNSIGNED_ALPHA_NV 0x870C
#define GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV 0x870D
#define GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV 0x8850
#define GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV 0x8851
#define GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV 0x8852
#define GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV 0x8853
#define GL_OFFSET_HILO_TEXTURE_2D_NV 0x8854
#define GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV 0x8855
#define GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV 0x8856
#define GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV 0x8857
#define GL_DEPENDENT_HILO_TEXTURE_2D_NV 0x8858
#define GL_DEPENDENT_RGB_TEXTURE_3D_NV 0x8859
#define GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV 0x885A
#define GL_DOT_PRODUCT_PASS_THROUGH_NV 0x885B
#define GL_DOT_PRODUCT_TEXTURE_1D_NV 0x885C
#define GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV 0x885D
#define GL_HILO8_NV 0x885E
#define GL_SIGNED_HILO8_NV 0x885F
#define GL_FORCE_BLUE_TO_ONE_NV 0x8860
#define GL_BACK_PRIMARY_COLOR_NV 0x8C77
#define GL_BACK_SECONDARY_COLOR_NV 0x8C78
#define GL_TEXTURE_COORD_NV 0x8C79
#define GL_CLIP_DISTANCE_NV 0x8C7A
#define GL_VERTEX_ID_NV 0x8C7B
#define GL_PRIMITIVE_ID_NV 0x8C7C
#define GL_GENERIC_ATTRIB_NV 0x8C7D
%feature("sufix", "_CONSTANT4321end");
#define GL_TRANSFORM_FEEDBACK_ATTRIBS_NV 0x8C7E
%feature("sufix", "4321end");
#define GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV 0x8C7F
#define GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV 0x8C80
#define GL_ACTIVE_VARYINGS_NV 0x8C81
#define GL_ACTIVE_VARYING_MAX_LENGTH_NV 0x8C82
%feature("sufix", "_CONSTANT4321end");
#define GL_TRANSFORM_FEEDBACK_VARYINGS_NV 0x8C83
%feature("sufix", "4321end");
#define GL_TRANSFORM_FEEDBACK_BUFFER_START_NV 0x8C84
#define GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV 0x8C85
#define GL_TRANSFORM_FEEDBACK_RECORD_NV 0x8C86
#define GL_PRIMITIVES_GENERATED_NV 0x8C87
#define GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV 0x8C88
#define GL_RASTERIZER_DISCARD_NV 0x8C89
#define GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV 0x8C8A
#define GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV 0x8C8B
#define GL_INTERLEAVED_ATTRIBS_NV 0x8C8C
#define GL_SEPARATE_ATTRIBS_NV 0x8C8D
#define GL_TRANSFORM_FEEDBACK_BUFFER_NV 0x8C8E
#define GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV 0x8C8F
void glBeginTransformFeedbackNV (GLenum primitiveMode);
void glEndTransformFeedbackNV (void);
void glTransformFeedbackAttribsNV (GLuint count, const GLint *attribs, GLenum bufferMode);
void glBindBufferRangeNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glBindBufferOffsetNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
void glBindBufferBaseNV (GLenum target, GLuint index, GLuint buffer);
void glTransformFeedbackVaryingsNV (GLuint program, GLsizei count, const GLint *locations, GLenum bufferMode);
void glActiveVaryingNV (GLuint program, const GLchar *name);
GLint glGetVaryingLocationNV (GLuint program, const GLchar *name);
void glGetActiveVaryingNV (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name);
void glGetTransformFeedbackVaryingNV (GLuint program, GLuint index, GLint *location);
#define GL_TRANSFORM_FEEDBACK_NV 0x8E22
#define GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV 0x8E23
#define GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV 0x8E24
#define GL_TRANSFORM_FEEDBACK_BINDING_NV 0x8E25
void glBindTransformFeedbackNV (GLenum target, GLuint id);
void glDeleteTransformFeedbacksNV (GLsizei n, const GLuint* ids);
void glDrawTransformFeedbackNV (GLenum mode, GLuint id);
void glGenTransformFeedbacksNV (GLsizei n, GLuint* ids);
GLboolean glIsTransformFeedbackNV (GLuint id);
void glPauseTransformFeedbackNV (void);
void glResumeTransformFeedbackNV (void);
#define GL_UNIFORM_BUFFER_UNIFIED_NV 0x936E
#define GL_UNIFORM_BUFFER_ADDRESS_NV 0x936F
#define GL_UNIFORM_BUFFER_LENGTH_NV 0x9370
#define GL_SURFACE_STATE_NV 0x86EB
#define GL_SURFACE_REGISTERED_NV 0x86FD
#define GL_SURFACE_MAPPED_NV 0x8700
#define GL_WRITE_DISCARD_NV 0x88BE
void glVDPAUFiniNV (void);
void glVDPAUGetSurfaceivNV (GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei* length, GLint *values);
void glVDPAUInitNV (const void* vdpDevice, const void*getProcAddress);
void glVDPAUIsSurfaceNV (GLvdpauSurfaceNV surface);
void glVDPAUMapSurfacesNV (GLsizei numSurfaces, const GLvdpauSurfaceNV* surfaces);
GLvdpauSurfaceNV glVDPAURegisterOutputSurfaceNV (const void* vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint *textureNames);
GLvdpauSurfaceNV glVDPAURegisterVideoSurfaceNV (const void* vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint *textureNames);
void glVDPAUSurfaceAccessNV (GLvdpauSurfaceNV surface, GLenum access);
void glVDPAUUnmapSurfacesNV (GLsizei numSurface, const GLvdpauSurfaceNV* surfaces);
void glVDPAUUnregisterSurfaceNV (GLvdpauSurfaceNV surface);
typedef GLintptr GLvdpauSurfaceNV;
GLvdpauSurfaceNV glVDPAURegisterVideoSurfaceWithPictureStructureNV (const void *vdpSurface, GLenum target, GLsizei numTextureNames, const GLuint *textureNames, GLboolean isFrameStructure);
%feature("sufix", "_CONSTANT4321end");
#define GL_VERTEX_ARRAY_RANGE_NV 0x851D
%feature("sufix", "4321end");
#define GL_VERTEX_ARRAY_RANGE_LENGTH_NV 0x851E
#define GL_VERTEX_ARRAY_RANGE_VALID_NV 0x851F
#define GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV 0x8520
#define GL_VERTEX_ARRAY_RANGE_POINTER_NV 0x8521
void glFlushVertexArrayRangeNV (void);
void glVertexArrayRangeNV (GLsizei length, void *pointer);
#define GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV 0x8533
#define GL_INT64_NV 0x140E
#define GL_UNSIGNED_INT64_NV 0x140F
void glGetVertexAttribLi64vNV (GLuint index, GLenum pname, GLint64EXT* params);
void glGetVertexAttribLui64vNV (GLuint index, GLenum pname, GLuint64EXT* params);
void glVertexAttribL1i64NV (GLuint index, GLint64EXT x);
void glVertexAttribL1i64vNV (GLuint index, const GLint64EXT* v);
void glVertexAttribL1ui64NV (GLuint index, GLuint64EXT x);
void glVertexAttribL1ui64vNV (GLuint index, const GLuint64EXT* v);
void glVertexAttribL2i64NV (GLuint index, GLint64EXT x, GLint64EXT y);
void glVertexAttribL2i64vNV (GLuint index, const GLint64EXT* v);
void glVertexAttribL2ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y);
void glVertexAttribL2ui64vNV (GLuint index, const GLuint64EXT* v);
void glVertexAttribL3i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z);
void glVertexAttribL3i64vNV (GLuint index, const GLint64EXT* v);
void glVertexAttribL3ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z);
void glVertexAttribL3ui64vNV (GLuint index, const GLuint64EXT* v);
void glVertexAttribL4i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w);
void glVertexAttribL4i64vNV (GLuint index, const GLint64EXT* v);
void glVertexAttribL4ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w);
void glVertexAttribL4ui64vNV (GLuint index, const GLuint64EXT* v);
void glVertexAttribLFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride);
#define GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV 0x8F1E
#define GL_ELEMENT_ARRAY_UNIFIED_NV 0x8F1F
#define GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV 0x8F20
#define GL_VERTEX_ARRAY_ADDRESS_NV 0x8F21
#define GL_NORMAL_ARRAY_ADDRESS_NV 0x8F22
#define GL_COLOR_ARRAY_ADDRESS_NV 0x8F23
#define GL_INDEX_ARRAY_ADDRESS_NV 0x8F24
#define GL_TEXTURE_COORD_ARRAY_ADDRESS_NV 0x8F25
#define GL_EDGE_FLAG_ARRAY_ADDRESS_NV 0x8F26
#define GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV 0x8F27
#define GL_FOG_COORD_ARRAY_ADDRESS_NV 0x8F28
#define GL_ELEMENT_ARRAY_ADDRESS_NV 0x8F29
#define GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV 0x8F2A
#define GL_VERTEX_ARRAY_LENGTH_NV 0x8F2B
#define GL_NORMAL_ARRAY_LENGTH_NV 0x8F2C
#define GL_COLOR_ARRAY_LENGTH_NV 0x8F2D
#define GL_INDEX_ARRAY_LENGTH_NV 0x8F2E
#define GL_TEXTURE_COORD_ARRAY_LENGTH_NV 0x8F2F
#define GL_EDGE_FLAG_ARRAY_LENGTH_NV 0x8F30
#define GL_SECONDARY_COLOR_ARRAY_LENGTH_NV 0x8F31
#define GL_FOG_COORD_ARRAY_LENGTH_NV 0x8F32
#define GL_ELEMENT_ARRAY_LENGTH_NV 0x8F33
void glBufferAddressRangeNV (GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length);
void glColorFormatNV (GLint size, GLenum type, GLsizei stride);
void glEdgeFlagFormatNV (GLsizei stride);
void glFogCoordFormatNV (GLenum type, GLsizei stride);
void glGetIntegerui64i_vNV (GLenum value, GLuint index, GLuint64EXT result[]);
void glIndexFormatNV (GLenum type, GLsizei stride);
void glNormalFormatNV (GLenum type, GLsizei stride);
void glSecondaryColorFormatNV (GLint size, GLenum type, GLsizei stride);
void glTexCoordFormatNV (GLint size, GLenum type, GLsizei stride);
void glVertexAttribFormatNV (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride);
void glVertexAttribIFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride);
void glVertexFormatNV (GLint size, GLenum type, GLsizei stride);
#define GL_DRAW_INDIRECT_UNIFIED_NV 0x8F40
#define GL_DRAW_INDIRECT_ADDRESS_NV 0x8F41
#define GL_DRAW_INDIRECT_LENGTH_NV  0x8F42
#define GL_VERTEX_PROGRAM_NV 0x8620
#define GL_VERTEX_STATE_PROGRAM_NV 0x8621
#define GL_ATTRIB_ARRAY_SIZE_NV 0x8623
#define GL_ATTRIB_ARRAY_STRIDE_NV 0x8624
#define GL_ATTRIB_ARRAY_TYPE_NV 0x8625
#define GL_CURRENT_ATTRIB_NV 0x8626
#define GL_PROGRAM_LENGTH_NV 0x8627
#define GL_PROGRAM_STRING_NV 0x8628
#define GL_MODELVIEW_PROJECTION_NV 0x8629
#define GL_IDENTITY_NV 0x862A
#define GL_INVERSE_NV 0x862B
#define GL_TRANSPOSE_NV 0x862C
#define GL_INVERSE_TRANSPOSE_NV 0x862D
#define GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV 0x862E
#define GL_MAX_TRACK_MATRICES_NV 0x862F
#define GL_MATRIX0_NV 0x8630
#define GL_MATRIX1_NV 0x8631
#define GL_MATRIX2_NV 0x8632
#define GL_MATRIX3_NV 0x8633
#define GL_MATRIX4_NV 0x8634
#define GL_MATRIX5_NV 0x8635
#define GL_MATRIX6_NV 0x8636
#define GL_MATRIX7_NV 0x8637
#define GL_CURRENT_MATRIX_STACK_DEPTH_NV 0x8640
#define GL_CURRENT_MATRIX_NV 0x8641
#define GL_VERTEX_PROGRAM_POINT_SIZE_NV 0x8642
#define GL_VERTEX_PROGRAM_TWO_SIDE_NV 0x8643
#define GL_PROGRAM_PARAMETER_NV 0x8644
#define GL_ATTRIB_ARRAY_POINTER_NV 0x8645
#define GL_PROGRAM_TARGET_NV 0x8646
#define GL_PROGRAM_RESIDENT_NV 0x8647
%feature("sufix", "_CONSTANT4321end");
#define GL_TRACK_MATRIX_NV 0x8648
%feature("sufix", "4321end");
#define GL_TRACK_MATRIX_TRANSFORM_NV 0x8649
#define GL_VERTEX_PROGRAM_BINDING_NV 0x864A
#define GL_PROGRAM_ERROR_POSITION_NV 0x864B
#define GL_VERTEX_ATTRIB_ARRAY0_NV 0x8650
#define GL_VERTEX_ATTRIB_ARRAY1_NV 0x8651
#define GL_VERTEX_ATTRIB_ARRAY2_NV 0x8652
#define GL_VERTEX_ATTRIB_ARRAY3_NV 0x8653
#define GL_VERTEX_ATTRIB_ARRAY4_NV 0x8654
#define GL_VERTEX_ATTRIB_ARRAY5_NV 0x8655
#define GL_VERTEX_ATTRIB_ARRAY6_NV 0x8656
#define GL_VERTEX_ATTRIB_ARRAY7_NV 0x8657
#define GL_VERTEX_ATTRIB_ARRAY8_NV 0x8658
#define GL_VERTEX_ATTRIB_ARRAY9_NV 0x8659
#define GL_VERTEX_ATTRIB_ARRAY10_NV 0x865A
#define GL_VERTEX_ATTRIB_ARRAY11_NV 0x865B
#define GL_VERTEX_ATTRIB_ARRAY12_NV 0x865C
#define GL_VERTEX_ATTRIB_ARRAY13_NV 0x865D
#define GL_VERTEX_ATTRIB_ARRAY14_NV 0x865E
#define GL_VERTEX_ATTRIB_ARRAY15_NV 0x865F
#define GL_MAP1_VERTEX_ATTRIB0_4_NV 0x8660
#define GL_MAP1_VERTEX_ATTRIB1_4_NV 0x8661
#define GL_MAP1_VERTEX_ATTRIB2_4_NV 0x8662
#define GL_MAP1_VERTEX_ATTRIB3_4_NV 0x8663
#define GL_MAP1_VERTEX_ATTRIB4_4_NV 0x8664
#define GL_MAP1_VERTEX_ATTRIB5_4_NV 0x8665
#define GL_MAP1_VERTEX_ATTRIB6_4_NV 0x8666
#define GL_MAP1_VERTEX_ATTRIB7_4_NV 0x8667
#define GL_MAP1_VERTEX_ATTRIB8_4_NV 0x8668
#define GL_MAP1_VERTEX_ATTRIB9_4_NV 0x8669
#define GL_MAP1_VERTEX_ATTRIB10_4_NV 0x866A
#define GL_MAP1_VERTEX_ATTRIB11_4_NV 0x866B
#define GL_MAP1_VERTEX_ATTRIB12_4_NV 0x866C
#define GL_MAP1_VERTEX_ATTRIB13_4_NV 0x866D
#define GL_MAP1_VERTEX_ATTRIB14_4_NV 0x866E
#define GL_MAP1_VERTEX_ATTRIB15_4_NV 0x866F
#define GL_MAP2_VERTEX_ATTRIB0_4_NV 0x8670
#define GL_MAP2_VERTEX_ATTRIB1_4_NV 0x8671
#define GL_MAP2_VERTEX_ATTRIB2_4_NV 0x8672
#define GL_MAP2_VERTEX_ATTRIB3_4_NV 0x8673
#define GL_MAP2_VERTEX_ATTRIB4_4_NV 0x8674
#define GL_MAP2_VERTEX_ATTRIB5_4_NV 0x8675
#define GL_MAP2_VERTEX_ATTRIB6_4_NV 0x8676
#define GL_MAP2_VERTEX_ATTRIB7_4_NV 0x8677
#define GL_MAP2_VERTEX_ATTRIB8_4_NV 0x8678
#define GL_MAP2_VERTEX_ATTRIB9_4_NV 0x8679
#define GL_MAP2_VERTEX_ATTRIB10_4_NV 0x867A
#define GL_MAP2_VERTEX_ATTRIB11_4_NV 0x867B
#define GL_MAP2_VERTEX_ATTRIB12_4_NV 0x867C
#define GL_MAP2_VERTEX_ATTRIB13_4_NV 0x867D
#define GL_MAP2_VERTEX_ATTRIB14_4_NV 0x867E
#define GL_MAP2_VERTEX_ATTRIB15_4_NV 0x867F
GLboolean glAreProgramsResidentNV (GLsizei n, const GLuint* ids, GLboolean *residences);
void glBindProgramNV (GLenum target, GLuint id);
void glDeleteProgramsNV (GLsizei n, const GLuint* ids);
void glExecuteProgramNV (GLenum target, GLuint id, const GLfloat* params);
void glGenProgramsNV (GLsizei n, GLuint* ids);
void glGetProgramParameterdvNV (GLenum target, GLuint index, GLenum pname, GLdouble* params);
void glGetProgramParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat* params);
void glGetProgramStringNV (GLuint id, GLenum pname, GLubyte* program);
void glGetProgramivNV (GLuint id, GLenum pname, GLint* params);
void glGetTrackMatrixivNV (GLenum target, GLuint address, GLenum pname, GLint* params);
void glGetVertexAttribPointervNV (GLuint index, GLenum pname, void** pointer);
void glGetVertexAttribdvNV (GLuint index, GLenum pname, GLdouble* params);
void glGetVertexAttribfvNV (GLuint index, GLenum pname, GLfloat* params);
void glGetVertexAttribivNV (GLuint index, GLenum pname, GLint* params);
GLboolean glIsProgramNV (GLuint id);
void glLoadProgramNV (GLenum target, GLuint id, GLsizei len, const GLubyte* program);
void glProgramParameter4dNV (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramParameter4dvNV (GLenum target, GLuint index, const GLdouble* params);
void glProgramParameter4fNV (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramParameter4fvNV (GLenum target, GLuint index, const GLfloat* params);
void glProgramParameters4dvNV (GLenum target, GLuint index, GLsizei num, const GLdouble* params);
void glProgramParameters4fvNV (GLenum target, GLuint index, GLsizei num, const GLfloat* params);
void glRequestResidentProgramsNV (GLsizei n, GLuint* ids);
void glTrackMatrixNV (GLenum target, GLuint address, GLenum matrix, GLenum transform);
void glVertexAttrib1dNV (GLuint index, GLdouble x);
void glVertexAttrib1dvNV (GLuint index, const GLdouble* v);
void glVertexAttrib1fNV (GLuint index, GLfloat x);
void glVertexAttrib1fvNV (GLuint index, const GLfloat* v);
void glVertexAttrib1sNV (GLuint index, GLshort x);
void glVertexAttrib1svNV (GLuint index, const GLshort* v);
void glVertexAttrib2dNV (GLuint index, GLdouble x, GLdouble y);
void glVertexAttrib2dvNV (GLuint index, const GLdouble* v);
void glVertexAttrib2fNV (GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fvNV (GLuint index, const GLfloat* v);
void glVertexAttrib2sNV (GLuint index, GLshort x, GLshort y);
void glVertexAttrib2svNV (GLuint index, const GLshort* v);
void glVertexAttrib3dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttrib3dvNV (GLuint index, const GLdouble* v);
void glVertexAttrib3fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fvNV (GLuint index, const GLfloat* v);
void glVertexAttrib3sNV (GLuint index, GLshort x, GLshort y, GLshort z);
void glVertexAttrib3svNV (GLuint index, const GLshort* v);
void glVertexAttrib4dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttrib4dvNV (GLuint index, const GLdouble* v);
void glVertexAttrib4fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fvNV (GLuint index, const GLfloat* v);
void glVertexAttrib4sNV (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexAttrib4svNV (GLuint index, const GLshort* v);
void glVertexAttrib4ubNV (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void glVertexAttrib4ubvNV (GLuint index, const GLubyte* v);
void glVertexAttribPointerNV (GLuint index, GLint size, GLenum type, GLsizei stride, const void *pointer);
void glVertexAttribs1dvNV (GLuint index, GLsizei n, const GLdouble* v);
void glVertexAttribs1fvNV (GLuint index, GLsizei n, const GLfloat* v);
void glVertexAttribs1svNV (GLuint index, GLsizei n, const GLshort* v);
void glVertexAttribs2dvNV (GLuint index, GLsizei n, const GLdouble* v);
void glVertexAttribs2fvNV (GLuint index, GLsizei n, const GLfloat* v);
void glVertexAttribs2svNV (GLuint index, GLsizei n, const GLshort* v);
void glVertexAttribs3dvNV (GLuint index, GLsizei n, const GLdouble* v);
void glVertexAttribs3fvNV (GLuint index, GLsizei n, const GLfloat* v);
void glVertexAttribs3svNV (GLuint index, GLsizei n, const GLshort* v);
void glVertexAttribs4dvNV (GLuint index, GLsizei n, const GLdouble* v);
void glVertexAttribs4fvNV (GLuint index, GLsizei n, const GLfloat* v);
void glVertexAttribs4svNV (GLuint index, GLsizei n, const GLshort* v);
void glVertexAttribs4ubvNV (GLuint index, GLsizei n, const GLubyte* v);
#define GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV 0x88F4
#define GL_MAX_PROGRAM_CALL_DEPTH_NV 0x88F5
#define MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB 0x8B4C
#define GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV 0x88FD
#define GL_VIDEO_BUFFER_NV 0x9020
#define GL_VIDEO_BUFFER_BINDING_NV 0x9021
#define GL_FIELD_UPPER_NV 0x9022
#define GL_FIELD_LOWER_NV 0x9023
#define GL_NUM_VIDEO_CAPTURE_STREAMS_NV 0x9024
#define GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV 0x9025
#define GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV 0x9026
#define GL_LAST_VIDEO_CAPTURE_STATUS_NV 0x9027
#define GL_VIDEO_BUFFER_PITCH_NV 0x9028
#define GL_VIDEO_COLOR_CONVERSION_MATRIX_NV 0x9029
#define GL_VIDEO_COLOR_CONVERSION_MAX_NV 0x902A
#define GL_VIDEO_COLOR_CONVERSION_MIN_NV 0x902B
#define GL_VIDEO_COLOR_CONVERSION_OFFSET_NV 0x902C
#define GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV 0x902D
#define GL_PARTIAL_SUCCESS_NV 0x902E
#define GL_SUCCESS_NV 0x902F
#define GL_FAILURE_NV 0x9030
#define GL_YCBYCR8_422_NV 0x9031
#define GL_YCBAYCR8A_4224_NV 0x9032
#define GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV 0x9033
#define GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV 0x9034
#define GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV 0x9035
#define GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV 0x9036
#define GL_Z4Y12Z4CB12Z4CR12_444_NV 0x9037
#define GL_VIDEO_CAPTURE_FRAME_WIDTH_NV 0x9038
#define GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV 0x9039
#define GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV 0x903A
#define GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV 0x903B
#define GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV 0x903C
void glBeginVideoCaptureNV (GLuint video_capture_slot);
void glBindVideoCaptureStreamBufferNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset);
void glBindVideoCaptureStreamTextureNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture);
void glEndVideoCaptureNV (GLuint video_capture_slot);
void glGetVideoCaptureivNV (GLuint video_capture_slot, GLenum pname, GLint* params);
GLenum glVideoCaptureNV (GLuint video_capture_slot, GLuint* sequence_num, GLuint64EXT *capture_time);
#define GL_DEPTH_RANGE 0x0B70
#define GL_VIEWPORT 0x0BA2
#define GL_SCISSOR_BOX 0x0C10
#define GL_SCISSOR_TEST 0x0C11
#define GL_MAX_VIEWPORTS_NV 0x825B
#define GL_VIEWPORT_SUBPIXEL_BITS_NV 0x825C
#define GL_VIEWPORT_BOUNDS_RANGE_NV 0x825D
#define GL_VIEWPORT_INDEX_PROVOKING_VERTEX_NV 0x825F
void glDepthRangeArrayfvNV (GLuint first, GLsizei count, const GLfloat * v);
void glDepthRangeIndexedfNV (GLuint index, GLfloat n, GLfloat f);
void glDisableiNV (GLenum target, GLuint index);
void glEnableiNV (GLenum target, GLuint index);
void glGetFloati_vNV (GLenum target, GLuint index, GLfloat* data);
GLboolean glIsEnablediNV (GLenum target, GLuint index);
void glScissorArrayvNV (GLuint first, GLsizei count, const GLint * v);
void glScissorIndexedNV (GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height);
void glScissorIndexedvNV (GLuint index, const GLint * v);
void glViewportArrayvNV (GLuint first, GLsizei count, const GLfloat * v);
void glViewportIndexedfNV (GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h);
void glViewportIndexedfvNV (GLuint index, const GLfloat * v);
#define GL_VIEWPORT_SWIZZLE_POSITIVE_X_NV 0x9350
#define GL_VIEWPORT_SWIZZLE_NEGATIVE_X_NV 0x9351
#define GL_VIEWPORT_SWIZZLE_POSITIVE_Y_NV 0x9352
#define GL_VIEWPORT_SWIZZLE_NEGATIVE_Y_NV 0x9353
#define GL_VIEWPORT_SWIZZLE_POSITIVE_Z_NV 0x9354
#define GL_VIEWPORT_SWIZZLE_NEGATIVE_Z_NV 0x9355
#define GL_VIEWPORT_SWIZZLE_POSITIVE_W_NV 0x9356
#define GL_VIEWPORT_SWIZZLE_NEGATIVE_W_NV 0x9357
#define GL_VIEWPORT_SWIZZLE_X_NV 0x9358
#define GL_VIEWPORT_SWIZZLE_Y_NV 0x9359
#define GL_VIEWPORT_SWIZZLE_Z_NV 0x935A
#define GL_VIEWPORT_SWIZZLE_W_NV 0x935B
void glViewportSwizzleNV (GLuint index, GLenum swizzlex, GLenum swizzley, GLenum swizzlez, GLenum swizzlew);
void glBeginConditionalRenderNVX (GLuint id);
void glEndConditionalRenderNVX (void);
#define GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX 0x9047
#define GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX 0x9048
#define GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX 0x9049
#define GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX 0x904A
#define GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX 0x904B
%feature("sufix", "_CONSTANT4321end");
#define GL_UPLOAD_GPU_MASK_NVX 0x954A
%feature("sufix", "4321end");
GLsync glAsyncCopyBufferSubDataNVX (GLsizei waitSemaphoreCount, const GLuint* waitSemaphoreArray, const GLuint64 *fenceValueArray, GLuint readGpu, GLbitfield writeGpuMask, GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size, GLsizei signalSemaphoreCount, const GLuint *signalSemaphoreArray, const GLuint64 *signalValueArray);
GLuint glAsyncCopyImageSubDataNVX (GLsizei waitSemaphoreCount, const GLuint* waitSemaphoreArray, const GLuint64 *waitValueArray, GLuint srcGpu, GLbitfield dstGpuMask, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth, GLsizei signalSemaphoreCount, const GLuint *signalSemaphoreArray, const GLuint64 *signalValueArray);
void glMulticastScissorArrayvNVX (GLuint gpu, GLuint first, GLsizei count, const GLint* v);
void glMulticastViewportArrayvNVX (GLuint gpu, GLuint first, GLsizei count, const GLfloat* v);
void glMulticastViewportPositionWScaleNVX (GLuint gpu, GLuint index, GLfloat xcoeff, GLfloat ycoeff);
void glUploadGpuMaskNVX (GLbitfield mask);
#define GL_LGPU_SEPARATE_STORAGE_BIT_NVX 0x0800
#define GL_MAX_LGPU_GPUS_NVX 0x92BA
void glLGPUCopyImageSubDataNVX (GLuint sourceGpu, GLbitfield destinationGpuMask, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srxY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth);
void glLGPUInterlockNVX (void);
void glLGPUNamedBufferSubDataNVX (GLbitfield gpuMask, GLuint buffer, GLintptr offset, GLsizeiptr size, const void *data);
void glClientWaitSemaphoreui64NVX (GLsizei fenceObjectCount, const GLuint* semaphoreArray, const GLuint64 *fenceValueArray);
void glSignalSemaphoreui64NVX (GLuint signalGpu, GLsizei fenceObjectCount, const GLuint* semaphoreArray, const GLuint64 *fenceValueArray);
void glWaitSemaphoreui64NVX (GLuint waitGpu, GLsizei fenceObjectCount, const GLuint* semaphoreArray, const GLuint64 *fenceValueArray);
#define GL_BLEND_EQUATION_RGB_OES 0x8009
#define GL_BLEND_EQUATION_ALPHA_OES 0x883D
void glBlendEquationSeparateOES (GLenum modeRGB, GLenum modeAlpha);
#define GL_BLEND_DST_RGB_OES 0x80C8
#define GL_BLEND_SRC_RGB_OES 0x80C9
#define GL_BLEND_DST_ALPHA_OES 0x80CA
#define GL_BLEND_SRC_ALPHA_OES 0x80CB
void glBlendFuncSeparateOES (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
#define GL_FUNC_ADD_OES 0x8006
%feature("sufix", "_CONSTANT4321end");
#define GL_BLEND_EQUATION_OES 0x8009
%feature("sufix", "4321end");
#define GL_FUNC_SUBTRACT_OES 0x800A
#define GL_FUNC_REVERSE_SUBTRACT_OES 0x800B
void glBlendEquationOES (GLenum mode);
#define GL_ETC1_RGB8_OES 0x8D64
#define GL_PALETTE4_RGB8_OES 0x8B90
#define GL_PALETTE4_RGBA8_OES 0x8B91
#define GL_PALETTE4_R5_G6_B5_OES 0x8B92
#define GL_PALETTE4_RGBA4_OES 0x8B93
#define GL_PALETTE4_RGB5_A1_OES 0x8B94
#define GL_PALETTE8_RGB8_OES 0x8B95
#define GL_PALETTE8_RGBA8_OES 0x8B96
#define GL_PALETTE8_R5_G6_B5_OES 0x8B97
#define GL_PALETTE8_RGBA4_OES 0x8B98
#define GL_PALETTE8_RGB5_A1_OES 0x8B99
void glCopyImageSubDataOES (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth);
#define GL_DEPTH_COMPONENT24_OES 0x81A6
#define GL_DEPTH_COMPONENT32_OES 0x81A7
#define GL_UNSIGNED_SHORT 0x1403
#define GL_UNSIGNED_INT 0x1405
#define GL_DEPTH_COMPONENT 0x1902
#define GL_UNSIGNED_SHORT 0x1403
#define GL_UNSIGNED_INT 0x1405
#define GL_DEPTH_COMPONENT 0x1902
#define GL_DEPTH_STENCIL_OES 0x84F9
#define GL_DEPTH24_STENCIL8_OES 0x88F0
void glBlendEquationSeparateiOES (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void glBlendEquationiOES (GLuint buf, GLenum mode);
void glBlendFuncSeparateiOES (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
void glBlendFunciOES (GLuint buf, GLenum src, GLenum dst);
void glColorMaskiOES (GLuint buf, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void glDisableiOES (GLenum target, GLuint index);
void glEnableiOES (GLenum target, GLuint index);
GLboolean glIsEnablediOES (GLenum target, GLuint index);
#define GL_TEXTURE_CROP_RECT_OES 0x8B9D
void glEGLImageTargetRenderbufferStorageOES (GLenum target, GLeglImageOES image);
void glEGLImageTargetTexture2DOES (GLenum target, GLeglImageOES image);
#define GL_TEXTURE_EXTERNAL_OES 0x8D65
#define GL_SAMPLER_EXTERNAL_OES 0x8D66
#define GL_TEXTURE_BINDING_EXTERNAL_OES 0x8D67
#define GL_REQUIRED_TEXTURE_IMAGE_UNITS_OES 0x8D68
#define GL_UNSIGNED_INT 0x1405
#define GL_NONE_OES 0
#define GL_INVALID_FRAMEBUFFER_OPERATION_OES 0x0506
#define GL_RGBA4_OES 0x8056
#define GL_RGB5_A1_OES 0x8057
#define GL_DEPTH_COMPONENT16_OES 0x81A5
#define GL_MAX_RENDERBUFFER_SIZE_OES 0x84E8
#define GL_FRAMEBUFFER_BINDING_OES 0x8CA6
#define GL_RENDERBUFFER_BINDING_OES 0x8CA7
#define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_OES 0x8CD0
#define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_OES 0x8CD1
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_OES 0x8CD2
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_OES 0x8CD3
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES 0x8CD4
#define GL_FRAMEBUFFER_COMPLETE_OES 0x8CD5
#define GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_OES 0x8CD6
#define GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_OES 0x8CD7
#define GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_OES 0x8CD9
#define GL_FRAMEBUFFER_INCOMPLETE_FORMATS_OES 0x8CDA
#define GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_OES 0x8CDB
#define GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_OES 0x8CDC
#define GL_FRAMEBUFFER_UNSUPPORTED_OES 0x8CDD
#define GL_COLOR_ATTACHMENT0_OES 0x8CE0
#define GL_DEPTH_ATTACHMENT_OES 0x8D00
#define GL_STENCIL_ATTACHMENT_OES 0x8D20
#define GL_FRAMEBUFFER_OES 0x8D40
#define GL_RENDERBUFFER_OES 0x8D41
#define GL_RENDERBUFFER_WIDTH_OES 0x8D42
#define GL_RENDERBUFFER_HEIGHT_OES 0x8D43
#define GL_RENDERBUFFER_INTERNAL_FORMAT_OES 0x8D44
#define GL_STENCIL_INDEX1_OES 0x8D46
#define GL_STENCIL_INDEX4_OES 0x8D47
#define GL_STENCIL_INDEX8_OES 0x8D48
#define GL_RENDERBUFFER_RED_SIZE_OES 0x8D50
#define GL_RENDERBUFFER_GREEN_SIZE_OES 0x8D51
#define GL_RENDERBUFFER_BLUE_SIZE_OES 0x8D52
#define GL_RENDERBUFFER_ALPHA_SIZE_OES 0x8D53
#define GL_RENDERBUFFER_DEPTH_SIZE_OES 0x8D54
#define GL_RENDERBUFFER_STENCIL_SIZE_OES 0x8D55
#define GL_RGB565_OES 0x8D62
void glBindFramebufferOES (GLenum target, GLuint framebuffer);
void glBindRenderbufferOES (GLenum target, GLuint renderbuffer);
GLenum glCheckFramebufferStatusOES (GLenum target);
void glDeleteFramebuffersOES (GLsizei n, const GLuint* framebuffers);
void glDeleteRenderbuffersOES (GLsizei n, const GLuint* renderbuffers);
void glFramebufferRenderbufferOES (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glFramebufferTexture2DOES (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glGenFramebuffersOES (GLsizei n, GLuint* framebuffers);
void glGenRenderbuffersOES (GLsizei n, GLuint* renderbuffers);
void glGenerateMipmapOES (GLenum target);
void glGetFramebufferAttachmentParameterivOES (GLenum target, GLenum attachment, GLenum pname, GLint* params);
void glGetRenderbufferParameterivOES (GLenum target, GLenum pname, GLint* params);
GLboolean glIsFramebufferOES (GLuint framebuffer);
GLboolean glIsRenderbufferOES (GLuint renderbuffer);
void glRenderbufferStorageOES (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
#define GL_GEOMETRY_SHADER_BIT_OES 0x00000004
#define GL_LINES_ADJACENCY_OES 0xA
#define GL_LINE_STRIP_ADJACENCY_OES 0xB
#define GL_TRIANGLES_ADJACENCY_OES 0xC
#define GL_TRIANGLE_STRIP_ADJACENCY_OES 0xD
#define GL_LAYER_PROVOKING_VERTEX_OES 0x825E
#define GL_UNDEFINED_VERTEX_OES 0x8260
#define GL_GEOMETRY_SHADER_INVOCATIONS_OES 0x887F
#define GL_GEOMETRY_LINKED_VERTICES_OUT_OES 0x8916
#define GL_GEOMETRY_LINKED_INPUT_TYPE_OES 0x8917
#define GL_GEOMETRY_LINKED_OUTPUT_TYPE_OES 0x8918
#define GL_MAX_GEOMETRY_UNIFORM_BLOCKS_OES 0x8A2C
#define GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_OES 0x8A32
#define GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_OES 0x8C29
#define GL_PRIMITIVES_GENERATED_OES 0x8C87
#define GL_FRAMEBUFFER_ATTACHMENT_LAYERED_OES 0x8DA7
#define GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_OES 0x8DA8
#define GL_GEOMETRY_SHADER_OES 0x8DD9
#define GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_OES 0x8DDF
#define GL_MAX_GEOMETRY_OUTPUT_VERTICES_OES 0x8DE0
#define GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_OES 0x8DE1
#define GL_FIRST_VERTEX_CONVENTION_OES 0x8E4D
#define GL_LAST_VERTEX_CONVENTION_OES 0x8E4E
#define GL_MAX_GEOMETRY_SHADER_INVOCATIONS_OES 0x8E5A
#define GL_MAX_GEOMETRY_IMAGE_UNIFORMS_OES 0x90CD
#define GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_OES 0x90D7
#define GL_MAX_GEOMETRY_INPUT_COMPONENTS_OES 0x9123
#define GL_MAX_GEOMETRY_OUTPUT_COMPONENTS_OES 0x9124
#define GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_OES 0x92CF
#define GL_MAX_GEOMETRY_ATOMIC_COUNTERS_OES 0x92D5
#define GL_REFERENCED_BY_GEOMETRY_SHADER_OES 0x9309
#define GL_FRAMEBUFFER_DEFAULT_LAYERS_OES 0x9312
#define GL_MAX_FRAMEBUFFER_LAYERS_OES 0x9317
#define GL_GEOMETRY_SHADER_BIT_OES 0x00000004
#define GL_LINES_ADJACENCY_OES 0xA
#define GL_LINE_STRIP_ADJACENCY_OES 0xB
#define GL_TRIANGLES_ADJACENCY_OES 0xC
#define GL_TRIANGLE_STRIP_ADJACENCY_OES 0xD
#define GL_LAYER_PROVOKING_VERTEX_OES 0x825E
#define GL_UNDEFINED_VERTEX_OES 0x8260
#define GL_GEOMETRY_SHADER_INVOCATIONS_OES 0x887F
#define GL_GEOMETRY_LINKED_VERTICES_OUT_OES 0x8916
#define GL_GEOMETRY_LINKED_INPUT_TYPE_OES 0x8917
#define GL_GEOMETRY_LINKED_OUTPUT_TYPE_OES 0x8918
#define GL_MAX_GEOMETRY_UNIFORM_BLOCKS_OES 0x8A2C
#define GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_OES 0x8A32
#define GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_OES 0x8C29
#define GL_PRIMITIVES_GENERATED_OES 0x8C87
#define GL_FRAMEBUFFER_ATTACHMENT_LAYERED_OES 0x8DA7
#define GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_OES 0x8DA8
#define GL_GEOMETRY_SHADER_OES 0x8DD9
#define GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_OES 0x8DDF
#define GL_MAX_GEOMETRY_OUTPUT_VERTICES_OES 0x8DE0
#define GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_OES 0x8DE1
#define GL_FIRST_VERTEX_CONVENTION_OES 0x8E4D
#define GL_LAST_VERTEX_CONVENTION_OES 0x8E4E
#define GL_MAX_GEOMETRY_SHADER_INVOCATIONS_OES 0x8E5A
#define GL_MAX_GEOMETRY_IMAGE_UNIFORMS_OES 0x90CD
#define GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_OES 0x90D7
#define GL_MAX_GEOMETRY_INPUT_COMPONENTS_OES 0x9123
#define GL_MAX_GEOMETRY_OUTPUT_COMPONENTS_OES 0x9124
#define GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_OES 0x92CF
#define GL_MAX_GEOMETRY_ATOMIC_COUNTERS_OES 0x92D5
#define GL_REFERENCED_BY_GEOMETRY_SHADER_OES 0x9309
#define GL_FRAMEBUFFER_DEFAULT_LAYERS_OES 0x9312
#define GL_MAX_FRAMEBUFFER_LAYERS_OES 0x9317
#define GL_PROGRAM_BINARY_LENGTH_OES 0x8741
#define GL_NUM_PROGRAM_BINARY_FORMATS_OES 0x87FE
#define GL_PROGRAM_BINARY_FORMATS_OES 0x87FF
void glGetProgramBinaryOES (GLuint program, GLsizei bufSize, GLsizei* length, GLenum *binaryFormat, void*binary);
void glProgramBinaryOES (GLuint program, GLenum binaryFormat, const void *binary, GLint length);
#define GL_WRITE_ONLY_OES 0x88B9
#define GL_BUFFER_ACCESS_OES 0x88BB
#define GL_BUFFER_MAPPED_OES 0x88BC
#define GL_BUFFER_MAP_POINTER_OES 0x88BD
void glGetBufferPointervOES (GLenum target, GLenum pname, void** params);
void * glMapBufferOES (GLenum target, GLenum access);
GLboolean glUnmapBufferOES (GLenum target);
#define GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES 0x898d
#define GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES 0x898e
#define GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES 0x898f
#define GL_MAX_VERTEX_UNITS_OES 0x86A4
#define GL_WEIGHT_ARRAY_TYPE_OES 0x86A9
#define GL_WEIGHT_ARRAY_STRIDE_OES 0x86AA
#define GL_WEIGHT_ARRAY_SIZE_OES 0x86AB
#define GL_WEIGHT_ARRAY_POINTER_OES 0x86AC
#define GL_WEIGHT_ARRAY_OES 0x86AD
#define GL_MATRIX_PALETTE_OES 0x8840
#define GL_MAX_PALETTE_MATRICES_OES 0x8842
%feature("sufix", "_CONSTANT4321end");
#define GL_CURRENT_PALETTE_MATRIX_OES 0x8843
%feature("sufix", "4321end");
#define GL_MATRIX_INDEX_ARRAY_OES 0x8844
#define GL_MATRIX_INDEX_ARRAY_SIZE_OES 0x8846
#define GL_MATRIX_INDEX_ARRAY_TYPE_OES 0x8847
#define GL_MATRIX_INDEX_ARRAY_STRIDE_OES 0x8848
#define GL_MATRIX_INDEX_ARRAY_POINTER_OES 0x8849
#define GL_WEIGHT_ARRAY_BUFFER_BINDING_OES 0x889E
#define GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES 0x8B9E
void glCurrentPaletteMatrixOES (GLuint index);
void glMatrixIndexPointerOES (GLint size, GLenum type, GLsizei stride, void *pointer);
void glWeightPointerOES (GLint size, GLenum type, GLsizei stride, void *pointer);
#define GL_DEPTH_STENCIL_OES 0x84F9
#define GL_UNSIGNED_INT_24_8_OES 0x84FA
#define GL_DEPTH24_STENCIL8_OES 0x88F0
#define GL_POINT_SIZE_ARRAY_TYPE_OES 0x898A
#define GL_POINT_SIZE_ARRAY_STRIDE_OES 0x898B
#define GL_POINT_SIZE_ARRAY_POINTER_OES 0x898C
#define GL_POINT_SIZE_ARRAY_OES 0x8B9C
#define GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES 0x8B9F
#define GL_POINT_SPRITE_OES 0x8861
#define GL_COORD_REPLACE_OES 0x8862
#define GL_IMPLEMENTATION_COLOR_READ_TYPE_OES 0x8B9A
#define GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES 0x8B9B
#define GL_ALPHA8_OES 0x803C
#define GL_LUMINANCE8_OES 0x8040
#define GL_LUMINANCE4_ALPHA4_OES 0x8043
#define GL_LUMINANCE8_ALPHA8_OES 0x8045
#define GL_RGB8_OES 0x8051
#define GL_RGB10_EXT 0x8052
#define GL_RGBA4_OES 0x8056
#define GL_RGB5_A1_OES 0x8057
#define GL_RGBA8_OES 0x8058
#define GL_RGB10_A2_EXT 0x8059
#define GL_DEPTH_COMPONENT16_OES 0x81A5
#define GL_DEPTH_COMPONENT24_OES 0x81A6
#define GL_DEPTH_COMPONENT32_OES 0x81A7
#define GL_DEPTH24_STENCIL8_OES 0x88F0
#define GL_RGB565_OES 0x8D62
#define GL_RGB8_OES 0x8051
#define GL_RGBA8_OES 0x8058
#define GL_SAMPLE_SHADING_OES 0x8C36
#define GL_MIN_SAMPLE_SHADING_VALUE_OES 0x8C37
void glMinSampleShadingOES (GLfloat value);
#define GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_OES 0x8E5B
#define GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_OES 0x8E5C
#define GL_FRAGMENT_INTERPOLATION_OFFSET_BITS_OES 0x8E5D
void glClearDepthfOES (GLclampf depth);
void glClipPlanefOES (GLenum plane, const GLfloat* equation);
void glDepthRangefOES (GLclampf n, GLclampf f);
void glFrustumfOES (GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f);
void glGetClipPlanefOES (GLenum plane, GLfloat* equation);
void glOrthofOES (GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f);
#define GL_FRAGMENT_SHADER_DERIVATIVE_HINT_OES 0x8B8B
#define GL_STENCIL_INDEX1_OES 0x8D46
#define GL_STENCIL_INDEX4_OES 0x8D47
#define GL_STENCIL_INDEX8_OES 0x8D48
#define GL_FRAMEBUFFER_UNDEFINED_OES 0x8219
#define GL_QUADS_OES 0x0007
#define GL_TESS_CONTROL_SHADER_BIT_OES 0x00000008
#define GL_PATCHES_OES 0xE
#define GL_TESS_EVALUATION_SHADER_BIT_OES 0x00000010
#define GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED_OES 0x8221
#define GL_MAX_TESS_CONTROL_INPUT_COMPONENTS_OES 0x886C
#define GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS_OES 0x886D
#define GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_OES 0x8E1E
#define GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_OES 0x8E1F
#define GL_PATCH_VERTICES_OES 0x8E72
#define GL_TESS_CONTROL_OUTPUT_VERTICES_OES 0x8E75
#define GL_TESS_GEN_MODE_OES 0x8E76
#define GL_TESS_GEN_SPACING_OES 0x8E77
#define GL_TESS_GEN_VERTEX_ORDER_OES 0x8E78
#define GL_TESS_GEN_POINT_MODE_OES 0x8E79
#define GL_ISOLINES_OES 0x8E7A
#define GL_FRACTIONAL_ODD_OES 0x8E7B
#define GL_FRACTIONAL_EVEN_OES 0x8E7C
#define GL_MAX_PATCH_VERTICES_OES 0x8E7D
#define GL_MAX_TESS_GEN_LEVEL_OES 0x8E7E
#define GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS_OES 0x8E7F
#define GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_OES 0x8E80
#define GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_OES 0x8E81
#define GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_OES 0x8E82
#define GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS_OES 0x8E83
#define GL_MAX_TESS_PATCH_COMPONENTS_OES 0x8E84
#define GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_OES 0x8E85
#define GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_OES 0x8E86
#define GL_TESS_EVALUATION_SHADER_OES 0x8E87
#define GL_TESS_CONTROL_SHADER_OES 0x8E88
#define GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS_OES 0x8E89
#define GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS_OES 0x8E8A
#define GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS_OES 0x90CB
#define GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS_OES 0x90CC
#define GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_OES 0x90D8
#define GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_OES 0x90D9
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_OES 0x92CD
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_OES 0x92CE
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS_OES 0x92D3
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS_OES 0x92D4
#define GL_IS_PER_PATCH_OES 0x92E7
#define GL_REFERENCED_BY_TESS_CONTROL_SHADER_OES 0x9307
#define GL_REFERENCED_BY_TESS_EVALUATION_SHADER_OES 0x9308
#define GL_QUADS_OES 0x0007
#define GL_TESS_CONTROL_SHADER_BIT_OES 0x00000008
#define GL_PATCHES_OES 0xE
#define GL_TESS_EVALUATION_SHADER_BIT_OES 0x00000010
#define GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED_OES 0x8221
#define GL_MAX_TESS_CONTROL_INPUT_COMPONENTS_OES 0x886C
#define GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS_OES 0x886D
#define GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_OES 0x8E1E
#define GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_OES 0x8E1F
#define GL_PATCH_VERTICES_OES 0x8E72
#define GL_TESS_CONTROL_OUTPUT_VERTICES_OES 0x8E75
#define GL_TESS_GEN_MODE_OES 0x8E76
#define GL_TESS_GEN_SPACING_OES 0x8E77
#define GL_TESS_GEN_VERTEX_ORDER_OES 0x8E78
#define GL_TESS_GEN_POINT_MODE_OES 0x8E79
#define GL_ISOLINES_OES 0x8E7A
#define GL_FRACTIONAL_ODD_OES 0x8E7B
#define GL_FRACTIONAL_EVEN_OES 0x8E7C
#define GL_MAX_PATCH_VERTICES_OES 0x8E7D
#define GL_MAX_TESS_GEN_LEVEL_OES 0x8E7E
#define GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS_OES 0x8E7F
#define GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_OES 0x8E80
#define GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_OES 0x8E81
#define GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_OES 0x8E82
#define GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS_OES 0x8E83
#define GL_MAX_TESS_PATCH_COMPONENTS_OES 0x8E84
#define GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_OES 0x8E85
#define GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_OES 0x8E86
#define GL_TESS_EVALUATION_SHADER_OES 0x8E87
#define GL_TESS_CONTROL_SHADER_OES 0x8E88
#define GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS_OES 0x8E89
#define GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS_OES 0x8E8A
#define GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS_OES 0x90CB
#define GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS_OES 0x90CC
#define GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_OES 0x90D8
#define GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_OES 0x90D9
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_OES 0x92CD
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_OES 0x92CE
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS_OES 0x92D3
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS_OES 0x92D4
#define GL_IS_PER_PATCH_OES 0x92E7
#define GL_REFERENCED_BY_TESS_CONTROL_SHADER_OES 0x9307
#define GL_REFERENCED_BY_TESS_EVALUATION_SHADER_OES 0x9308
#define GL_TEXTURE_BINDING_3D_OES 0x806A
#define GL_TEXTURE_3D_OES 0x806F
#define GL_TEXTURE_WRAP_R_OES 0x8072
#define GL_MAX_3D_TEXTURE_SIZE_OES 0x8073
void glCompressedTexImage3DOES (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const void *data);
void glCompressedTexSubImage3DOES (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
void glCopyTexSubImage3DOES (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glFramebufferTexture3DOES (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glTexImage3DOES (GLenum target, GLint level, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexSubImage3DOES (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
#define GL_TEXTURE_BORDER_COLOR_OES 0x1004
#define GL_CLAMP_TO_BORDER_OES 0x812D
void glGetSamplerParameterIivOES (GLuint sampler, GLenum pname, GLint* params);
void glGetSamplerParameterIuivOES (GLuint sampler, GLenum pname, GLuint* params);
void glGetTexParameterIivOES (GLenum target, GLenum pname, GLint* params);
void glGetTexParameterIuivOES (GLenum target, GLenum pname, GLuint* params);
void glSamplerParameterIivOES (GLuint sampler, GLenum pname, const GLint* params);
void glSamplerParameterIuivOES (GLuint sampler, GLenum pname, const GLuint* params);
void glTexParameterIivOES (GLenum target, GLenum pname, const GLint* params);
void glTexParameterIuivOES (GLenum target, GLenum pname, const GLuint* params);
#define GL_TEXTURE_BUFFER_BINDING_OES 0x8C2A
#define GL_TEXTURE_BUFFER_OES 0x8C2A
#define GL_MAX_TEXTURE_BUFFER_SIZE_OES 0x8C2B
#define GL_TEXTURE_BINDING_BUFFER_OES 0x8C2C
#define GL_TEXTURE_BUFFER_DATA_STORE_BINDING_OES 0x8C2D
#define GL_SAMPLER_BUFFER_OES 0x8DC2
#define GL_INT_SAMPLER_BUFFER_OES 0x8DD0
#define GL_UNSIGNED_INT_SAMPLER_BUFFER_OES 0x8DD8
#define GL_IMAGE_BUFFER_OES 0x9051
#define GL_INT_IMAGE_BUFFER_OES 0x905C
#define GL_UNSIGNED_INT_IMAGE_BUFFER_OES 0x9067
#define GL_TEXTURE_BUFFER_OFFSET_OES 0x919D
#define GL_TEXTURE_BUFFER_SIZE_OES 0x919E
#define GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT_OES 0x919F
void glTexBufferOES (GLenum target, GLenum internalformat, GLuint buffer);
void glTexBufferRangeOES (GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size);
#define GL_COMPRESSED_RGBA_ASTC_4x4_KHR 0x93B0
#define GL_COMPRESSED_RGBA_ASTC_5x4_KHR 0x93B1
#define GL_COMPRESSED_RGBA_ASTC_5x5_KHR 0x93B2
#define GL_COMPRESSED_RGBA_ASTC_6x5_KHR 0x93B3
#define GL_COMPRESSED_RGBA_ASTC_6x6_KHR 0x93B4
#define GL_COMPRESSED_RGBA_ASTC_8x5_KHR 0x93B5
#define GL_COMPRESSED_RGBA_ASTC_8x6_KHR 0x93B6
#define GL_COMPRESSED_RGBA_ASTC_8x8_KHR 0x93B7
#define GL_COMPRESSED_RGBA_ASTC_10x5_KHR 0x93B8
#define GL_COMPRESSED_RGBA_ASTC_10x6_KHR 0x93B9
#define GL_COMPRESSED_RGBA_ASTC_10x8_KHR 0x93BA
#define GL_COMPRESSED_RGBA_ASTC_10x10_KHR 0x93BB
#define GL_COMPRESSED_RGBA_ASTC_12x10_KHR 0x93BC
#define GL_COMPRESSED_RGBA_ASTC_12x12_KHR 0x93BD
#define GL_COMPRESSED_RGBA_ASTC_3x3x3_OES 0x93C0
#define GL_COMPRESSED_RGBA_ASTC_4x3x3_OES 0x93C1
#define GL_COMPRESSED_RGBA_ASTC_4x4x3_OES 0x93C2
#define GL_COMPRESSED_RGBA_ASTC_4x4x4_OES 0x93C3
#define GL_COMPRESSED_RGBA_ASTC_5x4x4_OES 0x93C4
#define GL_COMPRESSED_RGBA_ASTC_5x5x4_OES 0x93C5
#define GL_COMPRESSED_RGBA_ASTC_5x5x5_OES 0x93C6
#define GL_COMPRESSED_RGBA_ASTC_6x5x5_OES 0x93C7
#define GL_COMPRESSED_RGBA_ASTC_6x6x5_OES 0x93C8
#define GL_COMPRESSED_RGBA_ASTC_6x6x6_OES 0x93C9
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR 0x93D0
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR 0x93D1
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR 0x93D2
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR 0x93D3
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR 0x93D4
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR 0x93D5
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR 0x93D6
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR 0x93D7
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR 0x93D8
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR 0x93D9
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR 0x93DA
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR 0x93DB
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR 0x93DC
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR 0x93DD
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES 0x93E0
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES 0x93E1
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES 0x93E2
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES 0x93E3
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES 0x93E4
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES 0x93E5
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES 0x93E6
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES 0x93E7
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES 0x93E8
#define GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES 0x93E9
#define GL_TEXTURE_GEN_MODE_OES 0x2500
#define GL_NORMAL_MAP_OES 0x8511
#define GL_REFLECTION_MAP_OES 0x8512
#define GL_TEXTURE_CUBE_MAP_OES 0x8513
#define GL_TEXTURE_BINDING_CUBE_MAP_OES 0x8514
#define GL_TEXTURE_CUBE_MAP_POSITIVE_X_OES 0x8515
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_X_OES 0x8516
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Y_OES 0x8517
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_OES 0x8518
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Z_OES 0x8519
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_OES 0x851A
#define GL_MAX_CUBE_MAP_TEXTURE_SIZE_OES 0x851C
#define GL_TEXTURE_GEN_STR_OES 0x8D60
void glGetTexGenfvOES (GLenum coord, GLenum pname, GLfloat* params);
void glGetTexGenivOES (GLenum coord, GLenum pname, GLint* params);
void glGetTexGenxvOES (GLenum coord, GLenum pname, GLfixed* params);
void glTexGenfOES (GLenum coord, GLenum pname, GLfloat param);
void glTexGenfvOES (GLenum coord, GLenum pname, const GLfloat* params);
void glTexGeniOES (GLenum coord, GLenum pname, GLint param);
void glTexGenivOES (GLenum coord, GLenum pname, const GLint* params);
void glTexGenxOES (GLenum coord, GLenum pname, GLfixed param);
void glTexGenxvOES (GLenum coord, GLenum pname, const GLfixed* params);
#define GL_TEXTURE_CUBE_MAP_ARRAY_OES 0x9009
#define GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_OES 0x900A
#define GL_SAMPLER_CUBE_MAP_ARRAY_OES 0x900C
#define GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_OES 0x900D
#define GL_INT_SAMPLER_CUBE_MAP_ARRAY_OES 0x900E
#define GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_OES 0x900F
#define GL_IMAGE_CUBE_MAP_ARRAY_OES 0x9054
#define GL_INT_IMAGE_CUBE_MAP_ARRAY_OES 0x905F
#define GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_OES 0x906A
#define GL_MIRRORED_REPEAT 0x8370
#define GL_STENCIL_INDEX 0x1901
#define GL_STENCIL_INDEX8 0x8D48
#define GL_TEXTURE_2D_MULTISAMPLE_ARRAY_OES 0x9102
#define GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY_OES 0x9105
#define GL_SAMPLER_2D_MULTISAMPLE_ARRAY_OES 0x910B
#define GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES 0x910C
#define GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES 0x910D
void glTexStorage3DMultisampleOES (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
#define GL_TEXTURE_VIEW_MIN_LEVEL_OES 0x82DB
#define GL_TEXTURE_VIEW_NUM_LEVELS_OES 0x82DC
#define GL_TEXTURE_VIEW_MIN_LAYER_OES 0x82DD
#define GL_TEXTURE_VIEW_NUM_LAYERS_OES 0x82DE
#define GL_TEXTURE_IMMUTABLE_LEVELS 0x82DF
void glTextureViewOES (GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers);
#define GL_VERTEX_ARRAY_BINDING_OES 0x85B5
void glBindVertexArrayOES (GLuint array);
void glDeleteVertexArraysOES (GLsizei n, const GLuint* arrays);
void glGenVertexArraysOES (GLsizei n, GLuint* arrays);
GLboolean glIsVertexArrayOES (GLuint array);
#define GL_HALF_FLOAT_OES 0x8D61
#define GL_UNSIGNED_INT_10_10_10_2_OES 0x8DF6
#define GL_INT_10_10_10_2_OES 0x8DF7
#define GL_INTERLACE_OML 0x8980
#define GL_INTERLACE_READ_OML 0x8981
#define GL_PACK_RESAMPLE_OML 0x8984
#define GL_UNPACK_RESAMPLE_OML 0x8985
#define GL_RESAMPLE_REPLICATE_OML 0x8986
#define GL_RESAMPLE_ZERO_FILL_OML 0x8987
#define GL_RESAMPLE_AVERAGE_OML 0x8988
#define GL_RESAMPLE_DECIMATE_OML 0x8989
#define GL_FORMAT_SUBSAMPLE_24_24_OML 0x8982
#define GL_FORMAT_SUBSAMPLE_244_244_OML 0x8983
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR 0x9630
#define GL_MAX_VIEWS_OVR 0x9631
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR 0x9632
#define GL_FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR 0x9633
void glFramebufferTextureMultiviewOVR (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint baseViewIndex, GLsizei numViews);
void glNamedFramebufferTextureMultiviewOVR (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint baseViewIndex, GLsizei numViews);
void glFramebufferTextureMultisampleMultiviewOVR (GLenum target, GLenum attachment, GLuint texture, GLint level, GLsizei samples, GLint baseViewIndex, GLsizei numViews);
#define GL_PREFER_DOUBLEBUFFER_HINT_PGI 107000
#define GL_CONSERVE_MEMORY_HINT_PGI 107005
#define GL_RECLAIM_MEMORY_HINT_PGI 107006
#define GL_NATIVE_GRAPHICS_HANDLE_PGI 107010
#define GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI 107011
#define GL_NATIVE_GRAPHICS_END_HINT_PGI 107012
#define GL_ALWAYS_FAST_HINT_PGI 107020
#define GL_ALWAYS_SOFT_HINT_PGI 107021
#define GL_ALLOW_DRAW_OBJ_HINT_PGI 107022
#define GL_ALLOW_DRAW_WIN_HINT_PGI 107023
#define GL_ALLOW_DRAW_FRG_HINT_PGI 107024
#define GL_ALLOW_DRAW_MEM_HINT_PGI 107025
#define GL_STRICT_DEPTHFUNC_HINT_PGI 107030
#define GL_STRICT_LIGHTING_HINT_PGI 107031
#define GL_STRICT_SCISSOR_HINT_PGI 107032
#define GL_FULL_STIPPLE_HINT_PGI 107033
#define GL_CLIP_NEAR_HINT_PGI 107040
#define GL_CLIP_FAR_HINT_PGI 107041
#define GL_WIDE_LINE_HINT_PGI 107042
#define GL_BACK_NORMALS_HINT_PGI 107043
#define GL_VERTEX23_BIT_PGI 0x00000004
#define GL_VERTEX4_BIT_PGI 0x00000008
#define GL_COLOR3_BIT_PGI 0x00010000
#define GL_COLOR4_BIT_PGI 0x00020000
#define GL_EDGEFLAG_BIT_PGI 0x00040000
#define GL_INDEX_BIT_PGI 0x00080000
#define GL_MAT_AMBIENT_BIT_PGI 0x00100000
#define GL_VERTEX_DATA_HINT_PGI 107050
#define GL_VERTEX_CONSISTENT_HINT_PGI 107051
#define GL_MATERIAL_SIDE_HINT_PGI 107052
#define GL_MAX_VERTEX_HINT_PGI 107053
#define GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI 0x00200000
#define GL_MAT_DIFFUSE_BIT_PGI 0x00400000
#define GL_MAT_EMISSION_BIT_PGI 0x00800000
#define GL_MAT_COLOR_INDEXES_BIT_PGI 0x01000000
#define GL_MAT_SHININESS_BIT_PGI 0x02000000
#define GL_MAT_SPECULAR_BIT_PGI 0x04000000
#define GL_NORMAL_BIT_PGI 0x08000000
#define GL_TEXCOORD1_BIT_PGI 0x10000000
#define GL_TEXCOORD2_BIT_PGI 0x20000000
#define GL_TEXCOORD3_BIT_PGI 0x40000000
#define GL_TEXCOORD4_BIT_PGI 0x80000000
#define GL_ALPHA_TEST_QCOM 0x0BC0
#define GL_ALPHA_TEST_FUNC_QCOM 0x0BC1
#define GL_ALPHA_TEST_REF_QCOM 0x0BC2
void glAlphaFuncQCOM (GLenum func, GLclampf ref);
#define GL_DONT_CARE 0x1100
#define GL_BINNING_CONTROL_HINT_QCOM 0x8FB0
#define GL_CPU_OPTIMIZED_QCOM 0x8FB1
#define GL_GPU_OPTIMIZED_QCOM 0x8FB2
#define GL_RENDER_DIRECT_TO_FRAMEBUFFER_QCOM 0x8FB3
void glDisableDriverControlQCOM (GLuint driverControl);
void glEnableDriverControlQCOM (GLuint driverControl);
void glGetDriverControlStringQCOM (GLuint driverControl, GLsizei bufSize, GLsizei* length, GLchar *driverControlString);
void glGetDriverControlsQCOM (GLint* num, GLsizei size, GLuint *driverControls);
#define GL_TEXTURE_WIDTH_QCOM 0x8BD2
#define GL_TEXTURE_HEIGHT_QCOM 0x8BD3
#define GL_TEXTURE_DEPTH_QCOM 0x8BD4
#define GL_TEXTURE_INTERNAL_FORMAT_QCOM 0x8BD5
#define GL_TEXTURE_FORMAT_QCOM 0x8BD6
#define GL_TEXTURE_TYPE_QCOM 0x8BD7
#define GL_TEXTURE_IMAGE_VALID_QCOM 0x8BD8
#define GL_TEXTURE_NUM_LEVELS_QCOM 0x8BD9
#define GL_TEXTURE_TARGET_QCOM 0x8BDA
#define GL_TEXTURE_OBJECT_VALID_QCOM 0x8BDB
#define GL_STATE_RESTORE 0x8BDC
void glExtGetBufferPointervQCOM (GLenum target, void** params);
void glExtGetBuffersQCOM (GLuint* buffers, GLint maxBuffers, GLint* numBuffers);
void glExtGetFramebuffersQCOM (GLuint* framebuffers, GLint maxFramebuffers, GLint* numFramebuffers);
void glExtGetRenderbuffersQCOM (GLuint* renderbuffers, GLint maxRenderbuffers, GLint* numRenderbuffers);
void glExtGetTexLevelParameterivQCOM (GLuint texture, GLenum face, GLint level, GLenum pname, GLint* params);
void glExtGetTexSubImageQCOM (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void *texels);
void glExtGetTexturesQCOM (GLuint* textures, GLint maxTextures, GLint* numTextures);
void glExtTexObjectStateOverrideiQCOM (GLenum target, GLenum pname, GLint param);
void glExtGetProgramBinarySourceQCOM (GLuint program, GLenum shadertype, GLchar* source, GLint* length);
void glExtGetProgramsQCOM (GLuint* programs, GLint maxPrograms, GLint* numPrograms);
void glExtGetShadersQCOM (GLuint* shaders, GLint maxShaders, GLint* numShaders);
GLboolean glExtIsProgramBinaryQCOM (GLuint program);
#define GL_FOVEATION_ENABLE_BIT_QCOM 0x1
#define GL_FOVEATION_SCALED_BIN_METHOD_BIT_QCOM 0x2
void glFramebufferFoveationConfigQCOM (GLuint fbo, GLuint numLayers, GLuint focalPointsPerLayer, GLuint requestedFeatures, GLuint* providedFeatures);
void glFramebufferFoveationParametersQCOM (GLuint fbo, GLuint layer, GLuint focalPoint, GLfloat focalX, GLfloat focalY, GLfloat gainX, GLfloat gainY, GLfloat foveaArea);
#define GL_PERFMON_GLOBAL_MODE_QCOM 0x8FA0
#define GL_FRAMEBUFFER_FETCH_NONCOHERENT_QCOM 0x96A2
void glFramebufferFetchBarrierQCOM (void);
#define GL_FOVEATION_ENABLE_BIT_QCOM 0x1
#define GL_FOVEATION_SCALED_BIN_METHOD_BIT_QCOM 0x2
#define GL_TEXTURE_FOVEATED_FEATURE_BITS_QCOM 0x8BFB
#define GL_TEXTURE_FOVEATED_MIN_PIXEL_DENSITY_QCOM 0x8BFC
#define GL_TEXTURE_FOVEATED_FEATURE_QUERY_QCOM 0x8BFD
#define GL_TEXTURE_FOVEATED_NUM_FOCAL_POINTS_QUERY_QCOM 0x8BFE
#define GL_FRAMEBUFFER_INCOMPLETE_FOVEATION_QCOM 0x8BFF
void glTextureFoveationParametersQCOM (GLuint texture, GLuint layer, GLuint focalPoint, GLfloat focalX, GLfloat focalY, GLfloat gainX, GLfloat gainY, GLfloat foveaArea);
#define GL_FOVEATION_SUBSAMPLED_LAYOUT_METHOD_BIT_QCOM 0x4
#define GL_MAX_SHADER_SUBSAMPLED_IMAGE_UNITS_QCOM 0x8FA1
#define GL_COLOR_BUFFER_BIT0_QCOM 0x00000001
#define GL_COLOR_BUFFER_BIT1_QCOM 0x00000002
#define GL_COLOR_BUFFER_BIT2_QCOM 0x00000004
#define GL_COLOR_BUFFER_BIT3_QCOM 0x00000008
#define GL_COLOR_BUFFER_BIT4_QCOM 0x00000010
#define GL_COLOR_BUFFER_BIT5_QCOM 0x00000020
#define GL_COLOR_BUFFER_BIT6_QCOM 0x00000040
#define GL_COLOR_BUFFER_BIT7_QCOM 0x00000080
#define GL_DEPTH_BUFFER_BIT0_QCOM 0x00000100
#define GL_DEPTH_BUFFER_BIT1_QCOM 0x00000200
#define GL_DEPTH_BUFFER_BIT2_QCOM 0x00000400
#define GL_DEPTH_BUFFER_BIT3_QCOM 0x00000800
#define GL_DEPTH_BUFFER_BIT4_QCOM 0x00001000
#define GL_DEPTH_BUFFER_BIT5_QCOM 0x00002000
#define GL_DEPTH_BUFFER_BIT6_QCOM 0x00004000
#define GL_DEPTH_BUFFER_BIT7_QCOM 0x00008000
#define GL_STENCIL_BUFFER_BIT0_QCOM 0x00010000
#define GL_STENCIL_BUFFER_BIT1_QCOM 0x00020000
#define GL_STENCIL_BUFFER_BIT2_QCOM 0x00040000
#define GL_STENCIL_BUFFER_BIT3_QCOM 0x00080000
#define GL_STENCIL_BUFFER_BIT4_QCOM 0x00100000
#define GL_STENCIL_BUFFER_BIT5_QCOM 0x00200000
#define GL_STENCIL_BUFFER_BIT6_QCOM 0x00400000
#define GL_STENCIL_BUFFER_BIT7_QCOM 0x00800000
#define GL_MULTISAMPLE_BUFFER_BIT0_QCOM 0x01000000
#define GL_MULTISAMPLE_BUFFER_BIT1_QCOM 0x02000000
#define GL_MULTISAMPLE_BUFFER_BIT2_QCOM 0x04000000
#define GL_MULTISAMPLE_BUFFER_BIT3_QCOM 0x08000000
#define GL_MULTISAMPLE_BUFFER_BIT4_QCOM 0x10000000
#define GL_MULTISAMPLE_BUFFER_BIT5_QCOM 0x20000000
#define GL_MULTISAMPLE_BUFFER_BIT6_QCOM 0x40000000
#define GL_MULTISAMPLE_BUFFER_BIT7_QCOM 0x80000000
void glEndTilingQCOM (GLbitfield preserveMask);
void glStartTilingQCOM (GLuint x, GLuint y, GLuint width, GLuint height, GLbitfield preserveMask);
#define GL_WRITEONLY_RENDERING_QCOM 0x8823
#define GL_ERROR_REGAL 0x9322
#define GL_DEBUG_REGAL 0x9323
#define GL_LOG_REGAL 0x9324
#define GL_EMULATION_REGAL 0x9325
#define GL_DRIVER_REGAL 0x9326
#define GL_MISSING_REGAL 0x9360
#define GL_TRACE_REGAL 0x9361
#define GL_CACHE_REGAL 0x9362
#define GL_CODE_REGAL 0x9363
#define GL_STATISTICS_REGAL 0x9364
const GLchar* glErrorStringREGAL (GLenum error);
void glAlphaFuncx (GLenum func, GLclampx ref);
void glClearColorx (GLclampx red, GLclampx green, GLclampx blue, GLclampx alpha);
void glClearDepthx (GLclampx depth);
void glColor4x (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
void glDepthRangex (GLclampx zNear, GLclampx zFar);
void glFogx (GLenum pname, GLfixed param);
void glFogxv (GLenum pname, const GLfixed* params);
void glFrustumf (GLfloat left, GLfloat right, GLfloat bottom, GLfloat top, GLfloat zNear, GLfloat zFar);
void glFrustumx (GLfixed left, GLfixed right, GLfixed bottom, GLfixed top, GLfixed zNear, GLfixed zFar);
void glLightModelx (GLenum pname, GLfixed param);
void glLightModelxv (GLenum pname, const GLfixed* params);
void glLightx (GLenum light, GLenum pname, GLfixed param);
void glLightxv (GLenum light, GLenum pname, const GLfixed* params);
void glLineWidthx (GLfixed width);
void glLoadMatrixx (const GLfixed* m);
void glMaterialx (GLenum face, GLenum pname, GLfixed param);
void glMaterialxv (GLenum face, GLenum pname, const GLfixed* params);
void glMultMatrixx (const GLfixed* m);
void glMultiTexCoord4x (GLenum target, GLfixed s, GLfixed t, GLfixed r, GLfixed q);
void glNormal3x (GLfixed nx, GLfixed ny, GLfixed nz);
void glOrthof (GLfloat left, GLfloat right, GLfloat bottom, GLfloat top, GLfloat zNear, GLfloat zFar);
void glOrthox (GLfixed left, GLfixed right, GLfixed bottom, GLfixed top, GLfixed zNear, GLfixed zFar);
void glPointSizex (GLfixed size);
void glPolygonOffsetx (GLfixed factor, GLfixed units);
void glRotatex (GLfixed angle, GLfixed x, GLfixed y, GLfixed z);
void glSampleCoveragex (GLclampx value, GLboolean invert);
void glScalex (GLfixed x, GLfixed y, GLfixed z);
void glTexEnvx (GLenum target, GLenum pname, GLfixed param);
void glTexEnvxv (GLenum target, GLenum pname, const GLfixed* params);
void glTexParameterx (GLenum target, GLenum pname, GLfixed param);
void glTranslatex (GLfixed x, GLfixed y, GLfixed z);
typedef int GLclampx;
void glClipPlanef (GLenum plane, const GLfloat* equation);
void glClipPlanex (GLenum plane, const GLfixed* equation);
void glGetClipPlanef (GLenum pname, GLfloat eqn[4]);
void glGetClipPlanex (GLenum pname, GLfixed eqn[4]);
void glGetFixedv (GLenum pname, GLfixed* params);
void glGetLightxv (GLenum light, GLenum pname, GLfixed* params);
void glGetMaterialxv (GLenum face, GLenum pname, GLfixed* params);
void glGetTexEnvxv (GLenum env, GLenum pname, GLfixed* params);
void glGetTexParameterxv (GLenum target, GLenum pname, GLfixed* params);
void glPointParameterx (GLenum pname, GLfixed param);
void glPointParameterxv (GLenum pname, const GLfixed* params);
void glPointSizePointerOES (GLenum type, GLsizei stride, const void *pointer);
void glTexParameterxv (GLenum target, GLenum pname, const GLfixed* params);
GLboolean glGetExtensionREGAL (const GLchar* ext);
GLboolean glIsSupportedREGAL (const GLchar* ext);
#define GL_LOG_ERROR_REGAL 0x9319
#define GL_LOG_WARNING_REGAL 0x931A
#define GL_LOG_INFO_REGAL 0x931B
#define GL_LOG_APP_REGAL 0x931C
#define GL_LOG_DRIVER_REGAL 0x931D
#define GL_LOG_INTERNAL_REGAL 0x931E
#define GL_LOG_DEBUG_REGAL 0x931F
#define GL_LOG_STATUS_REGAL 0x9320
#define GL_LOG_HTTP_REGAL 0x9321
void glLogMessageCallbackREGAL (GLLOGPROCREGAL callback);
void * glGetProcAddressREGAL (const GLchar *name);
#define GL_SCREEN_COORDINATES_REND 0x8490
#define GL_INVERTED_SCREEN_W_REND 0x8491
#define GL_RGB_S3TC 0x83A0
#define GL_RGB4_S3TC 0x83A1
#define GL_RGBA_S3TC 0x83A2
#define GL_RGBA4_S3TC 0x83A3
#define GL_RGBA_DXT5_S3TC 0x83A4
#define GL_RGBA4_DXT5_S3TC 0x83A5
#define GL_COLOR_MATRIX_SGI 0x80B1
#define GL_COLOR_MATRIX_STACK_DEPTH_SGI 0x80B2
#define GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI 0x80B3
#define GL_POST_COLOR_MATRIX_RED_SCALE_SGI 0x80B4
#define GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI 0x80B5
#define GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI 0x80B6
#define GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI 0x80B7
#define GL_POST_COLOR_MATRIX_RED_BIAS_SGI 0x80B8
#define GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI 0x80B9
#define GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI 0x80BA
#define GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI 0x80BB
%feature("sufix", "_CONSTANT4321end");
#define GL_COLOR_TABLE_SGI 0x80D0
%feature("sufix", "4321end");
#define GL_POST_CONVOLUTION_COLOR_TABLE_SGI 0x80D1
#define GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI 0x80D2
#define GL_PROXY_COLOR_TABLE_SGI 0x80D3
#define GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI 0x80D4
#define GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI 0x80D5
#define GL_COLOR_TABLE_SCALE_SGI 0x80D6
#define GL_COLOR_TABLE_BIAS_SGI 0x80D7
#define GL_COLOR_TABLE_FORMAT_SGI 0x80D8
#define GL_COLOR_TABLE_WIDTH_SGI 0x80D9
#define GL_COLOR_TABLE_RED_SIZE_SGI 0x80DA
#define GL_COLOR_TABLE_GREEN_SIZE_SGI 0x80DB
#define GL_COLOR_TABLE_BLUE_SIZE_SGI 0x80DC
#define GL_COLOR_TABLE_ALPHA_SIZE_SGI 0x80DD
#define GL_COLOR_TABLE_LUMINANCE_SIZE_SGI 0x80DE
#define GL_COLOR_TABLE_INTENSITY_SIZE_SGI 0x80DF
void glColorTableParameterfvSGI (GLenum target, GLenum pname, const GLfloat* params);
void glColorTableParameterivSGI (GLenum target, GLenum pname, const GLint* params);
void glColorTableSGI (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *table);
void glCopyColorTableSGI (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glGetColorTableParameterfvSGI (GLenum target, GLenum pname, GLfloat* params);
void glGetColorTableParameterivSGI (GLenum target, GLenum pname, GLint* params);
void glGetColorTableSGI (GLenum target, GLenum format, GLenum type, void *table);
#define GL_COMPLEX_UNSIGNED_BYTE_SGI 0x81BD
#define GL_COMPLEX_BYTE_SGI 0x81BE
#define GL_COMPLEX_UNSIGNED_SHORT_SGI 0x81BF
#define GL_COMPLEX_SHORT_SGI 0x81C0
#define GL_COMPLEX_UNSIGNED_INT_SGI 0x81C1
#define GL_COMPLEX_INT_SGI 0x81C2
#define GL_COMPLEX_FLOAT_SGI 0x81C3
#define GL_PIXEL_TRANSFORM_OPERATOR_SGI 0x81C4
#define GL_CONVOLUTION_SGI 0x81C5
#define GL_FFT_1D_SGI 0x81C6
%feature("sufix", "_CONSTANT4321end");
#define GL_PIXEL_TRANSFORM_SGI 0x81C7
%feature("sufix", "4321end");
#define GL_MAX_FFT_WIDTH_SGI 0x81C8
void glGetPixelTransformParameterfvSGI (GLenum target, GLenum pname, GLfloat* params);
void glGetPixelTransformParameterivSGI (GLenum target, GLenum pname, GLint* params);
void glPixelTransformParameterfSGI (GLenum target, GLenum pname, GLfloat param);
void glPixelTransformParameterfvSGI (GLenum target, GLenum pname, const GLfloat* params);
void glPixelTransformParameteriSGI (GLenum target, GLenum pname, GLint param);
void glPixelTransformParameterivSGI (GLenum target, GLenum pname, const GLint* params);
void glPixelTransformSGI (GLenum target);
#define GL_EXTENDED_RANGE_SGIS 0x85A5
#define GL_MIN_RED_SGIS 0x85A6
#define GL_MAX_RED_SGIS 0x85A7
#define GL_MIN_GREEN_SGIS 0x85A8
#define GL_MAX_GREEN_SGIS 0x85A9
#define GL_MIN_BLUE_SGIS 0x85AA
#define GL_MAX_BLUE_SGIS 0x85AB
#define GL_MIN_ALPHA_SGIS 0x85AC
#define GL_MAX_ALPHA_SGIS 0x85AD
void glDetailTexFuncSGIS (GLenum target, GLsizei n, const GLfloat* points);
void glGetDetailTexFuncSGIS (GLenum target, GLfloat* points);
void glFogFuncSGIS (GLsizei n, const GLfloat* points);
void glGetFogFuncSGIS (GLfloat* points);
#define GL_GENERATE_MIPMAP_SGIS 0x8191
#define GL_GENERATE_MIPMAP_HINT_SGIS 0x8192
#define GL_MULTISAMPLE_SGIS 0x809D
#define GL_SAMPLE_ALPHA_TO_MASK_SGIS 0x809E
#define GL_SAMPLE_ALPHA_TO_ONE_SGIS 0x809F
%feature("sufix", "_CONSTANT4321end");
#define GL_SAMPLE_MASK_SGIS 0x80A0
%feature("sufix", "4321end");
#define GL_1PASS_SGIS 0x80A1
#define GL_2PASS_0_SGIS 0x80A2
#define GL_2PASS_1_SGIS 0x80A3
#define GL_4PASS_0_SGIS 0x80A4
#define GL_4PASS_1_SGIS 0x80A5
#define GL_4PASS_2_SGIS 0x80A6
#define GL_4PASS_3_SGIS 0x80A7
#define GL_SAMPLE_BUFFERS_SGIS 0x80A8
#define GL_SAMPLES_SGIS 0x80A9
#define GL_SAMPLE_MASK_VALUE_SGIS 0x80AA
#define GL_SAMPLE_MASK_INVERT_SGIS 0x80AB
%feature("sufix", "_CONSTANT4321end");
#define GL_SAMPLE_PATTERN_SGIS 0x80AC
%feature("sufix", "4321end");
void glSampleMaskSGIS (GLclampf value, GLboolean invert);
void glSamplePatternSGIS (GLenum pattern);
#define GL_SELECTED_TEXTURE_SGIS 0x83C0
#define GL_SELECTED_TEXTURE_COORD_SET_SGIS 0x83C1
#define GL_SELECTED_TEXTURE_TRANSFORM_SGIS 0x83C2
#define GL_MAX_TEXTURES_SGIS 0x83C3
#define GL_MAX_TEXTURE_COORD_SETS_SGIS 0x83C4
#define GL_TEXTURE_COORD_SET_INTERLEAVE_FACTOR_SGIS 0x83C5
#define GL_TEXTURE_ENV_COORD_SET_SGIS 0x83C6
#define GL_TEXTURE0_SGIS 0x83C7
#define GL_TEXTURE1_SGIS 0x83C8
#define GL_TEXTURE2_SGIS 0x83C9
#define GL_TEXTURE3_SGIS 0x83CA
void glInterleavedTextureCoordSetsSGIS (GLint factor);
void glSelectTextureCoordSetSGIS (GLenum target);
void glSelectTextureSGIS (GLenum target);
void glSelectTextureTransformSGIS (GLenum target);
#define GL_EYE_DISTANCE_TO_POINT_SGIS 0x81F0
#define GL_OBJECT_DISTANCE_TO_POINT_SGIS 0x81F1
#define GL_EYE_DISTANCE_TO_LINE_SGIS 0x81F2
#define GL_OBJECT_DISTANCE_TO_LINE_SGIS 0x81F3
#define GL_EYE_POINT_SGIS 0x81F4
#define GL_OBJECT_POINT_SGIS 0x81F5
#define GL_EYE_LINE_SGIS 0x81F6
#define GL_OBJECT_LINE_SGIS 0x81F7
void glMultisampleSubRectPosSGIS (GLint x, GLint y);
void glGetSharpenTexFuncSGIS (GLenum target, GLfloat* points);
void glSharpenTexFuncSGIS (GLenum target, GLsizei n, const GLfloat* points);
void glTexImage4DSGIS (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei extent, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexSubImage4DSGIS (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei extent, GLenum format, GLenum type, const void *pixels);
#define GL_CLAMP_TO_BORDER_SGIS 0x812D
#define GL_CLAMP_TO_EDGE_SGIS 0x812F
void glGetTexFilterFuncSGIS (GLenum target, GLenum filter, GLfloat* weights);
void glTexFilterFuncSGIS (GLenum target, GLenum filter, GLsizei n, const GLfloat* weights);
#define GL_TEXTURE_MIN_LOD_SGIS 0x813A
#define GL_TEXTURE_MAX_LOD_SGIS 0x813B
#define GL_TEXTURE_BASE_LEVEL_SGIS 0x813C
#define GL_TEXTURE_MAX_LEVEL_SGIS 0x813D
#define GL_TEXTURE_COLOR_TABLE_SGI 0x80BC
#define GL_PROXY_TEXTURE_COLOR_TABLE_SGI 0x80BD
%feature("sufix", "_CONSTANT4321end");
#define GL_ASYNC_MARKER_SGIX 0x8329
%feature("sufix", "4321end");
void glAsyncMarkerSGIX (GLuint marker);
void glDeleteAsyncMarkersSGIX (GLuint marker, GLsizei range);
GLint glFinishAsyncSGIX (GLuint* markerp);
GLuint glGenAsyncMarkersSGIX (GLsizei range);
GLboolean glIsAsyncMarkerSGIX (GLuint marker);
GLint glPollAsyncSGIX (GLuint* markerp);
#define GL_ASYNC_HISTOGRAM_SGIX 0x832C
#define GL_MAX_ASYNC_HISTOGRAM_SGIX 0x832D
#define GL_ASYNC_TEX_IMAGE_SGIX 0x835C
#define GL_ASYNC_DRAW_PIXELS_SGIX 0x835D
#define GL_ASYNC_READ_PIXELS_SGIX 0x835E
#define GL_MAX_ASYNC_TEX_IMAGE_SGIX 0x835F
#define GL_MAX_ASYNC_DRAW_PIXELS_SGIX 0x8360
#define GL_MAX_ASYNC_READ_PIXELS_SGIX 0x8361
#define GL_BALI_NUM_TRIS_CULLED_INSTRUMENT 0x6080
#define GL_BALI_NUM_PRIMS_CLIPPED_INSTRUMENT 0x6081
#define GL_BALI_NUM_PRIMS_REJECT_INSTRUMENT 0x6082
#define GL_BALI_NUM_PRIMS_CLIP_RESULT_INSTRUMENT 0x6083
#define GL_BALI_FRAGMENTS_GENERATED_INSTRUMENT 0x6090
#define GL_BALI_DEPTH_PASS_INSTRUMENT 0x6091
#define GL_BALI_R_CHIP_COUNT 0x6092
#define GL_ALPHA_MIN_SGIX 0x8320
#define GL_ALPHA_MAX_SGIX 0x8321
#define GL_FUNC_COMPLEX_ADD_EXT 0x601C
#define GL_FUNC_COMPLEX_MULTIPLY_EXT 0x601B
#define GL_COLOR_MATRIX_HINT 0x8317
#define GL_CONVOLUTION_HINT_SGIX 0x8316
#define GL_ENV_MAP_SGIX 0x8340
#define GL_CUBE_MAP_SGIX 0x8341
#define GL_CUBE_MAP_ZP_SGIX 0x8342
#define GL_CUBE_MAP_ZN_SGIX 0x8343
#define GL_CUBE_MAP_XN_SGIX 0x8344
#define GL_CUBE_MAP_XP_SGIX 0x8345
#define GL_CUBE_MAP_YN_SGIX 0x8346
#define GL_CUBE_MAP_YP_SGIX 0x8347
#define GL_CUBE_MAP_BINDING_SGIX 0x8348
#define GL_GEOMETRY_BIT 0x1
#define GL_IMAGE_BIT 0x2
void glAddressSpace (GLenum space, GLbitfield mask);
GLint glDataPipe (GLenum space);
#define GL_DEPTH_PASS_INSTRUMENT_SGIX 0x8310
#define GL_DEPTH_PASS_INSTRUMENT_COUNTERS_SGIX 0x8311
#define GL_DEPTH_PASS_INSTRUMENT_MAX_SGIX 0x8312
#define GL_DEPTH_COMPONENT16_SGIX 0x81A5
#define GL_DEPTH_COMPONENT24_SGIX 0x81A6
#define GL_DEPTH_COMPONENT32_SGIX 0x81A7
void glFlushRasterSGIX (void);
#define GL_FOG_BLEND_ALPHA_SGIX 0x81FE
#define GL_FOG_BLEND_COLOR_SGIX 0x81FF
#define GL_FOG_TYPE_SGIX 0x8323
#define GL_UNIFORM_SGIX 0x8324
#define GL_LAYERED_SGIX 0x8325
#define GL_FOG_GROUND_PLANE_SGIX 0x8326
#define GL_FOG_LAYERS_POINTS_SGIX 0x8327
#define GL_MAX_FOG_LAYERS_POINTS_SGIX 0x8328
void glFogLayersSGIX (GLsizei n, const GLfloat* points);
void glGetFogLayersSGIX (GLfloat* points);
#define GL_FOG_OFFSET_SGIX 0x8198
#define GL_FOG_OFFSET_VALUE_SGIX 0x8199
#define GL_FOG_SCALE_SGIX 0x81FC
#define GL_FOG_SCALE_VALUE_SGIX 0x81FD
void glTextureFogSGIX (GLenum pname);
#define GL_EYE_SPACE_SGIX 0x8436
#define GL_TANGENT_SPACE_SGIX 0x8437
#define GL_OBJECT_SPACE_SGIX 0x8438
#define GL_FRAGMENT_LIGHT_SPACE_SGIX 0x843D
#define GL_FRAGMENTS_INSTRUMENT_SGIX 0x8313
#define GL_FRAGMENTS_INSTRUMENT_COUNTERS_SGIX 0x8314
#define GL_FRAGMENTS_INSTRUMENT_MAX_SGIX 0x8315
void glFragmentColorMaterialSGIX (GLenum face, GLenum mode);
void glFragmentLightModelfSGIX (GLenum pname, GLfloat param);
void glFragmentLightModelfvSGIX (GLenum pname, GLfloat* params);
void glFragmentLightModeliSGIX (GLenum pname, GLint param);
void glFragmentLightModelivSGIX (GLenum pname, GLint* params);
void glFragmentLightfSGIX (GLenum light, GLenum pname, GLfloat param);
void glFragmentLightfvSGIX (GLenum light, GLenum pname, GLfloat* params);
void glFragmentLightiSGIX (GLenum light, GLenum pname, GLint param);
void glFragmentLightivSGIX (GLenum light, GLenum pname, GLint* params);
void glFragmentMaterialfSGIX (GLenum face, GLenum pname, const GLfloat param);
void glFragmentMaterialfvSGIX (GLenum face, GLenum pname, const GLfloat* params);
void glFragmentMaterialiSGIX (GLenum face, GLenum pname, const GLint param);
void glFragmentMaterialivSGIX (GLenum face, GLenum pname, const GLint* params);
void glGetFragmentLightfvSGIX (GLenum light, GLenum value, GLfloat* data);
void glGetFragmentLightivSGIX (GLenum light, GLenum value, GLint* data);
void glGetFragmentMaterialfvSGIX (GLenum face, GLenum pname, GLfloat* data);
void glGetFragmentMaterialivSGIX (GLenum face, GLenum pname, GLint* data);
void glFrameZoomSGIX (GLint factor);
#define GL_RGB_ICC_SGIX 0x8460
#define GL_RGBA_ICC_SGIX 0x8461
#define GL_ALPHA_ICC_SGIX 0x8462
#define GL_LUMINANCE_ICC_SGIX 0x8463
#define GL_INTENSITY_ICC_SGIX 0x8464
#define GL_LUMINANCE_ALPHA_ICC_SGIX 0x8465
#define GL_R5_G6_B5_ICC_SGIX 0x8466
#define GL_R5_G6_B5_A8_ICC_SGIX 0x8467
#define GL_ALPHA16_ICC_SGIX 0x8468
#define GL_LUMINANCE16_ICC_SGIX 0x8469
#define GL_INTENSITY16_ICC_SGIX 0x846A
#define GL_LUMINANCE16_ALPHA8_ICC_SGIX 0x846B
#define GL_IGLOO_FULLSCREEN_SGIX 0x819E
#define GL_IGLOO_VIEWPORT_OFFSET_SGIX 0x819F
#define GL_IGLOO_SWAPTMESH_SGIX 0x81A0
#define GL_IGLOO_COLORNORMAL_SGIX 0x81A1
#define GL_IGLOO_IRISGL_MODE_SGIX 0x81A2
#define GL_IGLOO_LMC_COLOR_SGIX 0x81A3
#define GL_IGLOO_TMESHMODE_SGIX 0x81A4
#define GL_LIGHT31 0xBEAD
void glIglooInterfaceSGIX (GLenum pname, void *param);
#define GL_INTERLACE_SGIX 0x8094
#define GL_LINE_QUALITY_HINT_SGIX 0x835B
void glAllocMPEGPredictorsSGIX (GLsizei width, GLsizei height, GLsizei n, GLuint* predictors);
void glDeleteMPEGPredictorsSGIX (GLsizei n, GLuint* predictors);
void glGenMPEGPredictorsSGIX (GLsizei n, GLuint* predictors);
void glGetMPEGParameterfvSGIX (GLenum target, GLenum pname, GLfloat* params);
void glGetMPEGParameterivSGIX (GLenum target, GLenum pname, GLint* params);
void glGetMPEGPredictorSGIX (GLenum target, GLenum format, GLenum type, void *pixels);
void glGetMPEGQuantTableubv (GLenum target, GLubyte* values);
GLboolean glIsMPEGPredictorSGIX (GLuint predictor);
void glMPEGPredictorSGIX (GLenum target, GLenum format, GLenum type, void *pixels);
void glMPEGQuantTableubv (GLenum target, GLubyte* values);
void glSwapMPEGPredictorsSGIX (GLenum target0, GLenum target1);
void glGetNonlinLightfvSGIX (GLenum light, GLenum pname, GLint* terms, GLfloat *data);
void glGetNonlinMaterialfvSGIX (GLenum face, GLenum pname, GLint* terms, const GLfloat *data);
void glNonlinLightfvSGIX (GLenum light, GLenum pname, GLint terms, GLfloat* params);
void glNonlinMaterialfvSGIX (GLenum face, GLenum pname, GLint terms, const GLfloat* params);
#define GL_MAP1_VERTEX_3_NURBS_SGIX 0x81CB
#define GL_MAP1_VERTEX_4_NURBS_SGIX 0x81CC
#define GL_MAP1_INDEX_NURBS_SGIX 0x81CD
#define GL_MAP1_COLOR_4_NURBS_SGIX 0x81CE
#define GL_MAP1_NORMAL_NURBS_SGIX 0x81CF
#define GL_MAP1_TEXTURE_COORD_1_NURBS_SGIX 0x81E0
#define GL_MAP1_TEXTURE_COORD_2_NURBS_SGIX 0x81E1
#define GL_MAP1_TEXTURE_COORD_3_NURBS_SGIX 0x81E2
#define GL_MAP1_TEXTURE_COORD_4_NURBS_SGIX 0x81E3
#define GL_MAP2_VERTEX_3_NURBS_SGIX 0x81E4
#define GL_MAP2_VERTEX_4_NURBS_SGIX 0x81E5
#define GL_MAP2_INDEX_NURBS_SGIX 0x81E6
#define GL_MAP2_COLOR_4_NURBS_SGIX 0x81E7
#define GL_MAP2_NORMAL_NURBS_SGIX 0x81E8
#define GL_MAP2_TEXTURE_COORD_1_NURBS_SGIX 0x81E9
#define GL_MAP2_TEXTURE_COORD_2_NURBS_SGIX 0x81EA
#define GL_MAP2_TEXTURE_COORD_3_NURBS_SGIX 0x81EB
#define GL_MAP2_TEXTURE_COORD_4_NURBS_SGIX 0x81EC
#define GL_NURBS_KNOT_COUNT_SGIX 0x81ED
#define GL_NURBS_KNOT_VECTOR_SGIX 0x81EE
#define GL_OCCLUSION_INSTRUMENT_SGIX 0x6060
void glPixelTexGenSGIX (GLenum mode);
#define GL_TEXTURE_DEFORMATION_BIT_SGIX 0x1
#define GL_GEOMETRY_DEFORMATION_BIT_SGIX 0x2
void glDeformSGIX (GLbitfield mask);
void glLoadIdentityDeformationMapSGIX (GLbitfield mask);
void glMeshBreadthSGIX (GLint breadth);
void glMeshStrideSGIX (GLint stride);
void glReferencePlaneSGIX (const GLdouble* equation);
#define GL_PACK_RESAMPLE_SGIX 0x842E
#define GL_UNPACK_RESAMPLE_SGIX 0x842F
#define GL_RESAMPLE_DECIMATE_SGIX 0x8430
#define GL_RESAMPLE_REPLICATE_SGIX 0x8433
#define GL_RESAMPLE_ZERO_FILL_SGIX 0x8434
#define GL_SCALEBIAS_HINT_SGIX 0x8322
#define GL_TEXTURE_COMPARE_SGIX 0x819A
#define GL_TEXTURE_COMPARE_OPERATOR_SGIX 0x819B
#define GL_TEXTURE_LEQUAL_R_SGIX 0x819C
#define GL_TEXTURE_GEQUAL_R_SGIX 0x819D
#define GL_SHADOW_AMBIENT_SGIX 0x80BF
#define GL_PACK_MAX_COMPRESSED_SIZE_SGIX 0x831B
#define GL_SLIM8U_SGIX 0x831D
#define GL_SLIM10U_SGIX 0x831E
#define GL_SLIM12S_SGIX 0x831F
#define GL_SPOT_CUTOFF_DELTA_SGIX 0x8193
void glSpriteParameterfSGIX (GLenum pname, GLfloat param);
void glSpriteParameterfvSGIX (GLenum pname, GLfloat* params);
void glSpriteParameteriSGIX (GLenum pname, GLint param);
void glSpriteParameterivSGIX (GLenum pname, GLint* params);
#define GL_PACK_SUBSAMPLE_RATE_SGIX 0x85A0
#define GL_UNPACK_SUBSAMPLE_RATE_SGIX 0x85A1
#define GL_PIXEL_SUBSAMPLE_4444_SGIX 0x85A2
#define GL_PIXEL_SUBSAMPLE_2424_SGIX 0x85A3
#define GL_PIXEL_SUBSAMPLE_4242_SGIX 0x85A4
void glTagSampleBufferSGIX (void);
#define GL_TEXTURE_MAX_CLAMP_S_SGIX 0x8369
#define GL_TEXTURE_MAX_CLAMP_T_SGIX 0x836A
#define GL_TEXTURE_MAX_CLAMP_R_SGIX 0x836B
#define GL_TEXTURE_MIPMAP_ANISOTROPY_SGIX 0x832E
#define GL_MAX_MIPMAP_ANISOTROPY_SGIX 0x832F
#define GL_TEXTURE_MULTI_BUFFER_HINT_SGIX 0x812E
#define GL_PHASE_SGIX 0x832A
#define GL_RGB_SIGNED_SGIX 0x85E0
#define GL_RGBA_SIGNED_SGIX 0x85E1
#define GL_ALPHA_SIGNED_SGIX 0x85E2
#define GL_LUMINANCE_SIGNED_SGIX 0x85E3
#define GL_INTENSITY_SIGNED_SGIX 0x85E4
#define GL_LUMINANCE_ALPHA_SIGNED_SGIX 0x85E5
#define GL_RGB16_SIGNED_SGIX 0x85E6
#define GL_RGBA16_SIGNED_SGIX 0x85E7
#define GL_ALPHA16_SIGNED_SGIX 0x85E8
#define GL_LUMINANCE16_SIGNED_SGIX 0x85E9
#define GL_INTENSITY16_SIGNED_SGIX 0x85EA
#define GL_LUMINANCE16_ALPHA16_SIGNED_SGIX 0x85EB
#define GL_RGB_EXTENDED_RANGE_SGIX 0x85EC
#define GL_RGBA_EXTENDED_RANGE_SGIX 0x85ED
#define GL_ALPHA_EXTENDED_RANGE_SGIX 0x85EE
#define GL_LUMINANCE_EXTENDED_RANGE_SGIX 0x85EF
#define GL_INTENSITY_EXTENDED_RANGE_SGIX 0x85F0
#define GL_LUMINANCE_ALPHA_EXTENDED_RANGE_SGIX 0x85F1
#define GL_RGB16_EXTENDED_RANGE_SGIX 0x85F2
#define GL_RGBA16_EXTENDED_RANGE_SGIX 0x85F3
#define GL_ALPHA16_EXTENDED_RANGE_SGIX 0x85F4
#define GL_LUMINANCE16_EXTENDED_RANGE_SGIX 0x85F5
#define GL_INTENSITY16_EXTENDED_RANGE_SGIX 0x85F6
#define GL_LUMINANCE16_ALPHA16_EXTENDED_RANGE_SGIX 0x85F7
#define GL_MIN_LUMINANCE_SGIS 0x85F8
#define GL_MAX_LUMINANCE_SGIS 0x85F9
#define GL_MIN_INTENSITY_SGIS 0x85FA
#define GL_MAX_INTENSITY_SGIS 0x85FB
#define GL_POST_TEXTURE_FILTER_BIAS_SGIX 0x8179
#define GL_POST_TEXTURE_FILTER_SCALE_SGIX 0x817A
#define GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX 0x817B
#define GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX 0x817C
void glGetVectorOperationSGIX (GLenum operation);
void glVectorOperationSGIX (GLenum operation);
GLboolean glAreVertexArraysResidentSGIX (GLsizei n, const GLuint* arrays, GLboolean* residences);
void glBindVertexArraySGIX (GLuint array);
void glDeleteVertexArraysSGIX (GLsizei n, const GLuint* arrays);
void glGenVertexArraysSGIX (GLsizei n, GLuint* arrays);
GLboolean glIsVertexArraySGIX (GLuint array);
void glPrioritizeVertexArraysSGIX (GLsizei n, const GLuint* arrays, const GLclampf* priorities);
#define GL_VERTEX_PRECLIP_SGIX 0x83EE
#define GL_VERTEX_PRECLIP_HINT_SGIX 0x83EF
#define GL_VERTEX_PRECLIP_SGIX 0x83EE
#define GL_VERTEX_PRECLIP_HINT_SGIX 0x83EF
#define GL_YCRCB_SGIX 0x8318
#define GL_YCRCBA_SGIX 0x8319
#define GL_WRAP_BORDER_SUN 0x81D4
#define GL_GLOBAL_ALPHA_SUN 0x81D9
#define GL_GLOBAL_ALPHA_FACTOR_SUN 0x81DA
void glGlobalAlphaFactorbSUN (GLbyte factor);
void glGlobalAlphaFactordSUN (GLdouble factor);
void glGlobalAlphaFactorfSUN (GLfloat factor);
void glGlobalAlphaFactoriSUN (GLint factor);
void glGlobalAlphaFactorsSUN (GLshort factor);
void glGlobalAlphaFactorubSUN (GLubyte factor);
void glGlobalAlphaFactoruiSUN (GLuint factor);
void glGlobalAlphaFactorusSUN (GLushort factor);
#define GL_QUAD_MESH_SUN 0x8614
#define GL_TRIANGLE_MESH_SUN 0x8615
void glReadVideoPixelsSUN (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels);
#define GL_SLICE_ACCUM_SUN 0x85CC
#define GL_RESTART_SUN 0x01
#define GL_REPLACE_MIDDLE_SUN 0x02
#define GL_REPLACE_OLDEST_SUN 0x03
#define GL_TRIANGLE_LIST_SUN 0x81D7
#define GL_REPLACEMENT_CODE_SUN 0x81D8
#define GL_REPLACEMENT_CODE_ARRAY_SUN 0x85C0
#define GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN 0x85C1
#define GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN 0x85C2
#define GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN 0x85C3
#define GL_R1UI_V3F_SUN 0x85C4
#define GL_R1UI_C4UB_V3F_SUN 0x85C5
#define GL_R1UI_C3F_V3F_SUN 0x85C6
#define GL_R1UI_N3F_V3F_SUN 0x85C7
#define GL_R1UI_C4F_N3F_V3F_SUN 0x85C8
#define GL_R1UI_T2F_V3F_SUN 0x85C9
#define GL_R1UI_T2F_N3F_V3F_SUN 0x85CA
#define GL_R1UI_T2F_C4F_N3F_V3F_SUN 0x85CB
void glReplacementCodePointerSUN (GLenum type, GLsizei stride, const void *pointer);
void glReplacementCodeubSUN (GLubyte code);
void glReplacementCodeubvSUN (const GLubyte* code);
void glReplacementCodeuiSUN (GLuint code);
void glReplacementCodeuivSUN (const GLuint* code);
void glReplacementCodeusSUN (GLushort code);
void glReplacementCodeusvSUN (const GLushort* code);
void glColor3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
void glColor3fVertex3fvSUN (const GLfloat* c, const GLfloat *v);
void glColor4fNormal3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glColor4fNormal3fVertex3fvSUN (const GLfloat* c, const GLfloat *n, const GLfloat *v);
void glColor4ubVertex2fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y);
void glColor4ubVertex2fvSUN (const GLubyte* c, const GLfloat *v);
void glColor4ubVertex3fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
void glColor4ubVertex3fvSUN (const GLubyte* c, const GLfloat *v);
void glNormal3fVertex3fSUN (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glNormal3fVertex3fvSUN (const GLfloat* n, const GLfloat *v);
void glReplacementCodeuiColor3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiColor3fVertex3fvSUN (const GLuint* rc, const GLfloat *c, const GLfloat *v);
void glReplacementCodeuiColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiColor4fNormal3fVertex3fvSUN (const GLuint* rc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
void glReplacementCodeuiColor4ubVertex3fSUN (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiColor4ubVertex3fvSUN (const GLuint* rc, const GLubyte *c, const GLfloat *v);
void glReplacementCodeuiNormal3fVertex3fSUN (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiNormal3fVertex3fvSUN (const GLuint* rc, const GLfloat *n, const GLfloat *v);
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN (const GLuint* rc, const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN (const GLuint* rc, const GLfloat *tc, const GLfloat *n, const GLfloat *v);
void glReplacementCodeuiTexCoord2fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiTexCoord2fVertex3fvSUN (const GLuint* rc, const GLfloat *tc, const GLfloat *v);
void glReplacementCodeuiVertex3fSUN (GLuint rc, GLfloat x, GLfloat y, GLfloat z);
void glReplacementCodeuiVertex3fvSUN (const GLuint* rc, const GLfloat *v);
void glTexCoord2fColor3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fColor3fVertex3fvSUN (const GLfloat* tc, const GLfloat *c, const GLfloat *v);
void glTexCoord2fColor4fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fColor4fNormal3fVertex3fvSUN (const GLfloat* tc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
void glTexCoord2fColor4ubVertex3fSUN (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fColor4ubVertex3fvSUN (const GLfloat* tc, const GLubyte *c, const GLfloat *v);
void glTexCoord2fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fNormal3fVertex3fvSUN (const GLfloat* tc, const GLfloat *n, const GLfloat *v);
void glTexCoord2fVertex3fSUN (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
void glTexCoord2fVertex3fvSUN (const GLfloat* tc, const GLfloat *v);
void glTexCoord4fColor4fNormal3fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glTexCoord4fColor4fNormal3fVertex4fvSUN (const GLfloat* tc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
void glTexCoord4fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glTexCoord4fVertex4fvSUN (const GLfloat* tc, const GLfloat *v);
#define GL_UNPACK_CONSTANT_DATA_SUNX 0x81D5
#define GL_TEXTURE_CONSTANT_DATA_SUNX 0x81D6
void glFinishTextureSUNX (void);
#define GL_SHADER_BINARY_VIV 0x8FC4
#define GL_PHONG_WIN 0x80EA
#define GL_PHONG_HINT_WIN 0x80EB
#define GL_FOG_SPECULAR_TEXTURE_WIN 0x80EC
void glAddSwapHintRectWIN (GLint x, GLint y, GLsizei width, GLsizei height);

%{
end
%}
