
note
    description: "External for OpenGL library."
    author: "Louis Marchand"
    date: "Mon, 28 Dec 2015 17:01:53 +0000"
    revision: "1.0"

class
    GL_EXTERNAL

feature -- C external


	frozen GL_VERSION_1_1 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VERSION_1_1"
		end

	frozen GL_FALSE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FALSE"
		end

	frozen GL_TRUE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TRUE"
		end

	frozen GL_BYTE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BYTE"
		end

	frozen GL_UNSIGNED_BYTE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_UNSIGNED_BYTE"
		end

	frozen GL_SHORT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SHORT"
		end

	frozen GL_UNSIGNED_SHORT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT"
		end

	frozen GL_INT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INT"
		end

	frozen GL_UNSIGNED_INT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT"
		end

	frozen GL_FLOAT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FLOAT"
		end

	frozen GL_2_BYTES : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_2_BYTES"
		end

	frozen GL_3_BYTES : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_3_BYTES"
		end

	frozen GL_4_BYTES : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_4_BYTES"
		end

	frozen GL_DOUBLE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DOUBLE"
		end

	frozen GL_POINTS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POINTS"
		end

	frozen GL_LINES : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINES"
		end

	frozen GL_LINE_LOOP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_LOOP"
		end

	frozen GL_LINE_STRIP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_STRIP"
		end

	frozen GL_TRIANGLES : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TRIANGLES"
		end

	frozen GL_TRIANGLE_STRIP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TRIANGLE_STRIP"
		end

	frozen GL_TRIANGLE_FAN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TRIANGLE_FAN"
		end

	frozen GL_QUADS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_QUADS"
		end

	frozen GL_QUAD_STRIP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_QUAD_STRIP"
		end

	frozen GL_POLYGON : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON"
		end

	frozen GL_VERTEX_ARRAY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY"
		end

	frozen GL_NORMAL_ARRAY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY"
		end

	frozen GL_COLOR_ARRAY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY"
		end

	frozen GL_INDEX_ARRAY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY"
		end

	frozen GL_TEXTURE_COORD_ARRAY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY"
		end

	frozen GL_EDGE_FLAG_ARRAY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY"
		end

	frozen GL_VERTEX_ARRAY_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_SIZE"
		end

	frozen GL_VERTEX_ARRAY_TYPE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_TYPE"
		end

	frozen GL_VERTEX_ARRAY_STRIDE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_STRIDE"
		end

	frozen GL_NORMAL_ARRAY_TYPE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_TYPE"
		end

	frozen GL_NORMAL_ARRAY_STRIDE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_STRIDE"
		end

	frozen GL_COLOR_ARRAY_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_SIZE"
		end

	frozen GL_COLOR_ARRAY_TYPE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_TYPE"
		end

	frozen GL_COLOR_ARRAY_STRIDE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_STRIDE"
		end

	frozen GL_INDEX_ARRAY_TYPE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_TYPE"
		end

	frozen GL_INDEX_ARRAY_STRIDE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_STRIDE"
		end

	frozen GL_TEXTURE_COORD_ARRAY_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_SIZE"
		end

	frozen GL_TEXTURE_COORD_ARRAY_TYPE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_TYPE"
		end

	frozen GL_TEXTURE_COORD_ARRAY_STRIDE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_STRIDE"
		end

	frozen GL_EDGE_FLAG_ARRAY_STRIDE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_STRIDE"
		end

	frozen GL_VERTEX_ARRAY_POINTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_POINTER"
		end

	frozen GL_NORMAL_ARRAY_POINTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_POINTER"
		end

	frozen GL_COLOR_ARRAY_POINTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_POINTER"
		end

	frozen GL_INDEX_ARRAY_POINTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_POINTER"
		end

	frozen GL_TEXTURE_COORD_ARRAY_POINTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_POINTER"
		end

	frozen GL_EDGE_FLAG_ARRAY_POINTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_POINTER"
		end

	frozen GL_V2F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_V2F"
		end

	frozen GL_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_V3F"
		end

	frozen GL_C4UB_V2F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_C4UB_V2F"
		end

	frozen GL_C4UB_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_C4UB_V3F"
		end

	frozen GL_C3F_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_C3F_V3F"
		end

	frozen GL_N3F_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_N3F_V3F"
		end

	frozen GL_C4F_N3F_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_C4F_N3F_V3F"
		end

	frozen GL_T2F_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_T2F_V3F"
		end

	frozen GL_T4F_V4F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_T4F_V4F"
		end

	frozen GL_T2F_C4UB_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_T2F_C4UB_V3F"
		end

	frozen GL_T2F_C3F_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_T2F_C3F_V3F"
		end

	frozen GL_T2F_N3F_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_T2F_N3F_V3F"
		end

	frozen GL_T2F_C4F_N3F_V3F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_T2F_C4F_N3F_V3F"
		end

	frozen GL_T4F_C4F_N3F_V4F : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_T4F_C4F_N3F_V4F"
		end

	frozen GL_MATRIX_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MATRIX_MODE"
		end

	frozen GL_MODELVIEW : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MODELVIEW"
		end

	frozen GL_PROJECTION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PROJECTION"
		end

	frozen GL_TEXTURE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE"
		end

	frozen GL_POINT_SMOOTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POINT_SMOOTH"
		end

	frozen GL_POINT_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POINT_SIZE"
		end

	frozen GL_POINT_SIZE_GRANULARITY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_GRANULARITY"
		end

	frozen GL_POINT_SIZE_RANGE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_RANGE"
		end

	frozen GL_LINE_SMOOTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_SMOOTH"
		end

	frozen GL_LINE_STIPPLE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_STIPPLE"
		end

	frozen GL_LINE_STIPPLE_PATTERN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_STIPPLE_PATTERN"
		end

	frozen GL_LINE_STIPPLE_REPEAT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_STIPPLE_REPEAT"
		end

	frozen GL_LINE_WIDTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_WIDTH"
		end

	frozen GL_LINE_WIDTH_GRANULARITY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_WIDTH_GRANULARITY"
		end

	frozen GL_LINE_WIDTH_RANGE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_WIDTH_RANGE"
		end

	frozen GL_POINT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POINT"
		end

	frozen GL_LINE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE"
		end

	frozen GL_FILL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FILL"
		end

	frozen GL_CW : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CW"
		end

	frozen GL_CCW : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CCW"
		end

	frozen GL_FRONT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FRONT"
		end

	frozen GL_BACK : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BACK"
		end

	frozen GL_POLYGON_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_MODE"
		end

	frozen GL_POLYGON_SMOOTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_SMOOTH"
		end

	frozen GL_POLYGON_STIPPLE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_STIPPLE"
		end

	frozen GL_EDGE_FLAG : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG"
		end

	frozen GL_CULL_FACE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CULL_FACE"
		end

	frozen GL_CULL_FACE_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CULL_FACE_MODE"
		end

	frozen GL_FRONT_FACE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FRONT_FACE"
		end

	frozen GL_POLYGON_OFFSET_FACTOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_FACTOR"
		end

	frozen GL_POLYGON_OFFSET_UNITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_UNITS"
		end

	frozen GL_POLYGON_OFFSET_POINT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_POINT"
		end

	frozen GL_POLYGON_OFFSET_LINE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_LINE"
		end

	frozen GL_POLYGON_OFFSET_FILL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_FILL"
		end

	frozen GL_COMPILE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COMPILE"
		end

	frozen GL_COMPILE_AND_EXECUTE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COMPILE_AND_EXECUTE"
		end

	frozen GL_LIST_BASE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIST_BASE"
		end

	frozen GL_LIST_INDEX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIST_INDEX"
		end

	frozen GL_LIST_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIST_MODE"
		end

	frozen GL_NEVER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NEVER"
		end

	frozen GL_LESS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LESS"
		end

	frozen GL_EQUAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EQUAL"
		end

	frozen GL_LEQUAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LEQUAL"
		end

	frozen GL_GREATER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_GREATER"
		end

	frozen GL_NOTEQUAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NOTEQUAL"
		end

	frozen GL_GEQUAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_GEQUAL"
		end

	frozen GL_ALWAYS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALWAYS"
		end

	frozen GL_DEPTH_TEST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_TEST"
		end

	frozen GL_DEPTH_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_BITS"
		end

	frozen GL_DEPTH_CLEAR_VALUE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_CLEAR_VALUE"
		end

	frozen GL_DEPTH_FUNC : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_FUNC"
		end

	frozen GL_DEPTH_RANGE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_RANGE"
		end

	frozen GL_DEPTH_WRITEMASK : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_WRITEMASK"
		end

	frozen GL_DEPTH_COMPONENT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT"
		end

	frozen GL_LIGHTING : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHTING"
		end

	frozen GL_LIGHT0 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT0"
		end

	frozen GL_LIGHT1 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT1"
		end

	frozen GL_LIGHT2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT2"
		end

	frozen GL_LIGHT3 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT3"
		end

	frozen GL_LIGHT4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT4"
		end

	frozen GL_LIGHT5 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT5"
		end

	frozen GL_LIGHT6 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT6"
		end

	frozen GL_LIGHT7 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT7"
		end

	frozen GL_SPOT_EXPONENT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SPOT_EXPONENT"
		end

	frozen GL_SPOT_CUTOFF : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SPOT_CUTOFF"
		end

	frozen GL_CONSTANT_ATTENUATION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CONSTANT_ATTENUATION"
		end

	frozen GL_LINEAR_ATTENUATION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINEAR_ATTENUATION"
		end

	frozen GL_QUADRATIC_ATTENUATION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_QUADRATIC_ATTENUATION"
		end

	frozen GL_AMBIENT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AMBIENT"
		end

	frozen GL_DIFFUSE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DIFFUSE"
		end

	frozen GL_SPECULAR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SPECULAR"
		end

	frozen GL_SHININESS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SHININESS"
		end

	frozen GL_EMISSION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EMISSION"
		end

	frozen GL_POSITION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POSITION"
		end

	frozen GL_SPOT_DIRECTION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SPOT_DIRECTION"
		end

	frozen GL_AMBIENT_AND_DIFFUSE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AMBIENT_AND_DIFFUSE"
		end

	frozen GL_COLOR_INDEXES : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_INDEXES"
		end

	frozen GL_LIGHT_MODEL_TWO_SIDE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT_MODEL_TWO_SIDE"
		end

	frozen GL_LIGHT_MODEL_LOCAL_VIEWER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT_MODEL_LOCAL_VIEWER"
		end

	frozen GL_LIGHT_MODEL_AMBIENT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHT_MODEL_AMBIENT"
		end

	frozen GL_FRONT_AND_BACK : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FRONT_AND_BACK"
		end

	frozen GL_SHADE_MODEL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SHADE_MODEL"
		end

	frozen GL_FLAT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FLAT"
		end

	frozen GL_SMOOTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SMOOTH"
		end

	frozen GL_COLOR_MATERIAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_MATERIAL"
		end

	frozen GL_COLOR_MATERIAL_FACE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_MATERIAL_FACE"
		end

	frozen GL_COLOR_MATERIAL_PARAMETER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_MATERIAL_PARAMETER"
		end

	frozen GL_NORMALIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NORMALIZE"
		end

	frozen GL_CLIP_PLANE0 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE0"
		end

	frozen GL_CLIP_PLANE1 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE1"
		end

	frozen GL_CLIP_PLANE2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE2"
		end

	frozen GL_CLIP_PLANE3 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE3"
		end

	frozen GL_CLIP_PLANE4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE4"
		end

	frozen GL_CLIP_PLANE5 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE5"
		end

	frozen GL_ACCUM_RED_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ACCUM_RED_BITS"
		end

	frozen GL_ACCUM_GREEN_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ACCUM_GREEN_BITS"
		end

	frozen GL_ACCUM_BLUE_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ACCUM_BLUE_BITS"
		end

	frozen GL_ACCUM_ALPHA_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ACCUM_ALPHA_BITS"
		end

	frozen GL_ACCUM_CLEAR_VALUE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ACCUM_CLEAR_VALUE"
		end

	frozen GL_ACCUM : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ACCUM"
		end

	frozen GL_ADD : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ADD"
		end

	frozen GL_LOAD : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LOAD"
		end

	frozen GL_MULT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MULT"
		end

	frozen GL_RETURN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RETURN"
		end

	frozen GL_ALPHA_TEST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA_TEST"
		end

	frozen GL_ALPHA_TEST_REF : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA_TEST_REF"
		end

	frozen GL_ALPHA_TEST_FUNC : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA_TEST_FUNC"
		end

	frozen GL_BLEND : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BLEND"
		end

	frozen GL_BLEND_SRC : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BLEND_SRC"
		end

	frozen GL_BLEND_DST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BLEND_DST"
		end

	frozen GL_ZERO : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ZERO"
		end

	frozen GL_ONE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ONE"
		end

	frozen GL_SRC_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SRC_COLOR"
		end

	frozen GL_ONE_MINUS_SRC_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_SRC_COLOR"
		end

	frozen GL_SRC_ALPHA : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SRC_ALPHA"
		end

	frozen GL_ONE_MINUS_SRC_ALPHA : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_SRC_ALPHA"
		end

	frozen GL_DST_ALPHA : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DST_ALPHA"
		end

	frozen GL_ONE_MINUS_DST_ALPHA : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_DST_ALPHA"
		end

	frozen GL_DST_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DST_COLOR"
		end

	frozen GL_ONE_MINUS_DST_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_DST_COLOR"
		end

	frozen GL_SRC_ALPHA_SATURATE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SRC_ALPHA_SATURATE"
		end

	frozen GL_FEEDBACK : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FEEDBACK"
		end

	frozen GL_RENDER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RENDER"
		end

	frozen GL_SELECT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SELECT"
		end

	frozen GL_2D : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_2D"
		end

	frozen GL_3D : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_3D"
		end

	frozen GL_3D_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_3D_COLOR"
		end

	frozen GL_3D_COLOR_TEXTURE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_3D_COLOR_TEXTURE"
		end

	frozen GL_4D_COLOR_TEXTURE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_4D_COLOR_TEXTURE"
		end

	frozen GL_POINT_TOKEN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POINT_TOKEN"
		end

	frozen GL_LINE_TOKEN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_TOKEN"
		end

	frozen GL_LINE_RESET_TOKEN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_RESET_TOKEN"
		end

	frozen GL_POLYGON_TOKEN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_TOKEN"
		end

	frozen GL_BITMAP_TOKEN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BITMAP_TOKEN"
		end

	frozen GL_DRAW_PIXEL_TOKEN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DRAW_PIXEL_TOKEN"
		end

	frozen GL_COPY_PIXEL_TOKEN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COPY_PIXEL_TOKEN"
		end

	frozen GL_PASS_THROUGH_TOKEN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PASS_THROUGH_TOKEN"
		end

	frozen GL_FEEDBACK_BUFFER_POINTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FEEDBACK_BUFFER_POINTER"
		end

	frozen GL_FEEDBACK_BUFFER_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FEEDBACK_BUFFER_SIZE"
		end

	frozen GL_FEEDBACK_BUFFER_TYPE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FEEDBACK_BUFFER_TYPE"
		end

	frozen GL_SELECTION_BUFFER_POINTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SELECTION_BUFFER_POINTER"
		end

	frozen GL_SELECTION_BUFFER_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SELECTION_BUFFER_SIZE"
		end

	frozen GL_FOG : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FOG"
		end

	frozen GL_FOG_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FOG_MODE"
		end

	frozen GL_FOG_DENSITY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FOG_DENSITY"
		end

	frozen GL_FOG_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FOG_COLOR"
		end

	frozen GL_FOG_INDEX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FOG_INDEX"
		end

	frozen GL_FOG_START : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FOG_START"
		end

	frozen GL_FOG_END : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FOG_END"
		end

	frozen GL_LINEAR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINEAR"
		end

	frozen GL_EXP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EXP"
		end

	frozen GL_EXP2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EXP2"
		end

	frozen GL_LOGIC_OP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LOGIC_OP"
		end

	frozen GL_INDEX_LOGIC_OP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_LOGIC_OP"
		end

	frozen GL_COLOR_LOGIC_OP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_LOGIC_OP"
		end

	frozen GL_LOGIC_OP_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LOGIC_OP_MODE"
		end

	frozen GL_CLEAR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLEAR"
		end

	frozen GL_SET : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SET"
		end

	frozen GL_COPY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COPY"
		end

	frozen GL_COPY_INVERTED : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COPY_INVERTED"
		end

	frozen GL_NOOP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NOOP"
		end

	frozen GL_INVERT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INVERT"
		end

	frozen GL_AND : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AND"
		end

	frozen GL_NAND : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NAND"
		end

	frozen GL_OR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_OR"
		end

	frozen GL_NOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NOR"
		end

	frozen GL_XOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_XOR"
		end

	frozen GL_EQUIV : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EQUIV"
		end

	frozen GL_AND_REVERSE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AND_REVERSE"
		end

	frozen GL_AND_INVERTED : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AND_INVERTED"
		end

	frozen GL_OR_REVERSE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_OR_REVERSE"
		end

	frozen GL_OR_INVERTED : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_OR_INVERTED"
		end

	frozen GL_STENCIL_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_BITS"
		end

	frozen GL_STENCIL_TEST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_TEST"
		end

	frozen GL_STENCIL_CLEAR_VALUE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_CLEAR_VALUE"
		end

	frozen GL_STENCIL_FUNC : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_FUNC"
		end

	frozen GL_STENCIL_VALUE_MASK : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_VALUE_MASK"
		end

	frozen GL_STENCIL_FAIL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_FAIL"
		end

	frozen GL_STENCIL_PASS_DEPTH_FAIL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_PASS_DEPTH_FAIL"
		end

	frozen GL_STENCIL_PASS_DEPTH_PASS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_PASS_DEPTH_PASS"
		end

	frozen GL_STENCIL_REF : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_REF"
		end

	frozen GL_STENCIL_WRITEMASK : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_WRITEMASK"
		end

	frozen GL_STENCIL_INDEX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX"
		end

	frozen GL_KEEP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_KEEP"
		end

	frozen GL_REPLACE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_REPLACE"
		end

	frozen GL_INCR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INCR"
		end

	frozen GL_DECR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DECR"
		end

	frozen GL_NONE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NONE"
		end

	frozen GL_LEFT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LEFT"
		end

	frozen GL_RIGHT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RIGHT"
		end

	frozen GL_FRONT_LEFT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FRONT_LEFT"
		end

	frozen GL_FRONT_RIGHT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FRONT_RIGHT"
		end

	frozen GL_BACK_LEFT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BACK_LEFT"
		end

	frozen GL_BACK_RIGHT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BACK_RIGHT"
		end

	frozen GL_AUX0 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AUX0"
		end

	frozen GL_AUX1 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AUX1"
		end

	frozen GL_AUX2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AUX2"
		end

	frozen GL_AUX3 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AUX3"
		end

	frozen GL_COLOR_INDEX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_INDEX"
		end

	frozen GL_RED : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RED"
		end

	frozen GL_GREEN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_GREEN"
		end

	frozen GL_BLUE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BLUE"
		end

	frozen GL_ALPHA : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA"
		end

	frozen GL_LUMINANCE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE"
		end

	frozen GL_LUMINANCE_ALPHA : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA"
		end

	frozen GL_ALPHA_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA_BITS"
		end

	frozen GL_RED_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RED_BITS"
		end

	frozen GL_GREEN_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_GREEN_BITS"
		end

	frozen GL_BLUE_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BLUE_BITS"
		end

	frozen GL_INDEX_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_BITS"
		end

	frozen GL_SUBPIXEL_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SUBPIXEL_BITS"
		end

	frozen GL_AUX_BUFFERS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AUX_BUFFERS"
		end

	frozen GL_READ_BUFFER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_READ_BUFFER"
		end

	frozen GL_DRAW_BUFFER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER"
		end

	frozen GL_DOUBLEBUFFER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DOUBLEBUFFER"
		end

	frozen GL_STEREO : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STEREO"
		end

	frozen GL_BITMAP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BITMAP"
		end

	frozen GL_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR"
		end

	frozen GL_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH"
		end

	frozen GL_STENCIL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL"
		end

	frozen GL_DITHER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DITHER"
		end

	frozen GL_RGB : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGB"
		end

	frozen GL_RGBA : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGBA"
		end

	frozen GL_MAX_LIST_NESTING : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_LIST_NESTING"
		end

	frozen GL_MAX_EVAL_ORDER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_EVAL_ORDER"
		end

	frozen GL_MAX_LIGHTS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_LIGHTS"
		end

	frozen GL_MAX_CLIP_PLANES : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_CLIP_PLANES"
		end

	frozen GL_MAX_TEXTURE_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_SIZE"
		end

	frozen GL_MAX_PIXEL_MAP_TABLE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_PIXEL_MAP_TABLE"
		end

	frozen GL_MAX_ATTRIB_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_ATTRIB_STACK_DEPTH"
		end

	frozen GL_MAX_MODELVIEW_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_MODELVIEW_STACK_DEPTH"
		end

	frozen GL_MAX_NAME_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_NAME_STACK_DEPTH"
		end

	frozen GL_MAX_PROJECTION_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_PROJECTION_STACK_DEPTH"
		end

	frozen GL_MAX_TEXTURE_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_STACK_DEPTH"
		end

	frozen GL_MAX_VIEWPORT_DIMS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_VIEWPORT_DIMS"
		end

	frozen GL_MAX_CLIENT_ATTRIB_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAX_CLIENT_ATTRIB_STACK_DEPTH"
		end

	frozen GL_ATTRIB_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ATTRIB_STACK_DEPTH"
		end

	frozen GL_CLIENT_ATTRIB_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIENT_ATTRIB_STACK_DEPTH"
		end

	frozen GL_COLOR_CLEAR_VALUE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_CLEAR_VALUE"
		end

	frozen GL_COLOR_WRITEMASK : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_WRITEMASK"
		end

	frozen GL_CURRENT_INDEX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_INDEX"
		end

	frozen GL_CURRENT_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_COLOR"
		end

	frozen GL_CURRENT_NORMAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_NORMAL"
		end

	frozen GL_CURRENT_RASTER_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_COLOR"
		end

	frozen GL_CURRENT_RASTER_DISTANCE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_DISTANCE"
		end

	frozen GL_CURRENT_RASTER_INDEX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_INDEX"
		end

	frozen GL_CURRENT_RASTER_POSITION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_POSITION"
		end

	frozen GL_CURRENT_RASTER_TEXTURE_COORDS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_TEXTURE_COORDS"
		end

	frozen GL_CURRENT_RASTER_POSITION_VALID : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_POSITION_VALID"
		end

	frozen GL_CURRENT_TEXTURE_COORDS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_TEXTURE_COORDS"
		end

	frozen GL_INDEX_CLEAR_VALUE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_CLEAR_VALUE"
		end

	frozen GL_INDEX_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_MODE"
		end

	frozen GL_INDEX_WRITEMASK : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_WRITEMASK"
		end

	frozen GL_MODELVIEW_MATRIX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MODELVIEW_MATRIX"
		end

	frozen GL_MODELVIEW_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MODELVIEW_STACK_DEPTH"
		end

	frozen GL_NAME_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NAME_STACK_DEPTH"
		end

	frozen GL_PROJECTION_MATRIX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PROJECTION_MATRIX"
		end

	frozen GL_PROJECTION_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PROJECTION_STACK_DEPTH"
		end

	frozen GL_RENDER_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RENDER_MODE"
		end

	frozen GL_RGBA_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGBA_MODE"
		end

	frozen GL_TEXTURE_MATRIX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_MATRIX"
		end

	frozen GL_TEXTURE_STACK_DEPTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_STACK_DEPTH"
		end

	frozen GL_VIEWPORT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VIEWPORT"
		end

	frozen GL_AUTO_NORMAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_AUTO_NORMAL"
		end

	frozen GL_MAP1_COLOR_4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_COLOR_4"
		end

	frozen GL_MAP1_INDEX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_INDEX"
		end

	frozen GL_MAP1_NORMAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_NORMAL"
		end

	frozen GL_MAP1_TEXTURE_COORD_1 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_TEXTURE_COORD_1"
		end

	frozen GL_MAP1_TEXTURE_COORD_2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_TEXTURE_COORD_2"
		end

	frozen GL_MAP1_TEXTURE_COORD_3 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_TEXTURE_COORD_3"
		end

	frozen GL_MAP1_TEXTURE_COORD_4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_TEXTURE_COORD_4"
		end

	frozen GL_MAP1_VERTEX_3 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_3"
		end

	frozen GL_MAP1_VERTEX_4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_4"
		end

	frozen GL_MAP2_COLOR_4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_COLOR_4"
		end

	frozen GL_MAP2_INDEX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_INDEX"
		end

	frozen GL_MAP2_NORMAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_NORMAL"
		end

	frozen GL_MAP2_TEXTURE_COORD_1 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_TEXTURE_COORD_1"
		end

	frozen GL_MAP2_TEXTURE_COORD_2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_TEXTURE_COORD_2"
		end

	frozen GL_MAP2_TEXTURE_COORD_3 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_TEXTURE_COORD_3"
		end

	frozen GL_MAP2_TEXTURE_COORD_4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_TEXTURE_COORD_4"
		end

	frozen GL_MAP2_VERTEX_3 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_3"
		end

	frozen GL_MAP2_VERTEX_4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_4"
		end

	frozen GL_MAP1_GRID_DOMAIN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_GRID_DOMAIN"
		end

	frozen GL_MAP1_GRID_SEGMENTS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP1_GRID_SEGMENTS"
		end

	frozen GL_MAP2_GRID_DOMAIN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_GRID_DOMAIN"
		end

	frozen GL_MAP2_GRID_SEGMENTS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP2_GRID_SEGMENTS"
		end

	frozen GL_COEFF : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COEFF"
		end

	frozen GL_ORDER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ORDER"
		end

	frozen GL_DOMAIN : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DOMAIN"
		end

	frozen GL_PERSPECTIVE_CORRECTION_HINT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PERSPECTIVE_CORRECTION_HINT"
		end

	frozen GL_POINT_SMOOTH_HINT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POINT_SMOOTH_HINT"
		end

	frozen GL_LINE_SMOOTH_HINT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_SMOOTH_HINT"
		end

	frozen GL_POLYGON_SMOOTH_HINT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_SMOOTH_HINT"
		end

	frozen GL_FOG_HINT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FOG_HINT"
		end

	frozen GL_DONT_CARE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DONT_CARE"
		end

	frozen GL_FASTEST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FASTEST"
		end

	frozen GL_NICEST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NICEST"
		end

	frozen GL_SCISSOR_BOX : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SCISSOR_BOX"
		end

	frozen GL_SCISSOR_TEST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SCISSOR_TEST"
		end

	frozen GL_MAP_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP_COLOR"
		end

	frozen GL_MAP_STENCIL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MAP_STENCIL"
		end

	frozen GL_INDEX_SHIFT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_SHIFT"
		end

	frozen GL_INDEX_OFFSET : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INDEX_OFFSET"
		end

	frozen GL_RED_SCALE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RED_SCALE"
		end

	frozen GL_RED_BIAS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RED_BIAS"
		end

	frozen GL_GREEN_SCALE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_GREEN_SCALE"
		end

	frozen GL_GREEN_BIAS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_GREEN_BIAS"
		end

	frozen GL_BLUE_SCALE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BLUE_SCALE"
		end

	frozen GL_BLUE_BIAS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_BLUE_BIAS"
		end

	frozen GL_ALPHA_SCALE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA_SCALE"
		end

	frozen GL_ALPHA_BIAS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA_BIAS"
		end

	frozen GL_DEPTH_SCALE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_SCALE"
		end

	frozen GL_DEPTH_BIAS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_BIAS"
		end

	frozen GL_PIXEL_MAP_S_TO_S_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_S_TO_S_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_I_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_I_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_R_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_R_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_G_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_G_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_B_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_B_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_A_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_A_SIZE"
		end

	frozen GL_PIXEL_MAP_R_TO_R_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_R_TO_R_SIZE"
		end

	frozen GL_PIXEL_MAP_G_TO_G_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_G_TO_G_SIZE"
		end

	frozen GL_PIXEL_MAP_B_TO_B_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_B_TO_B_SIZE"
		end

	frozen GL_PIXEL_MAP_A_TO_A_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_A_TO_A_SIZE"
		end

	frozen GL_PIXEL_MAP_S_TO_S : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_S_TO_S"
		end

	frozen GL_PIXEL_MAP_I_TO_I : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_I"
		end

	frozen GL_PIXEL_MAP_I_TO_R : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_R"
		end

	frozen GL_PIXEL_MAP_I_TO_G : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_G"
		end

	frozen GL_PIXEL_MAP_I_TO_B : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_B"
		end

	frozen GL_PIXEL_MAP_I_TO_A : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_A"
		end

	frozen GL_PIXEL_MAP_R_TO_R : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_R_TO_R"
		end

	frozen GL_PIXEL_MAP_G_TO_G : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_G_TO_G"
		end

	frozen GL_PIXEL_MAP_B_TO_B : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_B_TO_B"
		end

	frozen GL_PIXEL_MAP_A_TO_A : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_A_TO_A"
		end

	frozen GL_PACK_ALIGNMENT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PACK_ALIGNMENT"
		end

	frozen GL_PACK_LSB_FIRST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PACK_LSB_FIRST"
		end

	frozen GL_PACK_ROW_LENGTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PACK_ROW_LENGTH"
		end

	frozen GL_PACK_SKIP_PIXELS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PACK_SKIP_PIXELS"
		end

	frozen GL_PACK_SKIP_ROWS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PACK_SKIP_ROWS"
		end

	frozen GL_PACK_SWAP_BYTES : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PACK_SWAP_BYTES"
		end

	frozen GL_UNPACK_ALIGNMENT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_UNPACK_ALIGNMENT"
		end

	frozen GL_UNPACK_LSB_FIRST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_UNPACK_LSB_FIRST"
		end

	frozen GL_UNPACK_ROW_LENGTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_UNPACK_ROW_LENGTH"
		end

	frozen GL_UNPACK_SKIP_PIXELS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_UNPACK_SKIP_PIXELS"
		end

	frozen GL_UNPACK_SKIP_ROWS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_UNPACK_SKIP_ROWS"
		end

	frozen GL_UNPACK_SWAP_BYTES : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_UNPACK_SWAP_BYTES"
		end

	frozen GL_ZOOM_X : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ZOOM_X"
		end

	frozen GL_ZOOM_Y : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ZOOM_Y"
		end

	frozen GL_TEXTURE_ENV : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_ENV"
		end

	frozen GL_TEXTURE_ENV_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_ENV_MODE"
		end

	frozen GL_TEXTURE_1D : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_1D"
		end

	frozen GL_TEXTURE_2D : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_2D"
		end

	frozen GL_TEXTURE_WRAP_S : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_WRAP_S"
		end

	frozen GL_TEXTURE_WRAP_T : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_WRAP_T"
		end

	frozen GL_TEXTURE_MAG_FILTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAG_FILTER"
		end

	frozen GL_TEXTURE_MIN_FILTER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_MIN_FILTER"
		end

	frozen GL_TEXTURE_ENV_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_ENV_COLOR"
		end

	frozen GL_TEXTURE_GEN_S : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_S"
		end

	frozen GL_TEXTURE_GEN_T : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_T"
		end

	frozen GL_TEXTURE_GEN_R : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_R"
		end

	frozen GL_TEXTURE_GEN_Q : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_Q"
		end

	frozen GL_TEXTURE_GEN_MODE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_MODE"
		end

	frozen GL_TEXTURE_BORDER_COLOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_BORDER_COLOR"
		end

	frozen GL_TEXTURE_WIDTH : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_WIDTH"
		end

	frozen GL_TEXTURE_HEIGHT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_HEIGHT"
		end

	frozen GL_TEXTURE_BORDER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_BORDER"
		end

	frozen GL_TEXTURE_COMPONENTS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPONENTS"
		end

	frozen GL_TEXTURE_RED_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_RED_SIZE"
		end

	frozen GL_TEXTURE_GREEN_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_GREEN_SIZE"
		end

	frozen GL_TEXTURE_BLUE_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_BLUE_SIZE"
		end

	frozen GL_TEXTURE_ALPHA_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_ALPHA_SIZE"
		end

	frozen GL_TEXTURE_LUMINANCE_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_LUMINANCE_SIZE"
		end

	frozen GL_TEXTURE_INTENSITY_SIZE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_INTENSITY_SIZE"
		end

	frozen GL_NEAREST_MIPMAP_NEAREST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NEAREST_MIPMAP_NEAREST"
		end

	frozen GL_NEAREST_MIPMAP_LINEAR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NEAREST_MIPMAP_LINEAR"
		end

	frozen GL_LINEAR_MIPMAP_NEAREST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINEAR_MIPMAP_NEAREST"
		end

	frozen GL_LINEAR_MIPMAP_LINEAR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINEAR_MIPMAP_LINEAR"
		end

	frozen GL_OBJECT_LINEAR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_OBJECT_LINEAR"
		end

	frozen GL_OBJECT_PLANE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_OBJECT_PLANE"
		end

	frozen GL_EYE_LINEAR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EYE_LINEAR"
		end

	frozen GL_EYE_PLANE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EYE_PLANE"
		end

	frozen GL_SPHERE_MAP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SPHERE_MAP"
		end

	frozen GL_DECAL : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DECAL"
		end

	frozen GL_MODULATE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_MODULATE"
		end

	frozen GL_NEAREST : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NEAREST"
		end

	frozen GL_REPEAT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_REPEAT"
		end

	frozen GL_CLAMP : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLAMP"
		end

	frozen GL_S : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_S"
		end

	frozen GL_T : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_T"
		end

	frozen GL_R : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_R"
		end

	frozen GL_Q : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_Q"
		end

	frozen GL_VENDOR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VENDOR"
		end

	frozen GL_RENDERER : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RENDERER"
		end

	frozen GL_VERSION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VERSION"
		end

	frozen GL_EXTENSIONS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EXTENSIONS"
		end

	frozen GL_NO_ERROR : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_NO_ERROR"
		end

	frozen GL_INVALID_ENUM : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INVALID_ENUM"
		end

	frozen GL_INVALID_VALUE : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INVALID_VALUE"
		end

	frozen GL_INVALID_OPERATION : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INVALID_OPERATION"
		end

	frozen GL_STACK_OVERFLOW : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STACK_OVERFLOW"
		end

	frozen GL_STACK_UNDERFLOW : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STACK_UNDERFLOW"
		end

	frozen GL_OUT_OF_MEMORY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_OUT_OF_MEMORY"
		end

	frozen GL_CURRENT_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CURRENT_BIT"
		end

	frozen GL_POINT_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POINT_BIT"
		end

	frozen GL_LINE_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LINE_BIT"
		end

	frozen GL_POLYGON_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_BIT"
		end

	frozen GL_POLYGON_STIPPLE_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_POLYGON_STIPPLE_BIT"
		end

	frozen GL_PIXEL_MODE_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PIXEL_MODE_BIT"
		end

	frozen GL_LIGHTING_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIGHTING_BIT"
		end

	frozen GL_FOG_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_FOG_BIT"
		end

	frozen GL_DEPTH_BUFFER_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_DEPTH_BUFFER_BIT"
		end

	frozen GL_ACCUM_BUFFER_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ACCUM_BUFFER_BIT"
		end

	frozen GL_STENCIL_BUFFER_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_STENCIL_BUFFER_BIT"
		end

	frozen GL_VIEWPORT_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_VIEWPORT_BIT"
		end

	frozen GL_TRANSFORM_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TRANSFORM_BIT"
		end

	frozen GL_ENABLE_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ENABLE_BIT"
		end

	frozen GL_COLOR_BUFFER_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_COLOR_BUFFER_BIT"
		end

	frozen GL_HINT_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_HINT_BIT"
		end

	frozen GL_EVAL_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_EVAL_BIT"
		end

	frozen GL_LIST_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LIST_BIT"
		end

	frozen GL_TEXTURE_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_BIT"
		end

	frozen GL_SCISSOR_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_SCISSOR_BIT"
		end

	frozen GL_ALL_ATTRIB_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALL_ATTRIB_BITS"
		end

	frozen GL_PROXY_TEXTURE_1D : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_1D"
		end

	frozen GL_PROXY_TEXTURE_2D : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_2D"
		end

	frozen GL_TEXTURE_PRIORITY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_PRIORITY"
		end

	frozen GL_TEXTURE_RESIDENT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_RESIDENT"
		end

	frozen GL_TEXTURE_BINDING_1D : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_1D"
		end

	frozen GL_TEXTURE_BINDING_2D : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_2D"
		end

	frozen GL_TEXTURE_INTERNAL_FORMAT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_TEXTURE_INTERNAL_FORMAT"
		end

	frozen GL_ALPHA4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA4"
		end

	frozen GL_ALPHA8 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA8"
		end

	frozen GL_ALPHA12 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA12"
		end

	frozen GL_ALPHA16 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALPHA16"
		end

	frozen GL_LUMINANCE4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE4"
		end

	frozen GL_LUMINANCE8 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE8"
		end

	frozen GL_LUMINANCE12 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE12"
		end

	frozen GL_LUMINANCE16 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE16"
		end

	frozen GL_LUMINANCE4_ALPHA4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE4_ALPHA4"
		end

	frozen GL_LUMINANCE6_ALPHA2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE6_ALPHA2"
		end

	frozen GL_LUMINANCE8_ALPHA8 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE8_ALPHA8"
		end

	frozen GL_LUMINANCE12_ALPHA4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE12_ALPHA4"
		end

	frozen GL_LUMINANCE12_ALPHA12 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE12_ALPHA12"
		end

	frozen GL_LUMINANCE16_ALPHA16 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_ALPHA16"
		end

	frozen GL_INTENSITY : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INTENSITY"
		end

	frozen GL_INTENSITY4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INTENSITY4"
		end

	frozen GL_INTENSITY8 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INTENSITY8"
		end

	frozen GL_INTENSITY12 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INTENSITY12"
		end

	frozen GL_INTENSITY16 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_INTENSITY16"
		end

	frozen GL_R3_G3_B2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_R3_G3_B2"
		end

	frozen GL_RGB4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGB4"
		end

	frozen GL_RGB5 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGB5"
		end

	frozen GL_RGB8 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGB8"
		end

	frozen GL_RGB10 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGB10"
		end

	frozen GL_RGB12 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGB12"
		end

	frozen GL_RGB16 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGB16"
		end

	frozen GL_RGBA2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGBA2"
		end

	frozen GL_RGBA4 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGBA4"
		end

	frozen GL_RGB5_A1 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGB5_A1"
		end

	frozen GL_RGBA8 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGBA8"
		end

	frozen GL_RGB10_A2 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGB10_A2"
		end

	frozen GL_RGBA12 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGBA12"
		end

	frozen GL_RGBA16 : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_RGBA16"
		end

	frozen GL_CLIENT_PIXEL_STORE_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIENT_PIXEL_STORE_BIT"
		end

	frozen GL_CLIENT_VERTEX_ARRAY_BIT : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIENT_VERTEX_ARRAY_BIT"
		end

	frozen GL_ALL_CLIENT_ATTRIB_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_ALL_CLIENT_ATTRIB_BITS"
		end

	frozen GL_CLIENT_ALL_ATTRIB_BITS : NATURAL
		external
			"C [macro <GL/gl.h>] : unsigned int"
		alias
			"GL_CLIENT_ALL_ATTRIB_BITS"
		end

	frozen glClearIndex(a_c: REAL_32)
		external
			"C(GLfloat) | <GL/gl.h>"
		alias
			"glClearIndex"
		end

	frozen glClearColor(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C(GLclampf,GLclampf,GLclampf,GLclampf) | <GL/gl.h>"
		alias
			"glClearColor"
		end

	frozen glClear(a_mask: NATURAL)
		external
			"C(GLbitfield) | <GL/gl.h>"
		alias
			"glClear"
		end

	frozen glIndexMask(a_mask: NATURAL)
		external
			"C(GLuint) | <GL/gl.h>"
		alias
			"glIndexMask"
		end

	frozen glColorMask(a_red: NATURAL_8; a_green: NATURAL_8; a_blue: NATURAL_8; a_alpha: NATURAL_8)
		external
			"C(GLboolean,GLboolean,GLboolean,GLboolean) | <GL/gl.h>"
		alias
			"glColorMask"
		end

	frozen glAlphaFunc(a_func: NATURAL; a_ref: REAL_32)
		external
			"C(GLenum,GLclampf) | <GL/gl.h>"
		alias
			"glAlphaFunc"
		end

	frozen glBlendFunc(a_sfactor: NATURAL; a_dfactor: NATURAL)
		external
			"C(GLenum,GLenum) | <GL/gl.h>"
		alias
			"glBlendFunc"
		end

	frozen glLogicOp(a_opcode: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glLogicOp"
		end

	frozen glCullFace(a_mode: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glCullFace"
		end

	frozen glFrontFace(a_mode: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glFrontFace"
		end

	frozen glPointSize(a_size: REAL_32)
		external
			"C(GLfloat) | <GL/gl.h>"
		alias
			"glPointSize"
		end

	frozen glLineWidth(a_width: REAL_32)
		external
			"C(GLfloat) | <GL/gl.h>"
		alias
			"glLineWidth"
		end

	frozen glLineStipple(a_factor: INTEGER; a_pattern: NATURAL_16)
		external
			"C(GLint,GLushort) | <GL/gl.h>"
		alias
			"glLineStipple"
		end

	frozen glPolygonMode(a_face: NATURAL; a_mode: NATURAL)
		external
			"C(GLenum,GLenum) | <GL/gl.h>"
		alias
			"glPolygonMode"
		end

	frozen glPolygonOffset(a_factor: REAL_32; a_units: REAL_32)
		external
			"C(GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glPolygonOffset"
		end

	frozen glPolygonStipple(a_mask: POINTER)
		external
			"C(GLubyte *) | <GL/gl.h>"
		alias
			"glPolygonStipple"
		end

	frozen glGetPolygonStipple(a_mask: POINTER)
		external
			"C(GLubyte *) | <GL/gl.h>"
		alias
			"glGetPolygonStipple"
		end

	frozen glEdgeFlag(a_flag: NATURAL_8)
		external
			"C(GLboolean) | <GL/gl.h>"
		alias
			"glEdgeFlag"
		end

	frozen glEdgeFlagv(a_flag: POINTER)
		external
			"C(GLboolean *) | <GL/gl.h>"
		alias
			"glEdgeFlagv"
		end

	frozen glScissor(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C(GLint,GLint,GLsizei,GLsizei) | <GL/gl.h>"
		alias
			"glScissor"
		end

	frozen glClipPlane(a_plane: NATURAL; a_equation: POINTER)
		external
			"C(GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glClipPlane"
		end

	frozen glGetClipPlane(a_plane: NATURAL; a_equation: POINTER)
		external
			"C(GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glGetClipPlane"
		end

	frozen glDrawBuffer(a_mode: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glDrawBuffer"
		end

	frozen glReadBuffer(a_mode: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glReadBuffer"
		end

	frozen glEnable(a_cap: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glEnable"
		end

	frozen glDisable(a_cap: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glDisable"
		end

	frozen glIsEnabled(a_cap: NATURAL):NATURAL_8
		external
			"C(GLenum):GLboolean | <GL/gl.h>"
		alias
			"glIsEnabled"
		end

	frozen glEnableClientState(a_cap: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glEnableClientState"
		end

	frozen glDisableClientState(a_cap: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glDisableClientState"
		end

	frozen glGetBooleanv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLboolean *) | <GL/gl.h>"
		alias
			"glGetBooleanv"
		end

	frozen glGetDoublev(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glGetDoublev"
		end

	frozen glGetFloatv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetFloatv"
		end

	frozen glGetIntegerv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetIntegerv"
		end

	frozen glPushAttrib(a_mask: NATURAL)
		external
			"C(GLbitfield) | <GL/gl.h>"
		alias
			"glPushAttrib"
		end

	frozen glPopAttrib
		external
			"C | <GL/gl.h>"
		alias
			"glPopAttrib"
		end

	frozen glPushClientAttrib(a_mask: NATURAL)
		external
			"C(GLbitfield) | <GL/gl.h>"
		alias
			"glPushClientAttrib"
		end

	frozen glPopClientAttrib
		external
			"C | <GL/gl.h>"
		alias
			"glPopClientAttrib"
		end

	frozen glRenderMode(a_mode: NATURAL):INTEGER
		external
			"C(GLenum):GLint | <GL/gl.h>"
		alias
			"glRenderMode"
		end

	frozen glGetError:NATURAL
		external
			"C:GLenum | <GL/gl.h>"
		alias
			"glGetError"
		end

	frozen glGetString(a_name: NATURAL):POINTER
		external
			"C(GLenum):GLubyte * | <GL/gl.h>"
		alias
			"glGetString"
		end

	frozen glFinish
		external
			"C | <GL/gl.h>"
		alias
			"glFinish"
		end

	frozen glFlush
		external
			"C | <GL/gl.h>"
		alias
			"glFlush"
		end

	frozen glHint(a_target: NATURAL; a_mode: NATURAL)
		external
			"C(GLenum,GLenum) | <GL/gl.h>"
		alias
			"glHint"
		end

	frozen glClearDepth(a_depth: REAL_64)
		external
			"C(GLclampd) | <GL/gl.h>"
		alias
			"glClearDepth"
		end

	frozen glDepthFunc(a_func: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glDepthFunc"
		end

	frozen glDepthMask(a_flag: NATURAL_8)
		external
			"C(GLboolean) | <GL/gl.h>"
		alias
			"glDepthMask"
		end

	frozen glDepthRange(a_near_val: REAL_64; a_far_val: REAL_64)
		external
			"C(GLclampd,GLclampd) | <GL/gl.h>"
		alias
			"glDepthRange"
		end

	frozen glClearAccum(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glClearAccum"
		end

	frozen glAccum(a_op: NATURAL; a_value: REAL_32)
		external
			"C(GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glAccum"
		end

	frozen glMatrixMode(a_mode: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glMatrixMode"
		end

	frozen glOrtho(a_left: REAL_64; a_right: REAL_64; a_bottom: REAL_64; a_top: REAL_64; a_near_val: REAL_64; a_far_val: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glOrtho"
		end

	frozen glFrustum(a_left: REAL_64; a_right: REAL_64; a_bottom: REAL_64; a_top: REAL_64; a_near_val: REAL_64; a_far_val: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glFrustum"
		end

	frozen glViewport(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C(GLint,GLint,GLsizei,GLsizei) | <GL/gl.h>"
		alias
			"glViewport"
		end

	frozen glPushMatrix
		external
			"C | <GL/gl.h>"
		alias
			"glPushMatrix"
		end

	frozen glPopMatrix
		external
			"C | <GL/gl.h>"
		alias
			"glPopMatrix"
		end

	frozen glLoadIdentity
		external
			"C | <GL/gl.h>"
		alias
			"glLoadIdentity"
		end

	frozen glLoadMatrixd(a_m: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glLoadMatrixd"
		end

	frozen glLoadMatrixf(a_m: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glLoadMatrixf"
		end

	frozen glMultMatrixd(a_m: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glMultMatrixd"
		end

	frozen glMultMatrixf(a_m: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glMultMatrixf"
		end

	frozen glRotated(a_angle: REAL_64; a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glRotated"
		end

	frozen glRotatef(a_angle: REAL_32; a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glRotatef"
		end

	frozen glScaled(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glScaled"
		end

	frozen glScalef(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glScalef"
		end

	frozen glTranslated(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glTranslated"
		end

	frozen glTranslatef(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glTranslatef"
		end

	frozen glIsList(a_list: NATURAL):NATURAL_8
		external
			"C(GLuint):GLboolean | <GL/gl.h>"
		alias
			"glIsList"
		end

	frozen glDeleteLists(a_list: NATURAL; a_range: INTEGER)
		external
			"C(GLuint,GLsizei) | <GL/gl.h>"
		alias
			"glDeleteLists"
		end

	frozen glGenLists(a_range: INTEGER):NATURAL
		external
			"C(GLsizei):GLuint | <GL/gl.h>"
		alias
			"glGenLists"
		end

	frozen glNewList(a_list: NATURAL; a_mode: NATURAL)
		external
			"C(GLuint,GLenum) | <GL/gl.h>"
		alias
			"glNewList"
		end

	frozen glEndList
		external
			"C | <GL/gl.h>"
		alias
			"glEndList"
		end

	frozen glCallList(a_list: NATURAL)
		external
			"C(GLuint) | <GL/gl.h>"
		alias
			"glCallList"
		end

	frozen glCallLists(a_n: INTEGER; a_type: NATURAL; a_lists: POINTER)
		external
			"C(GLsizei,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glCallLists"
		end

	frozen glListBase(a_base: NATURAL)
		external
			"C(GLuint) | <GL/gl.h>"
		alias
			"glListBase"
		end

	frozen glBegin(a_mode: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glBegin"
		end

	frozen glEnd
		external
			"C | <GL/gl.h>"
		alias
			"glEnd"
		end

	frozen glVertex2d(a_x: REAL_64; a_y: REAL_64)
		external
			"C(GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glVertex2d"
		end

	frozen glVertex2f(a_x: REAL_32; a_y: REAL_32)
		external
			"C(GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glVertex2f"
		end

	frozen glVertex2i(a_x: INTEGER; a_y: INTEGER)
		external
			"C(GLint,GLint) | <GL/gl.h>"
		alias
			"glVertex2i"
		end

	frozen glVertex2s(a_x: INTEGER_16; a_y: INTEGER_16)
		external
			"C(GLshort,GLshort) | <GL/gl.h>"
		alias
			"glVertex2s"
		end

	frozen glVertex3d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glVertex3d"
		end

	frozen glVertex3f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glVertex3f"
		end

	frozen glVertex3i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER)
		external
			"C(GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glVertex3i"
		end

	frozen glVertex3s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glVertex3s"
		end

	frozen glVertex4d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64; a_w: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glVertex4d"
		end

	frozen glVertex4f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32; a_w: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glVertex4f"
		end

	frozen glVertex4i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER; a_w: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glVertex4i"
		end

	frozen glVertex4s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16; a_w: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glVertex4s"
		end

	frozen glVertex2dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glVertex2dv"
		end

	frozen glVertex2fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glVertex2fv"
		end

	frozen glVertex2iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glVertex2iv"
		end

	frozen glVertex2sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glVertex2sv"
		end

	frozen glVertex3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glVertex3dv"
		end

	frozen glVertex3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glVertex3fv"
		end

	frozen glVertex3iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glVertex3iv"
		end

	frozen glVertex3sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glVertex3sv"
		end

	frozen glVertex4dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glVertex4dv"
		end

	frozen glVertex4fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glVertex4fv"
		end

	frozen glVertex4iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glVertex4iv"
		end

	frozen glVertex4sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glVertex4sv"
		end

	frozen glNormal3b(a_nx: INTEGER_8; a_ny: INTEGER_8; a_nz: INTEGER_8)
		external
			"C(GLbyte,GLbyte,GLbyte) | <GL/gl.h>"
		alias
			"glNormal3b"
		end

	frozen glNormal3d(a_nx: REAL_64; a_ny: REAL_64; a_nz: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glNormal3d"
		end

	frozen glNormal3f(a_nx: REAL_32; a_ny: REAL_32; a_nz: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glNormal3f"
		end

	frozen glNormal3i(a_nx: INTEGER; a_ny: INTEGER; a_nz: INTEGER)
		external
			"C(GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glNormal3i"
		end

	frozen glNormal3s(a_nx: INTEGER_16; a_ny: INTEGER_16; a_nz: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glNormal3s"
		end

	frozen glNormal3bv(a_v: POINTER)
		external
			"C(GLbyte *) | <GL/gl.h>"
		alias
			"glNormal3bv"
		end

	frozen glNormal3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glNormal3dv"
		end

	frozen glNormal3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glNormal3fv"
		end

	frozen glNormal3iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glNormal3iv"
		end

	frozen glNormal3sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glNormal3sv"
		end

	frozen glIndexd(a_c: REAL_64)
		external
			"C(GLdouble) | <GL/gl.h>"
		alias
			"glIndexd"
		end

	frozen glIndexf(a_c: REAL_32)
		external
			"C(GLfloat) | <GL/gl.h>"
		alias
			"glIndexf"
		end

	frozen glIndexi(a_c: INTEGER)
		external
			"C(GLint) | <GL/gl.h>"
		alias
			"glIndexi"
		end

	frozen glIndexs(a_c: INTEGER_16)
		external
			"C(GLshort) | <GL/gl.h>"
		alias
			"glIndexs"
		end

	frozen glIndexub(a_c: NATURAL_8)
		external
			"C(GLubyte) | <GL/gl.h>"
		alias
			"glIndexub"
		end

	frozen glIndexdv(a_c: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glIndexdv"
		end

	frozen glIndexfv(a_c: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glIndexfv"
		end

	frozen glIndexiv(a_c: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glIndexiv"
		end

	frozen glIndexsv(a_c: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glIndexsv"
		end

	frozen glIndexubv(a_c: POINTER)
		external
			"C(GLubyte *) | <GL/gl.h>"
		alias
			"glIndexubv"
		end

	frozen glColor3b(a_red: INTEGER_8; a_green: INTEGER_8; a_blue: INTEGER_8)
		external
			"C(GLbyte,GLbyte,GLbyte) | <GL/gl.h>"
		alias
			"glColor3b"
		end

	frozen glColor3d(a_red: REAL_64; a_green: REAL_64; a_blue: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glColor3d"
		end

	frozen glColor3f(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glColor3f"
		end

	frozen glColor3i(a_red: INTEGER; a_green: INTEGER; a_blue: INTEGER)
		external
			"C(GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glColor3i"
		end

	frozen glColor3s(a_red: INTEGER_16; a_green: INTEGER_16; a_blue: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glColor3s"
		end

	frozen glColor3ub(a_red: NATURAL_8; a_green: NATURAL_8; a_blue: NATURAL_8)
		external
			"C(GLubyte,GLubyte,GLubyte) | <GL/gl.h>"
		alias
			"glColor3ub"
		end

	frozen glColor3ui(a_red: NATURAL; a_green: NATURAL; a_blue: NATURAL)
		external
			"C(GLuint,GLuint,GLuint) | <GL/gl.h>"
		alias
			"glColor3ui"
		end

	frozen glColor3us(a_red: NATURAL_16; a_green: NATURAL_16; a_blue: NATURAL_16)
		external
			"C(GLushort,GLushort,GLushort) | <GL/gl.h>"
		alias
			"glColor3us"
		end

	frozen glColor4b(a_red: INTEGER_8; a_green: INTEGER_8; a_blue: INTEGER_8; a_alpha: INTEGER_8)
		external
			"C(GLbyte,GLbyte,GLbyte,GLbyte) | <GL/gl.h>"
		alias
			"glColor4b"
		end

	frozen glColor4d(a_red: REAL_64; a_green: REAL_64; a_blue: REAL_64; a_alpha: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glColor4d"
		end

	frozen glColor4f(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glColor4f"
		end

	frozen glColor4i(a_red: INTEGER; a_green: INTEGER; a_blue: INTEGER; a_alpha: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glColor4i"
		end

	frozen glColor4s(a_red: INTEGER_16; a_green: INTEGER_16; a_blue: INTEGER_16; a_alpha: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glColor4s"
		end

	frozen glColor4ub(a_red: NATURAL_8; a_green: NATURAL_8; a_blue: NATURAL_8; a_alpha: NATURAL_8)
		external
			"C(GLubyte,GLubyte,GLubyte,GLubyte) | <GL/gl.h>"
		alias
			"glColor4ub"
		end

	frozen glColor4ui(a_red: NATURAL; a_green: NATURAL; a_blue: NATURAL; a_alpha: NATURAL)
		external
			"C(GLuint,GLuint,GLuint,GLuint) | <GL/gl.h>"
		alias
			"glColor4ui"
		end

	frozen glColor4us(a_red: NATURAL_16; a_green: NATURAL_16; a_blue: NATURAL_16; a_alpha: NATURAL_16)
		external
			"C(GLushort,GLushort,GLushort,GLushort) | <GL/gl.h>"
		alias
			"glColor4us"
		end

	frozen glColor3bv(a_v: POINTER)
		external
			"C(GLbyte *) | <GL/gl.h>"
		alias
			"glColor3bv"
		end

	frozen glColor3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glColor3dv"
		end

	frozen glColor3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glColor3fv"
		end

	frozen glColor3iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glColor3iv"
		end

	frozen glColor3sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glColor3sv"
		end

	frozen glColor3ubv(a_v: POINTER)
		external
			"C(GLubyte *) | <GL/gl.h>"
		alias
			"glColor3ubv"
		end

	frozen glColor3uiv(a_v: POINTER)
		external
			"C(GLuint *) | <GL/gl.h>"
		alias
			"glColor3uiv"
		end

	frozen glColor3usv(a_v: POINTER)
		external
			"C(GLushort *) | <GL/gl.h>"
		alias
			"glColor3usv"
		end

	frozen glColor4bv(a_v: POINTER)
		external
			"C(GLbyte *) | <GL/gl.h>"
		alias
			"glColor4bv"
		end

	frozen glColor4dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glColor4dv"
		end

	frozen glColor4fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glColor4fv"
		end

	frozen glColor4iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glColor4iv"
		end

	frozen glColor4sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glColor4sv"
		end

	frozen glColor4ubv(a_v: POINTER)
		external
			"C(GLubyte *) | <GL/gl.h>"
		alias
			"glColor4ubv"
		end

	frozen glColor4uiv(a_v: POINTER)
		external
			"C(GLuint *) | <GL/gl.h>"
		alias
			"glColor4uiv"
		end

	frozen glColor4usv(a_v: POINTER)
		external
			"C(GLushort *) | <GL/gl.h>"
		alias
			"glColor4usv"
		end

	frozen glTexCoord1d(a_s: REAL_64)
		external
			"C(GLdouble) | <GL/gl.h>"
		alias
			"glTexCoord1d"
		end

	frozen glTexCoord1f(a_s: REAL_32)
		external
			"C(GLfloat) | <GL/gl.h>"
		alias
			"glTexCoord1f"
		end

	frozen glTexCoord1i(a_s: INTEGER)
		external
			"C(GLint) | <GL/gl.h>"
		alias
			"glTexCoord1i"
		end

	frozen glTexCoord1s(a_s: INTEGER_16)
		external
			"C(GLshort) | <GL/gl.h>"
		alias
			"glTexCoord1s"
		end

	frozen glTexCoord2d(a_s: REAL_64; a_t: REAL_64)
		external
			"C(GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glTexCoord2d"
		end

	frozen glTexCoord2f(a_s: REAL_32; a_t: REAL_32)
		external
			"C(GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glTexCoord2f"
		end

	frozen glTexCoord2i(a_s: INTEGER; a_t: INTEGER)
		external
			"C(GLint,GLint) | <GL/gl.h>"
		alias
			"glTexCoord2i"
		end

	frozen glTexCoord2s(a_s: INTEGER_16; a_t: INTEGER_16)
		external
			"C(GLshort,GLshort) | <GL/gl.h>"
		alias
			"glTexCoord2s"
		end

	frozen glTexCoord3d(a_s: REAL_64; a_t: REAL_64; a_r: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glTexCoord3d"
		end

	frozen glTexCoord3f(a_s: REAL_32; a_t: REAL_32; a_r: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glTexCoord3f"
		end

	frozen glTexCoord3i(a_s: INTEGER; a_t: INTEGER; a_r: INTEGER)
		external
			"C(GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glTexCoord3i"
		end

	frozen glTexCoord3s(a_s: INTEGER_16; a_t: INTEGER_16; a_r: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glTexCoord3s"
		end

	frozen glTexCoord4d(a_s: REAL_64; a_t: REAL_64; a_r: REAL_64; a_q: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glTexCoord4d"
		end

	frozen glTexCoord4f(a_s: REAL_32; a_t: REAL_32; a_r: REAL_32; a_q: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glTexCoord4f"
		end

	frozen glTexCoord4i(a_s: INTEGER; a_t: INTEGER; a_r: INTEGER; a_q: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glTexCoord4i"
		end

	frozen glTexCoord4s(a_s: INTEGER_16; a_t: INTEGER_16; a_r: INTEGER_16; a_q: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glTexCoord4s"
		end

	frozen glTexCoord1dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glTexCoord1dv"
		end

	frozen glTexCoord1fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glTexCoord1fv"
		end

	frozen glTexCoord1iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glTexCoord1iv"
		end

	frozen glTexCoord1sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glTexCoord1sv"
		end

	frozen glTexCoord2dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glTexCoord2dv"
		end

	frozen glTexCoord2fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glTexCoord2fv"
		end

	frozen glTexCoord2iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glTexCoord2iv"
		end

	frozen glTexCoord2sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glTexCoord2sv"
		end

	frozen glTexCoord3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glTexCoord3dv"
		end

	frozen glTexCoord3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glTexCoord3fv"
		end

	frozen glTexCoord3iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glTexCoord3iv"
		end

	frozen glTexCoord3sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glTexCoord3sv"
		end

	frozen glTexCoord4dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glTexCoord4dv"
		end

	frozen glTexCoord4fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glTexCoord4fv"
		end

	frozen glTexCoord4iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glTexCoord4iv"
		end

	frozen glTexCoord4sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glTexCoord4sv"
		end

	frozen glRasterPos2d(a_x: REAL_64; a_y: REAL_64)
		external
			"C(GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glRasterPos2d"
		end

	frozen glRasterPos2f(a_x: REAL_32; a_y: REAL_32)
		external
			"C(GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glRasterPos2f"
		end

	frozen glRasterPos2i(a_x: INTEGER; a_y: INTEGER)
		external
			"C(GLint,GLint) | <GL/gl.h>"
		alias
			"glRasterPos2i"
		end

	frozen glRasterPos2s(a_x: INTEGER_16; a_y: INTEGER_16)
		external
			"C(GLshort,GLshort) | <GL/gl.h>"
		alias
			"glRasterPos2s"
		end

	frozen glRasterPos3d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glRasterPos3d"
		end

	frozen glRasterPos3f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glRasterPos3f"
		end

	frozen glRasterPos3i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER)
		external
			"C(GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glRasterPos3i"
		end

	frozen glRasterPos3s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glRasterPos3s"
		end

	frozen glRasterPos4d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64; a_w: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glRasterPos4d"
		end

	frozen glRasterPos4f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32; a_w: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glRasterPos4f"
		end

	frozen glRasterPos4i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER; a_w: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glRasterPos4i"
		end

	frozen glRasterPos4s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16; a_w: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glRasterPos4s"
		end

	frozen glRasterPos2dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glRasterPos2dv"
		end

	frozen glRasterPos2fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glRasterPos2fv"
		end

	frozen glRasterPos2iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glRasterPos2iv"
		end

	frozen glRasterPos2sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glRasterPos2sv"
		end

	frozen glRasterPos3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glRasterPos3dv"
		end

	frozen glRasterPos3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glRasterPos3fv"
		end

	frozen glRasterPos3iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glRasterPos3iv"
		end

	frozen glRasterPos3sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glRasterPos3sv"
		end

	frozen glRasterPos4dv(a_v: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glRasterPos4dv"
		end

	frozen glRasterPos4fv(a_v: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glRasterPos4fv"
		end

	frozen glRasterPos4iv(a_v: POINTER)
		external
			"C(GLint *) | <GL/gl.h>"
		alias
			"glRasterPos4iv"
		end

	frozen glRasterPos4sv(a_v: POINTER)
		external
			"C(GLshort *) | <GL/gl.h>"
		alias
			"glRasterPos4sv"
		end

	frozen glRectd(a_x1: REAL_64; a_y1: REAL_64; a_x2: REAL_64; a_y2: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glRectd"
		end

	frozen glRectf(a_x1: REAL_32; a_y1: REAL_32; a_x2: REAL_32; a_y2: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glRectf"
		end

	frozen glRecti(a_x1: INTEGER; a_y1: INTEGER; a_x2: INTEGER; a_y2: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glRecti"
		end

	frozen glRects(a_x1: INTEGER_16; a_y1: INTEGER_16; a_x2: INTEGER_16; a_y2: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glRects"
		end

	frozen glRectdv(a_v1: POINTER; a_v2: POINTER)
		external
			"C(GLdouble *,GLdouble *) | <GL/gl.h>"
		alias
			"glRectdv"
		end

	frozen glRectfv(a_v1: POINTER; a_v2: POINTER)
		external
			"C(GLfloat *,GLfloat *) | <GL/gl.h>"
		alias
			"glRectfv"
		end

	frozen glRectiv(a_v1: POINTER; a_v2: POINTER)
		external
			"C(GLint *,GLint *) | <GL/gl.h>"
		alias
			"glRectiv"
		end

	frozen glRectsv(a_v1: POINTER; a_v2: POINTER)
		external
			"C(GLshort *,GLshort *) | <GL/gl.h>"
		alias
			"glRectsv"
		end

	frozen glVertexPointer(a_size: INTEGER; a_type: NATURAL; a_stride: INTEGER; a_ptr: POINTER)
		external
			"C(GLint,GLenum,GLsizei,GLvoid *) | <GL/gl.h>"
		alias
			"glVertexPointer"
		end

	frozen glNormalPointer(a_type: NATURAL; a_stride: INTEGER; a_ptr: POINTER)
		external
			"C(GLenum,GLsizei,GLvoid *) | <GL/gl.h>"
		alias
			"glNormalPointer"
		end

	frozen glColorPointer(a_size: INTEGER; a_type: NATURAL; a_stride: INTEGER; a_ptr: POINTER)
		external
			"C(GLint,GLenum,GLsizei,GLvoid *) | <GL/gl.h>"
		alias
			"glColorPointer"
		end

	frozen glIndexPointer(a_type: NATURAL; a_stride: INTEGER; a_ptr: POINTER)
		external
			"C(GLenum,GLsizei,GLvoid *) | <GL/gl.h>"
		alias
			"glIndexPointer"
		end

	frozen glTexCoordPointer(a_size: INTEGER; a_type: NATURAL; a_stride: INTEGER; a_ptr: POINTER)
		external
			"C(GLint,GLenum,GLsizei,GLvoid *) | <GL/gl.h>"
		alias
			"glTexCoordPointer"
		end

	frozen glEdgeFlagPointer(a_stride: INTEGER; a_ptr: POINTER)
		external
			"C(GLsizei,GLvoid *) | <GL/gl.h>"
		alias
			"glEdgeFlagPointer"
		end

	frozen glGetPointerv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLvoid **) | <GL/gl.h>"
		alias
			"glGetPointerv"
		end

	frozen glArrayElement(a_i: INTEGER)
		external
			"C(GLint) | <GL/gl.h>"
		alias
			"glArrayElement"
		end

	frozen glDrawArrays(a_mode: NATURAL; a_first: INTEGER; a_count: INTEGER)
		external
			"C(GLenum,GLint,GLsizei) | <GL/gl.h>"
		alias
			"glDrawArrays"
		end

	frozen glDrawElements(a_mode: NATURAL; a_count: INTEGER; a_type: NATURAL; a_indices: POINTER)
		external
			"C(GLenum,GLsizei,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glDrawElements"
		end

	frozen glInterleavedArrays(a_format: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C(GLenum,GLsizei,GLvoid *) | <GL/gl.h>"
		alias
			"glInterleavedArrays"
		end

	frozen glShadeModel(a_mode: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glShadeModel"
		end

	frozen glLightf(a_light: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glLightf"
		end

	frozen glLighti(a_light: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <GL/gl.h>"
		alias
			"glLighti"
		end

	frozen glLightfv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glLightfv"
		end

	frozen glLightiv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glLightiv"
		end

	frozen glGetLightfv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetLightfv"
		end

	frozen glGetLightiv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetLightiv"
		end

	frozen glLightModelf(a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glLightModelf"
		end

	frozen glLightModeli(a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLint) | <GL/gl.h>"
		alias
			"glLightModeli"
		end

	frozen glLightModelfv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glLightModelfv"
		end

	frozen glLightModeliv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint *) | <GL/gl.h>"
		alias
			"glLightModeliv"
		end

	frozen glMaterialf(a_face: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glMaterialf"
		end

	frozen glMateriali(a_face: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <GL/gl.h>"
		alias
			"glMateriali"
		end

	frozen glMaterialfv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glMaterialfv"
		end

	frozen glMaterialiv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glMaterialiv"
		end

	frozen glGetMaterialfv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetMaterialfv"
		end

	frozen glGetMaterialiv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetMaterialiv"
		end

	frozen glColorMaterial(a_face: NATURAL; a_mode: NATURAL)
		external
			"C(GLenum,GLenum) | <GL/gl.h>"
		alias
			"glColorMaterial"
		end

	frozen glPixelZoom(a_xfactor: REAL_32; a_yfactor: REAL_32)
		external
			"C(GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glPixelZoom"
		end

	frozen glPixelStoref(a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glPixelStoref"
		end

	frozen glPixelStorei(a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLint) | <GL/gl.h>"
		alias
			"glPixelStorei"
		end

	frozen glPixelTransferf(a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glPixelTransferf"
		end

	frozen glPixelTransferi(a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLint) | <GL/gl.h>"
		alias
			"glPixelTransferi"
		end

	frozen glPixelMapfv(a_map: NATURAL; a_mapsize: INTEGER; a_values: POINTER)
		external
			"C(GLenum,GLsizei,GLfloat *) | <GL/gl.h>"
		alias
			"glPixelMapfv"
		end

	frozen glPixelMapuiv(a_map: NATURAL; a_mapsize: INTEGER; a_values: POINTER)
		external
			"C(GLenum,GLsizei,GLuint *) | <GL/gl.h>"
		alias
			"glPixelMapuiv"
		end

	frozen glPixelMapusv(a_map: NATURAL; a_mapsize: INTEGER; a_values: POINTER)
		external
			"C(GLenum,GLsizei,GLushort *) | <GL/gl.h>"
		alias
			"glPixelMapusv"
		end

	frozen glGetPixelMapfv(a_map: NATURAL; a_values: POINTER)
		external
			"C(GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetPixelMapfv"
		end

	frozen glGetPixelMapuiv(a_map: NATURAL; a_values: POINTER)
		external
			"C(GLenum,GLuint *) | <GL/gl.h>"
		alias
			"glGetPixelMapuiv"
		end

	frozen glGetPixelMapusv(a_map: NATURAL; a_values: POINTER)
		external
			"C(GLenum,GLushort *) | <GL/gl.h>"
		alias
			"glGetPixelMapusv"
		end

	frozen glBitmap(a_width: INTEGER; a_height: INTEGER; a_xorig: REAL_32; a_yorig: REAL_32; a_xmove: REAL_32; a_ymove: REAL_32; a_bitmap: POINTER)
		external
			"C(GLsizei,GLsizei,GLfloat,GLfloat,GLfloat,GLfloat,GLubyte *) | <GL/gl.h>"
		alias
			"glBitmap"
		end

	frozen glReadPixels(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLint,GLint,GLsizei,GLsizei,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glReadPixels"
		end

	frozen glDrawPixels(a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLsizei,GLsizei,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glDrawPixels"
		end

	frozen glCopyPixels(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_type: NATURAL)
		external
			"C(GLint,GLint,GLsizei,GLsizei,GLenum) | <GL/gl.h>"
		alias
			"glCopyPixels"
		end

	frozen glStencilFunc(a_func: NATURAL; a_ref: INTEGER; a_mask: NATURAL)
		external
			"C(GLenum,GLint,GLuint) | <GL/gl.h>"
		alias
			"glStencilFunc"
		end

	frozen glStencilMask(a_mask: NATURAL)
		external
			"C(GLuint) | <GL/gl.h>"
		alias
			"glStencilMask"
		end

	frozen glStencilOp(a_fail: NATURAL; a_zfail: NATURAL; a_zpass: NATURAL)
		external
			"C(GLenum,GLenum,GLenum) | <GL/gl.h>"
		alias
			"glStencilOp"
		end

	frozen glClearStencil(a_s: INTEGER)
		external
			"C(GLint) | <GL/gl.h>"
		alias
			"glClearStencil"
		end

	frozen glTexGend(a_coord: NATURAL; a_pname: NATURAL; a_param: REAL_64)
		external
			"C(GLenum,GLenum,GLdouble) | <GL/gl.h>"
		alias
			"glTexGend"
		end

	frozen glTexGenf(a_coord: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glTexGenf"
		end

	frozen glTexGeni(a_coord: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <GL/gl.h>"
		alias
			"glTexGeni"
		end

	frozen glTexGendv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glTexGendv"
		end

	frozen glTexGenfv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glTexGenfv"
		end

	frozen glTexGeniv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glTexGeniv"
		end

	frozen glGetTexGendv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glGetTexGendv"
		end

	frozen glGetTexGenfv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetTexGenfv"
		end

	frozen glGetTexGeniv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetTexGeniv"
		end

	frozen glTexEnvf(a_target: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glTexEnvf"
		end

	frozen glTexEnvi(a_target: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <GL/gl.h>"
		alias
			"glTexEnvi"
		end

	frozen glTexEnvfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glTexEnvfv"
		end

	frozen glTexEnviv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glTexEnviv"
		end

	frozen glGetTexEnvfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetTexEnvfv"
		end

	frozen glGetTexEnviv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetTexEnviv"
		end

	frozen glTexParameterf(a_target: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glTexParameterf"
		end

	frozen glTexParameteri(a_target: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <GL/gl.h>"
		alias
			"glTexParameteri"
		end

	frozen glTexParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glTexParameterfv"
		end

	frozen glTexParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glTexParameteriv"
		end

	frozen glGetTexParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetTexParameterfv"
		end

	frozen glGetTexParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetTexParameteriv"
		end

	frozen glGetTexLevelParameterfv(a_target: NATURAL; a_level: INTEGER; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetTexLevelParameterfv"
		end

	frozen glGetTexLevelParameteriv(a_target: NATURAL; a_level: INTEGER; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetTexLevelParameteriv"
		end

	frozen glTexImage1D(a_target: NATURAL; a_level: INTEGER; a_internalFormat: INTEGER; a_width: INTEGER; a_border: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLsizei,GLint,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glTexImage1D"
		end

	frozen glTexImage2D(a_target: NATURAL; a_level: INTEGER; a_internalFormat: INTEGER; a_width: INTEGER; a_height: INTEGER; a_border: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLsizei,GLsizei,GLint,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glTexImage2D"
		end

	frozen glGetTexImage(a_target: NATURAL; a_level: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glGetTexImage"
		end

	frozen glGenTextures(a_n: INTEGER; a_textures: POINTER)
		external
			"C(GLsizei,GLuint *) | <GL/gl.h>"
		alias
			"glGenTextures"
		end

	frozen glDeleteTextures(a_n: INTEGER; a_textures: POINTER)
		external
			"C(GLsizei,GLuint *) | <GL/gl.h>"
		alias
			"glDeleteTextures"
		end

	frozen glBindTexture(a_target: NATURAL; a_texture: NATURAL)
		external
			"C(GLenum,GLuint) | <GL/gl.h>"
		alias
			"glBindTexture"
		end

	frozen glPrioritizeTextures(a_n: INTEGER; a_textures: POINTER; a_priorities: POINTER)
		external
			"C(GLsizei,GLuint *,GLclampf *) | <GL/gl.h>"
		alias
			"glPrioritizeTextures"
		end

	frozen glAreTexturesResident(a_n: INTEGER; a_textures: POINTER; a_residences: POINTER):NATURAL_8
		external
			"C(GLsizei,GLuint *,GLboolean *):GLboolean | <GL/gl.h>"
		alias
			"glAreTexturesResident"
		end

	frozen glIsTexture(a_texture: NATURAL):NATURAL_8
		external
			"C(GLuint):GLboolean | <GL/gl.h>"
		alias
			"glIsTexture"
		end

	frozen glTexSubImage1D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_width: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLsizei,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glTexSubImage1D"
		end

	frozen glTexSubImage2D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_yoffset: INTEGER; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLint,GLsizei,GLsizei,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glTexSubImage2D"
		end

	frozen glCopyTexImage1D(a_target: NATURAL; a_level: INTEGER; a_internalformat: NATURAL; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_border: INTEGER)
		external
			"C(GLenum,GLint,GLenum,GLint,GLint,GLsizei,GLint) | <GL/gl.h>"
		alias
			"glCopyTexImage1D"
		end

	frozen glCopyTexImage2D(a_target: NATURAL; a_level: INTEGER; a_internalformat: NATURAL; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_border: INTEGER)
		external
			"C(GLenum,GLint,GLenum,GLint,GLint,GLsizei,GLsizei,GLint) | <GL/gl.h>"
		alias
			"glCopyTexImage2D"
		end

	frozen glCopyTexSubImage1D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER)
		external
			"C(GLenum,GLint,GLint,GLint,GLint,GLsizei) | <GL/gl.h>"
		alias
			"glCopyTexSubImage1D"
		end

	frozen glCopyTexSubImage2D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_yoffset: INTEGER; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C(GLenum,GLint,GLint,GLint,GLint,GLint,GLsizei,GLsizei) | <GL/gl.h>"
		alias
			"glCopyTexSubImage2D"
		end

	frozen glMap1d(a_target: NATURAL; a_u1: REAL_64; a_u2: REAL_64; a_stride: INTEGER; a_order: INTEGER; a_points: POINTER)
		external
			"C(GLenum,GLdouble,GLdouble,GLint,GLint,GLdouble *) | <GL/gl.h>"
		alias
			"glMap1d"
		end

	frozen glMap1f(a_target: NATURAL; a_u1: REAL_32; a_u2: REAL_32; a_stride: INTEGER; a_order: INTEGER; a_points: POINTER)
		external
			"C(GLenum,GLfloat,GLfloat,GLint,GLint,GLfloat *) | <GL/gl.h>"
		alias
			"glMap1f"
		end

	frozen glMap2d(a_target: NATURAL; a_u1: REAL_64; a_u2: REAL_64; a_ustride: INTEGER; a_uorder: INTEGER; a_v1: REAL_64; a_v2: REAL_64; a_vstride: INTEGER; a_vorder: INTEGER; a_points: POINTER)
		external
			"C(GLenum,GLdouble,GLdouble,GLint,GLint,GLdouble,GLdouble,GLint,GLint,GLdouble *) | <GL/gl.h>"
		alias
			"glMap2d"
		end

	frozen glMap2f(a_target: NATURAL; a_u1: REAL_32; a_u2: REAL_32; a_ustride: INTEGER; a_uorder: INTEGER; a_v1: REAL_32; a_v2: REAL_32; a_vstride: INTEGER; a_vorder: INTEGER; a_points: POINTER)
		external
			"C(GLenum,GLfloat,GLfloat,GLint,GLint,GLfloat,GLfloat,GLint,GLint,GLfloat *) | <GL/gl.h>"
		alias
			"glMap2f"
		end

	frozen glGetMapdv(a_target: NATURAL; a_query: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glGetMapdv"
		end

	frozen glGetMapfv(a_target: NATURAL; a_query: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetMapfv"
		end

	frozen glGetMapiv(a_target: NATURAL; a_query: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetMapiv"
		end

	frozen glEvalCoord1d(a_u: REAL_64)
		external
			"C(GLdouble) | <GL/gl.h>"
		alias
			"glEvalCoord1d"
		end

	frozen glEvalCoord1f(a_u: REAL_32)
		external
			"C(GLfloat) | <GL/gl.h>"
		alias
			"glEvalCoord1f"
		end

	frozen glEvalCoord1dv(a_u: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glEvalCoord1dv"
		end

	frozen glEvalCoord1fv(a_u: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glEvalCoord1fv"
		end

	frozen glEvalCoord2d(a_u: REAL_64; a_v: REAL_64)
		external
			"C(GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glEvalCoord2d"
		end

	frozen glEvalCoord2f(a_u: REAL_32; a_v: REAL_32)
		external
			"C(GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glEvalCoord2f"
		end

	frozen glEvalCoord2dv(a_u: POINTER)
		external
			"C(GLdouble *) | <GL/gl.h>"
		alias
			"glEvalCoord2dv"
		end

	frozen glEvalCoord2fv(a_u: POINTER)
		external
			"C(GLfloat *) | <GL/gl.h>"
		alias
			"glEvalCoord2fv"
		end

	frozen glMapGrid1d(a_un: INTEGER; a_u1: REAL_64; a_u2: REAL_64)
		external
			"C(GLint,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glMapGrid1d"
		end

	frozen glMapGrid1f(a_un: INTEGER; a_u1: REAL_32; a_u2: REAL_32)
		external
			"C(GLint,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glMapGrid1f"
		end

	frozen glMapGrid2d(a_un: INTEGER; a_u1: REAL_64; a_u2: REAL_64; a_vn: INTEGER; a_v1: REAL_64; a_v2: REAL_64)
		external
			"C(GLint,GLdouble,GLdouble,GLint,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glMapGrid2d"
		end

	frozen glMapGrid2f(a_un: INTEGER; a_u1: REAL_32; a_u2: REAL_32; a_vn: INTEGER; a_v1: REAL_32; a_v2: REAL_32)
		external
			"C(GLint,GLfloat,GLfloat,GLint,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glMapGrid2f"
		end

	frozen glEvalPoint1(a_i: INTEGER)
		external
			"C(GLint) | <GL/gl.h>"
		alias
			"glEvalPoint1"
		end

	frozen glEvalPoint2(a_i: INTEGER; a_j: INTEGER)
		external
			"C(GLint,GLint) | <GL/gl.h>"
		alias
			"glEvalPoint2"
		end

	frozen glEvalMesh1(a_mode: NATURAL; a_i1: INTEGER; a_i2: INTEGER)
		external
			"C(GLenum,GLint,GLint) | <GL/gl.h>"
		alias
			"glEvalMesh1"
		end

	frozen glEvalMesh2(a_mode: NATURAL; a_i1: INTEGER; a_i2: INTEGER; a_j1: INTEGER; a_j2: INTEGER)
		external
			"C(GLenum,GLint,GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glEvalMesh2"
		end

	frozen glFogf(a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glFogf"
		end

	frozen glFogi(a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLint) | <GL/gl.h>"
		alias
			"glFogi"
		end

	frozen glFogfv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glFogfv"
		end

	frozen glFogiv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint *) | <GL/gl.h>"
		alias
			"glFogiv"
		end

	frozen glFeedbackBuffer(a_size: INTEGER; a_type: NATURAL; a_buffer: POINTER)
		external
			"C(GLsizei,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glFeedbackBuffer"
		end

	frozen glPassThrough(a_token: REAL_32)
		external
			"C(GLfloat) | <GL/gl.h>"
		alias
			"glPassThrough"
		end

	frozen glSelectBuffer(a_size: INTEGER; a_buffer: POINTER)
		external
			"C(GLsizei,GLuint *) | <GL/gl.h>"
		alias
			"glSelectBuffer"
		end

	frozen glInitNames
		external
			"C | <GL/gl.h>"
		alias
			"glInitNames"
		end

	frozen glLoadName(a_name: NATURAL)
		external
			"C(GLuint) | <GL/gl.h>"
		alias
			"glLoadName"
		end

	frozen glPushName(a_name: NATURAL)
		external
			"C(GLuint) | <GL/gl.h>"
		alias
			"glPushName"
		end

	frozen glPopName
		external
			"C | <GL/gl.h>"
		alias
			"glPopName"
		end

	frozen glDrawRangeElements(a_mode: NATURAL; a_start: NATURAL; a_end: NATURAL; a_count: INTEGER; a_type: NATURAL; a_indices: POINTER)
		external
			"C(GLenum,GLuint,GLuint,GLsizei,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glDrawRangeElements"
		end

	frozen glTexImage3D(a_target: NATURAL; a_level: INTEGER; a_internalFormat: INTEGER; a_width: INTEGER; a_height: INTEGER; a_depth: INTEGER; a_border: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLsizei,GLsizei,GLsizei,GLint,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glTexImage3D"
		end

	frozen glTexSubImage3D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_yoffset: INTEGER; a_zoffset: INTEGER; a_width: INTEGER; a_height: INTEGER; a_depth: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLint,GLint,GLsizei,GLsizei,GLsizei,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glTexSubImage3D"
		end

	frozen glCopyTexSubImage3D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_yoffset: INTEGER; a_zoffset: INTEGER; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C(GLenum,GLint,GLint,GLint,GLint,GLint,GLint,GLsizei,GLsizei) | <GL/gl.h>"
		alias
			"glCopyTexSubImage3D"
		end

	frozen glColorTable(a_target: NATURAL; a_internalformat: NATURAL; a_width: INTEGER; a_format: NATURAL; a_type: NATURAL; a_table: POINTER)
		external
			"C(GLenum,GLenum,GLsizei,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glColorTable"
		end

	frozen glColorSubTable(a_target: NATURAL; a_start: INTEGER; a_count: INTEGER; a_format: NATURAL; a_type: NATURAL; a_data: POINTER)
		external
			"C(GLenum,GLsizei,GLsizei,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glColorSubTable"
		end

	frozen glColorTableParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glColorTableParameteriv"
		end

	frozen glColorTableParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glColorTableParameterfv"
		end

	frozen glCopyColorSubTable(a_target: NATURAL; a_start: INTEGER; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER)
		external
			"C(GLenum,GLsizei,GLint,GLint,GLsizei) | <GL/gl.h>"
		alias
			"glCopyColorSubTable"
		end

	frozen glCopyColorTable(a_target: NATURAL; a_internalformat: NATURAL; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER)
		external
			"C(GLenum,GLenum,GLint,GLint,GLsizei) | <GL/gl.h>"
		alias
			"glCopyColorTable"
		end

	frozen glGetColorTable(a_target: NATURAL; a_format: NATURAL; a_type: NATURAL; a_table: POINTER)
		external
			"C(GLenum,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glGetColorTable"
		end

	frozen glGetColorTableParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetColorTableParameterfv"
		end

	frozen glGetColorTableParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetColorTableParameteriv"
		end

	frozen glBlendEquation(a_mode: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glBlendEquation"
		end

	frozen glBlendColor(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C(GLclampf,GLclampf,GLclampf,GLclampf) | <GL/gl.h>"
		alias
			"glBlendColor"
		end

	frozen glHistogram(a_target: NATURAL; a_width: INTEGER; a_internalformat: NATURAL; a_sink: NATURAL_8)
		external
			"C(GLenum,GLsizei,GLenum,GLboolean) | <GL/gl.h>"
		alias
			"glHistogram"
		end

	frozen glResetHistogram(a_target: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glResetHistogram"
		end

	frozen glGetHistogram(a_target: NATURAL; a_reset: NATURAL_8; a_format: NATURAL; a_type: NATURAL; a_values: POINTER)
		external
			"C(GLenum,GLboolean,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glGetHistogram"
		end

	frozen glGetHistogramParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetHistogramParameterfv"
		end

	frozen glGetHistogramParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetHistogramParameteriv"
		end

	frozen glMinmax(a_target: NATURAL; a_internalformat: NATURAL; a_sink: NATURAL_8)
		external
			"C(GLenum,GLenum,GLboolean) | <GL/gl.h>"
		alias
			"glMinmax"
		end

	frozen glResetMinmax(a_target: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glResetMinmax"
		end

	frozen glGetMinmax(a_target: NATURAL; a_reset: NATURAL_8; a_format: NATURAL; a_types: NATURAL; a_values: POINTER)
		external
			"C(GLenum,GLboolean,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glGetMinmax"
		end

	frozen glGetMinmaxParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetMinmaxParameterfv"
		end

	frozen glGetMinmaxParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetMinmaxParameteriv"
		end

	frozen glConvolutionFilter1D(a_target: NATURAL; a_internalformat: NATURAL; a_width: INTEGER; a_format: NATURAL; a_type: NATURAL; a_image: POINTER)
		external
			"C(GLenum,GLenum,GLsizei,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glConvolutionFilter1D"
		end

	frozen glConvolutionFilter2D(a_target: NATURAL; a_internalformat: NATURAL; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_image: POINTER)
		external
			"C(GLenum,GLenum,GLsizei,GLsizei,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glConvolutionFilter2D"
		end

	frozen glConvolutionParameterf(a_target: NATURAL; a_pname: NATURAL; a_params: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glConvolutionParameterf"
		end

	frozen glConvolutionParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glConvolutionParameterfv"
		end

	frozen glConvolutionParameteri(a_target: NATURAL; a_pname: NATURAL; a_params: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <GL/gl.h>"
		alias
			"glConvolutionParameteri"
		end

	frozen glConvolutionParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glConvolutionParameteriv"
		end

	frozen glCopyConvolutionFilter1D(a_target: NATURAL; a_internalformat: NATURAL; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER)
		external
			"C(GLenum,GLenum,GLint,GLint,GLsizei) | <GL/gl.h>"
		alias
			"glCopyConvolutionFilter1D"
		end

	frozen glCopyConvolutionFilter2D(a_target: NATURAL; a_internalformat: NATURAL; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C(GLenum,GLenum,GLint,GLint,GLsizei,GLsizei) | <GL/gl.h>"
		alias
			"glCopyConvolutionFilter2D"
		end

	frozen glGetConvolutionFilter(a_target: NATURAL; a_format: NATURAL; a_type: NATURAL; a_image: POINTER)
		external
			"C(GLenum,GLenum,GLenum,GLvoid *) | <GL/gl.h>"
		alias
			"glGetConvolutionFilter"
		end

	frozen glGetConvolutionParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glGetConvolutionParameterfv"
		end

	frozen glGetConvolutionParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <GL/gl.h>"
		alias
			"glGetConvolutionParameteriv"
		end

	frozen glSeparableFilter2D(a_target: NATURAL; a_internalformat: NATURAL; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_row: POINTER; a_column: POINTER)
		external
			"C(GLenum,GLenum,GLsizei,GLsizei,GLenum,GLenum,GLvoid *,GLvoid *) | <GL/gl.h>"
		alias
			"glSeparableFilter2D"
		end

	frozen glGetSeparableFilter(a_target: NATURAL; a_format: NATURAL; a_type: NATURAL; a_row: POINTER; a_column: POINTER; a_span: POINTER)
		external
			"C(GLenum,GLenum,GLenum,GLvoid *,GLvoid *,GLvoid *) | <GL/gl.h>"
		alias
			"glGetSeparableFilter"
		end

	frozen glActiveTextureARB(a_texture: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glActiveTextureARB"
		end

	frozen glClientActiveTextureARB(a_texture: NATURAL)
		external
			"C(GLenum) | <GL/gl.h>"
		alias
			"glClientActiveTextureARB"
		end

	frozen glMultiTexCoord1dARB(a_target: NATURAL; a_s: REAL_64)
		external
			"C(GLenum,GLdouble) | <GL/gl.h>"
		alias
			"glMultiTexCoord1dARB"
		end

	frozen glMultiTexCoord1dvARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glMultiTexCoord1dvARB"
		end

	frozen glMultiTexCoord1fARB(a_target: NATURAL; a_s: REAL_32)
		external
			"C(GLenum,GLfloat) | <GL/gl.h>"
		alias
			"glMultiTexCoord1fARB"
		end

	frozen glMultiTexCoord1fvARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glMultiTexCoord1fvARB"
		end

	frozen glMultiTexCoord1iARB(a_target: NATURAL; a_s: INTEGER)
		external
			"C(GLenum,GLint) | <GL/gl.h>"
		alias
			"glMultiTexCoord1iARB"
		end

	frozen glMultiTexCoord1ivARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLint *) | <GL/gl.h>"
		alias
			"glMultiTexCoord1ivARB"
		end

	frozen glMultiTexCoord1sARB(a_target: NATURAL; a_s: INTEGER_16)
		external
			"C(GLenum,GLshort) | <GL/gl.h>"
		alias
			"glMultiTexCoord1sARB"
		end

	frozen glMultiTexCoord1svARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLshort *) | <GL/gl.h>"
		alias
			"glMultiTexCoord1svARB"
		end

	frozen glMultiTexCoord2dARB(a_target: NATURAL; a_s: REAL_64; a_t: REAL_64)
		external
			"C(GLenum,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glMultiTexCoord2dARB"
		end

	frozen glMultiTexCoord2dvARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glMultiTexCoord2dvARB"
		end

	frozen glMultiTexCoord2fARB(a_target: NATURAL; a_s: REAL_32; a_t: REAL_32)
		external
			"C(GLenum,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glMultiTexCoord2fARB"
		end

	frozen glMultiTexCoord2fvARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glMultiTexCoord2fvARB"
		end

	frozen glMultiTexCoord2iARB(a_target: NATURAL; a_s: INTEGER; a_t: INTEGER)
		external
			"C(GLenum,GLint,GLint) | <GL/gl.h>"
		alias
			"glMultiTexCoord2iARB"
		end

	frozen glMultiTexCoord2ivARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLint *) | <GL/gl.h>"
		alias
			"glMultiTexCoord2ivARB"
		end

	frozen glMultiTexCoord2sARB(a_target: NATURAL; a_s: INTEGER_16; a_t: INTEGER_16)
		external
			"C(GLenum,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glMultiTexCoord2sARB"
		end

	frozen glMultiTexCoord2svARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLshort *) | <GL/gl.h>"
		alias
			"glMultiTexCoord2svARB"
		end

	frozen glMultiTexCoord3dARB(a_target: NATURAL; a_s: REAL_64; a_t: REAL_64; a_r: REAL_64)
		external
			"C(GLenum,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glMultiTexCoord3dARB"
		end

	frozen glMultiTexCoord3dvARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glMultiTexCoord3dvARB"
		end

	frozen glMultiTexCoord3fARB(a_target: NATURAL; a_s: REAL_32; a_t: REAL_32; a_r: REAL_32)
		external
			"C(GLenum,GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glMultiTexCoord3fARB"
		end

	frozen glMultiTexCoord3fvARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glMultiTexCoord3fvARB"
		end

	frozen glMultiTexCoord3iARB(a_target: NATURAL; a_s: INTEGER; a_t: INTEGER; a_r: INTEGER)
		external
			"C(GLenum,GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glMultiTexCoord3iARB"
		end

	frozen glMultiTexCoord3ivARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLint *) | <GL/gl.h>"
		alias
			"glMultiTexCoord3ivARB"
		end

	frozen glMultiTexCoord3sARB(a_target: NATURAL; a_s: INTEGER_16; a_t: INTEGER_16; a_r: INTEGER_16)
		external
			"C(GLenum,GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glMultiTexCoord3sARB"
		end

	frozen glMultiTexCoord3svARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLshort *) | <GL/gl.h>"
		alias
			"glMultiTexCoord3svARB"
		end

	frozen glMultiTexCoord4dARB(a_target: NATURAL; a_s: REAL_64; a_t: REAL_64; a_r: REAL_64; a_q: REAL_64)
		external
			"C(GLenum,GLdouble,GLdouble,GLdouble,GLdouble) | <GL/gl.h>"
		alias
			"glMultiTexCoord4dARB"
		end

	frozen glMultiTexCoord4dvARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLdouble *) | <GL/gl.h>"
		alias
			"glMultiTexCoord4dvARB"
		end

	frozen glMultiTexCoord4fARB(a_target: NATURAL; a_s: REAL_32; a_t: REAL_32; a_r: REAL_32; a_q: REAL_32)
		external
			"C(GLenum,GLfloat,GLfloat,GLfloat,GLfloat) | <GL/gl.h>"
		alias
			"glMultiTexCoord4fARB"
		end

	frozen glMultiTexCoord4fvARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLfloat *) | <GL/gl.h>"
		alias
			"glMultiTexCoord4fvARB"
		end

	frozen glMultiTexCoord4iARB(a_target: NATURAL; a_s: INTEGER; a_t: INTEGER; a_r: INTEGER; a_q: INTEGER)
		external
			"C(GLenum,GLint,GLint,GLint,GLint) | <GL/gl.h>"
		alias
			"glMultiTexCoord4iARB"
		end

	frozen glMultiTexCoord4ivARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLint *) | <GL/gl.h>"
		alias
			"glMultiTexCoord4ivARB"
		end

	frozen glMultiTexCoord4sARB(a_target: NATURAL; a_s: INTEGER_16; a_t: INTEGER_16; a_r: INTEGER_16; a_q: INTEGER_16)
		external
			"C(GLenum,GLshort,GLshort,GLshort,GLshort) | <GL/gl.h>"
		alias
			"glMultiTexCoord4sARB"
		end

	frozen glMultiTexCoord4svARB(a_target: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLshort *) | <GL/gl.h>"
		alias
			"glMultiTexCoord4svARB"
		end

end

