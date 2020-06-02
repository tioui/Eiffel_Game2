note
    description: "External methods for the GL standard library"
    author: "Louis Marchand"
    date: "Thu, 21 May 2020 13:43:03 +0000"
    revision: "2.0"

class
    GL_EXTERNAL

feature -- C external


	frozen GL_ZERO: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ZERO"
		end

	frozen GL_FALSE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FALSE"
		end

	frozen GL_LOGIC_OP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LOGIC_OP"
		end

	frozen GL_NONE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NONE"
		end

	frozen GL_TEXTURE_COMPONENTS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_COMPONENTS"
		end

	frozen GL_NO_ERROR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NO_ERROR"
		end

	frozen GL_POINTS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POINTS"
		end

	frozen GL_CURRENT_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_BIT"
		end

	frozen GL_TRUE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TRUE"
		end

	frozen GL_ONE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ONE"
		end

	frozen GL_CLIENT_PIXEL_STORE_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIENT_PIXEL_STORE_BIT"
		end

	frozen GL_LINES: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINES"
		end

	frozen GL_LINE_LOOP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_LOOP"
		end

	frozen GL_POINT_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POINT_BIT"
		end

	frozen GL_CLIENT_VERTEX_ARRAY_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIENT_VERTEX_ARRAY_BIT"
		end

	frozen GL_LINE_STRIP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_STRIP"
		end

	frozen GL_LINE_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_BIT"
		end

	frozen GL_TRIANGLES: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TRIANGLES"
		end

	frozen GL_TRIANGLE_STRIP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TRIANGLE_STRIP"
		end

	frozen GL_TRIANGLE_FAN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TRIANGLE_FAN"
		end

	frozen GL_QUADS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_QUADS"
		end

	frozen GL_QUAD_STRIP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_QUAD_STRIP"
		end

	frozen GL_POLYGON_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_BIT"
		end

	frozen GL_POLYGON: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON"
		end

	frozen GL_POLYGON_STIPPLE_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_STIPPLE_BIT"
		end

	frozen GL_PIXEL_MODE_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MODE_BIT"
		end

	frozen GL_LIGHTING_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHTING_BIT"
		end

	frozen GL_FOG_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FOG_BIT"
		end

	frozen GL_DEPTH_BUFFER_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_BUFFER_BIT"
		end

	frozen GL_ACCUM: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ACCUM"
		end

	frozen GL_LOAD: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LOAD"
		end

	frozen GL_RETURN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RETURN"
		end

	frozen GL_MULT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MULT"
		end

	frozen GL_ADD: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ADD"
		end

	frozen GL_NEVER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NEVER"
		end

	frozen GL_ACCUM_BUFFER_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ACCUM_BUFFER_BIT"
		end

	frozen GL_LESS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LESS"
		end

	frozen GL_EQUAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EQUAL"
		end

	frozen GL_LEQUAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LEQUAL"
		end

	frozen GL_GREATER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_GREATER"
		end

	frozen GL_NOTEQUAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NOTEQUAL"
		end

	frozen GL_GEQUAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_GEQUAL"
		end

	frozen GL_ALWAYS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALWAYS"
		end

	frozen GL_SRC_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SRC_COLOR"
		end

	frozen GL_ONE_MINUS_SRC_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ONE_MINUS_SRC_COLOR"
		end

	frozen GL_SRC_ALPHA: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SRC_ALPHA"
		end

	frozen GL_ONE_MINUS_SRC_ALPHA: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ONE_MINUS_SRC_ALPHA"
		end

	frozen GL_DST_ALPHA: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DST_ALPHA"
		end

	frozen GL_ONE_MINUS_DST_ALPHA: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ONE_MINUS_DST_ALPHA"
		end

	frozen GL_DST_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DST_COLOR"
		end

	frozen GL_ONE_MINUS_DST_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ONE_MINUS_DST_COLOR"
		end

	frozen GL_SRC_ALPHA_SATURATE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SRC_ALPHA_SATURATE"
		end

	frozen GL_STENCIL_BUFFER_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_BUFFER_BIT"
		end

	frozen GL_FRONT_LEFT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FRONT_LEFT"
		end

	frozen GL_FRONT_RIGHT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FRONT_RIGHT"
		end

	frozen GL_BACK_LEFT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BACK_LEFT"
		end

	frozen GL_BACK_RIGHT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BACK_RIGHT"
		end

	frozen GL_FRONT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FRONT"
		end

	frozen GL_BACK: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BACK"
		end

	frozen GL_LEFT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LEFT"
		end

	frozen GL_RIGHT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RIGHT"
		end

	frozen GL_FRONT_AND_BACK: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FRONT_AND_BACK"
		end

	frozen GL_AUX0: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AUX0"
		end

	frozen GL_AUX1: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AUX1"
		end

	frozen GL_AUX2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AUX2"
		end

	frozen GL_AUX3: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AUX3"
		end

	frozen GL_INVALID_ENUM: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INVALID_ENUM"
		end

	frozen GL_INVALID_VALUE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INVALID_VALUE"
		end

	frozen GL_INVALID_OPERATION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INVALID_OPERATION"
		end

	frozen GL_STACK_OVERFLOW: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STACK_OVERFLOW"
		end

	frozen GL_STACK_UNDERFLOW: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STACK_UNDERFLOW"
		end

	frozen GL_OUT_OF_MEMORY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_OUT_OF_MEMORY"
		end

	frozen GL_2D: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_2D"
		end

	frozen GL_3D: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_3D"
		end

	frozen GL_3D_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_3D_COLOR"
		end

	frozen GL_3D_COLOR_TEXTURE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_3D_COLOR_TEXTURE"
		end

	frozen GL_4D_COLOR_TEXTURE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_4D_COLOR_TEXTURE"
		end

	frozen GL_PASS_THROUGH_TOKEN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PASS_THROUGH_TOKEN"
		end

	frozen GL_POINT_TOKEN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POINT_TOKEN"
		end

	frozen GL_LINE_TOKEN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_TOKEN"
		end

	frozen GL_POLYGON_TOKEN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_TOKEN"
		end

	frozen GL_BITMAP_TOKEN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BITMAP_TOKEN"
		end

	frozen GL_DRAW_PIXEL_TOKEN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DRAW_PIXEL_TOKEN"
		end

	frozen GL_COPY_PIXEL_TOKEN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COPY_PIXEL_TOKEN"
		end

	frozen GL_LINE_RESET_TOKEN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_RESET_TOKEN"
		end

	frozen GL_EXP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EXP"
		end

	frozen GL_VIEWPORT_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_VIEWPORT_BIT"
		end

	frozen GL_EXP2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EXP2"
		end

	frozen GL_CW: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CW"
		end

	frozen GL_CCW: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CCW"
		end

	frozen GL_COEFF: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COEFF"
		end

	frozen GL_ORDER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ORDER"
		end

	frozen GL_DOMAIN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DOMAIN"
		end

	frozen GL_CURRENT_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_COLOR"
		end

	frozen GL_CURRENT_INDEX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_INDEX"
		end

	frozen GL_CURRENT_NORMAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_NORMAL"
		end

	frozen GL_CURRENT_TEXTURE_COORDS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_TEXTURE_COORDS"
		end

	frozen GL_CURRENT_RASTER_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_RASTER_COLOR"
		end

	frozen GL_CURRENT_RASTER_INDEX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_RASTER_INDEX"
		end

	frozen GL_CURRENT_RASTER_TEXTURE_COORDS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_RASTER_TEXTURE_COORDS"
		end

	frozen GL_CURRENT_RASTER_POSITION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_RASTER_POSITION"
		end

	frozen GL_CURRENT_RASTER_POSITION_VALID: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_RASTER_POSITION_VALID"
		end

	frozen GL_CURRENT_RASTER_DISTANCE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CURRENT_RASTER_DISTANCE"
		end

	frozen GL_POINT_SMOOTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POINT_SMOOTH"
		end

	frozen GL_POINT_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POINT_SIZE"
		end

	frozen GL_POINT_SIZE_RANGE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POINT_SIZE_RANGE"
		end

	frozen GL_POINT_SIZE_GRANULARITY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POINT_SIZE_GRANULARITY"
		end

	frozen GL_LINE_SMOOTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_SMOOTH"
		end

	frozen GL_LINE_WIDTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_WIDTH"
		end

	frozen GL_LINE_WIDTH_RANGE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_WIDTH_RANGE"
		end

	frozen GL_LINE_WIDTH_GRANULARITY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_WIDTH_GRANULARITY"
		end

	frozen GL_LINE_STIPPLE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_STIPPLE"
		end

	frozen GL_LINE_STIPPLE_PATTERN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_STIPPLE_PATTERN"
		end

	frozen GL_LINE_STIPPLE_REPEAT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_STIPPLE_REPEAT"
		end

	frozen GL_LIST_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIST_MODE"
		end

	frozen GL_MAX_LIST_NESTING: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_LIST_NESTING"
		end

	frozen GL_LIST_BASE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIST_BASE"
		end

	frozen GL_LIST_INDEX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIST_INDEX"
		end

	frozen GL_POLYGON_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_MODE"
		end

	frozen GL_POLYGON_SMOOTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_SMOOTH"
		end

	frozen GL_POLYGON_STIPPLE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_STIPPLE"
		end

	frozen GL_EDGE_FLAG: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EDGE_FLAG"
		end

	frozen GL_CULL_FACE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CULL_FACE"
		end

	frozen GL_CULL_FACE_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CULL_FACE_MODE"
		end

	frozen GL_FRONT_FACE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FRONT_FACE"
		end

	frozen GL_LIGHTING: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHTING"
		end

	frozen GL_LIGHT_MODEL_LOCAL_VIEWER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT_MODEL_LOCAL_VIEWER"
		end

	frozen GL_LIGHT_MODEL_TWO_SIDE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT_MODEL_TWO_SIDE"
		end

	frozen GL_LIGHT_MODEL_AMBIENT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT_MODEL_AMBIENT"
		end

	frozen GL_SHADE_MODEL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SHADE_MODEL"
		end

	frozen GL_COLOR_MATERIAL_FACE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_MATERIAL_FACE"
		end

	frozen GL_COLOR_MATERIAL_PARAMETER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_MATERIAL_PARAMETER"
		end

	frozen GL_COLOR_MATERIAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_MATERIAL"
		end

	frozen GL_FOG: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FOG"
		end

	frozen GL_FOG_INDEX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FOG_INDEX"
		end

	frozen GL_FOG_DENSITY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FOG_DENSITY"
		end

	frozen GL_FOG_START: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FOG_START"
		end

	frozen GL_FOG_END: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FOG_END"
		end

	frozen GL_FOG_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FOG_MODE"
		end

	frozen GL_FOG_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FOG_COLOR"
		end

	frozen GL_DEPTH_RANGE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_RANGE"
		end

	frozen GL_DEPTH_TEST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_TEST"
		end

	frozen GL_DEPTH_WRITEMASK: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_WRITEMASK"
		end

	frozen GL_DEPTH_CLEAR_VALUE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_CLEAR_VALUE"
		end

	frozen GL_DEPTH_FUNC: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_FUNC"
		end

	frozen GL_ACCUM_CLEAR_VALUE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ACCUM_CLEAR_VALUE"
		end

	frozen GL_STENCIL_TEST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_TEST"
		end

	frozen GL_STENCIL_CLEAR_VALUE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_CLEAR_VALUE"
		end

	frozen GL_STENCIL_FUNC: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_FUNC"
		end

	frozen GL_STENCIL_VALUE_MASK: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_VALUE_MASK"
		end

	frozen GL_STENCIL_FAIL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_FAIL"
		end

	frozen GL_STENCIL_PASS_DEPTH_FAIL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_PASS_DEPTH_FAIL"
		end

	frozen GL_STENCIL_PASS_DEPTH_PASS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_PASS_DEPTH_PASS"
		end

	frozen GL_STENCIL_REF: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_REF"
		end

	frozen GL_STENCIL_WRITEMASK: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_WRITEMASK"
		end

	frozen GL_MATRIX_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MATRIX_MODE"
		end

	frozen GL_NORMALIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NORMALIZE"
		end

	frozen GL_VIEWPORT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_VIEWPORT"
		end

	frozen GL_MODELVIEW_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MODELVIEW_STACK_DEPTH"
		end

	frozen GL_PROJECTION_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PROJECTION_STACK_DEPTH"
		end

	frozen GL_TEXTURE_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_STACK_DEPTH"
		end

	frozen GL_MODELVIEW_MATRIX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MODELVIEW_MATRIX"
		end

	frozen GL_PROJECTION_MATRIX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PROJECTION_MATRIX"
		end

	frozen GL_TEXTURE_MATRIX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_MATRIX"
		end

	frozen GL_ATTRIB_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ATTRIB_STACK_DEPTH"
		end

	frozen GL_CLIENT_ATTRIB_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIENT_ATTRIB_STACK_DEPTH"
		end

	frozen GL_ALPHA_TEST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA_TEST"
		end

	frozen GL_ALPHA_TEST_FUNC: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA_TEST_FUNC"
		end

	frozen GL_ALPHA_TEST_REF: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA_TEST_REF"
		end

	frozen GL_DITHER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DITHER"
		end

	frozen GL_BLEND_DST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BLEND_DST"
		end

	frozen GL_BLEND_SRC: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BLEND_SRC"
		end

	frozen GL_BLEND: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BLEND"
		end

	frozen GL_LOGIC_OP_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LOGIC_OP_MODE"
		end

	frozen GL_INDEX_LOGIC_OP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_LOGIC_OP"
		end

	frozen GL_COLOR_LOGIC_OP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_LOGIC_OP"
		end

	frozen GL_AUX_BUFFERS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AUX_BUFFERS"
		end

	frozen GL_DRAW_BUFFER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DRAW_BUFFER"
		end

	frozen GL_READ_BUFFER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_READ_BUFFER"
		end

	frozen GL_SCISSOR_BOX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SCISSOR_BOX"
		end

	frozen GL_SCISSOR_TEST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SCISSOR_TEST"
		end

	frozen GL_INDEX_CLEAR_VALUE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_CLEAR_VALUE"
		end

	frozen GL_INDEX_WRITEMASK: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_WRITEMASK"
		end

	frozen GL_COLOR_CLEAR_VALUE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_CLEAR_VALUE"
		end

	frozen GL_COLOR_WRITEMASK: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_WRITEMASK"
		end

	frozen GL_INDEX_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_MODE"
		end

	frozen GL_RGBA_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGBA_MODE"
		end

	frozen GL_DOUBLEBUFFER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DOUBLEBUFFER"
		end

	frozen GL_STEREO: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STEREO"
		end

	frozen GL_RENDER_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RENDER_MODE"
		end

	frozen GL_PERSPECTIVE_CORRECTION_HINT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PERSPECTIVE_CORRECTION_HINT"
		end

	frozen GL_POINT_SMOOTH_HINT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POINT_SMOOTH_HINT"
		end

	frozen GL_LINE_SMOOTH_HINT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE_SMOOTH_HINT"
		end

	frozen GL_POLYGON_SMOOTH_HINT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_SMOOTH_HINT"
		end

	frozen GL_FOG_HINT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FOG_HINT"
		end

	frozen GL_TEXTURE_GEN_S: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_GEN_S"
		end

	frozen GL_TEXTURE_GEN_T: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_GEN_T"
		end

	frozen GL_TEXTURE_GEN_R: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_GEN_R"
		end

	frozen GL_TEXTURE_GEN_Q: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_GEN_Q"
		end

	frozen GL_PIXEL_MAP_I_TO_I: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_I"
		end

	frozen GL_PIXEL_MAP_S_TO_S: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_S_TO_S"
		end

	frozen GL_PIXEL_MAP_I_TO_R: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_R"
		end

	frozen GL_PIXEL_MAP_I_TO_G: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_G"
		end

	frozen GL_PIXEL_MAP_I_TO_B: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_B"
		end

	frozen GL_PIXEL_MAP_I_TO_A: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_A"
		end

	frozen GL_PIXEL_MAP_R_TO_R: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_R_TO_R"
		end

	frozen GL_PIXEL_MAP_G_TO_G: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_G_TO_G"
		end

	frozen GL_PIXEL_MAP_B_TO_B: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_B_TO_B"
		end

	frozen GL_PIXEL_MAP_A_TO_A: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_A_TO_A"
		end

	frozen GL_PIXEL_MAP_I_TO_I_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_I_SIZE"
		end

	frozen GL_PIXEL_MAP_S_TO_S_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_S_TO_S_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_R_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_R_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_G_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_G_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_B_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_B_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_A_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_I_TO_A_SIZE"
		end

	frozen GL_PIXEL_MAP_R_TO_R_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_R_TO_R_SIZE"
		end

	frozen GL_PIXEL_MAP_G_TO_G_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_G_TO_G_SIZE"
		end

	frozen GL_PIXEL_MAP_B_TO_B_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_B_TO_B_SIZE"
		end

	frozen GL_PIXEL_MAP_A_TO_A_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PIXEL_MAP_A_TO_A_SIZE"
		end

	frozen GL_UNPACK_SWAP_BYTES: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_UNPACK_SWAP_BYTES"
		end

	frozen GL_UNPACK_LSB_FIRST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_UNPACK_LSB_FIRST"
		end

	frozen GL_UNPACK_ROW_LENGTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_UNPACK_ROW_LENGTH"
		end

	frozen GL_UNPACK_SKIP_ROWS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_UNPACK_SKIP_ROWS"
		end

	frozen GL_UNPACK_SKIP_PIXELS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_UNPACK_SKIP_PIXELS"
		end

	frozen GL_UNPACK_ALIGNMENT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_UNPACK_ALIGNMENT"
		end

	frozen GL_PACK_SWAP_BYTES: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PACK_SWAP_BYTES"
		end

	frozen GL_PACK_LSB_FIRST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PACK_LSB_FIRST"
		end

	frozen GL_PACK_ROW_LENGTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PACK_ROW_LENGTH"
		end

	frozen GL_PACK_SKIP_ROWS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PACK_SKIP_ROWS"
		end

	frozen GL_PACK_SKIP_PIXELS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PACK_SKIP_PIXELS"
		end

	frozen GL_PACK_ALIGNMENT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PACK_ALIGNMENT"
		end

	frozen GL_MAP_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP_COLOR"
		end

	frozen GL_MAP_STENCIL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP_STENCIL"
		end

	frozen GL_INDEX_SHIFT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_SHIFT"
		end

	frozen GL_INDEX_OFFSET: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_OFFSET"
		end

	frozen GL_RED_SCALE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RED_SCALE"
		end

	frozen GL_RED_BIAS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RED_BIAS"
		end

	frozen GL_ZOOM_X: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ZOOM_X"
		end

	frozen GL_ZOOM_Y: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ZOOM_Y"
		end

	frozen GL_GREEN_SCALE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_GREEN_SCALE"
		end

	frozen GL_GREEN_BIAS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_GREEN_BIAS"
		end

	frozen GL_BLUE_SCALE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BLUE_SCALE"
		end

	frozen GL_BLUE_BIAS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BLUE_BIAS"
		end

	frozen GL_ALPHA_SCALE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA_SCALE"
		end

	frozen GL_ALPHA_BIAS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA_BIAS"
		end

	frozen GL_DEPTH_SCALE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_SCALE"
		end

	frozen GL_DEPTH_BIAS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_BIAS"
		end

	frozen GL_MAX_EVAL_ORDER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_EVAL_ORDER"
		end

	frozen GL_MAX_LIGHTS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_LIGHTS"
		end

	frozen GL_MAX_CLIP_PLANES: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_CLIP_PLANES"
		end

	frozen GL_MAX_TEXTURE_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_TEXTURE_SIZE"
		end

	frozen GL_MAX_PIXEL_MAP_TABLE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_PIXEL_MAP_TABLE"
		end

	frozen GL_MAX_ATTRIB_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_ATTRIB_STACK_DEPTH"
		end

	frozen GL_MAX_MODELVIEW_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_MODELVIEW_STACK_DEPTH"
		end

	frozen GL_MAX_NAME_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_NAME_STACK_DEPTH"
		end

	frozen GL_MAX_PROJECTION_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_PROJECTION_STACK_DEPTH"
		end

	frozen GL_MAX_TEXTURE_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_TEXTURE_STACK_DEPTH"
		end

	frozen GL_MAX_VIEWPORT_DIMS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_VIEWPORT_DIMS"
		end

	frozen GL_MAX_CLIENT_ATTRIB_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAX_CLIENT_ATTRIB_STACK_DEPTH"
		end

	frozen GL_SUBPIXEL_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SUBPIXEL_BITS"
		end

	frozen GL_INDEX_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_BITS"
		end

	frozen GL_RED_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RED_BITS"
		end

	frozen GL_GREEN_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_GREEN_BITS"
		end

	frozen GL_BLUE_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BLUE_BITS"
		end

	frozen GL_ALPHA_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA_BITS"
		end

	frozen GL_DEPTH_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_BITS"
		end

	frozen GL_STENCIL_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_BITS"
		end

	frozen GL_ACCUM_RED_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ACCUM_RED_BITS"
		end

	frozen GL_ACCUM_GREEN_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ACCUM_GREEN_BITS"
		end

	frozen GL_ACCUM_BLUE_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ACCUM_BLUE_BITS"
		end

	frozen GL_ACCUM_ALPHA_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ACCUM_ALPHA_BITS"
		end

	frozen GL_NAME_STACK_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NAME_STACK_DEPTH"
		end

	frozen GL_AUTO_NORMAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AUTO_NORMAL"
		end

	frozen GL_MAP1_COLOR_4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_COLOR_4"
		end

	frozen GL_MAP1_INDEX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_INDEX"
		end

	frozen GL_MAP1_NORMAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_NORMAL"
		end

	frozen GL_MAP1_TEXTURE_COORD_1: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_TEXTURE_COORD_1"
		end

	frozen GL_MAP1_TEXTURE_COORD_2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_TEXTURE_COORD_2"
		end

	frozen GL_MAP1_TEXTURE_COORD_3: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_TEXTURE_COORD_3"
		end

	frozen GL_MAP1_TEXTURE_COORD_4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_TEXTURE_COORD_4"
		end

	frozen GL_MAP1_VERTEX_3: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_VERTEX_3"
		end

	frozen GL_MAP1_VERTEX_4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_VERTEX_4"
		end

	frozen GL_MAP2_COLOR_4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_COLOR_4"
		end

	frozen GL_MAP2_INDEX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_INDEX"
		end

	frozen GL_MAP2_NORMAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_NORMAL"
		end

	frozen GL_MAP2_TEXTURE_COORD_1: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_TEXTURE_COORD_1"
		end

	frozen GL_MAP2_TEXTURE_COORD_2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_TEXTURE_COORD_2"
		end

	frozen GL_MAP2_TEXTURE_COORD_3: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_TEXTURE_COORD_3"
		end

	frozen GL_MAP2_TEXTURE_COORD_4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_TEXTURE_COORD_4"
		end

	frozen GL_MAP2_VERTEX_3: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_VERTEX_3"
		end

	frozen GL_MAP2_VERTEX_4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_VERTEX_4"
		end

	frozen GL_MAP1_GRID_DOMAIN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_GRID_DOMAIN"
		end

	frozen GL_MAP1_GRID_SEGMENTS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP1_GRID_SEGMENTS"
		end

	frozen GL_MAP2_GRID_DOMAIN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_GRID_DOMAIN"
		end

	frozen GL_MAP2_GRID_SEGMENTS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MAP2_GRID_SEGMENTS"
		end

	frozen GL_TEXTURE_1D: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_1D"
		end

	frozen GL_TEXTURE_2D: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_2D"
		end

	frozen GL_FEEDBACK_BUFFER_POINTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FEEDBACK_BUFFER_POINTER"
		end

	frozen GL_FEEDBACK_BUFFER_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FEEDBACK_BUFFER_SIZE"
		end

	frozen GL_FEEDBACK_BUFFER_TYPE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FEEDBACK_BUFFER_TYPE"
		end

	frozen GL_SELECTION_BUFFER_POINTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SELECTION_BUFFER_POINTER"
		end

	frozen GL_SELECTION_BUFFER_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SELECTION_BUFFER_SIZE"
		end

	frozen GL_TEXTURE_WIDTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_WIDTH"
		end

	frozen GL_TRANSFORM_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TRANSFORM_BIT"
		end

	frozen GL_TEXTURE_HEIGHT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_HEIGHT"
		end

	frozen GL_TEXTURE_INTERNAL_FORMAT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_INTERNAL_FORMAT"
		end

	frozen GL_TEXTURE_BORDER_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_BORDER_COLOR"
		end

	frozen GL_TEXTURE_BORDER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_BORDER"
		end

	frozen GL_DONT_CARE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DONT_CARE"
		end

	frozen GL_FASTEST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FASTEST"
		end

	frozen GL_NICEST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NICEST"
		end

	frozen GL_AMBIENT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AMBIENT"
		end

	frozen GL_DIFFUSE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DIFFUSE"
		end

	frozen GL_SPECULAR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SPECULAR"
		end

	frozen GL_POSITION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POSITION"
		end

	frozen GL_SPOT_DIRECTION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SPOT_DIRECTION"
		end

	frozen GL_SPOT_EXPONENT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SPOT_EXPONENT"
		end

	frozen GL_SPOT_CUTOFF: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SPOT_CUTOFF"
		end

	frozen GL_CONSTANT_ATTENUATION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CONSTANT_ATTENUATION"
		end

	frozen GL_LINEAR_ATTENUATION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINEAR_ATTENUATION"
		end

	frozen GL_QUADRATIC_ATTENUATION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_QUADRATIC_ATTENUATION"
		end

	frozen GL_COMPILE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COMPILE"
		end

	frozen GL_COMPILE_AND_EXECUTE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COMPILE_AND_EXECUTE"
		end

	frozen GL_BYTE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BYTE"
		end

	frozen GL_UNSIGNED_BYTE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_UNSIGNED_BYTE"
		end

	frozen GL_SHORT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SHORT"
		end

	frozen GL_UNSIGNED_SHORT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_UNSIGNED_SHORT"
		end

	frozen GL_INT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INT"
		end

	frozen GL_UNSIGNED_INT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_UNSIGNED_INT"
		end

	frozen GL_FLOAT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FLOAT"
		end

	frozen GL_2_BYTES: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_2_BYTES"
		end

	frozen GL_3_BYTES: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_3_BYTES"
		end

	frozen GL_4_BYTES: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_4_BYTES"
		end

	frozen GL_DOUBLE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DOUBLE"
		end

	frozen GL_CLEAR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLEAR"
		end

	frozen GL_AND: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AND"
		end

	frozen GL_AND_REVERSE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AND_REVERSE"
		end

	frozen GL_COPY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COPY"
		end

	frozen GL_AND_INVERTED: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AND_INVERTED"
		end

	frozen GL_NOOP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NOOP"
		end

	frozen GL_XOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_XOR"
		end

	frozen GL_OR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_OR"
		end

	frozen GL_NOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NOR"
		end

	frozen GL_EQUIV: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EQUIV"
		end

	frozen GL_INVERT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INVERT"
		end

	frozen GL_OR_REVERSE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_OR_REVERSE"
		end

	frozen GL_COPY_INVERTED: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COPY_INVERTED"
		end

	frozen GL_OR_INVERTED: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_OR_INVERTED"
		end

	frozen GL_NAND: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NAND"
		end

	frozen GL_SET: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SET"
		end

	frozen GL_EMISSION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EMISSION"
		end

	frozen GL_SHININESS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SHININESS"
		end

	frozen GL_AMBIENT_AND_DIFFUSE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_AMBIENT_AND_DIFFUSE"
		end

	frozen GL_COLOR_INDEXES: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_INDEXES"
		end

	frozen GL_MODELVIEW: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MODELVIEW"
		end

	frozen GL_PROJECTION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PROJECTION"
		end

	frozen GL_TEXTURE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE"
		end

	frozen GL_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR"
		end

	frozen GL_DEPTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH"
		end

	frozen GL_STENCIL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL"
		end

	frozen GL_COLOR_INDEX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_INDEX"
		end

	frozen GL_STENCIL_INDEX: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_STENCIL_INDEX"
		end

	frozen GL_DEPTH_COMPONENT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DEPTH_COMPONENT"
		end

	frozen GL_RED: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RED"
		end

	frozen GL_GREEN: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_GREEN"
		end

	frozen GL_BLUE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BLUE"
		end

	frozen GL_ALPHA: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA"
		end

	frozen GL_RGB: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGB"
		end

	frozen GL_RGBA: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGBA"
		end

	frozen GL_LUMINANCE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE"
		end

	frozen GL_LUMINANCE_ALPHA: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE_ALPHA"
		end

	frozen GL_BITMAP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_BITMAP"
		end

	frozen GL_POINT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POINT"
		end

	frozen GL_LINE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINE"
		end

	frozen GL_FILL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FILL"
		end

	frozen GL_RENDER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RENDER"
		end

	frozen GL_FEEDBACK: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FEEDBACK"
		end

	frozen GL_SELECT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SELECT"
		end

	frozen GL_FLAT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_FLAT"
		end

	frozen GL_SMOOTH: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SMOOTH"
		end

	frozen GL_KEEP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_KEEP"
		end

	frozen GL_REPLACE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_REPLACE"
		end

	frozen GL_INCR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INCR"
		end

	frozen GL_DECR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DECR"
		end

	frozen GL_VENDOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_VENDOR"
		end

	frozen GL_RENDERER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RENDERER"
		end

	frozen GL_VERSION: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_VERSION"
		end

	frozen GL_EXTENSIONS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EXTENSIONS"
		end

	frozen GL_S: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_S"
		end

	frozen GL_ENABLE_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ENABLE_BIT"
		end

	frozen GL_T: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_T"
		end

	frozen GL_R: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_R"
		end

	frozen GL_Q: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_Q"
		end

	frozen GL_MODULATE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_MODULATE"
		end

	frozen GL_DECAL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_DECAL"
		end

	frozen GL_TEXTURE_ENV_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_ENV_MODE"
		end

	frozen GL_TEXTURE_ENV_COLOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_ENV_COLOR"
		end

	frozen GL_TEXTURE_ENV: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_ENV"
		end

	frozen GL_EYE_LINEAR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EYE_LINEAR"
		end

	frozen GL_OBJECT_LINEAR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_OBJECT_LINEAR"
		end

	frozen GL_SPHERE_MAP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SPHERE_MAP"
		end

	frozen GL_TEXTURE_GEN_MODE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_GEN_MODE"
		end

	frozen GL_OBJECT_PLANE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_OBJECT_PLANE"
		end

	frozen GL_EYE_PLANE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EYE_PLANE"
		end

	frozen GL_NEAREST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NEAREST"
		end

	frozen GL_LINEAR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINEAR"
		end

	frozen GL_NEAREST_MIPMAP_NEAREST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NEAREST_MIPMAP_NEAREST"
		end

	frozen GL_LINEAR_MIPMAP_NEAREST: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINEAR_MIPMAP_NEAREST"
		end

	frozen GL_NEAREST_MIPMAP_LINEAR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NEAREST_MIPMAP_LINEAR"
		end

	frozen GL_LINEAR_MIPMAP_LINEAR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LINEAR_MIPMAP_LINEAR"
		end

	frozen GL_TEXTURE_MAG_FILTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_MAG_FILTER"
		end

	frozen GL_TEXTURE_MIN_FILTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_MIN_FILTER"
		end

	frozen GL_TEXTURE_WRAP_S: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_WRAP_S"
		end

	frozen GL_TEXTURE_WRAP_T: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_WRAP_T"
		end

	frozen GL_CLAMP: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLAMP"
		end

	frozen GL_REPEAT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_REPEAT"
		end

	frozen GL_POLYGON_OFFSET_UNITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_OFFSET_UNITS"
		end

	frozen GL_POLYGON_OFFSET_POINT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_OFFSET_POINT"
		end

	frozen GL_POLYGON_OFFSET_LINE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_OFFSET_LINE"
		end

	frozen GL_R3_G3_B2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_R3_G3_B2"
		end

	frozen GL_V2F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_V2F"
		end

	frozen GL_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_V3F"
		end

	frozen GL_C4UB_V2F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_C4UB_V2F"
		end

	frozen GL_C4UB_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_C4UB_V3F"
		end

	frozen GL_C3F_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_C3F_V3F"
		end

	frozen GL_N3F_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_N3F_V3F"
		end

	frozen GL_C4F_N3F_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_C4F_N3F_V3F"
		end

	frozen GL_T2F_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_T2F_V3F"
		end

	frozen GL_T4F_V4F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_T4F_V4F"
		end

	frozen GL_T2F_C4UB_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_T2F_C4UB_V3F"
		end

	frozen GL_T2F_C3F_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_T2F_C3F_V3F"
		end

	frozen GL_T2F_N3F_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_T2F_N3F_V3F"
		end

	frozen GL_T2F_C4F_N3F_V3F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_T2F_C4F_N3F_V3F"
		end

	frozen GL_T4F_C4F_N3F_V4F: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_T4F_C4F_N3F_V4F"
		end

	frozen GL_CLIP_PLANE0: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIP_PLANE0"
		end

	frozen GL_CLIP_PLANE1: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIP_PLANE1"
		end

	frozen GL_CLIP_PLANE2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIP_PLANE2"
		end

	frozen GL_CLIP_PLANE3: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIP_PLANE3"
		end

	frozen GL_CLIP_PLANE4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIP_PLANE4"
		end

	frozen GL_CLIP_PLANE5: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIP_PLANE5"
		end

	frozen GL_LIGHT0: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT0"
		end

	frozen GL_COLOR_BUFFER_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_BUFFER_BIT"
		end

	frozen GL_LIGHT1: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT1"
		end

	frozen GL_LIGHT2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT2"
		end

	frozen GL_LIGHT3: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT3"
		end

	frozen GL_LIGHT4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT4"
		end

	frozen GL_LIGHT5: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT5"
		end

	frozen GL_LIGHT6: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT6"
		end

	frozen GL_LIGHT7: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIGHT7"
		end

	frozen GL_HINT_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_HINT_BIT"
		end

	frozen GL_POLYGON_OFFSET_FILL: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_OFFSET_FILL"
		end

	frozen GL_POLYGON_OFFSET_FACTOR: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_POLYGON_OFFSET_FACTOR"
		end

	frozen GL_ALPHA4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA4"
		end

	frozen GL_ALPHA8: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA8"
		end

	frozen GL_ALPHA12: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA12"
		end

	frozen GL_ALPHA16: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALPHA16"
		end

	frozen GL_LUMINANCE4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE4"
		end

	frozen GL_LUMINANCE8: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE8"
		end

	frozen GL_LUMINANCE12: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE12"
		end

	frozen GL_LUMINANCE16: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE16"
		end

	frozen GL_LUMINANCE4_ALPHA4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE4_ALPHA4"
		end

	frozen GL_LUMINANCE6_ALPHA2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE6_ALPHA2"
		end

	frozen GL_LUMINANCE8_ALPHA8: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE8_ALPHA8"
		end

	frozen GL_LUMINANCE12_ALPHA4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE12_ALPHA4"
		end

	frozen GL_LUMINANCE12_ALPHA12: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE12_ALPHA12"
		end

	frozen GL_LUMINANCE16_ALPHA16: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LUMINANCE16_ALPHA16"
		end

	frozen GL_INTENSITY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INTENSITY"
		end

	frozen GL_INTENSITY4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INTENSITY4"
		end

	frozen GL_INTENSITY8: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INTENSITY8"
		end

	frozen GL_INTENSITY12: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INTENSITY12"
		end

	frozen GL_INTENSITY16: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INTENSITY16"
		end

	frozen GL_RGB4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGB4"
		end

	frozen GL_RGB5: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGB5"
		end

	frozen GL_RGB8: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGB8"
		end

	frozen GL_RGB10: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGB10"
		end

	frozen GL_RGB12: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGB12"
		end

	frozen GL_RGB16: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGB16"
		end

	frozen GL_RGBA2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGBA2"
		end

	frozen GL_RGBA4: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGBA4"
		end

	frozen GL_RGB5_A1: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGB5_A1"
		end

	frozen GL_RGBA8: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGBA8"
		end

	frozen GL_RGB10_A2: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGB10_A2"
		end

	frozen GL_RGBA12: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGBA12"
		end

	frozen GL_RGBA16: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_RGBA16"
		end

	frozen GL_TEXTURE_RED_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_RED_SIZE"
		end

	frozen GL_TEXTURE_GREEN_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_GREEN_SIZE"
		end

	frozen GL_TEXTURE_BLUE_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_BLUE_SIZE"
		end

	frozen GL_TEXTURE_ALPHA_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_ALPHA_SIZE"
		end

	frozen GL_TEXTURE_LUMINANCE_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_LUMINANCE_SIZE"
		end

	frozen GL_TEXTURE_INTENSITY_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_INTENSITY_SIZE"
		end

	frozen GL_PROXY_TEXTURE_1D: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PROXY_TEXTURE_1D"
		end

	frozen GL_PROXY_TEXTURE_2D: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_PROXY_TEXTURE_2D"
		end

	frozen GL_TEXTURE_PRIORITY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_PRIORITY"
		end

	frozen GL_TEXTURE_RESIDENT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_RESIDENT"
		end

	frozen GL_TEXTURE_BINDING_1D: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_BINDING_1D"
		end

	frozen GL_TEXTURE_BINDING_2D: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_BINDING_2D"
		end

	frozen GL_VERTEX_ARRAY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_VERTEX_ARRAY"
		end

	frozen GL_NORMAL_ARRAY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NORMAL_ARRAY"
		end

	frozen GL_COLOR_ARRAY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_ARRAY"
		end

	frozen GL_INDEX_ARRAY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_ARRAY"
		end

	frozen GL_TEXTURE_COORD_ARRAY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_COORD_ARRAY"
		end

	frozen GL_EDGE_FLAG_ARRAY: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EDGE_FLAG_ARRAY"
		end

	frozen GL_VERTEX_ARRAY_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_VERTEX_ARRAY_SIZE"
		end

	frozen GL_VERTEX_ARRAY_TYPE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_VERTEX_ARRAY_TYPE"
		end

	frozen GL_VERTEX_ARRAY_STRIDE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_VERTEX_ARRAY_STRIDE"
		end

	frozen GL_NORMAL_ARRAY_TYPE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NORMAL_ARRAY_TYPE"
		end

	frozen GL_NORMAL_ARRAY_STRIDE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NORMAL_ARRAY_STRIDE"
		end

	frozen GL_COLOR_ARRAY_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_ARRAY_SIZE"
		end

	frozen GL_COLOR_ARRAY_TYPE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_ARRAY_TYPE"
		end

	frozen GL_COLOR_ARRAY_STRIDE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_ARRAY_STRIDE"
		end

	frozen GL_INDEX_ARRAY_TYPE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_ARRAY_TYPE"
		end

	frozen GL_INDEX_ARRAY_STRIDE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_ARRAY_STRIDE"
		end

	frozen GL_TEXTURE_COORD_ARRAY_SIZE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_COORD_ARRAY_SIZE"
		end

	frozen GL_TEXTURE_COORD_ARRAY_TYPE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_COORD_ARRAY_TYPE"
		end

	frozen GL_TEXTURE_COORD_ARRAY_STRIDE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_COORD_ARRAY_STRIDE"
		end

	frozen GL_EDGE_FLAG_ARRAY_STRIDE: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EDGE_FLAG_ARRAY_STRIDE"
		end

	frozen GL_VERTEX_ARRAY_POINTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_VERTEX_ARRAY_POINTER"
		end

	frozen GL_NORMAL_ARRAY_POINTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_NORMAL_ARRAY_POINTER"
		end

	frozen GL_COLOR_ARRAY_POINTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_ARRAY_POINTER"
		end

	frozen GL_INDEX_ARRAY_POINTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_INDEX_ARRAY_POINTER"
		end

	frozen GL_TEXTURE_COORD_ARRAY_POINTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_COORD_ARRAY_POINTER"
		end

	frozen GL_EDGE_FLAG_ARRAY_POINTER: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EDGE_FLAG_ARRAY_POINTER"
		end

	frozen GL_COLOR_INDEX1_EXT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_INDEX1_EXT"
		end

	frozen GL_COLOR_INDEX2_EXT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_INDEX2_EXT"
		end

	frozen GL_COLOR_INDEX4_EXT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_INDEX4_EXT"
		end

	frozen GL_COLOR_INDEX8_EXT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_INDEX8_EXT"
		end

	frozen GL_COLOR_INDEX12_EXT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_INDEX12_EXT"
		end

	frozen GL_COLOR_INDEX16_EXT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_COLOR_INDEX16_EXT"
		end

	frozen GL_EVAL_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_EVAL_BIT"
		end

	frozen GL_LIST_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_LIST_BIT"
		end

	frozen GL_TEXTURE_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_TEXTURE_BIT"
		end

	frozen GL_SCISSOR_BIT: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_SCISSOR_BIT"
		end

	frozen GL_ALL_ATTRIB_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_ALL_ATTRIB_BITS"
		end

	frozen GL_CLIENT_ALL_ATTRIB_BITS: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return GL_CLIENT_ALL_ATTRIB_BITS"
		end

	frozen glAccum(a_op: NATURAL; a_value: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glAccum ((GLenum)$a_op, (GLfloat)$a_value)"
		end

	frozen glAlphaFunc(a_func: NATURAL; a_ref: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glAlphaFunc ((GLenum)$a_func, (GLclampf)$a_ref)"
		end

	frozen glAreTexturesResident(a_n: INTEGER; a_textures: POINTER; a_residences: POINTER): NATURAL_8
		external
			"C inline use <gl_order.h>"
		alias
			"return glAreTexturesResident ((GLsizei)$a_n, (GLuint *)$a_textures, (GLboolean *)$a_residences)"
		end

	frozen glArrayElement(a_i: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glArrayElement ((GLint)$a_i)"
		end

	frozen glBegin(a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glBegin ((GLenum)$a_mode)"
		end

	frozen glBindTexture(a_target: NATURAL; a_texture: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glBindTexture ((GLenum)$a_target, (GLuint)$a_texture)"
		end

	frozen glBitmap(a_width: INTEGER; a_height: INTEGER; a_xorig: REAL_32; a_yorig: REAL_32; a_xmove: REAL_32; a_ymove: REAL_32; a_bitmap: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glBitmap ((GLsizei)$a_width, (GLsizei)$a_height, (GLfloat)$a_xorig, (GLfloat)$a_yorig, (GLfloat)$a_xmove, (GLfloat)$a_ymove, (GLubyte *)$a_bitmap)"
		end

	frozen glBlendFunc(a_sfactor: NATURAL; a_dfactor: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glBlendFunc ((GLenum)$a_sfactor, (GLenum)$a_dfactor)"
		end

	frozen glCallList(a_list: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glCallList ((GLuint)$a_list)"
		end

	frozen glCallLists(a_n: INTEGER; a_type: NATURAL; a_lists: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glCallLists ((GLsizei)$a_n, (GLenum)$a_type, (void *)$a_lists)"
		end

	frozen glClear(a_mask: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glClear ((GLbitfield)$a_mask)"
		end

	frozen glClearAccum(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glClearAccum ((GLfloat)$a_red, (GLfloat)$a_green, (GLfloat)$a_blue, (GLfloat)$a_alpha)"
		end

	frozen glClearColor(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glClearColor ((GLclampf)$a_red, (GLclampf)$a_green, (GLclampf)$a_blue, (GLclampf)$a_alpha)"
		end

	frozen glClearDepth(a_depth: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glClearDepth ((GLclampd)$a_depth)"
		end

	frozen glClearIndex(a_c: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glClearIndex ((GLfloat)$a_c)"
		end

	frozen glClearStencil(a_s: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glClearStencil ((GLint)$a_s)"
		end

	frozen glClipPlane(a_plane: NATURAL; a_equation: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glClipPlane ((GLenum)$a_plane, (GLdouble *)$a_equation)"
		end

	frozen glColor3b(a_red: INTEGER_8; a_green: INTEGER_8; a_blue: INTEGER_8)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3b ((GLbyte)$a_red, (GLbyte)$a_green, (GLbyte)$a_blue)"
		end

	frozen glColor3bv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3bv ((GLbyte *)$a_v)"
		end

	frozen glColor3d(a_red: REAL_64; a_green: REAL_64; a_blue: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3d ((GLdouble)$a_red, (GLdouble)$a_green, (GLdouble)$a_blue)"
		end

	frozen glColor3dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3dv ((GLdouble *)$a_v)"
		end

	frozen glColor3f(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3f ((GLfloat)$a_red, (GLfloat)$a_green, (GLfloat)$a_blue)"
		end

	frozen glColor3fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3fv ((GLfloat *)$a_v)"
		end

	frozen glColor3i(a_red: INTEGER; a_green: INTEGER; a_blue: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3i ((GLint)$a_red, (GLint)$a_green, (GLint)$a_blue)"
		end

	frozen glColor3iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3iv ((GLint *)$a_v)"
		end

	frozen glColor3s(a_red: INTEGER_16; a_green: INTEGER_16; a_blue: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3s ((GLshort)$a_red, (GLshort)$a_green, (GLshort)$a_blue)"
		end

	frozen glColor3sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3sv ((GLshort *)$a_v)"
		end

	frozen glColor3ub(a_red: NATURAL_8; a_green: NATURAL_8; a_blue: NATURAL_8)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3ub ((GLubyte)$a_red, (GLubyte)$a_green, (GLubyte)$a_blue)"
		end

	frozen glColor3ubv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3ubv ((GLubyte *)$a_v)"
		end

	frozen glColor3ui(a_red: NATURAL; a_green: NATURAL; a_blue: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3ui ((GLuint)$a_red, (GLuint)$a_green, (GLuint)$a_blue)"
		end

	frozen glColor3uiv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3uiv ((GLuint *)$a_v)"
		end

	frozen glColor3us(a_red: NATURAL_16; a_green: NATURAL_16; a_blue: NATURAL_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3us ((GLushort)$a_red, (GLushort)$a_green, (GLushort)$a_blue)"
		end

	frozen glColor3usv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor3usv ((GLushort *)$a_v)"
		end

	frozen glColor4b(a_red: INTEGER_8; a_green: INTEGER_8; a_blue: INTEGER_8; a_alpha: INTEGER_8)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4b ((GLbyte)$a_red, (GLbyte)$a_green, (GLbyte)$a_blue, (GLbyte)$a_alpha)"
		end

	frozen glColor4bv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4bv ((GLbyte *)$a_v)"
		end

	frozen glColor4d(a_red: REAL_64; a_green: REAL_64; a_blue: REAL_64; a_alpha: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4d ((GLdouble)$a_red, (GLdouble)$a_green, (GLdouble)$a_blue, (GLdouble)$a_alpha)"
		end

	frozen glColor4dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4dv ((GLdouble *)$a_v)"
		end

	frozen glColor4f(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4f ((GLfloat)$a_red, (GLfloat)$a_green, (GLfloat)$a_blue, (GLfloat)$a_alpha)"
		end

	frozen glColor4fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4fv ((GLfloat *)$a_v)"
		end

	frozen glColor4i(a_red: INTEGER; a_green: INTEGER; a_blue: INTEGER; a_alpha: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4i ((GLint)$a_red, (GLint)$a_green, (GLint)$a_blue, (GLint)$a_alpha)"
		end

	frozen glColor4iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4iv ((GLint *)$a_v)"
		end

	frozen glColor4s(a_red: INTEGER_16; a_green: INTEGER_16; a_blue: INTEGER_16; a_alpha: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4s ((GLshort)$a_red, (GLshort)$a_green, (GLshort)$a_blue, (GLshort)$a_alpha)"
		end

	frozen glColor4sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4sv ((GLshort *)$a_v)"
		end

	frozen glColor4ub(a_red: NATURAL_8; a_green: NATURAL_8; a_blue: NATURAL_8; a_alpha: NATURAL_8)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4ub ((GLubyte)$a_red, (GLubyte)$a_green, (GLubyte)$a_blue, (GLubyte)$a_alpha)"
		end

	frozen glColor4ubv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4ubv ((GLubyte *)$a_v)"
		end

	frozen glColor4ui(a_red: NATURAL; a_green: NATURAL; a_blue: NATURAL; a_alpha: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4ui ((GLuint)$a_red, (GLuint)$a_green, (GLuint)$a_blue, (GLuint)$a_alpha)"
		end

	frozen glColor4uiv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4uiv ((GLuint *)$a_v)"
		end

	frozen glColor4us(a_red: NATURAL_16; a_green: NATURAL_16; a_blue: NATURAL_16; a_alpha: NATURAL_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4us ((GLushort)$a_red, (GLushort)$a_green, (GLushort)$a_blue, (GLushort)$a_alpha)"
		end

	frozen glColor4usv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColor4usv ((GLushort *)$a_v)"
		end

	frozen glColorMask(a_red: NATURAL_8; a_green: NATURAL_8; a_blue: NATURAL_8; a_alpha: NATURAL_8)
		external
			"C inline use <gl_order.h>"
		alias
			"glColorMask ((GLboolean)$a_red, (GLboolean)$a_green, (GLboolean)$a_blue, (GLboolean)$a_alpha)"
		end

	frozen glColorMaterial(a_face: NATURAL; a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glColorMaterial ((GLenum)$a_face, (GLenum)$a_mode)"
		end

	frozen glColorPointer(a_size: INTEGER; a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glColorPointer ((GLint)$a_size, (GLenum)$a_type, (GLsizei)$a_stride, (void *)$a_pointer)"
		end

	frozen glCopyPixels(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_type: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glCopyPixels ((GLint)$a_x, (GLint)$a_y, (GLsizei)$a_width, (GLsizei)$a_height, (GLenum)$a_type)"
		end

	frozen glCopyTexImage1D(a_target: NATURAL; a_level: INTEGER; a_internalformat: NATURAL; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_border: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glCopyTexImage1D ((GLenum)$a_target, (GLint)$a_level, (GLenum)$a_internalformat, (GLint)$a_x, (GLint)$a_y, (GLsizei)$a_width, (GLint)$a_border)"
		end

	frozen glCopyTexImage2D(a_target: NATURAL; a_level: INTEGER; a_internalformat: NATURAL; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_border: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glCopyTexImage2D ((GLenum)$a_target, (GLint)$a_level, (GLenum)$a_internalformat, (GLint)$a_x, (GLint)$a_y, (GLsizei)$a_width, (GLsizei)$a_height, (GLint)$a_border)"
		end

	frozen glCopyTexSubImage1D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glCopyTexSubImage1D ((GLenum)$a_target, (GLint)$a_level, (GLint)$a_xoffset, (GLint)$a_x, (GLint)$a_y, (GLsizei)$a_width)"
		end

	frozen glCopyTexSubImage2D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_yoffset: INTEGER; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glCopyTexSubImage2D ((GLenum)$a_target, (GLint)$a_level, (GLint)$a_xoffset, (GLint)$a_yoffset, (GLint)$a_x, (GLint)$a_y, (GLsizei)$a_width, (GLsizei)$a_height)"
		end

	frozen glCullFace(a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glCullFace ((GLenum)$a_mode)"
		end

	frozen glDeleteLists(a_list: NATURAL; a_range: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glDeleteLists ((GLuint)$a_list, (GLsizei)$a_range)"
		end

	frozen glDeleteTextures(a_n: INTEGER; a_textures: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glDeleteTextures ((GLsizei)$a_n, (GLuint *)$a_textures)"
		end

	frozen glDepthFunc(a_func: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glDepthFunc ((GLenum)$a_func)"
		end

	frozen glDepthMask(a_flag: NATURAL_8)
		external
			"C inline use <gl_order.h>"
		alias
			"glDepthMask ((GLboolean)$a_flag)"
		end

	frozen glDepthRange(a_znear: REAL_64; a_zfar: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glDepthRange ((GLclampd)$a_znear, (GLclampd)$a_zfar)"
		end

	frozen glDisable(a_cap: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glDisable ((GLenum)$a_cap)"
		end

	frozen glDisableClientState(a_array: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glDisableClientState ((GLenum)$a_array)"
		end

	frozen glDrawArrays(a_mode: NATURAL; a_first: INTEGER; a_count: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glDrawArrays ((GLenum)$a_mode, (GLint)$a_first, (GLsizei)$a_count)"
		end

	frozen glDrawBuffer(a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glDrawBuffer ((GLenum)$a_mode)"
		end

	frozen glDrawElements(a_mode: NATURAL; a_count: INTEGER; a_type: NATURAL; a_indices: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glDrawElements ((GLenum)$a_mode, (GLsizei)$a_count, (GLenum)$a_type, (void *)$a_indices)"
		end

	frozen glDrawPixels(a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glDrawPixels ((GLsizei)$a_width, (GLsizei)$a_height, (GLenum)$a_format, (GLenum)$a_type, (void *)$a_pixels)"
		end

	frozen glEdgeFlag(a_flag: NATURAL_8)
		external
			"C inline use <gl_order.h>"
		alias
			"glEdgeFlag ((GLboolean)$a_flag)"
		end

	frozen glEdgeFlagPointer(a_stride: INTEGER; a_pointer: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEdgeFlagPointer ((GLsizei)$a_stride, (void *)$a_pointer)"
		end

	frozen glEdgeFlagv(a_flag: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEdgeFlagv ((GLboolean *)$a_flag)"
		end

	frozen glEnable(a_cap: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glEnable ((GLenum)$a_cap)"
		end

	frozen glEnableClientState(a_array: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glEnableClientState ((GLenum)$a_array)"
		end

	frozen glEnd
		external
			"C inline use <gl_order.h>"
		alias
			"glEnd()"
		end

	frozen glEndList
		external
			"C inline use <gl_order.h>"
		alias
			"glEndList()"
		end

	frozen glEvalCoord1d(a_u: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalCoord1d ((GLdouble)$a_u)"
		end

	frozen glEvalCoord1dv(a_u: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalCoord1dv ((GLdouble *)$a_u)"
		end

	frozen glEvalCoord1f(a_u: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalCoord1f ((GLfloat)$a_u)"
		end

	frozen glEvalCoord1fv(a_u: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalCoord1fv ((GLfloat *)$a_u)"
		end

	frozen glEvalCoord2d(a_u: REAL_64; a_v: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalCoord2d ((GLdouble)$a_u, (GLdouble)$a_v)"
		end

	frozen glEvalCoord2dv(a_u: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalCoord2dv ((GLdouble *)$a_u)"
		end

	frozen glEvalCoord2f(a_u: REAL_32; a_v: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalCoord2f ((GLfloat)$a_u, (GLfloat)$a_v)"
		end

	frozen glEvalCoord2fv(a_u: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalCoord2fv ((GLfloat *)$a_u)"
		end

	frozen glEvalMesh1(a_mode: NATURAL; a_i1: INTEGER; a_i2: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalMesh1 ((GLenum)$a_mode, (GLint)$a_i1, (GLint)$a_i2)"
		end

	frozen glEvalMesh2(a_mode: NATURAL; a_i1: INTEGER; a_i2: INTEGER; a_j1: INTEGER; a_j2: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalMesh2 ((GLenum)$a_mode, (GLint)$a_i1, (GLint)$a_i2, (GLint)$a_j1, (GLint)$a_j2)"
		end

	frozen glEvalPoint1(a_i: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalPoint1 ((GLint)$a_i)"
		end

	frozen glEvalPoint2(a_i: INTEGER; a_j: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glEvalPoint2 ((GLint)$a_i, (GLint)$a_j)"
		end

	frozen glFeedbackBuffer(a_size: INTEGER; a_type: NATURAL; a_buffer: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glFeedbackBuffer ((GLsizei)$a_size, (GLenum)$a_type, (GLfloat *)$a_buffer)"
		end

	frozen glFinish
		external
			"C inline use <gl_order.h>"
		alias
			"glFinish()"
		end

	frozen glFlush
		external
			"C inline use <gl_order.h>"
		alias
			"glFlush()"
		end

	frozen glFogf(a_pname: NATURAL; a_param: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glFogf ((GLenum)$a_pname, (GLfloat)$a_param)"
		end

	frozen glFogfv(a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glFogfv ((GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glFogi(a_pname: NATURAL; a_param: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glFogi ((GLenum)$a_pname, (GLint)$a_param)"
		end

	frozen glFogiv(a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glFogiv ((GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glFrontFace(a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glFrontFace ((GLenum)$a_mode)"
		end

	frozen glFrustum(a_left: REAL_64; a_right: REAL_64; a_bottom: REAL_64; a_top: REAL_64; a_znear: REAL_64; a_zfar: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glFrustum ((GLdouble)$a_left, (GLdouble)$a_right, (GLdouble)$a_bottom, (GLdouble)$a_top, (GLdouble)$a_znear, (GLdouble)$a_zfar)"
		end

	frozen glGenLists(a_range: INTEGER): NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return glGenLists ((GLsizei)$a_range)"
		end

	frozen glGenTextures(a_n: INTEGER; a_textures: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGenTextures ((GLsizei)$a_n, (GLuint *)$a_textures)"
		end

	frozen glGetBooleanv(a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetBooleanv ((GLenum)$a_pname, (GLboolean *)$a_params)"
		end

	frozen glGetClipPlane(a_plane: NATURAL; a_equation: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetClipPlane ((GLenum)$a_plane, (GLdouble *)$a_equation)"
		end

	frozen glGetDoublev(a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetDoublev ((GLenum)$a_pname, (GLdouble *)$a_params)"
		end

	frozen glGetError: NATURAL
		external
			"C inline use <gl_order.h>"
		alias
			"return glGetError()"
		end

	frozen glGetFloatv(a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetFloatv ((GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glGetIntegerv(a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetIntegerv ((GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glGetLightfv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetLightfv ((GLenum)$a_light, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glGetLightiv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetLightiv ((GLenum)$a_light, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glGetMapdv(a_target: NATURAL; a_query: NATURAL; a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetMapdv ((GLenum)$a_target, (GLenum)$a_query, (GLdouble *)$a_v)"
		end

	frozen glGetMapfv(a_target: NATURAL; a_query: NATURAL; a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetMapfv ((GLenum)$a_target, (GLenum)$a_query, (GLfloat *)$a_v)"
		end

	frozen glGetMapiv(a_target: NATURAL; a_query: NATURAL; a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetMapiv ((GLenum)$a_target, (GLenum)$a_query, (GLint *)$a_v)"
		end

	frozen glGetMaterialfv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetMaterialfv ((GLenum)$a_face, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glGetMaterialiv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetMaterialiv ((GLenum)$a_face, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glGetPixelMapfv(a_map: NATURAL; a_values: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetPixelMapfv ((GLenum)$a_map, (GLfloat *)$a_values)"
		end

	frozen glGetPixelMapuiv(a_map: NATURAL; a_values: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetPixelMapuiv ((GLenum)$a_map, (GLuint *)$a_values)"
		end

	frozen glGetPixelMapusv(a_map: NATURAL; a_values: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetPixelMapusv ((GLenum)$a_map, (GLushort *)$a_values)"
		end

	frozen glGetPointerv(a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetPointerv ((GLenum)$a_pname, (void **)$a_params)"
		end

	frozen glGetPolygonStipple(a_mask: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetPolygonStipple ((GLubyte *)$a_mask)"
		end

	frozen glGetString(a_name: NATURAL): POINTER
		external
			"C inline use <gl_order.h>"
		alias
			"return glGetString ((GLenum)$a_name)"
		end

	frozen glGetTexEnvfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexEnvfv ((GLenum)$a_target, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glGetTexEnviv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexEnviv ((GLenum)$a_target, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glGetTexGendv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexGendv ((GLenum)$a_coord, (GLenum)$a_pname, (GLdouble *)$a_params)"
		end

	frozen glGetTexGenfv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexGenfv ((GLenum)$a_coord, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glGetTexGeniv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexGeniv ((GLenum)$a_coord, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glGetTexImage(a_target: NATURAL; a_level: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexImage ((GLenum)$a_target, (GLint)$a_level, (GLenum)$a_format, (GLenum)$a_type, (void *)$a_pixels)"
		end

	frozen glGetTexLevelParameterfv(a_target: NATURAL; a_level: INTEGER; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexLevelParameterfv ((GLenum)$a_target, (GLint)$a_level, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glGetTexLevelParameteriv(a_target: NATURAL; a_level: INTEGER; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexLevelParameteriv ((GLenum)$a_target, (GLint)$a_level, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glGetTexParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexParameterfv ((GLenum)$a_target, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glGetTexParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glGetTexParameteriv ((GLenum)$a_target, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glHint(a_target: NATURAL; a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glHint ((GLenum)$a_target, (GLenum)$a_mode)"
		end

	frozen glIndexMask(a_mask: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexMask ((GLuint)$a_mask)"
		end

	frozen glIndexPointer(a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexPointer ((GLenum)$a_type, (GLsizei)$a_stride, (void *)$a_pointer)"
		end

	frozen glIndexd(a_c: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexd ((GLdouble)$a_c)"
		end

	frozen glIndexdv(a_c: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexdv ((GLdouble *)$a_c)"
		end

	frozen glIndexf(a_c: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexf ((GLfloat)$a_c)"
		end

	frozen glIndexfv(a_c: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexfv ((GLfloat *)$a_c)"
		end

	frozen glIndexi(a_c: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexi ((GLint)$a_c)"
		end

	frozen glIndexiv(a_c: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexiv ((GLint *)$a_c)"
		end

	frozen glIndexs(a_c: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexs ((GLshort)$a_c)"
		end

	frozen glIndexsv(a_c: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexsv ((GLshort *)$a_c)"
		end

	frozen glIndexub(a_c: NATURAL_8)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexub ((GLubyte)$a_c)"
		end

	frozen glIndexubv(a_c: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glIndexubv ((GLubyte *)$a_c)"
		end

	frozen glInitNames
		external
			"C inline use <gl_order.h>"
		alias
			"glInitNames()"
		end

	frozen glInterleavedArrays(a_format: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glInterleavedArrays ((GLenum)$a_format, (GLsizei)$a_stride, (void *)$a_pointer)"
		end

	frozen glIsEnabled(a_cap: NATURAL): NATURAL_8
		external
			"C inline use <gl_order.h>"
		alias
			"return glIsEnabled ((GLenum)$a_cap)"
		end

	frozen glIsList(a_list: NATURAL): NATURAL_8
		external
			"C inline use <gl_order.h>"
		alias
			"return glIsList ((GLuint)$a_list)"
		end

	frozen glIsTexture(a_texture: NATURAL): NATURAL_8
		external
			"C inline use <gl_order.h>"
		alias
			"return glIsTexture ((GLuint)$a_texture)"
		end

	frozen glLightModelf(a_pname: NATURAL; a_param: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glLightModelf ((GLenum)$a_pname, (GLfloat)$a_param)"
		end

	frozen glLightModelfv(a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glLightModelfv ((GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glLightModeli(a_pname: NATURAL; a_param: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glLightModeli ((GLenum)$a_pname, (GLint)$a_param)"
		end

	frozen glLightModeliv(a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glLightModeliv ((GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glLightf(a_light: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glLightf ((GLenum)$a_light, (GLenum)$a_pname, (GLfloat)$a_param)"
		end

	frozen glLightfv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glLightfv ((GLenum)$a_light, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glLighti(a_light: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glLighti ((GLenum)$a_light, (GLenum)$a_pname, (GLint)$a_param)"
		end

	frozen glLightiv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glLightiv ((GLenum)$a_light, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glLineStipple(a_factor: INTEGER; a_pattern: NATURAL_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glLineStipple ((GLint)$a_factor, (GLushort)$a_pattern)"
		end

	frozen glLineWidth(a_width: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glLineWidth ((GLfloat)$a_width)"
		end

	frozen glListBase(a_base: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glListBase ((GLuint)$a_base)"
		end

	frozen glLoadIdentity
		external
			"C inline use <gl_order.h>"
		alias
			"glLoadIdentity()"
		end

	frozen glLoadMatrixd(a_m: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glLoadMatrixd ((GLdouble *)$a_m)"
		end

	frozen glLoadMatrixf(a_m: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glLoadMatrixf ((GLfloat *)$a_m)"
		end

	frozen glLoadName(a_name: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glLoadName ((GLuint)$a_name)"
		end

	frozen glLogicOp(a_opcode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glLogicOp ((GLenum)$a_opcode)"
		end

	frozen glMap1d(a_target: NATURAL; a_u1: REAL_64; a_u2: REAL_64; a_stride: INTEGER; a_order: INTEGER; a_points: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glMap1d ((GLenum)$a_target, (GLdouble)$a_u1, (GLdouble)$a_u2, (GLint)$a_stride, (GLint)$a_order, (GLdouble *)$a_points)"
		end

	frozen glMap1f(a_target: NATURAL; a_u1: REAL_32; a_u2: REAL_32; a_stride: INTEGER; a_order: INTEGER; a_points: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glMap1f ((GLenum)$a_target, (GLfloat)$a_u1, (GLfloat)$a_u2, (GLint)$a_stride, (GLint)$a_order, (GLfloat *)$a_points)"
		end

	frozen glMap2d(a_target: NATURAL; a_u1: REAL_64; a_u2: REAL_64; a_ustride: INTEGER; a_uorder: INTEGER; a_v1: REAL_64; a_v2: REAL_64; a_vstride: INTEGER; a_vorder: INTEGER; a_points: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glMap2d ((GLenum)$a_target, (GLdouble)$a_u1, (GLdouble)$a_u2, (GLint)$a_ustride, (GLint)$a_uorder, (GLdouble)$a_v1, (GLdouble)$a_v2, (GLint)$a_vstride, (GLint)$a_vorder, (GLdouble *)$a_points)"
		end

	frozen glMap2f(a_target: NATURAL; a_u1: REAL_32; a_u2: REAL_32; a_ustride: INTEGER; a_uorder: INTEGER; a_v1: REAL_32; a_v2: REAL_32; a_vstride: INTEGER; a_vorder: INTEGER; a_points: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glMap2f ((GLenum)$a_target, (GLfloat)$a_u1, (GLfloat)$a_u2, (GLint)$a_ustride, (GLint)$a_uorder, (GLfloat)$a_v1, (GLfloat)$a_v2, (GLint)$a_vstride, (GLint)$a_vorder, (GLfloat *)$a_points)"
		end

	frozen glMapGrid1d(a_un: INTEGER; a_u1: REAL_64; a_u2: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glMapGrid1d ((GLint)$a_un, (GLdouble)$a_u1, (GLdouble)$a_u2)"
		end

	frozen glMapGrid1f(a_un: INTEGER; a_u1: REAL_32; a_u2: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glMapGrid1f ((GLint)$a_un, (GLfloat)$a_u1, (GLfloat)$a_u2)"
		end

	frozen glMapGrid2d(a_un: INTEGER; a_u1: REAL_64; a_u2: REAL_64; a_vn: INTEGER; a_v1: REAL_64; a_v2: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glMapGrid2d ((GLint)$a_un, (GLdouble)$a_u1, (GLdouble)$a_u2, (GLint)$a_vn, (GLdouble)$a_v1, (GLdouble)$a_v2)"
		end

	frozen glMapGrid2f(a_un: INTEGER; a_u1: REAL_32; a_u2: REAL_32; a_vn: INTEGER; a_v1: REAL_32; a_v2: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glMapGrid2f ((GLint)$a_un, (GLfloat)$a_u1, (GLfloat)$a_u2, (GLint)$a_vn, (GLfloat)$a_v1, (GLfloat)$a_v2)"
		end

	frozen glMaterialf(a_face: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glMaterialf ((GLenum)$a_face, (GLenum)$a_pname, (GLfloat)$a_param)"
		end

	frozen glMaterialfv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glMaterialfv ((GLenum)$a_face, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glMateriali(a_face: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glMateriali ((GLenum)$a_face, (GLenum)$a_pname, (GLint)$a_param)"
		end

	frozen glMaterialiv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glMaterialiv ((GLenum)$a_face, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glMatrixMode(a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glMatrixMode ((GLenum)$a_mode)"
		end

	frozen glMultMatrixd(a_m: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glMultMatrixd ((GLdouble *)$a_m)"
		end

	frozen glMultMatrixf(a_m: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glMultMatrixf ((GLfloat *)$a_m)"
		end

	frozen glNewList(a_list: NATURAL; a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glNewList ((GLuint)$a_list, (GLenum)$a_mode)"
		end

	frozen glNormal3b(a_nx: INTEGER_8; a_ny: INTEGER_8; a_nz: INTEGER_8)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3b ((GLbyte)$a_nx, (GLbyte)$a_ny, (GLbyte)$a_nz)"
		end

	frozen glNormal3bv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3bv ((GLbyte *)$a_v)"
		end

	frozen glNormal3d(a_nx: REAL_64; a_ny: REAL_64; a_nz: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3d ((GLdouble)$a_nx, (GLdouble)$a_ny, (GLdouble)$a_nz)"
		end

	frozen glNormal3dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3dv ((GLdouble *)$a_v)"
		end

	frozen glNormal3f(a_nx: REAL_32; a_ny: REAL_32; a_nz: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3f ((GLfloat)$a_nx, (GLfloat)$a_ny, (GLfloat)$a_nz)"
		end

	frozen glNormal3fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3fv ((GLfloat *)$a_v)"
		end

	frozen glNormal3i(a_nx: INTEGER; a_ny: INTEGER; a_nz: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3i ((GLint)$a_nx, (GLint)$a_ny, (GLint)$a_nz)"
		end

	frozen glNormal3iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3iv ((GLint *)$a_v)"
		end

	frozen glNormal3s(a_nx: INTEGER_16; a_ny: INTEGER_16; a_nz: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3s ((GLshort)$a_nx, (GLshort)$a_ny, (GLshort)$a_nz)"
		end

	frozen glNormal3sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormal3sv ((GLshort *)$a_v)"
		end

	frozen glNormalPointer(a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glNormalPointer ((GLenum)$a_type, (GLsizei)$a_stride, (void *)$a_pointer)"
		end

	frozen glOrtho(a_left: REAL_64; a_right: REAL_64; a_bottom: REAL_64; a_top: REAL_64; a_znear: REAL_64; a_zfar: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glOrtho ((GLdouble)$a_left, (GLdouble)$a_right, (GLdouble)$a_bottom, (GLdouble)$a_top, (GLdouble)$a_znear, (GLdouble)$a_zfar)"
		end

	frozen glPassThrough(a_token: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glPassThrough ((GLfloat)$a_token)"
		end

	frozen glPixelMapfv(a_map: NATURAL; a_mapsize: INTEGER; a_values: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glPixelMapfv ((GLenum)$a_map, (GLsizei)$a_mapsize, (GLfloat *)$a_values)"
		end

	frozen glPixelMapuiv(a_map: NATURAL; a_mapsize: INTEGER; a_values: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glPixelMapuiv ((GLenum)$a_map, (GLsizei)$a_mapsize, (GLuint *)$a_values)"
		end

	frozen glPixelMapusv(a_map: NATURAL; a_mapsize: INTEGER; a_values: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glPixelMapusv ((GLenum)$a_map, (GLsizei)$a_mapsize, (GLushort *)$a_values)"
		end

	frozen glPixelStoref(a_pname: NATURAL; a_param: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glPixelStoref ((GLenum)$a_pname, (GLfloat)$a_param)"
		end

	frozen glPixelStorei(a_pname: NATURAL; a_param: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glPixelStorei ((GLenum)$a_pname, (GLint)$a_param)"
		end

	frozen glPixelTransferf(a_pname: NATURAL; a_param: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glPixelTransferf ((GLenum)$a_pname, (GLfloat)$a_param)"
		end

	frozen glPixelTransferi(a_pname: NATURAL; a_param: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glPixelTransferi ((GLenum)$a_pname, (GLint)$a_param)"
		end

	frozen glPixelZoom(a_xfactor: REAL_32; a_yfactor: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glPixelZoom ((GLfloat)$a_xfactor, (GLfloat)$a_yfactor)"
		end

	frozen glPointSize(a_size: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glPointSize ((GLfloat)$a_size)"
		end

	frozen glPolygonMode(a_face: NATURAL; a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glPolygonMode ((GLenum)$a_face, (GLenum)$a_mode)"
		end

	frozen glPolygonOffset(a_factor: REAL_32; a_units: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glPolygonOffset ((GLfloat)$a_factor, (GLfloat)$a_units)"
		end

	frozen glPolygonStipple(a_mask: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glPolygonStipple ((GLubyte *)$a_mask)"
		end

	frozen glPopAttrib
		external
			"C inline use <gl_order.h>"
		alias
			"glPopAttrib()"
		end

	frozen glPopClientAttrib
		external
			"C inline use <gl_order.h>"
		alias
			"glPopClientAttrib()"
		end

	frozen glPopMatrix
		external
			"C inline use <gl_order.h>"
		alias
			"glPopMatrix()"
		end

	frozen glPopName
		external
			"C inline use <gl_order.h>"
		alias
			"glPopName()"
		end

	frozen glPrioritizeTextures(a_n: INTEGER; a_textures: POINTER; a_priorities: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glPrioritizeTextures ((GLsizei)$a_n, (GLuint *)$a_textures, (GLclampf *)$a_priorities)"
		end

	frozen glPushAttrib(a_mask: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glPushAttrib ((GLbitfield)$a_mask)"
		end

	frozen glPushClientAttrib(a_mask: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glPushClientAttrib ((GLbitfield)$a_mask)"
		end

	frozen glPushMatrix
		external
			"C inline use <gl_order.h>"
		alias
			"glPushMatrix()"
		end

	frozen glPushName(a_name: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glPushName ((GLuint)$a_name)"
		end

	frozen glRasterPos2d(a_x: REAL_64; a_y: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos2d ((GLdouble)$a_x, (GLdouble)$a_y)"
		end

	frozen glRasterPos2dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos2dv ((GLdouble *)$a_v)"
		end

	frozen glRasterPos2f(a_x: REAL_32; a_y: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos2f ((GLfloat)$a_x, (GLfloat)$a_y)"
		end

	frozen glRasterPos2fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos2fv ((GLfloat *)$a_v)"
		end

	frozen glRasterPos2i(a_x: INTEGER; a_y: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos2i ((GLint)$a_x, (GLint)$a_y)"
		end

	frozen glRasterPos2iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos2iv ((GLint *)$a_v)"
		end

	frozen glRasterPos2s(a_x: INTEGER_16; a_y: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos2s ((GLshort)$a_x, (GLshort)$a_y)"
		end

	frozen glRasterPos2sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos2sv ((GLshort *)$a_v)"
		end

	frozen glRasterPos3d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos3d ((GLdouble)$a_x, (GLdouble)$a_y, (GLdouble)$a_z)"
		end

	frozen glRasterPos3dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos3dv ((GLdouble *)$a_v)"
		end

	frozen glRasterPos3f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos3f ((GLfloat)$a_x, (GLfloat)$a_y, (GLfloat)$a_z)"
		end

	frozen glRasterPos3fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos3fv ((GLfloat *)$a_v)"
		end

	frozen glRasterPos3i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos3i ((GLint)$a_x, (GLint)$a_y, (GLint)$a_z)"
		end

	frozen glRasterPos3iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos3iv ((GLint *)$a_v)"
		end

	frozen glRasterPos3s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos3s ((GLshort)$a_x, (GLshort)$a_y, (GLshort)$a_z)"
		end

	frozen glRasterPos3sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos3sv ((GLshort *)$a_v)"
		end

	frozen glRasterPos4d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64; a_w: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos4d ((GLdouble)$a_x, (GLdouble)$a_y, (GLdouble)$a_z, (GLdouble)$a_w)"
		end

	frozen glRasterPos4dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos4dv ((GLdouble *)$a_v)"
		end

	frozen glRasterPos4f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32; a_w: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos4f ((GLfloat)$a_x, (GLfloat)$a_y, (GLfloat)$a_z, (GLfloat)$a_w)"
		end

	frozen glRasterPos4fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos4fv ((GLfloat *)$a_v)"
		end

	frozen glRasterPos4i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER; a_w: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos4i ((GLint)$a_x, (GLint)$a_y, (GLint)$a_z, (GLint)$a_w)"
		end

	frozen glRasterPos4iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos4iv ((GLint *)$a_v)"
		end

	frozen glRasterPos4s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16; a_w: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos4s ((GLshort)$a_x, (GLshort)$a_y, (GLshort)$a_z, (GLshort)$a_w)"
		end

	frozen glRasterPos4sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRasterPos4sv ((GLshort *)$a_v)"
		end

	frozen glReadBuffer(a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glReadBuffer ((GLenum)$a_mode)"
		end

	frozen glReadPixels(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glReadPixels ((GLint)$a_x, (GLint)$a_y, (GLsizei)$a_width, (GLsizei)$a_height, (GLenum)$a_format, (GLenum)$a_type, (void *)$a_pixels)"
		end

	frozen glRectd(a_x1: REAL_64; a_y1: REAL_64; a_x2: REAL_64; a_y2: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glRectd ((GLdouble)$a_x1, (GLdouble)$a_y1, (GLdouble)$a_x2, (GLdouble)$a_y2)"
		end

	frozen glRectdv(a_v1: POINTER; a_v2: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRectdv ((GLdouble *)$a_v1, (GLdouble *)$a_v2)"
		end

	frozen glRectf(a_x1: REAL_32; a_y1: REAL_32; a_x2: REAL_32; a_y2: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glRectf ((GLfloat)$a_x1, (GLfloat)$a_y1, (GLfloat)$a_x2, (GLfloat)$a_y2)"
		end

	frozen glRectfv(a_v1: POINTER; a_v2: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRectfv ((GLfloat *)$a_v1, (GLfloat *)$a_v2)"
		end

	frozen glRecti(a_x1: INTEGER; a_y1: INTEGER; a_x2: INTEGER; a_y2: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRecti ((GLint)$a_x1, (GLint)$a_y1, (GLint)$a_x2, (GLint)$a_y2)"
		end

	frozen glRectiv(a_v1: POINTER; a_v2: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRectiv ((GLint *)$a_v1, (GLint *)$a_v2)"
		end

	frozen glRects(a_x1: INTEGER_16; a_y1: INTEGER_16; a_x2: INTEGER_16; a_y2: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glRects ((GLshort)$a_x1, (GLshort)$a_y1, (GLshort)$a_x2, (GLshort)$a_y2)"
		end

	frozen glRectsv(a_v1: POINTER; a_v2: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glRectsv ((GLshort *)$a_v1, (GLshort *)$a_v2)"
		end

	frozen glRenderMode(a_mode: NATURAL): INTEGER
		external
			"C inline use <gl_order.h>"
		alias
			"return glRenderMode ((GLenum)$a_mode)"
		end

	frozen glRotated(a_angle: REAL_64; a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glRotated ((GLdouble)$a_angle, (GLdouble)$a_x, (GLdouble)$a_y, (GLdouble)$a_z)"
		end

	frozen glRotatef(a_angle: REAL_32; a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glRotatef ((GLfloat)$a_angle, (GLfloat)$a_x, (GLfloat)$a_y, (GLfloat)$a_z)"
		end

	frozen glScaled(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glScaled ((GLdouble)$a_x, (GLdouble)$a_y, (GLdouble)$a_z)"
		end

	frozen glScalef(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glScalef ((GLfloat)$a_x, (GLfloat)$a_y, (GLfloat)$a_z)"
		end

	frozen glScissor(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glScissor ((GLint)$a_x, (GLint)$a_y, (GLsizei)$a_width, (GLsizei)$a_height)"
		end

	frozen glSelectBuffer(a_size: INTEGER; a_buffer: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glSelectBuffer ((GLsizei)$a_size, (GLuint *)$a_buffer)"
		end

	frozen glShadeModel(a_mode: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glShadeModel ((GLenum)$a_mode)"
		end

	frozen glStencilFunc(a_func: NATURAL; a_ref: INTEGER; a_mask: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glStencilFunc ((GLenum)$a_func, (GLint)$a_ref, (GLuint)$a_mask)"
		end

	frozen glStencilMask(a_mask: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glStencilMask ((GLuint)$a_mask)"
		end

	frozen glStencilOp(a_fail: NATURAL; a_zfail: NATURAL; a_zpass: NATURAL)
		external
			"C inline use <gl_order.h>"
		alias
			"glStencilOp ((GLenum)$a_fail, (GLenum)$a_zfail, (GLenum)$a_zpass)"
		end

	frozen glTexCoord1d(a_s: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord1d ((GLdouble)$a_s)"
		end

	frozen glTexCoord1dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord1dv ((GLdouble *)$a_v)"
		end

	frozen glTexCoord1f(a_s: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord1f ((GLfloat)$a_s)"
		end

	frozen glTexCoord1fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord1fv ((GLfloat *)$a_v)"
		end

	frozen glTexCoord1i(a_s: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord1i ((GLint)$a_s)"
		end

	frozen glTexCoord1iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord1iv ((GLint *)$a_v)"
		end

	frozen glTexCoord1s(a_s: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord1s ((GLshort)$a_s)"
		end

	frozen glTexCoord1sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord1sv ((GLshort *)$a_v)"
		end

	frozen glTexCoord2d(a_s: REAL_64; a_t: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord2d ((GLdouble)$a_s, (GLdouble)$a_t)"
		end

	frozen glTexCoord2dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord2dv ((GLdouble *)$a_v)"
		end

	frozen glTexCoord2f(a_s: REAL_32; a_t: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord2f ((GLfloat)$a_s, (GLfloat)$a_t)"
		end

	frozen glTexCoord2fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord2fv ((GLfloat *)$a_v)"
		end

	frozen glTexCoord2i(a_s: INTEGER; a_t: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord2i ((GLint)$a_s, (GLint)$a_t)"
		end

	frozen glTexCoord2iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord2iv ((GLint *)$a_v)"
		end

	frozen glTexCoord2s(a_s: INTEGER_16; a_t: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord2s ((GLshort)$a_s, (GLshort)$a_t)"
		end

	frozen glTexCoord2sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord2sv ((GLshort *)$a_v)"
		end

	frozen glTexCoord3d(a_s: REAL_64; a_t: REAL_64; a_r: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord3d ((GLdouble)$a_s, (GLdouble)$a_t, (GLdouble)$a_r)"
		end

	frozen glTexCoord3dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord3dv ((GLdouble *)$a_v)"
		end

	frozen glTexCoord3f(a_s: REAL_32; a_t: REAL_32; a_r: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord3f ((GLfloat)$a_s, (GLfloat)$a_t, (GLfloat)$a_r)"
		end

	frozen glTexCoord3fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord3fv ((GLfloat *)$a_v)"
		end

	frozen glTexCoord3i(a_s: INTEGER; a_t: INTEGER; a_r: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord3i ((GLint)$a_s, (GLint)$a_t, (GLint)$a_r)"
		end

	frozen glTexCoord3iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord3iv ((GLint *)$a_v)"
		end

	frozen glTexCoord3s(a_s: INTEGER_16; a_t: INTEGER_16; a_r: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord3s ((GLshort)$a_s, (GLshort)$a_t, (GLshort)$a_r)"
		end

	frozen glTexCoord3sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord3sv ((GLshort *)$a_v)"
		end

	frozen glTexCoord4d(a_s: REAL_64; a_t: REAL_64; a_r: REAL_64; a_q: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord4d ((GLdouble)$a_s, (GLdouble)$a_t, (GLdouble)$a_r, (GLdouble)$a_q)"
		end

	frozen glTexCoord4dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord4dv ((GLdouble *)$a_v)"
		end

	frozen glTexCoord4f(a_s: REAL_32; a_t: REAL_32; a_r: REAL_32; a_q: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord4f ((GLfloat)$a_s, (GLfloat)$a_t, (GLfloat)$a_r, (GLfloat)$a_q)"
		end

	frozen glTexCoord4fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord4fv ((GLfloat *)$a_v)"
		end

	frozen glTexCoord4i(a_s: INTEGER; a_t: INTEGER; a_r: INTEGER; a_q: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord4i ((GLint)$a_s, (GLint)$a_t, (GLint)$a_r, (GLint)$a_q)"
		end

	frozen glTexCoord4iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord4iv ((GLint *)$a_v)"
		end

	frozen glTexCoord4s(a_s: INTEGER_16; a_t: INTEGER_16; a_r: INTEGER_16; a_q: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord4s ((GLshort)$a_s, (GLshort)$a_t, (GLshort)$a_r, (GLshort)$a_q)"
		end

	frozen glTexCoord4sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoord4sv ((GLshort *)$a_v)"
		end

	frozen glTexCoordPointer(a_size: INTEGER; a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexCoordPointer ((GLint)$a_size, (GLenum)$a_type, (GLsizei)$a_stride, (void *)$a_pointer)"
		end

	frozen glTexEnvf(a_target: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexEnvf ((GLenum)$a_target, (GLenum)$a_pname, (GLfloat)$a_param)"
		end

	frozen glTexEnvfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexEnvfv ((GLenum)$a_target, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glTexEnvi(a_target: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexEnvi ((GLenum)$a_target, (GLenum)$a_pname, (GLint)$a_param)"
		end

	frozen glTexEnviv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexEnviv ((GLenum)$a_target, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glTexGend(a_coord: NATURAL; a_pname: NATURAL; a_param: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexGend ((GLenum)$a_coord, (GLenum)$a_pname, (GLdouble)$a_param)"
		end

	frozen glTexGendv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexGendv ((GLenum)$a_coord, (GLenum)$a_pname, (GLdouble *)$a_params)"
		end

	frozen glTexGenf(a_coord: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexGenf ((GLenum)$a_coord, (GLenum)$a_pname, (GLfloat)$a_param)"
		end

	frozen glTexGenfv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexGenfv ((GLenum)$a_coord, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glTexGeni(a_coord: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexGeni ((GLenum)$a_coord, (GLenum)$a_pname, (GLint)$a_param)"
		end

	frozen glTexGeniv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexGeniv ((GLenum)$a_coord, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glTexImage1D(a_target: NATURAL; a_level: INTEGER; a_internalformat: INTEGER; a_width: INTEGER; a_border: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexImage1D ((GLenum)$a_target, (GLint)$a_level, (GLint)$a_internalformat, (GLsizei)$a_width, (GLint)$a_border, (GLenum)$a_format, (GLenum)$a_type, (void *)$a_pixels)"
		end

	frozen glTexImage2D(a_target: NATURAL; a_level: INTEGER; a_internalformat: INTEGER; a_width: INTEGER; a_height: INTEGER; a_border: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexImage2D ((GLenum)$a_target, (GLint)$a_level, (GLint)$a_internalformat, (GLsizei)$a_width, (GLsizei)$a_height, (GLint)$a_border, (GLenum)$a_format, (GLenum)$a_type, (void *)$a_pixels)"
		end

	frozen glTexParameterf(a_target: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexParameterf ((GLenum)$a_target, (GLenum)$a_pname, (GLfloat)$a_param)"
		end

	frozen glTexParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexParameterfv ((GLenum)$a_target, (GLenum)$a_pname, (GLfloat *)$a_params)"
		end

	frozen glTexParameteri(a_target: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexParameteri ((GLenum)$a_target, (GLenum)$a_pname, (GLint)$a_param)"
		end

	frozen glTexParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexParameteriv ((GLenum)$a_target, (GLenum)$a_pname, (GLint *)$a_params)"
		end

	frozen glTexSubImage1D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_width: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexSubImage1D ((GLenum)$a_target, (GLint)$a_level, (GLint)$a_xoffset, (GLsizei)$a_width, (GLenum)$a_format, (GLenum)$a_type, (void *)$a_pixels)"
		end

	frozen glTexSubImage2D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_yoffset: INTEGER; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glTexSubImage2D ((GLenum)$a_target, (GLint)$a_level, (GLint)$a_xoffset, (GLint)$a_yoffset, (GLsizei)$a_width, (GLsizei)$a_height, (GLenum)$a_format, (GLenum)$a_type, (void *)$a_pixels)"
		end

	frozen glTranslated(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glTranslated ((GLdouble)$a_x, (GLdouble)$a_y, (GLdouble)$a_z)"
		end

	frozen glTranslatef(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glTranslatef ((GLfloat)$a_x, (GLfloat)$a_y, (GLfloat)$a_z)"
		end

	frozen glVertex2d(a_x: REAL_64; a_y: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex2d ((GLdouble)$a_x, (GLdouble)$a_y)"
		end

	frozen glVertex2dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex2dv ((GLdouble *)$a_v)"
		end

	frozen glVertex2f(a_x: REAL_32; a_y: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex2f ((GLfloat)$a_x, (GLfloat)$a_y)"
		end

	frozen glVertex2fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex2fv ((GLfloat *)$a_v)"
		end

	frozen glVertex2i(a_x: INTEGER; a_y: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex2i ((GLint)$a_x, (GLint)$a_y)"
		end

	frozen glVertex2iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex2iv ((GLint *)$a_v)"
		end

	frozen glVertex2s(a_x: INTEGER_16; a_y: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex2s ((GLshort)$a_x, (GLshort)$a_y)"
		end

	frozen glVertex2sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex2sv ((GLshort *)$a_v)"
		end

	frozen glVertex3d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex3d ((GLdouble)$a_x, (GLdouble)$a_y, (GLdouble)$a_z)"
		end

	frozen glVertex3dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex3dv ((GLdouble *)$a_v)"
		end

	frozen glVertex3f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex3f ((GLfloat)$a_x, (GLfloat)$a_y, (GLfloat)$a_z)"
		end

	frozen glVertex3fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex3fv ((GLfloat *)$a_v)"
		end

	frozen glVertex3i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex3i ((GLint)$a_x, (GLint)$a_y, (GLint)$a_z)"
		end

	frozen glVertex3iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex3iv ((GLint *)$a_v)"
		end

	frozen glVertex3s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex3s ((GLshort)$a_x, (GLshort)$a_y, (GLshort)$a_z)"
		end

	frozen glVertex3sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex3sv ((GLshort *)$a_v)"
		end

	frozen glVertex4d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64; a_w: REAL_64)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex4d ((GLdouble)$a_x, (GLdouble)$a_y, (GLdouble)$a_z, (GLdouble)$a_w)"
		end

	frozen glVertex4dv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex4dv ((GLdouble *)$a_v)"
		end

	frozen glVertex4f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32; a_w: REAL_32)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex4f ((GLfloat)$a_x, (GLfloat)$a_y, (GLfloat)$a_z, (GLfloat)$a_w)"
		end

	frozen glVertex4fv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex4fv ((GLfloat *)$a_v)"
		end

	frozen glVertex4i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER; a_w: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex4i ((GLint)$a_x, (GLint)$a_y, (GLint)$a_z, (GLint)$a_w)"
		end

	frozen glVertex4iv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex4iv ((GLint *)$a_v)"
		end

	frozen glVertex4s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16; a_w: INTEGER_16)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex4s ((GLshort)$a_x, (GLshort)$a_y, (GLshort)$a_z, (GLshort)$a_w)"
		end

	frozen glVertex4sv(a_v: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertex4sv ((GLshort *)$a_v)"
		end

	frozen glVertexPointer(a_size: INTEGER; a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C inline use <gl_order.h>"
		alias
			"glVertexPointer ((GLint)$a_size, (GLenum)$a_type, (GLsizei)$a_stride, (void *)$a_pointer)"
		end

	frozen glViewport(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C inline use <gl_order.h>"
		alias
			"glViewport ((GLint)$a_x, (GLint)$a_y, (GLsizei)$a_width, (GLsizei)$a_height)"
		end


end

