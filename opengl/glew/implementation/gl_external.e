note
    description: "External for OpenGL extension library."
    author: "Louis Marchand"
    date: "Mon, 11 Jan 2016 16:50:53 +0000"
    revision: "1.0"

class
    GL_EXTERNAL

feature -- C external


	frozen GL_VERSION_1_1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_1_1"
		end

	frozen GL_ZERO : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ZERO"
		end

	frozen GL_FALSE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FALSE"
		end

	frozen GL_LOGIC_OP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOGIC_OP"
		end

	frozen GL_NONE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NONE"
		end

	frozen GL_TEXTURE_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPONENTS"
		end

	frozen GL_NO_ERROR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NO_ERROR"
		end

	frozen GL_POINTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINTS"
		end

	frozen GL_CURRENT_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_BIT"
		end

	frozen GL_TRUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRUE"
		end

	frozen GL_ONE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE"
		end

	frozen GL_CLIENT_PIXEL_STORE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIENT_PIXEL_STORE_BIT"
		end

	frozen GL_LINES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINES"
		end

	frozen GL_LINE_LOOP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_LOOP"
		end

	frozen GL_POINT_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_BIT"
		end

	frozen GL_CLIENT_VERTEX_ARRAY_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIENT_VERTEX_ARRAY_BIT"
		end

	frozen GL_LINE_STRIP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_STRIP"
		end

	frozen GL_LINE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_BIT"
		end

	frozen GL_TRIANGLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLES"
		end

	frozen GL_TRIANGLE_STRIP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLE_STRIP"
		end

	frozen GL_TRIANGLE_FAN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLE_FAN"
		end

	frozen GL_QUADS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUADS"
		end

	frozen GL_QUAD_STRIP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUAD_STRIP"
		end

	frozen GL_POLYGON_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_BIT"
		end

	frozen GL_POLYGON : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON"
		end

	frozen GL_POLYGON_STIPPLE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_STIPPLE_BIT"
		end

	frozen GL_PIXEL_MODE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MODE_BIT"
		end

	frozen GL_LIGHTING_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHTING_BIT"
		end

	frozen GL_FOG_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_BIT"
		end

	frozen GL_DEPTH_BUFFER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_BUFFER_BIT"
		end

	frozen GL_ACCUM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACCUM"
		end

	frozen GL_LOAD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOAD"
		end

	frozen GL_RETURN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RETURN"
		end

	frozen GL_MULT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULT"
		end

	frozen GL_ADD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ADD"
		end

	frozen GL_NEVER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEVER"
		end

	frozen GL_ACCUM_BUFFER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACCUM_BUFFER_BIT"
		end

	frozen GL_LESS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LESS"
		end

	frozen GL_EQUAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EQUAL"
		end

	frozen GL_LEQUAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LEQUAL"
		end

	frozen GL_GREATER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREATER"
		end

	frozen GL_NOTEQUAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NOTEQUAL"
		end

	frozen GL_GEQUAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEQUAL"
		end

	frozen GL_ALWAYS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALWAYS"
		end

	frozen GL_SRC_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC_COLOR"
		end

	frozen GL_ONE_MINUS_SRC_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_SRC_COLOR"
		end

	frozen GL_SRC_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC_ALPHA"
		end

	frozen GL_ONE_MINUS_SRC_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_SRC_ALPHA"
		end

	frozen GL_DST_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DST_ALPHA"
		end

	frozen GL_ONE_MINUS_DST_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_DST_ALPHA"
		end

	frozen GL_DST_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DST_COLOR"
		end

	frozen GL_ONE_MINUS_DST_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_DST_COLOR"
		end

	frozen GL_SRC_ALPHA_SATURATE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC_ALPHA_SATURATE"
		end

	frozen GL_STENCIL_BUFFER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BUFFER_BIT"
		end

	frozen GL_FRONT_LEFT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRONT_LEFT"
		end

	frozen GL_FRONT_RIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRONT_RIGHT"
		end

	frozen GL_BACK_LEFT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BACK_LEFT"
		end

	frozen GL_BACK_RIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BACK_RIGHT"
		end

	frozen GL_FRONT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRONT"
		end

	frozen GL_BACK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BACK"
		end

	frozen GL_LEFT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LEFT"
		end

	frozen GL_RIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RIGHT"
		end

	frozen GL_FRONT_AND_BACK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRONT_AND_BACK"
		end

	frozen GL_AUX0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AUX0"
		end

	frozen GL_AUX1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AUX1"
		end

	frozen GL_AUX2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AUX2"
		end

	frozen GL_AUX3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AUX3"
		end

	frozen GL_INVALID_ENUM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVALID_ENUM"
		end

	frozen GL_INVALID_VALUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVALID_VALUE"
		end

	frozen GL_INVALID_OPERATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVALID_OPERATION"
		end

	frozen GL_STACK_OVERFLOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STACK_OVERFLOW"
		end

	frozen GL_STACK_UNDERFLOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STACK_UNDERFLOW"
		end

	frozen GL_OUT_OF_MEMORY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUT_OF_MEMORY"
		end

	frozen GL_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_2D"
		end

	frozen GL_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_3D"
		end

	frozen GL_3D_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_3D_COLOR"
		end

	frozen GL_3D_COLOR_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_3D_COLOR_TEXTURE"
		end

	frozen GL_4D_COLOR_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4D_COLOR_TEXTURE"
		end

	frozen GL_PASS_THROUGH_TOKEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PASS_THROUGH_TOKEN"
		end

	frozen GL_POINT_TOKEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_TOKEN"
		end

	frozen GL_LINE_TOKEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_TOKEN"
		end

	frozen GL_POLYGON_TOKEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_TOKEN"
		end

	frozen GL_BITMAP_TOKEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BITMAP_TOKEN"
		end

	frozen GL_DRAW_PIXEL_TOKEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_PIXEL_TOKEN"
		end

	frozen GL_COPY_PIXEL_TOKEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COPY_PIXEL_TOKEN"
		end

	frozen GL_LINE_RESET_TOKEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_RESET_TOKEN"
		end

	frozen GL_EXP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXP"
		end

	frozen GL_VIEWPORT_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEWPORT_BIT"
		end

	frozen GL_EXP2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXP2"
		end

	frozen GL_CW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CW"
		end

	frozen GL_CCW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CCW"
		end

	frozen GL_COEFF : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COEFF"
		end

	frozen GL_ORDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ORDER"
		end

	frozen GL_DOMAIN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOMAIN"
		end

	frozen GL_CURRENT_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_COLOR"
		end

	frozen GL_CURRENT_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_INDEX"
		end

	frozen GL_CURRENT_NORMAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_NORMAL"
		end

	frozen GL_CURRENT_TEXTURE_COORDS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_TEXTURE_COORDS"
		end

	frozen GL_CURRENT_RASTER_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_COLOR"
		end

	frozen GL_CURRENT_RASTER_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_INDEX"
		end

	frozen GL_CURRENT_RASTER_TEXTURE_COORDS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_TEXTURE_COORDS"
		end

	frozen GL_CURRENT_RASTER_POSITION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_POSITION"
		end

	frozen GL_CURRENT_RASTER_POSITION_VALID : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_POSITION_VALID"
		end

	frozen GL_CURRENT_RASTER_DISTANCE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_DISTANCE"
		end

	frozen GL_POINT_SMOOTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SMOOTH"
		end

	frozen GL_POINT_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SIZE"
		end

	frozen GL_POINT_SIZE_RANGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_RANGE"
		end

	frozen GL_POINT_SIZE_GRANULARITY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_GRANULARITY"
		end

	frozen GL_LINE_SMOOTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_SMOOTH"
		end

	frozen GL_LINE_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_WIDTH"
		end

	frozen GL_LINE_WIDTH_RANGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_WIDTH_RANGE"
		end

	frozen GL_LINE_WIDTH_GRANULARITY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_WIDTH_GRANULARITY"
		end

	frozen GL_LINE_STIPPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_STIPPLE"
		end

	frozen GL_LINE_STIPPLE_PATTERN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_STIPPLE_PATTERN"
		end

	frozen GL_LINE_STIPPLE_REPEAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_STIPPLE_REPEAT"
		end

	frozen GL_LIST_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIST_MODE"
		end

	frozen GL_MAX_LIST_NESTING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_LIST_NESTING"
		end

	frozen GL_LIST_BASE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIST_BASE"
		end

	frozen GL_LIST_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIST_INDEX"
		end

	frozen GL_POLYGON_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_MODE"
		end

	frozen GL_POLYGON_SMOOTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_SMOOTH"
		end

	frozen GL_POLYGON_STIPPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_STIPPLE"
		end

	frozen GL_EDGE_FLAG : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG"
		end

	frozen GL_CULL_FACE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CULL_FACE"
		end

	frozen GL_CULL_FACE_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CULL_FACE_MODE"
		end

	frozen GL_FRONT_FACE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRONT_FACE"
		end

	frozen GL_LIGHTING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHTING"
		end

	frozen GL_LIGHT_MODEL_LOCAL_VIEWER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT_MODEL_LOCAL_VIEWER"
		end

	frozen GL_LIGHT_MODEL_TWO_SIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT_MODEL_TWO_SIDE"
		end

	frozen GL_LIGHT_MODEL_AMBIENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT_MODEL_AMBIENT"
		end

	frozen GL_SHADE_MODEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADE_MODEL"
		end

	frozen GL_COLOR_MATERIAL_FACE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_MATERIAL_FACE"
		end

	frozen GL_COLOR_MATERIAL_PARAMETER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_MATERIAL_PARAMETER"
		end

	frozen GL_COLOR_MATERIAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_MATERIAL"
		end

	frozen GL_FOG : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG"
		end

	frozen GL_FOG_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_INDEX"
		end

	frozen GL_FOG_DENSITY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_DENSITY"
		end

	frozen GL_FOG_START : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_START"
		end

	frozen GL_FOG_END : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_END"
		end

	frozen GL_FOG_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_MODE"
		end

	frozen GL_FOG_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COLOR"
		end

	frozen GL_DEPTH_RANGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_RANGE"
		end

	frozen GL_DEPTH_TEST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_TEST"
		end

	frozen GL_DEPTH_WRITEMASK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_WRITEMASK"
		end

	frozen GL_DEPTH_CLEAR_VALUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_CLEAR_VALUE"
		end

	frozen GL_DEPTH_FUNC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_FUNC"
		end

	frozen GL_ACCUM_CLEAR_VALUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACCUM_CLEAR_VALUE"
		end

	frozen GL_STENCIL_TEST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_TEST"
		end

	frozen GL_STENCIL_CLEAR_VALUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_CLEAR_VALUE"
		end

	frozen GL_STENCIL_FUNC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_FUNC"
		end

	frozen GL_STENCIL_VALUE_MASK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_VALUE_MASK"
		end

	frozen GL_STENCIL_FAIL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_FAIL"
		end

	frozen GL_STENCIL_PASS_DEPTH_FAIL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_PASS_DEPTH_FAIL"
		end

	frozen GL_STENCIL_PASS_DEPTH_PASS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_PASS_DEPTH_PASS"
		end

	frozen GL_STENCIL_REF : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_REF"
		end

	frozen GL_STENCIL_WRITEMASK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_WRITEMASK"
		end

	frozen GL_MATRIX_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX_MODE"
		end

	frozen GL_NORMALIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMALIZE"
		end

	frozen GL_VIEWPORT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEWPORT"
		end

	frozen GL_MODELVIEW_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW_STACK_DEPTH"
		end

	frozen GL_PROJECTION_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROJECTION_STACK_DEPTH"
		end

	frozen GL_TEXTURE_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_STACK_DEPTH"
		end

	frozen GL_MODELVIEW_MATRIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW_MATRIX"
		end

	frozen GL_PROJECTION_MATRIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROJECTION_MATRIX"
		end

	frozen GL_TEXTURE_MATRIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MATRIX"
		end

	frozen GL_ATTRIB_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATTRIB_STACK_DEPTH"
		end

	frozen GL_CLIENT_ATTRIB_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIENT_ATTRIB_STACK_DEPTH"
		end

	frozen GL_ALPHA_TEST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_TEST"
		end

	frozen GL_ALPHA_TEST_FUNC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_TEST_FUNC"
		end

	frozen GL_ALPHA_TEST_REF : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_TEST_REF"
		end

	frozen GL_DITHER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DITHER"
		end

	frozen GL_BLEND_DST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_DST"
		end

	frozen GL_BLEND_SRC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_SRC"
		end

	frozen GL_BLEND : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND"
		end

	frozen GL_LOGIC_OP_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOGIC_OP_MODE"
		end

	frozen GL_INDEX_LOGIC_OP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_LOGIC_OP"
		end

	frozen GL_COLOR_LOGIC_OP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_LOGIC_OP"
		end

	frozen GL_AUX_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AUX_BUFFERS"
		end

	frozen GL_DRAW_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER"
		end

	frozen GL_READ_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_BUFFER"
		end

	frozen GL_SCISSOR_BOX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCISSOR_BOX"
		end

	frozen GL_SCISSOR_TEST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCISSOR_TEST"
		end

	frozen GL_INDEX_CLEAR_VALUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_CLEAR_VALUE"
		end

	frozen GL_INDEX_WRITEMASK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_WRITEMASK"
		end

	frozen GL_COLOR_CLEAR_VALUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_CLEAR_VALUE"
		end

	frozen GL_COLOR_WRITEMASK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_WRITEMASK"
		end

	frozen GL_INDEX_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_MODE"
		end

	frozen GL_RGBA_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_MODE"
		end

	frozen GL_DOUBLEBUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLEBUFFER"
		end

	frozen GL_STEREO : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STEREO"
		end

	frozen GL_RENDER_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDER_MODE"
		end

	frozen GL_PERSPECTIVE_CORRECTION_HINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PERSPECTIVE_CORRECTION_HINT"
		end

	frozen GL_POINT_SMOOTH_HINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SMOOTH_HINT"
		end

	frozen GL_LINE_SMOOTH_HINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_SMOOTH_HINT"
		end

	frozen GL_POLYGON_SMOOTH_HINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_SMOOTH_HINT"
		end

	frozen GL_FOG_HINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_HINT"
		end

	frozen GL_TEXTURE_GEN_S : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_S"
		end

	frozen GL_TEXTURE_GEN_T : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_T"
		end

	frozen GL_TEXTURE_GEN_R : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_R"
		end

	frozen GL_TEXTURE_GEN_Q : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_Q"
		end

	frozen GL_PIXEL_MAP_I_TO_I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_I"
		end

	frozen GL_PIXEL_MAP_S_TO_S : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_S_TO_S"
		end

	frozen GL_PIXEL_MAP_I_TO_R : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_R"
		end

	frozen GL_PIXEL_MAP_I_TO_G : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_G"
		end

	frozen GL_PIXEL_MAP_I_TO_B : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_B"
		end

	frozen GL_PIXEL_MAP_I_TO_A : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_A"
		end

	frozen GL_PIXEL_MAP_R_TO_R : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_R_TO_R"
		end

	frozen GL_PIXEL_MAP_G_TO_G : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_G_TO_G"
		end

	frozen GL_PIXEL_MAP_B_TO_B : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_B_TO_B"
		end

	frozen GL_PIXEL_MAP_A_TO_A : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_A_TO_A"
		end

	frozen GL_PIXEL_MAP_I_TO_I_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_I_SIZE"
		end

	frozen GL_PIXEL_MAP_S_TO_S_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_S_TO_S_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_R_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_R_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_G_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_G_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_B_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_B_SIZE"
		end

	frozen GL_PIXEL_MAP_I_TO_A_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_I_TO_A_SIZE"
		end

	frozen GL_PIXEL_MAP_R_TO_R_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_R_TO_R_SIZE"
		end

	frozen GL_PIXEL_MAP_G_TO_G_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_G_TO_G_SIZE"
		end

	frozen GL_PIXEL_MAP_B_TO_B_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_B_TO_B_SIZE"
		end

	frozen GL_PIXEL_MAP_A_TO_A_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAP_A_TO_A_SIZE"
		end

	frozen GL_UNPACK_SWAP_BYTES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_SWAP_BYTES"
		end

	frozen GL_UNPACK_LSB_FIRST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_LSB_FIRST"
		end

	frozen GL_UNPACK_ROW_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_ROW_LENGTH"
		end

	frozen GL_UNPACK_SKIP_ROWS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_SKIP_ROWS"
		end

	frozen GL_UNPACK_SKIP_PIXELS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_SKIP_PIXELS"
		end

	frozen GL_UNPACK_ALIGNMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_ALIGNMENT"
		end

	frozen GL_PACK_SWAP_BYTES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_SWAP_BYTES"
		end

	frozen GL_PACK_LSB_FIRST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_LSB_FIRST"
		end

	frozen GL_PACK_ROW_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_ROW_LENGTH"
		end

	frozen GL_PACK_SKIP_ROWS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_SKIP_ROWS"
		end

	frozen GL_PACK_SKIP_PIXELS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_SKIP_PIXELS"
		end

	frozen GL_PACK_ALIGNMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_ALIGNMENT"
		end

	frozen GL_MAP_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_COLOR"
		end

	frozen GL_MAP_STENCIL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_STENCIL"
		end

	frozen GL_INDEX_SHIFT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_SHIFT"
		end

	frozen GL_INDEX_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_OFFSET"
		end

	frozen GL_RED_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED_SCALE"
		end

	frozen GL_RED_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED_BIAS"
		end

	frozen GL_ZOOM_X : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ZOOM_X"
		end

	frozen GL_ZOOM_Y : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ZOOM_Y"
		end

	frozen GL_GREEN_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREEN_SCALE"
		end

	frozen GL_GREEN_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREEN_BIAS"
		end

	frozen GL_BLUE_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLUE_SCALE"
		end

	frozen GL_BLUE_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLUE_BIAS"
		end

	frozen GL_ALPHA_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_SCALE"
		end

	frozen GL_ALPHA_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_BIAS"
		end

	frozen GL_DEPTH_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_SCALE"
		end

	frozen GL_DEPTH_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_BIAS"
		end

	frozen GL_MAX_EVAL_ORDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_EVAL_ORDER"
		end

	frozen GL_MAX_LIGHTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_LIGHTS"
		end

	frozen GL_MAX_CLIP_PLANES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CLIP_PLANES"
		end

	frozen GL_MAX_TEXTURE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_SIZE"
		end

	frozen GL_MAX_PIXEL_MAP_TABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PIXEL_MAP_TABLE"
		end

	frozen GL_MAX_ATTRIB_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ATTRIB_STACK_DEPTH"
		end

	frozen GL_MAX_MODELVIEW_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_MODELVIEW_STACK_DEPTH"
		end

	frozen GL_MAX_NAME_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_NAME_STACK_DEPTH"
		end

	frozen GL_MAX_PROJECTION_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROJECTION_STACK_DEPTH"
		end

	frozen GL_MAX_TEXTURE_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_STACK_DEPTH"
		end

	frozen GL_MAX_VIEWPORT_DIMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VIEWPORT_DIMS"
		end

	frozen GL_MAX_CLIENT_ATTRIB_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CLIENT_ATTRIB_STACK_DEPTH"
		end

	frozen GL_SUBPIXEL_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUBPIXEL_BITS"
		end

	frozen GL_INDEX_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_BITS"
		end

	frozen GL_RED_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED_BITS"
		end

	frozen GL_GREEN_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREEN_BITS"
		end

	frozen GL_BLUE_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLUE_BITS"
		end

	frozen GL_ALPHA_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_BITS"
		end

	frozen GL_DEPTH_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_BITS"
		end

	frozen GL_STENCIL_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BITS"
		end

	frozen GL_ACCUM_RED_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACCUM_RED_BITS"
		end

	frozen GL_ACCUM_GREEN_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACCUM_GREEN_BITS"
		end

	frozen GL_ACCUM_BLUE_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACCUM_BLUE_BITS"
		end

	frozen GL_ACCUM_ALPHA_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACCUM_ALPHA_BITS"
		end

	frozen GL_NAME_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NAME_STACK_DEPTH"
		end

	frozen GL_AUTO_NORMAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AUTO_NORMAL"
		end

	frozen GL_MAP1_COLOR_4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_COLOR_4"
		end

	frozen GL_MAP1_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_INDEX"
		end

	frozen GL_MAP1_NORMAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_NORMAL"
		end

	frozen GL_MAP1_TEXTURE_COORD_1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_TEXTURE_COORD_1"
		end

	frozen GL_MAP1_TEXTURE_COORD_2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_TEXTURE_COORD_2"
		end

	frozen GL_MAP1_TEXTURE_COORD_3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_TEXTURE_COORD_3"
		end

	frozen GL_MAP1_TEXTURE_COORD_4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_TEXTURE_COORD_4"
		end

	frozen GL_MAP1_VERTEX_3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_3"
		end

	frozen GL_MAP1_VERTEX_4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_4"
		end

	frozen GL_MAP2_COLOR_4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_COLOR_4"
		end

	frozen GL_MAP2_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_INDEX"
		end

	frozen GL_MAP2_NORMAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_NORMAL"
		end

	frozen GL_MAP2_TEXTURE_COORD_1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_TEXTURE_COORD_1"
		end

	frozen GL_MAP2_TEXTURE_COORD_2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_TEXTURE_COORD_2"
		end

	frozen GL_MAP2_TEXTURE_COORD_3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_TEXTURE_COORD_3"
		end

	frozen GL_MAP2_TEXTURE_COORD_4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_TEXTURE_COORD_4"
		end

	frozen GL_MAP2_VERTEX_3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_3"
		end

	frozen GL_MAP2_VERTEX_4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_4"
		end

	frozen GL_MAP1_GRID_DOMAIN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_GRID_DOMAIN"
		end

	frozen GL_MAP1_GRID_SEGMENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_GRID_SEGMENTS"
		end

	frozen GL_MAP2_GRID_DOMAIN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_GRID_DOMAIN"
		end

	frozen GL_MAP2_GRID_SEGMENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_GRID_SEGMENTS"
		end

	frozen GL_TEXTURE_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_1D"
		end

	frozen GL_TEXTURE_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_2D"
		end

	frozen GL_FEEDBACK_BUFFER_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FEEDBACK_BUFFER_POINTER"
		end

	frozen GL_FEEDBACK_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FEEDBACK_BUFFER_SIZE"
		end

	frozen GL_FEEDBACK_BUFFER_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FEEDBACK_BUFFER_TYPE"
		end

	frozen GL_SELECTION_BUFFER_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SELECTION_BUFFER_POINTER"
		end

	frozen GL_SELECTION_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SELECTION_BUFFER_SIZE"
		end

	frozen GL_TEXTURE_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_WIDTH"
		end

	frozen GL_TRANSFORM_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_BIT"
		end

	frozen GL_TEXTURE_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_HEIGHT"
		end

	frozen GL_TEXTURE_INTERNAL_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_INTERNAL_FORMAT"
		end

	frozen GL_TEXTURE_BORDER_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BORDER_COLOR"
		end

	frozen GL_TEXTURE_BORDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BORDER"
		end

	frozen GL_DONT_CARE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DONT_CARE"
		end

	frozen GL_FASTEST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FASTEST"
		end

	frozen GL_NICEST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NICEST"
		end

	frozen GL_AMBIENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMBIENT"
		end

	frozen GL_DIFFUSE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DIFFUSE"
		end

	frozen GL_SPECULAR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SPECULAR"
		end

	frozen GL_POSITION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POSITION"
		end

	frozen GL_SPOT_DIRECTION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SPOT_DIRECTION"
		end

	frozen GL_SPOT_EXPONENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SPOT_EXPONENT"
		end

	frozen GL_SPOT_CUTOFF : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SPOT_CUTOFF"
		end

	frozen GL_CONSTANT_ATTENUATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_ATTENUATION"
		end

	frozen GL_LINEAR_ATTENUATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINEAR_ATTENUATION"
		end

	frozen GL_QUADRATIC_ATTENUATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUADRATIC_ATTENUATION"
		end

	frozen GL_COMPILE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPILE"
		end

	frozen GL_COMPILE_AND_EXECUTE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPILE_AND_EXECUTE"
		end

	frozen GL_BYTE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BYTE"
		end

	frozen GL_UNSIGNED_BYTE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_BYTE"
		end

	frozen GL_SHORT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHORT"
		end

	frozen GL_UNSIGNED_SHORT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT"
		end

	frozen GL_INT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT"
		end

	frozen GL_UNSIGNED_INT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT"
		end

	frozen GL_FLOAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT"
		end

	frozen GL_2_BYTES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_2_BYTES"
		end

	frozen GL_3_BYTES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_3_BYTES"
		end

	frozen GL_4_BYTES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4_BYTES"
		end

	frozen GL_DOUBLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE"
		end

	frozen GL_CLEAR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLEAR"
		end

	frozen GL_AND : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AND"
		end

	frozen GL_AND_REVERSE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AND_REVERSE"
		end

	frozen GL_COPY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COPY"
		end

	frozen GL_AND_INVERTED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AND_INVERTED"
		end

	frozen GL_NOOP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NOOP"
		end

	frozen GL_XOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_XOR"
		end

	frozen GL_OR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OR"
		end

	frozen GL_NOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NOR"
		end

	frozen GL_EQUIV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EQUIV"
		end

	frozen GL_INVERT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVERT"
		end

	frozen GL_OR_REVERSE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OR_REVERSE"
		end

	frozen GL_COPY_INVERTED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COPY_INVERTED"
		end

	frozen GL_OR_INVERTED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OR_INVERTED"
		end

	frozen GL_NAND : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NAND"
		end

	frozen GL_SET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SET"
		end

	frozen GL_EMISSION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EMISSION"
		end

	frozen GL_SHININESS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHININESS"
		end

	frozen GL_AMBIENT_AND_DIFFUSE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMBIENT_AND_DIFFUSE"
		end

	frozen GL_COLOR_INDEXES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_INDEXES"
		end

	frozen GL_MODELVIEW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW"
		end

	frozen GL_PROJECTION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROJECTION"
		end

	frozen GL_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE"
		end

	frozen GL_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR"
		end

	frozen GL_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH"
		end

	frozen GL_STENCIL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL"
		end

	frozen GL_COLOR_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_INDEX"
		end

	frozen GL_STENCIL_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX"
		end

	frozen GL_DEPTH_COMPONENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT"
		end

	frozen GL_RED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED"
		end

	frozen GL_GREEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREEN"
		end

	frozen GL_BLUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLUE"
		end

	frozen GL_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA"
		end

	frozen GL_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB"
		end

	frozen GL_RGBA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA"
		end

	frozen GL_LUMINANCE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE"
		end

	frozen GL_LUMINANCE_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA"
		end

	frozen GL_BITMAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BITMAP"
		end

	frozen GL_POINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT"
		end

	frozen GL_LINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE"
		end

	frozen GL_FILL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FILL"
		end

	frozen GL_RENDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDER"
		end

	frozen GL_FEEDBACK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FEEDBACK"
		end

	frozen GL_SELECT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SELECT"
		end

	frozen GL_FLAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLAT"
		end

	frozen GL_SMOOTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SMOOTH"
		end

	frozen GL_KEEP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_KEEP"
		end

	frozen GL_REPLACE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACE"
		end

	frozen GL_INCR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INCR"
		end

	frozen GL_DECR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DECR"
		end

	frozen GL_VENDOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VENDOR"
		end

	frozen GL_RENDERER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERER"
		end

	frozen GL_VERSION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION"
		end

	frozen GL_EXTENSIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXTENSIONS"
		end

	frozen GL_S : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_S"
		end

	frozen GL_ENABLE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ENABLE_BIT"
		end

	frozen GL_T : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_T"
		end

	frozen GL_R : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R"
		end

	frozen GL_Q : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_Q"
		end

	frozen GL_MODULATE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODULATE"
		end

	frozen GL_DECAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DECAL"
		end

	frozen GL_TEXTURE_ENV_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_ENV_MODE"
		end

	frozen GL_TEXTURE_ENV_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_ENV_COLOR"
		end

	frozen GL_TEXTURE_ENV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_ENV"
		end

	frozen GL_EYE_LINEAR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EYE_LINEAR"
		end

	frozen GL_OBJECT_LINEAR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_LINEAR"
		end

	frozen GL_SPHERE_MAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SPHERE_MAP"
		end

	frozen GL_TEXTURE_GEN_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEN_MODE"
		end

	frozen GL_OBJECT_PLANE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_PLANE"
		end

	frozen GL_EYE_PLANE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EYE_PLANE"
		end

	frozen GL_NEAREST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEAREST"
		end

	frozen GL_LINEAR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINEAR"
		end

	frozen GL_NEAREST_MIPMAP_NEAREST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEAREST_MIPMAP_NEAREST"
		end

	frozen GL_LINEAR_MIPMAP_NEAREST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINEAR_MIPMAP_NEAREST"
		end

	frozen GL_NEAREST_MIPMAP_LINEAR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEAREST_MIPMAP_LINEAR"
		end

	frozen GL_LINEAR_MIPMAP_LINEAR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINEAR_MIPMAP_LINEAR"
		end

	frozen GL_TEXTURE_MAG_FILTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAG_FILTER"
		end

	frozen GL_TEXTURE_MIN_FILTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MIN_FILTER"
		end

	frozen GL_TEXTURE_WRAP_S : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_WRAP_S"
		end

	frozen GL_TEXTURE_WRAP_T : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_WRAP_T"
		end

	frozen GL_CLAMP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP"
		end

	frozen GL_REPEAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPEAT"
		end

	frozen GL_POLYGON_OFFSET_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_UNITS"
		end

	frozen GL_POLYGON_OFFSET_POINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_POINT"
		end

	frozen GL_POLYGON_OFFSET_LINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_LINE"
		end

	frozen GL_R3_G3_B2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R3_G3_B2"
		end

	frozen GL_V2F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_V2F"
		end

	frozen GL_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_V3F"
		end

	frozen GL_C4UB_V2F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_C4UB_V2F"
		end

	frozen GL_C4UB_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_C4UB_V3F"
		end

	frozen GL_C3F_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_C3F_V3F"
		end

	frozen GL_N3F_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_N3F_V3F"
		end

	frozen GL_C4F_N3F_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_C4F_N3F_V3F"
		end

	frozen GL_T2F_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_T2F_V3F"
		end

	frozen GL_T4F_V4F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_T4F_V4F"
		end

	frozen GL_T2F_C4UB_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_T2F_C4UB_V3F"
		end

	frozen GL_T2F_C3F_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_T2F_C3F_V3F"
		end

	frozen GL_T2F_N3F_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_T2F_N3F_V3F"
		end

	frozen GL_T2F_C4F_N3F_V3F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_T2F_C4F_N3F_V3F"
		end

	frozen GL_T4F_C4F_N3F_V4F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_T4F_C4F_N3F_V4F"
		end

	frozen GL_CLIP_PLANE0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE0"
		end

	frozen GL_CLIP_PLANE1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE1"
		end

	frozen GL_CLIP_PLANE2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE2"
		end

	frozen GL_CLIP_PLANE3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE3"
		end

	frozen GL_CLIP_PLANE4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE4"
		end

	frozen GL_CLIP_PLANE5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_PLANE5"
		end

	frozen GL_LIGHT0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT0"
		end

	frozen GL_COLOR_BUFFER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_BUFFER_BIT"
		end

	frozen GL_LIGHT1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT1"
		end

	frozen GL_LIGHT2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT2"
		end

	frozen GL_LIGHT3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT3"
		end

	frozen GL_LIGHT4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT4"
		end

	frozen GL_LIGHT5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT5"
		end

	frozen GL_LIGHT6 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT6"
		end

	frozen GL_LIGHT7 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT7"
		end

	frozen GL_HINT_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HINT_BIT"
		end

	frozen GL_POLYGON_OFFSET_FILL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_FILL"
		end

	frozen GL_POLYGON_OFFSET_FACTOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_FACTOR"
		end

	frozen GL_ALPHA4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA4"
		end

	frozen GL_ALPHA8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA8"
		end

	frozen GL_ALPHA12 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA12"
		end

	frozen GL_ALPHA16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA16"
		end

	frozen GL_LUMINANCE4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE4"
		end

	frozen GL_LUMINANCE8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE8"
		end

	frozen GL_LUMINANCE12 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE12"
		end

	frozen GL_LUMINANCE16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16"
		end

	frozen GL_LUMINANCE4_ALPHA4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE4_ALPHA4"
		end

	frozen GL_LUMINANCE6_ALPHA2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE6_ALPHA2"
		end

	frozen GL_LUMINANCE8_ALPHA8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE8_ALPHA8"
		end

	frozen GL_LUMINANCE12_ALPHA4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE12_ALPHA4"
		end

	frozen GL_LUMINANCE12_ALPHA12 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE12_ALPHA12"
		end

	frozen GL_LUMINANCE16_ALPHA16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_ALPHA16"
		end

	frozen GL_INTENSITY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY"
		end

	frozen GL_INTENSITY4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY4"
		end

	frozen GL_INTENSITY8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY8"
		end

	frozen GL_INTENSITY12 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY12"
		end

	frozen GL_INTENSITY16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY16"
		end

	frozen GL_RGB4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB4"
		end

	frozen GL_RGB5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB5"
		end

	frozen GL_RGB8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB8"
		end

	frozen GL_RGB10 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB10"
		end

	frozen GL_RGB12 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB12"
		end

	frozen GL_RGB16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16"
		end

	frozen GL_RGBA2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA2"
		end

	frozen GL_RGBA4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA4"
		end

	frozen GL_RGB5_A1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB5_A1"
		end

	frozen GL_RGBA8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA8"
		end

	frozen GL_RGB10_A2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB10_A2"
		end

	frozen GL_RGBA12 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA12"
		end

	frozen GL_RGBA16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16"
		end

	frozen GL_TEXTURE_RED_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RED_SIZE"
		end

	frozen GL_TEXTURE_GREEN_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GREEN_SIZE"
		end

	frozen GL_TEXTURE_BLUE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BLUE_SIZE"
		end

	frozen GL_TEXTURE_ALPHA_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_ALPHA_SIZE"
		end

	frozen GL_TEXTURE_LUMINANCE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_LUMINANCE_SIZE"
		end

	frozen GL_TEXTURE_INTENSITY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_INTENSITY_SIZE"
		end

	frozen GL_PROXY_TEXTURE_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_1D"
		end

	frozen GL_PROXY_TEXTURE_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_2D"
		end

	frozen GL_TEXTURE_PRIORITY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_PRIORITY"
		end

	frozen GL_TEXTURE_RESIDENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RESIDENT"
		end

	frozen GL_TEXTURE_BINDING_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_1D"
		end

	frozen GL_TEXTURE_BINDING_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_2D"
		end

	frozen GL_VERTEX_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY"
		end

	frozen GL_NORMAL_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY"
		end

	frozen GL_COLOR_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY"
		end

	frozen GL_INDEX_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY"
		end

	frozen GL_TEXTURE_COORD_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY"
		end

	frozen GL_EDGE_FLAG_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY"
		end

	frozen GL_VERTEX_ARRAY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_SIZE"
		end

	frozen GL_VERTEX_ARRAY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_TYPE"
		end

	frozen GL_VERTEX_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_STRIDE"
		end

	frozen GL_NORMAL_ARRAY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_TYPE"
		end

	frozen GL_NORMAL_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_STRIDE"
		end

	frozen GL_COLOR_ARRAY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_SIZE"
		end

	frozen GL_COLOR_ARRAY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_TYPE"
		end

	frozen GL_COLOR_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_STRIDE"
		end

	frozen GL_INDEX_ARRAY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_TYPE"
		end

	frozen GL_INDEX_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_STRIDE"
		end

	frozen GL_TEXTURE_COORD_ARRAY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_SIZE"
		end

	frozen GL_TEXTURE_COORD_ARRAY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_TYPE"
		end

	frozen GL_TEXTURE_COORD_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_STRIDE"
		end

	frozen GL_EDGE_FLAG_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_STRIDE"
		end

	frozen GL_VERTEX_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_POINTER"
		end

	frozen GL_NORMAL_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_POINTER"
		end

	frozen GL_COLOR_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_POINTER"
		end

	frozen GL_INDEX_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_POINTER"
		end

	frozen GL_TEXTURE_COORD_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_POINTER"
		end

	frozen GL_EDGE_FLAG_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_POINTER"
		end

	frozen GL_COLOR_INDEX1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_INDEX1_EXT"
		end

	frozen GL_COLOR_INDEX2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_INDEX2_EXT"
		end

	frozen GL_COLOR_INDEX4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_INDEX4_EXT"
		end

	frozen GL_COLOR_INDEX8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_INDEX8_EXT"
		end

	frozen GL_COLOR_INDEX12_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_INDEX12_EXT"
		end

	frozen GL_COLOR_INDEX16_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_INDEX16_EXT"
		end

	frozen GL_EVAL_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_BIT"
		end

	frozen GL_LIST_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIST_BIT"
		end

	frozen GL_TEXTURE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BIT"
		end

	frozen GL_SCISSOR_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCISSOR_BIT"
		end

	frozen GL_ALL_ATTRIB_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALL_ATTRIB_BITS"
		end

	frozen GL_CLIENT_ALL_ATTRIB_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIENT_ALL_ATTRIB_BITS"
		end

	frozen glAccum(a_op: NATURAL; a_value: REAL_32)
		external
			"C(GLenum,GLfloat) | <glew_order.h>"
		alias
			"glAccum"
		end

	frozen glAlphaFunc(a_func: NATURAL; a_ref: REAL_32)
		external
			"C(GLenum,GLclampf) | <glew_order.h>"
		alias
			"glAlphaFunc"
		end

	frozen glAreTexturesResident(a_n: INTEGER; a_textures: POINTER; a_residences: POINTER):BOOLEAN
		external
			"C(GLsizei,GLuint *,GLboolean *):GLboolean | <glew_order.h>"
		alias
			"glAreTexturesResident"
		end

	frozen glArrayElement(a_i: INTEGER)
		external
			"C(GLint) | <glew_order.h>"
		alias
			"glArrayElement"
		end

	frozen glBegin(a_mode: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glBegin"
		end

	frozen glBindTexture(a_target: NATURAL; a_texture: NATURAL)
		external
			"C(GLenum,GLuint) | <glew_order.h>"
		alias
			"glBindTexture"
		end

	frozen glBitmap(a_width: INTEGER; a_height: INTEGER; a_xorig: REAL_32; a_yorig: REAL_32; a_xmove: REAL_32; a_ymove: REAL_32; a_bitmap: POINTER)
		external
			"C(GLsizei,GLsizei,GLfloat,GLfloat,GLfloat,GLfloat,GLubyte *) | <glew_order.h>"
		alias
			"glBitmap"
		end

	frozen glBlendFunc(a_sfactor: NATURAL; a_dfactor: NATURAL)
		external
			"C(GLenum,GLenum) | <glew_order.h>"
		alias
			"glBlendFunc"
		end

	frozen glCallList(a_list: NATURAL)
		external
			"C(GLuint) | <glew_order.h>"
		alias
			"glCallList"
		end

	frozen glCallLists(a_n: INTEGER; a_type: NATURAL; a_lists: POINTER)
		external
			"C(GLsizei,GLenum,GLvoid *) | <glew_order.h>"
		alias
			"glCallLists"
		end

	frozen glClear(a_mask: NATURAL)
		external
			"C(GLbitfield) | <glew_order.h>"
		alias
			"glClear"
		end

	frozen glClearAccum(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glClearAccum"
		end

	frozen glClearColor(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C(GLclampf,GLclampf,GLclampf,GLclampf) | <glew_order.h>"
		alias
			"glClearColor"
		end

	frozen glClearDepth(a_depth: REAL_64)
		external
			"C(GLclampd) | <glew_order.h>"
		alias
			"glClearDepth"
		end

	frozen glClearIndex(a_c: REAL_32)
		external
			"C(GLfloat) | <glew_order.h>"
		alias
			"glClearIndex"
		end

	frozen glClearStencil(a_s: INTEGER)
		external
			"C(GLint) | <glew_order.h>"
		alias
			"glClearStencil"
		end

	frozen glClipPlane(a_plane: NATURAL; a_equation: POINTER)
		external
			"C(GLenum,GLdouble *) | <glew_order.h>"
		alias
			"glClipPlane"
		end

	frozen glColor3b(a_red: INTEGER_8; a_green: INTEGER_8; a_blue: INTEGER_8)
		external
			"C(GLbyte,GLbyte,GLbyte) | <glew_order.h>"
		alias
			"glColor3b"
		end

	frozen glColor3bv(a_v: POINTER)
		external
			"C(GLbyte *) | <glew_order.h>"
		alias
			"glColor3bv"
		end

	frozen glColor3d(a_red: REAL_64; a_green: REAL_64; a_blue: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glColor3d"
		end

	frozen glColor3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glColor3dv"
		end

	frozen glColor3f(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glColor3f"
		end

	frozen glColor3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glColor3fv"
		end

	frozen glColor3i(a_red: INTEGER; a_green: INTEGER; a_blue: INTEGER)
		external
			"C(GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glColor3i"
		end

	frozen glColor3iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glColor3iv"
		end

	frozen glColor3s(a_red: INTEGER_16; a_green: INTEGER_16; a_blue: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glColor3s"
		end

	frozen glColor3sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glColor3sv"
		end

	frozen glColor3ub(a_red: NATURAL_8; a_green: NATURAL_8; a_blue: NATURAL_8)
		external
			"C(GLubyte,GLubyte,GLubyte) | <glew_order.h>"
		alias
			"glColor3ub"
		end

	frozen glColor3ubv(a_v: POINTER)
		external
			"C(GLubyte *) | <glew_order.h>"
		alias
			"glColor3ubv"
		end

	frozen glColor3ui(a_red: NATURAL; a_green: NATURAL; a_blue: NATURAL)
		external
			"C(GLuint,GLuint,GLuint) | <glew_order.h>"
		alias
			"glColor3ui"
		end

	frozen glColor3uiv(a_v: POINTER)
		external
			"C(GLuint *) | <glew_order.h>"
		alias
			"glColor3uiv"
		end

	frozen glColor3us(a_red: NATURAL_16; a_green: NATURAL_16; a_blue: NATURAL_16)
		external
			"C(GLushort,GLushort,GLushort) | <glew_order.h>"
		alias
			"glColor3us"
		end

	frozen glColor3usv(a_v: POINTER)
		external
			"C(GLushort *) | <glew_order.h>"
		alias
			"glColor3usv"
		end

	frozen glColor4b(a_red: INTEGER_8; a_green: INTEGER_8; a_blue: INTEGER_8; a_alpha: INTEGER_8)
		external
			"C(GLbyte,GLbyte,GLbyte,GLbyte) | <glew_order.h>"
		alias
			"glColor4b"
		end

	frozen glColor4bv(a_v: POINTER)
		external
			"C(GLbyte *) | <glew_order.h>"
		alias
			"glColor4bv"
		end

	frozen glColor4d(a_red: REAL_64; a_green: REAL_64; a_blue: REAL_64; a_alpha: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glColor4d"
		end

	frozen glColor4dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glColor4dv"
		end

	frozen glColor4f(a_red: REAL_32; a_green: REAL_32; a_blue: REAL_32; a_alpha: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glColor4f"
		end

	frozen glColor4fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glColor4fv"
		end

	frozen glColor4i(a_red: INTEGER; a_green: INTEGER; a_blue: INTEGER; a_alpha: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glColor4i"
		end

	frozen glColor4iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glColor4iv"
		end

	frozen glColor4s(a_red: INTEGER_16; a_green: INTEGER_16; a_blue: INTEGER_16; a_alpha: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glColor4s"
		end

	frozen glColor4sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glColor4sv"
		end

	frozen glColor4ub(a_red: NATURAL_8; a_green: NATURAL_8; a_blue: NATURAL_8; a_alpha: NATURAL_8)
		external
			"C(GLubyte,GLubyte,GLubyte,GLubyte) | <glew_order.h>"
		alias
			"glColor4ub"
		end

	frozen glColor4ubv(a_v: POINTER)
		external
			"C(GLubyte *) | <glew_order.h>"
		alias
			"glColor4ubv"
		end

	frozen glColor4ui(a_red: NATURAL; a_green: NATURAL; a_blue: NATURAL; a_alpha: NATURAL)
		external
			"C(GLuint,GLuint,GLuint,GLuint) | <glew_order.h>"
		alias
			"glColor4ui"
		end

	frozen glColor4uiv(a_v: POINTER)
		external
			"C(GLuint *) | <glew_order.h>"
		alias
			"glColor4uiv"
		end

	frozen glColor4us(a_red: NATURAL_16; a_green: NATURAL_16; a_blue: NATURAL_16; a_alpha: NATURAL_16)
		external
			"C(GLushort,GLushort,GLushort,GLushort) | <glew_order.h>"
		alias
			"glColor4us"
		end

	frozen glColor4usv(a_v: POINTER)
		external
			"C(GLushort *) | <glew_order.h>"
		alias
			"glColor4usv"
		end

	frozen glColorMask(a_red: BOOLEAN; a_green: BOOLEAN; a_blue: BOOLEAN; a_alpha: BOOLEAN)
		external
			"C(GLboolean,GLboolean,GLboolean,GLboolean) | <glew_order.h>"
		alias
			"glColorMask"
		end

	frozen glColorMaterial(a_face: NATURAL; a_mode: NATURAL)
		external
			"C(GLenum,GLenum) | <glew_order.h>"
		alias
			"glColorMaterial"
		end

	frozen glColorPointer(a_size: INTEGER; a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C(GLint,GLenum,GLsizei,GLvoid *) | <glew_order.h>"
		alias
			"glColorPointer"
		end

	frozen glCopyPixels(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_type: NATURAL)
		external
			"C(GLint,GLint,GLsizei,GLsizei,GLenum) | <glew_order.h>"
		alias
			"glCopyPixels"
		end

	frozen glCopyTexImage1D(a_target: NATURAL; a_level: INTEGER; a_internalFormat: NATURAL; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_border: INTEGER)
		external
			"C(GLenum,GLint,GLenum,GLint,GLint,GLsizei,GLint) | <glew_order.h>"
		alias
			"glCopyTexImage1D"
		end

	frozen glCopyTexImage2D(a_target: NATURAL; a_level: INTEGER; a_internalFormat: NATURAL; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_border: INTEGER)
		external
			"C(GLenum,GLint,GLenum,GLint,GLint,GLsizei,GLsizei,GLint) | <glew_order.h>"
		alias
			"glCopyTexImage2D"
		end

	frozen glCopyTexSubImage1D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER)
		external
			"C(GLenum,GLint,GLint,GLint,GLint,GLsizei) | <glew_order.h>"
		alias
			"glCopyTexSubImage1D"
		end

	frozen glCopyTexSubImage2D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_yoffset: INTEGER; a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C(GLenum,GLint,GLint,GLint,GLint,GLint,GLsizei,GLsizei) | <glew_order.h>"
		alias
			"glCopyTexSubImage2D"
		end

	frozen glCullFace(a_mode: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glCullFace"
		end

	frozen glDeleteLists(a_list: NATURAL; a_range: INTEGER)
		external
			"C(GLuint,GLsizei) | <glew_order.h>"
		alias
			"glDeleteLists"
		end

	frozen glDeleteTextures(a_n: INTEGER; a_textures: POINTER)
		external
			"C(GLsizei,GLuint *) | <glew_order.h>"
		alias
			"glDeleteTextures"
		end

	frozen glDepthFunc(a_func: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glDepthFunc"
		end

	frozen glDepthMask(a_flag: BOOLEAN)
		external
			"C(GLboolean) | <glew_order.h>"
		alias
			"glDepthMask"
		end

	frozen glDepthRange(a_zNear: REAL_64; a_zFar: REAL_64)
		external
			"C(GLclampd,GLclampd) | <glew_order.h>"
		alias
			"glDepthRange"
		end

	frozen glDisable(a_cap: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glDisable"
		end

	frozen glDisableClientState(a_array: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glDisableClientState"
		end

	frozen glDrawArrays(a_mode: NATURAL; a_first: INTEGER; a_count: INTEGER)
		external
			"C(GLenum,GLint,GLsizei) | <glew_order.h>"
		alias
			"glDrawArrays"
		end

	frozen glDrawBuffer(a_mode: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glDrawBuffer"
		end

	frozen glDrawElements(a_mode: NATURAL; a_count: INTEGER; a_type: NATURAL; a_indices: POINTER)
		external
			"C(GLenum,GLsizei,GLenum,GLvoid *) | <glew_order.h>"
		alias
			"glDrawElements"
		end

	frozen glDrawPixels(a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLsizei,GLsizei,GLenum,GLenum,GLvoid *) | <glew_order.h>"
		alias
			"glDrawPixels"
		end

	frozen glEdgeFlag(a_flag: BOOLEAN)
		external
			"C(GLboolean) | <glew_order.h>"
		alias
			"glEdgeFlag"
		end

	frozen glEdgeFlagPointer(a_stride: INTEGER; a_pointer: POINTER)
		external
			"C(GLsizei,GLvoid *) | <glew_order.h>"
		alias
			"glEdgeFlagPointer"
		end

	frozen glEdgeFlagv(a_flag: POINTER)
		external
			"C(GLboolean *) | <glew_order.h>"
		alias
			"glEdgeFlagv"
		end

	frozen glEnable(a_cap: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glEnable"
		end

	frozen glEnableClientState(a_array: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glEnableClientState"
		end

	frozen glEnd
		external
			"C | <glew_order.h>"
		alias
			"glEnd"
		end

	frozen glEndList
		external
			"C | <glew_order.h>"
		alias
			"glEndList"
		end

	frozen glEvalCoord1d(a_u: REAL_64)
		external
			"C(GLdouble) | <glew_order.h>"
		alias
			"glEvalCoord1d"
		end

	frozen glEvalCoord1dv(a_u: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glEvalCoord1dv"
		end

	frozen glEvalCoord1f(a_u: REAL_32)
		external
			"C(GLfloat) | <glew_order.h>"
		alias
			"glEvalCoord1f"
		end

	frozen glEvalCoord1fv(a_u: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glEvalCoord1fv"
		end

	frozen glEvalCoord2d(a_u: REAL_64; a_v: REAL_64)
		external
			"C(GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glEvalCoord2d"
		end

	frozen glEvalCoord2dv(a_u: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glEvalCoord2dv"
		end

	frozen glEvalCoord2f(a_u: REAL_32; a_v: REAL_32)
		external
			"C(GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glEvalCoord2f"
		end

	frozen glEvalCoord2fv(a_u: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glEvalCoord2fv"
		end

	frozen glEvalMesh1(a_mode: NATURAL; a_i1: INTEGER; a_i2: INTEGER)
		external
			"C(GLenum,GLint,GLint) | <glew_order.h>"
		alias
			"glEvalMesh1"
		end

	frozen glEvalMesh2(a_mode: NATURAL; a_i1: INTEGER; a_i2: INTEGER; a_j1: INTEGER; a_j2: INTEGER)
		external
			"C(GLenum,GLint,GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glEvalMesh2"
		end

	frozen glEvalPoint1(a_i: INTEGER)
		external
			"C(GLint) | <glew_order.h>"
		alias
			"glEvalPoint1"
		end

	frozen glEvalPoint2(a_i: INTEGER; a_j: INTEGER)
		external
			"C(GLint,GLint) | <glew_order.h>"
		alias
			"glEvalPoint2"
		end

	frozen glFeedbackBuffer(a_size: INTEGER; a_type: NATURAL; a_buffer: POINTER)
		external
			"C(GLsizei,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glFeedbackBuffer"
		end

	frozen glFinish
		external
			"C | <glew_order.h>"
		alias
			"glFinish"
		end

	frozen glFlush
		external
			"C | <glew_order.h>"
		alias
			"glFlush"
		end

	frozen glFogf(a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLfloat) | <glew_order.h>"
		alias
			"glFogf"
		end

	frozen glFogfv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glFogfv"
		end

	frozen glFogi(a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLint) | <glew_order.h>"
		alias
			"glFogi"
		end

	frozen glFogiv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint *) | <glew_order.h>"
		alias
			"glFogiv"
		end

	frozen glFrontFace(a_mode: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glFrontFace"
		end

	frozen glFrustum(a_left: REAL_64; a_right: REAL_64; a_bottom: REAL_64; a_top: REAL_64; a_zNear: REAL_64; a_zFar: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glFrustum"
		end

	frozen glGenLists(a_range: INTEGER):NATURAL
		external
			"C(GLsizei):GLuint | <glew_order.h>"
		alias
			"glGenLists"
		end

	frozen glGenTextures(a_n: INTEGER; a_textures: POINTER)
		external
			"C(GLsizei,GLuint *) | <glew_order.h>"
		alias
			"glGenTextures"
		end

	frozen glGetBooleanv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLboolean *) | <glew_order.h>"
		alias
			"glGetBooleanv"
		end

	frozen glGetClipPlane(a_plane: NATURAL; a_equation: POINTER)
		external
			"C(GLenum,GLdouble *) | <glew_order.h>"
		alias
			"glGetClipPlane"
		end

	frozen glGetDoublev(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLdouble *) | <glew_order.h>"
		alias
			"glGetDoublev"
		end

	frozen glGetError:NATURAL
		external
			"C:GLenum | <glew_order.h>"
		alias
			"glGetError"
		end

	frozen glGetFloatv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glGetFloatv"
		end

	frozen glGetIntegerv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint *) | <glew_order.h>"
		alias
			"glGetIntegerv"
		end

	frozen glGetLightfv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glGetLightfv"
		end

	frozen glGetLightiv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glGetLightiv"
		end

	frozen glGetMapdv(a_target: NATURAL; a_query: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLenum,GLdouble *) | <glew_order.h>"
		alias
			"glGetMapdv"
		end

	frozen glGetMapfv(a_target: NATURAL; a_query: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glGetMapfv"
		end

	frozen glGetMapiv(a_target: NATURAL; a_query: NATURAL; a_v: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glGetMapiv"
		end

	frozen glGetMaterialfv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glGetMaterialfv"
		end

	frozen glGetMaterialiv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glGetMaterialiv"
		end

	frozen glGetPixelMapfv(a_map: NATURAL; a_values: POINTER)
		external
			"C(GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glGetPixelMapfv"
		end

	frozen glGetPixelMapuiv(a_map: NATURAL; a_values: POINTER)
		external
			"C(GLenum,GLuint *) | <glew_order.h>"
		alias
			"glGetPixelMapuiv"
		end

	frozen glGetPixelMapusv(a_map: NATURAL; a_values: POINTER)
		external
			"C(GLenum,GLushort *) | <glew_order.h>"
		alias
			"glGetPixelMapusv"
		end

	frozen glGetPointerv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLvoid **) | <glew_order.h>"
		alias
			"glGetPointerv"
		end

	frozen glGetPolygonStipple(a_mask: POINTER)
		external
			"C(GLubyte *) | <glew_order.h>"
		alias
			"glGetPolygonStipple"
		end

	frozen glGetString(a_name: NATURAL):POINTER
		external
			"C(GLenum):GLubyte * | <glew_order.h>"
		alias
			"glGetString"
		end

	frozen glGetTexEnvfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glGetTexEnvfv"
		end

	frozen glGetTexEnviv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glGetTexEnviv"
		end

	frozen glGetTexGendv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLdouble *) | <glew_order.h>"
		alias
			"glGetTexGendv"
		end

	frozen glGetTexGenfv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glGetTexGenfv"
		end

	frozen glGetTexGeniv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glGetTexGeniv"
		end

	frozen glGetTexImage(a_target: NATURAL; a_level: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLenum,GLenum,GLvoid *) | <glew_order.h>"
		alias
			"glGetTexImage"
		end

	frozen glGetTexLevelParameterfv(a_target: NATURAL; a_level: INTEGER; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glGetTexLevelParameterfv"
		end

	frozen glGetTexLevelParameteriv(a_target: NATURAL; a_level: INTEGER; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint,GLenum,GLint *) | <glew_order.h>"
		alias
			"glGetTexLevelParameteriv"
		end

	frozen glGetTexParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glGetTexParameterfv"
		end

	frozen glGetTexParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glGetTexParameteriv"
		end

	frozen glHint(a_target: NATURAL; a_mode: NATURAL)
		external
			"C(GLenum,GLenum) | <glew_order.h>"
		alias
			"glHint"
		end

	frozen glIndexMask(a_mask: NATURAL)
		external
			"C(GLuint) | <glew_order.h>"
		alias
			"glIndexMask"
		end

	frozen glIndexPointer(a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C(GLenum,GLsizei,GLvoid *) | <glew_order.h>"
		alias
			"glIndexPointer"
		end

	frozen glIndexd(a_c: REAL_64)
		external
			"C(GLdouble) | <glew_order.h>"
		alias
			"glIndexd"
		end

	frozen glIndexdv(a_c: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glIndexdv"
		end

	frozen glIndexf(a_c: REAL_32)
		external
			"C(GLfloat) | <glew_order.h>"
		alias
			"glIndexf"
		end

	frozen glIndexfv(a_c: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glIndexfv"
		end

	frozen glIndexi(a_c: INTEGER)
		external
			"C(GLint) | <glew_order.h>"
		alias
			"glIndexi"
		end

	frozen glIndexiv(a_c: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glIndexiv"
		end

	frozen glIndexs(a_c: INTEGER_16)
		external
			"C(GLshort) | <glew_order.h>"
		alias
			"glIndexs"
		end

	frozen glIndexsv(a_c: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glIndexsv"
		end

	frozen glIndexub(a_c: NATURAL_8)
		external
			"C(GLubyte) | <glew_order.h>"
		alias
			"glIndexub"
		end

	frozen glIndexubv(a_c: POINTER)
		external
			"C(GLubyte *) | <glew_order.h>"
		alias
			"glIndexubv"
		end

	frozen glInitNames
		external
			"C | <glew_order.h>"
		alias
			"glInitNames"
		end

	frozen glInterleavedArrays(a_format: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C(GLenum,GLsizei,GLvoid *) | <glew_order.h>"
		alias
			"glInterleavedArrays"
		end

	frozen glIsEnabled(a_cap: NATURAL):BOOLEAN
		external
			"C(GLenum):GLboolean | <glew_order.h>"
		alias
			"glIsEnabled"
		end

	frozen glIsList(a_list: NATURAL):BOOLEAN
		external
			"C(GLuint):GLboolean | <glew_order.h>"
		alias
			"glIsList"
		end

	frozen glIsTexture(a_texture: NATURAL):BOOLEAN
		external
			"C(GLuint):GLboolean | <glew_order.h>"
		alias
			"glIsTexture"
		end

	frozen glLightModelf(a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLfloat) | <glew_order.h>"
		alias
			"glLightModelf"
		end

	frozen glLightModelfv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glLightModelfv"
		end

	frozen glLightModeli(a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLint) | <glew_order.h>"
		alias
			"glLightModeli"
		end

	frozen glLightModeliv(a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLint *) | <glew_order.h>"
		alias
			"glLightModeliv"
		end

	frozen glLightf(a_light: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <glew_order.h>"
		alias
			"glLightf"
		end

	frozen glLightfv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glLightfv"
		end

	frozen glLighti(a_light: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <glew_order.h>"
		alias
			"glLighti"
		end

	frozen glLightiv(a_light: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glLightiv"
		end

	frozen glLineStipple(a_factor: INTEGER; a_pattern: NATURAL_16)
		external
			"C(GLint,GLushort) | <glew_order.h>"
		alias
			"glLineStipple"
		end

	frozen glLineWidth(a_width: REAL_32)
		external
			"C(GLfloat) | <glew_order.h>"
		alias
			"glLineWidth"
		end

	frozen glListBase(a_base: NATURAL)
		external
			"C(GLuint) | <glew_order.h>"
		alias
			"glListBase"
		end

	frozen glLoadIdentity
		external
			"C | <glew_order.h>"
		alias
			"glLoadIdentity"
		end

	frozen glLoadMatrixd(a_m: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glLoadMatrixd"
		end

	frozen glLoadMatrixf(a_m: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glLoadMatrixf"
		end

	frozen glLoadName(a_name: NATURAL)
		external
			"C(GLuint) | <glew_order.h>"
		alias
			"glLoadName"
		end

	frozen glLogicOp(a_opcode: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glLogicOp"
		end

	frozen glMap1d(a_target: NATURAL; a_u1: REAL_64; a_u2: REAL_64; a_stride: INTEGER; a_order: INTEGER; a_points: POINTER)
		external
			"C(GLenum,GLdouble,GLdouble,GLint,GLint,GLdouble *) | <glew_order.h>"
		alias
			"glMap1d"
		end

	frozen glMap1f(a_target: NATURAL; a_u1: REAL_32; a_u2: REAL_32; a_stride: INTEGER; a_order: INTEGER; a_points: POINTER)
		external
			"C(GLenum,GLfloat,GLfloat,GLint,GLint,GLfloat *) | <glew_order.h>"
		alias
			"glMap1f"
		end

	frozen glMap2d(a_target: NATURAL; a_u1: REAL_64; a_u2: REAL_64; a_ustride: INTEGER; a_uorder: INTEGER; a_v1: REAL_64; a_v2: REAL_64; a_vstride: INTEGER; a_vorder: INTEGER; a_points: POINTER)
		external
			"C(GLenum,GLdouble,GLdouble,GLint,GLint,GLdouble,GLdouble,GLint,GLint,GLdouble *) | <glew_order.h>"
		alias
			"glMap2d"
		end

	frozen glMap2f(a_target: NATURAL; a_u1: REAL_32; a_u2: REAL_32; a_ustride: INTEGER; a_uorder: INTEGER; a_v1: REAL_32; a_v2: REAL_32; a_vstride: INTEGER; a_vorder: INTEGER; a_points: POINTER)
		external
			"C(GLenum,GLfloat,GLfloat,GLint,GLint,GLfloat,GLfloat,GLint,GLint,GLfloat *) | <glew_order.h>"
		alias
			"glMap2f"
		end

	frozen glMapGrid1d(a_un: INTEGER; a_u1: REAL_64; a_u2: REAL_64)
		external
			"C(GLint,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glMapGrid1d"
		end

	frozen glMapGrid1f(a_un: INTEGER; a_u1: REAL_32; a_u2: REAL_32)
		external
			"C(GLint,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glMapGrid1f"
		end

	frozen glMapGrid2d(a_un: INTEGER; a_u1: REAL_64; a_u2: REAL_64; a_vn: INTEGER; a_v1: REAL_64; a_v2: REAL_64)
		external
			"C(GLint,GLdouble,GLdouble,GLint,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glMapGrid2d"
		end

	frozen glMapGrid2f(a_un: INTEGER; a_u1: REAL_32; a_u2: REAL_32; a_vn: INTEGER; a_v1: REAL_32; a_v2: REAL_32)
		external
			"C(GLint,GLfloat,GLfloat,GLint,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glMapGrid2f"
		end

	frozen glMaterialf(a_face: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <glew_order.h>"
		alias
			"glMaterialf"
		end

	frozen glMaterialfv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glMaterialfv"
		end

	frozen glMateriali(a_face: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <glew_order.h>"
		alias
			"glMateriali"
		end

	frozen glMaterialiv(a_face: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glMaterialiv"
		end

	frozen glMatrixMode(a_mode: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glMatrixMode"
		end

	frozen glMultMatrixd(a_m: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glMultMatrixd"
		end

	frozen glMultMatrixf(a_m: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glMultMatrixf"
		end

	frozen glNewList(a_list: NATURAL; a_mode: NATURAL)
		external
			"C(GLuint,GLenum) | <glew_order.h>"
		alias
			"glNewList"
		end

	frozen glNormal3b(a_nx: INTEGER_8; a_ny: INTEGER_8; a_nz: INTEGER_8)
		external
			"C(GLbyte,GLbyte,GLbyte) | <glew_order.h>"
		alias
			"glNormal3b"
		end

	frozen glNormal3bv(a_v: POINTER)
		external
			"C(GLbyte *) | <glew_order.h>"
		alias
			"glNormal3bv"
		end

	frozen glNormal3d(a_nx: REAL_64; a_ny: REAL_64; a_nz: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glNormal3d"
		end

	frozen glNormal3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glNormal3dv"
		end

	frozen glNormal3f(a_nx: REAL_32; a_ny: REAL_32; a_nz: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glNormal3f"
		end

	frozen glNormal3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glNormal3fv"
		end

	frozen glNormal3i(a_nx: INTEGER; a_ny: INTEGER; a_nz: INTEGER)
		external
			"C(GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glNormal3i"
		end

	frozen glNormal3iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glNormal3iv"
		end

	frozen glNormal3s(a_nx: INTEGER_16; a_ny: INTEGER_16; a_nz: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glNormal3s"
		end

	frozen glNormal3sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glNormal3sv"
		end

	frozen glNormalPointer(a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C(GLenum,GLsizei,GLvoid *) | <glew_order.h>"
		alias
			"glNormalPointer"
		end

	frozen glOrtho(a_left: REAL_64; a_right: REAL_64; a_bottom: REAL_64; a_top: REAL_64; a_zNear: REAL_64; a_zFar: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glOrtho"
		end

	frozen glPassThrough(a_token: REAL_32)
		external
			"C(GLfloat) | <glew_order.h>"
		alias
			"glPassThrough"
		end

	frozen glPixelMapfv(a_map: NATURAL; a_mapsize: INTEGER; a_values: POINTER)
		external
			"C(GLenum,GLsizei,GLfloat *) | <glew_order.h>"
		alias
			"glPixelMapfv"
		end

	frozen glPixelMapuiv(a_map: NATURAL; a_mapsize: INTEGER; a_values: POINTER)
		external
			"C(GLenum,GLsizei,GLuint *) | <glew_order.h>"
		alias
			"glPixelMapuiv"
		end

	frozen glPixelMapusv(a_map: NATURAL; a_mapsize: INTEGER; a_values: POINTER)
		external
			"C(GLenum,GLsizei,GLushort *) | <glew_order.h>"
		alias
			"glPixelMapusv"
		end

	frozen glPixelStoref(a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLfloat) | <glew_order.h>"
		alias
			"glPixelStoref"
		end

	frozen glPixelStorei(a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLint) | <glew_order.h>"
		alias
			"glPixelStorei"
		end

	frozen glPixelTransferf(a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLfloat) | <glew_order.h>"
		alias
			"glPixelTransferf"
		end

	frozen glPixelTransferi(a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLint) | <glew_order.h>"
		alias
			"glPixelTransferi"
		end

	frozen glPixelZoom(a_xfactor: REAL_32; a_yfactor: REAL_32)
		external
			"C(GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glPixelZoom"
		end

	frozen glPointSize(a_size: REAL_32)
		external
			"C(GLfloat) | <glew_order.h>"
		alias
			"glPointSize"
		end

	frozen glPolygonMode(a_face: NATURAL; a_mode: NATURAL)
		external
			"C(GLenum,GLenum) | <glew_order.h>"
		alias
			"glPolygonMode"
		end

	frozen glPolygonOffset(a_factor: REAL_32; a_units: REAL_32)
		external
			"C(GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glPolygonOffset"
		end

	frozen glPolygonStipple(a_mask: POINTER)
		external
			"C(GLubyte *) | <glew_order.h>"
		alias
			"glPolygonStipple"
		end

	frozen glPopAttrib
		external
			"C | <glew_order.h>"
		alias
			"glPopAttrib"
		end

	frozen glPopClientAttrib
		external
			"C | <glew_order.h>"
		alias
			"glPopClientAttrib"
		end

	frozen glPopMatrix
		external
			"C | <glew_order.h>"
		alias
			"glPopMatrix"
		end

	frozen glPopName
		external
			"C | <glew_order.h>"
		alias
			"glPopName"
		end

	frozen glPrioritizeTextures(a_n: INTEGER; a_textures: POINTER; a_priorities: POINTER)
		external
			"C(GLsizei,GLuint *,GLclampf *) | <glew_order.h>"
		alias
			"glPrioritizeTextures"
		end

	frozen glPushAttrib(a_mask: NATURAL)
		external
			"C(GLbitfield) | <glew_order.h>"
		alias
			"glPushAttrib"
		end

	frozen glPushClientAttrib(a_mask: NATURAL)
		external
			"C(GLbitfield) | <glew_order.h>"
		alias
			"glPushClientAttrib"
		end

	frozen glPushMatrix
		external
			"C | <glew_order.h>"
		alias
			"glPushMatrix"
		end

	frozen glPushName(a_name: NATURAL)
		external
			"C(GLuint) | <glew_order.h>"
		alias
			"glPushName"
		end

	frozen glRasterPos2d(a_x: REAL_64; a_y: REAL_64)
		external
			"C(GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glRasterPos2d"
		end

	frozen glRasterPos2dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glRasterPos2dv"
		end

	frozen glRasterPos2f(a_x: REAL_32; a_y: REAL_32)
		external
			"C(GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glRasterPos2f"
		end

	frozen glRasterPos2fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glRasterPos2fv"
		end

	frozen glRasterPos2i(a_x: INTEGER; a_y: INTEGER)
		external
			"C(GLint,GLint) | <glew_order.h>"
		alias
			"glRasterPos2i"
		end

	frozen glRasterPos2iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glRasterPos2iv"
		end

	frozen glRasterPos2s(a_x: INTEGER_16; a_y: INTEGER_16)
		external
			"C(GLshort,GLshort) | <glew_order.h>"
		alias
			"glRasterPos2s"
		end

	frozen glRasterPos2sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glRasterPos2sv"
		end

	frozen glRasterPos3d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glRasterPos3d"
		end

	frozen glRasterPos3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glRasterPos3dv"
		end

	frozen glRasterPos3f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glRasterPos3f"
		end

	frozen glRasterPos3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glRasterPos3fv"
		end

	frozen glRasterPos3i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER)
		external
			"C(GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glRasterPos3i"
		end

	frozen glRasterPos3iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glRasterPos3iv"
		end

	frozen glRasterPos3s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glRasterPos3s"
		end

	frozen glRasterPos3sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glRasterPos3sv"
		end

	frozen glRasterPos4d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64; a_w: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glRasterPos4d"
		end

	frozen glRasterPos4dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glRasterPos4dv"
		end

	frozen glRasterPos4f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32; a_w: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glRasterPos4f"
		end

	frozen glRasterPos4fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glRasterPos4fv"
		end

	frozen glRasterPos4i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER; a_w: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glRasterPos4i"
		end

	frozen glRasterPos4iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glRasterPos4iv"
		end

	frozen glRasterPos4s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16; a_w: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glRasterPos4s"
		end

	frozen glRasterPos4sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glRasterPos4sv"
		end

	frozen glReadBuffer(a_mode: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glReadBuffer"
		end

	frozen glReadPixels(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLint,GLint,GLsizei,GLsizei,GLenum,GLenum,GLvoid *) | <glew_order.h>"
		alias
			"glReadPixels"
		end

	frozen glRectd(a_x1: REAL_64; a_y1: REAL_64; a_x2: REAL_64; a_y2: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glRectd"
		end

	frozen glRectdv(a_v1: POINTER; a_v2: POINTER)
		external
			"C(GLdouble *,GLdouble *) | <glew_order.h>"
		alias
			"glRectdv"
		end

	frozen glRectf(a_x1: REAL_32; a_y1: REAL_32; a_x2: REAL_32; a_y2: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glRectf"
		end

	frozen glRectfv(a_v1: POINTER; a_v2: POINTER)
		external
			"C(GLfloat *,GLfloat *) | <glew_order.h>"
		alias
			"glRectfv"
		end

	frozen glRecti(a_x1: INTEGER; a_y1: INTEGER; a_x2: INTEGER; a_y2: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glRecti"
		end

	frozen glRectiv(a_v1: POINTER; a_v2: POINTER)
		external
			"C(GLint *,GLint *) | <glew_order.h>"
		alias
			"glRectiv"
		end

	frozen glRects(a_x1: INTEGER_16; a_y1: INTEGER_16; a_x2: INTEGER_16; a_y2: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glRects"
		end

	frozen glRectsv(a_v1: POINTER; a_v2: POINTER)
		external
			"C(GLshort *,GLshort *) | <glew_order.h>"
		alias
			"glRectsv"
		end

	frozen glRenderMode(a_mode: NATURAL):INTEGER
		external
			"C(GLenum):GLint | <glew_order.h>"
		alias
			"glRenderMode"
		end

	frozen glRotated(a_angle: REAL_64; a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glRotated"
		end

	frozen glRotatef(a_angle: REAL_32; a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glRotatef"
		end

	frozen glScaled(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glScaled"
		end

	frozen glScalef(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glScalef"
		end

	frozen glScissor(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C(GLint,GLint,GLsizei,GLsizei) | <glew_order.h>"
		alias
			"glScissor"
		end

	frozen glSelectBuffer(a_size: INTEGER; a_buffer: POINTER)
		external
			"C(GLsizei,GLuint *) | <glew_order.h>"
		alias
			"glSelectBuffer"
		end

	frozen glShadeModel(a_mode: NATURAL)
		external
			"C(GLenum) | <glew_order.h>"
		alias
			"glShadeModel"
		end

	frozen glStencilFunc(a_func: NATURAL; a_ref: INTEGER; a_mask: NATURAL)
		external
			"C(GLenum,GLint,GLuint) | <glew_order.h>"
		alias
			"glStencilFunc"
		end

	frozen glStencilMask(a_mask: NATURAL)
		external
			"C(GLuint) | <glew_order.h>"
		alias
			"glStencilMask"
		end

	frozen glStencilOp(a_fail: NATURAL; a_zfail: NATURAL; a_zpass: NATURAL)
		external
			"C(GLenum,GLenum,GLenum) | <glew_order.h>"
		alias
			"glStencilOp"
		end

	frozen glTexCoord1d(a_s: REAL_64)
		external
			"C(GLdouble) | <glew_order.h>"
		alias
			"glTexCoord1d"
		end

	frozen glTexCoord1dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glTexCoord1dv"
		end

	frozen glTexCoord1f(a_s: REAL_32)
		external
			"C(GLfloat) | <glew_order.h>"
		alias
			"glTexCoord1f"
		end

	frozen glTexCoord1fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glTexCoord1fv"
		end

	frozen glTexCoord1i(a_s: INTEGER)
		external
			"C(GLint) | <glew_order.h>"
		alias
			"glTexCoord1i"
		end

	frozen glTexCoord1iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glTexCoord1iv"
		end

	frozen glTexCoord1s(a_s: INTEGER_16)
		external
			"C(GLshort) | <glew_order.h>"
		alias
			"glTexCoord1s"
		end

	frozen glTexCoord1sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glTexCoord1sv"
		end

	frozen glTexCoord2d(a_s: REAL_64; a_t: REAL_64)
		external
			"C(GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glTexCoord2d"
		end

	frozen glTexCoord2dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glTexCoord2dv"
		end

	frozen glTexCoord2f(a_s: REAL_32; a_t: REAL_32)
		external
			"C(GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glTexCoord2f"
		end

	frozen glTexCoord2fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glTexCoord2fv"
		end

	frozen glTexCoord2i(a_s: INTEGER; a_t: INTEGER)
		external
			"C(GLint,GLint) | <glew_order.h>"
		alias
			"glTexCoord2i"
		end

	frozen glTexCoord2iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glTexCoord2iv"
		end

	frozen glTexCoord2s(a_s: INTEGER_16; a_t: INTEGER_16)
		external
			"C(GLshort,GLshort) | <glew_order.h>"
		alias
			"glTexCoord2s"
		end

	frozen glTexCoord2sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glTexCoord2sv"
		end

	frozen glTexCoord3d(a_s: REAL_64; a_t: REAL_64; a_r: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glTexCoord3d"
		end

	frozen glTexCoord3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glTexCoord3dv"
		end

	frozen glTexCoord3f(a_s: REAL_32; a_t: REAL_32; a_r: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glTexCoord3f"
		end

	frozen glTexCoord3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glTexCoord3fv"
		end

	frozen glTexCoord3i(a_s: INTEGER; a_t: INTEGER; a_r: INTEGER)
		external
			"C(GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glTexCoord3i"
		end

	frozen glTexCoord3iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glTexCoord3iv"
		end

	frozen glTexCoord3s(a_s: INTEGER_16; a_t: INTEGER_16; a_r: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glTexCoord3s"
		end

	frozen glTexCoord3sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glTexCoord3sv"
		end

	frozen glTexCoord4d(a_s: REAL_64; a_t: REAL_64; a_r: REAL_64; a_q: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glTexCoord4d"
		end

	frozen glTexCoord4dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glTexCoord4dv"
		end

	frozen glTexCoord4f(a_s: REAL_32; a_t: REAL_32; a_r: REAL_32; a_q: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glTexCoord4f"
		end

	frozen glTexCoord4fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glTexCoord4fv"
		end

	frozen glTexCoord4i(a_s: INTEGER; a_t: INTEGER; a_r: INTEGER; a_q: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glTexCoord4i"
		end

	frozen glTexCoord4iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glTexCoord4iv"
		end

	frozen glTexCoord4s(a_s: INTEGER_16; a_t: INTEGER_16; a_r: INTEGER_16; a_q: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glTexCoord4s"
		end

	frozen glTexCoord4sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glTexCoord4sv"
		end

	frozen glTexCoordPointer(a_size: INTEGER; a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C(GLint,GLenum,GLsizei,GLvoid *) | <glew_order.h>"
		alias
			"glTexCoordPointer"
		end

	frozen glTexEnvf(a_target: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <glew_order.h>"
		alias
			"glTexEnvf"
		end

	frozen glTexEnvfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glTexEnvfv"
		end

	frozen glTexEnvi(a_target: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <glew_order.h>"
		alias
			"glTexEnvi"
		end

	frozen glTexEnviv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glTexEnviv"
		end

	frozen glTexGend(a_coord: NATURAL; a_pname: NATURAL; a_param: REAL_64)
		external
			"C(GLenum,GLenum,GLdouble) | <glew_order.h>"
		alias
			"glTexGend"
		end

	frozen glTexGendv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLdouble *) | <glew_order.h>"
		alias
			"glTexGendv"
		end

	frozen glTexGenf(a_coord: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <glew_order.h>"
		alias
			"glTexGenf"
		end

	frozen glTexGenfv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glTexGenfv"
		end

	frozen glTexGeni(a_coord: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <glew_order.h>"
		alias
			"glTexGeni"
		end

	frozen glTexGeniv(a_coord: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glTexGeniv"
		end

	frozen glTexImage1D(a_target: NATURAL; a_level: INTEGER; a_internalformat: INTEGER; a_width: INTEGER; a_border: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLsizei,GLint,GLenum,GLenum,GLvoid *) | <glew_order.h>"
		alias
			"glTexImage1D"
		end

	frozen glTexImage2D(a_target: NATURAL; a_level: INTEGER; a_internalformat: INTEGER; a_width: INTEGER; a_height: INTEGER; a_border: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLsizei,GLsizei,GLint,GLenum,GLenum,GLvoid *) | <glew_order.h>"
		alias
			"glTexImage2D"
		end

	frozen glTexParameterf(a_target: NATURAL; a_pname: NATURAL; a_param: REAL_32)
		external
			"C(GLenum,GLenum,GLfloat) | <glew_order.h>"
		alias
			"glTexParameterf"
		end

	frozen glTexParameterfv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLfloat *) | <glew_order.h>"
		alias
			"glTexParameterfv"
		end

	frozen glTexParameteri(a_target: NATURAL; a_pname: NATURAL; a_param: INTEGER)
		external
			"C(GLenum,GLenum,GLint) | <glew_order.h>"
		alias
			"glTexParameteri"
		end

	frozen glTexParameteriv(a_target: NATURAL; a_pname: NATURAL; a_params: POINTER)
		external
			"C(GLenum,GLenum,GLint *) | <glew_order.h>"
		alias
			"glTexParameteriv"
		end

	frozen glTexSubImage1D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_width: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLsizei,GLenum,GLenum,GLvoid *) | <glew_order.h>"
		alias
			"glTexSubImage1D"
		end

	frozen glTexSubImage2D(a_target: NATURAL; a_level: INTEGER; a_xoffset: INTEGER; a_yoffset: INTEGER; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_pixels: POINTER)
		external
			"C(GLenum,GLint,GLint,GLint,GLsizei,GLsizei,GLenum,GLenum,GLvoid *) | <glew_order.h>"
		alias
			"glTexSubImage2D"
		end

	frozen glTranslated(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glTranslated"
		end

	frozen glTranslatef(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glTranslatef"
		end

	frozen glVertex2d(a_x: REAL_64; a_y: REAL_64)
		external
			"C(GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glVertex2d"
		end

	frozen glVertex2dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glVertex2dv"
		end

	frozen glVertex2f(a_x: REAL_32; a_y: REAL_32)
		external
			"C(GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glVertex2f"
		end

	frozen glVertex2fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glVertex2fv"
		end

	frozen glVertex2i(a_x: INTEGER; a_y: INTEGER)
		external
			"C(GLint,GLint) | <glew_order.h>"
		alias
			"glVertex2i"
		end

	frozen glVertex2iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glVertex2iv"
		end

	frozen glVertex2s(a_x: INTEGER_16; a_y: INTEGER_16)
		external
			"C(GLshort,GLshort) | <glew_order.h>"
		alias
			"glVertex2s"
		end

	frozen glVertex2sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glVertex2sv"
		end

	frozen glVertex3d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glVertex3d"
		end

	frozen glVertex3dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glVertex3dv"
		end

	frozen glVertex3f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glVertex3f"
		end

	frozen glVertex3fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glVertex3fv"
		end

	frozen glVertex3i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER)
		external
			"C(GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glVertex3i"
		end

	frozen glVertex3iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glVertex3iv"
		end

	frozen glVertex3s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glVertex3s"
		end

	frozen glVertex3sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glVertex3sv"
		end

	frozen glVertex4d(a_x: REAL_64; a_y: REAL_64; a_z: REAL_64; a_w: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <glew_order.h>"
		alias
			"glVertex4d"
		end

	frozen glVertex4dv(a_v: POINTER)
		external
			"C(GLdouble *) | <glew_order.h>"
		alias
			"glVertex4dv"
		end

	frozen glVertex4f(a_x: REAL_32; a_y: REAL_32; a_z: REAL_32; a_w: REAL_32)
		external
			"C(GLfloat,GLfloat,GLfloat,GLfloat) | <glew_order.h>"
		alias
			"glVertex4f"
		end

	frozen glVertex4fv(a_v: POINTER)
		external
			"C(GLfloat *) | <glew_order.h>"
		alias
			"glVertex4fv"
		end

	frozen glVertex4i(a_x: INTEGER; a_y: INTEGER; a_z: INTEGER; a_w: INTEGER)
		external
			"C(GLint,GLint,GLint,GLint) | <glew_order.h>"
		alias
			"glVertex4i"
		end

	frozen glVertex4iv(a_v: POINTER)
		external
			"C(GLint *) | <glew_order.h>"
		alias
			"glVertex4iv"
		end

	frozen glVertex4s(a_x: INTEGER_16; a_y: INTEGER_16; a_z: INTEGER_16; a_w: INTEGER_16)
		external
			"C(GLshort,GLshort,GLshort,GLshort) | <glew_order.h>"
		alias
			"glVertex4s"
		end

	frozen glVertex4sv(a_v: POINTER)
		external
			"C(GLshort *) | <glew_order.h>"
		alias
			"glVertex4sv"
		end

	frozen glVertexPointer(a_size: INTEGER; a_type: NATURAL; a_stride: INTEGER; a_pointer: POINTER)
		external
			"C(GLint,GLenum,GLsizei,GLvoid *) | <glew_order.h>"
		alias
			"glVertexPointer"
		end

	frozen glViewport(a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER)
		external
			"C(GLint,GLint,GLsizei,GLsizei) | <glew_order.h>"
		alias
			"glViewport"
		end

	frozen GL_VERSION_1_2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_1_2"
		end

	frozen GL_SMOOTH_POINT_SIZE_RANGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SMOOTH_POINT_SIZE_RANGE"
		end

	frozen GL_SMOOTH_POINT_SIZE_GRANULARITY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SMOOTH_POINT_SIZE_GRANULARITY"
		end

	frozen GL_SMOOTH_LINE_WIDTH_RANGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SMOOTH_LINE_WIDTH_RANGE"
		end

	frozen GL_SMOOTH_LINE_WIDTH_GRANULARITY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SMOOTH_LINE_WIDTH_GRANULARITY"
		end

	frozen GL_UNSIGNED_BYTE_3_3_2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_BYTE_3_3_2"
		end

	frozen GL_UNSIGNED_SHORT_4_4_4_4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_4_4_4_4"
		end

	frozen GL_UNSIGNED_SHORT_5_5_5_1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_5_5_5_1"
		end

	frozen GL_UNSIGNED_INT_8_8_8_8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_8_8_8_8"
		end

	frozen GL_UNSIGNED_INT_10_10_10_2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_10_10_10_2"
		end

	frozen GL_RESCALE_NORMAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESCALE_NORMAL"
		end

	frozen GL_TEXTURE_BINDING_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_3D"
		end

	frozen GL_PACK_SKIP_IMAGES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_SKIP_IMAGES"
		end

	frozen GL_PACK_IMAGE_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_IMAGE_HEIGHT"
		end

	frozen GL_UNPACK_SKIP_IMAGES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_SKIP_IMAGES"
		end

	frozen GL_UNPACK_IMAGE_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_IMAGE_HEIGHT"
		end

	frozen GL_TEXTURE_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_3D"
		end

	frozen GL_PROXY_TEXTURE_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_3D"
		end

	frozen GL_TEXTURE_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_DEPTH"
		end

	frozen GL_TEXTURE_WRAP_R : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_WRAP_R"
		end

	frozen GL_MAX_3D_TEXTURE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_3D_TEXTURE_SIZE"
		end

	frozen GL_BGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BGR"
		end

	frozen GL_BGRA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BGRA"
		end

	frozen GL_MAX_ELEMENTS_VERTICES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ELEMENTS_VERTICES"
		end

	frozen GL_MAX_ELEMENTS_INDICES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ELEMENTS_INDICES"
		end

	frozen GL_CLAMP_TO_EDGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_TO_EDGE"
		end

	frozen GL_TEXTURE_MIN_LOD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MIN_LOD"
		end

	frozen GL_TEXTURE_MAX_LOD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAX_LOD"
		end

	frozen GL_TEXTURE_BASE_LEVEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BASE_LEVEL"
		end

	frozen GL_TEXTURE_MAX_LEVEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAX_LEVEL"
		end

	frozen GL_LIGHT_MODEL_COLOR_CONTROL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT_MODEL_COLOR_CONTROL"
		end

	frozen GL_SINGLE_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SINGLE_COLOR"
		end

	frozen GL_SEPARATE_SPECULAR_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SEPARATE_SPECULAR_COLOR"
		end

	frozen GL_UNSIGNED_BYTE_2_3_3_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_BYTE_2_3_3_REV"
		end

	frozen GL_UNSIGNED_SHORT_5_6_5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_5_6_5"
		end

	frozen GL_UNSIGNED_SHORT_5_6_5_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_5_6_5_REV"
		end

	frozen GL_UNSIGNED_SHORT_4_4_4_4_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_4_4_4_4_REV"
		end

	frozen GL_UNSIGNED_SHORT_1_5_5_5_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_1_5_5_5_REV"
		end

	frozen GL_UNSIGNED_INT_8_8_8_8_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_8_8_8_8_REV"
		end

	frozen GL_ALIASED_POINT_SIZE_RANGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALIASED_POINT_SIZE_RANGE"
		end

	frozen GL_ALIASED_LINE_WIDTH_RANGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALIASED_LINE_WIDTH_RANGE"
		end

	frozen GL_VERSION_1_2_1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_1_2_1"
		end

	frozen GL_VERSION_1_3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_1_3"
		end

	frozen GL_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE"
		end

	frozen GL_SAMPLE_ALPHA_TO_COVERAGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_ALPHA_TO_COVERAGE"
		end

	frozen GL_SAMPLE_ALPHA_TO_ONE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_ALPHA_TO_ONE"
		end

	frozen GL_SAMPLE_COVERAGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_COVERAGE"
		end

	frozen GL_SAMPLE_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_BUFFERS"
		end

	frozen GL_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLES"
		end

	frozen GL_SAMPLE_COVERAGE_VALUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_COVERAGE_VALUE"
		end

	frozen GL_SAMPLE_COVERAGE_INVERT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_COVERAGE_INVERT"
		end

	frozen GL_CLAMP_TO_BORDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_TO_BORDER"
		end

	frozen GL_TEXTURE0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE0"
		end

	frozen GL_TEXTURE1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE1"
		end

	frozen GL_TEXTURE2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE2"
		end

	frozen GL_TEXTURE3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE3"
		end

	frozen GL_TEXTURE4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE4"
		end

	frozen GL_TEXTURE5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE5"
		end

	frozen GL_TEXTURE6 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE6"
		end

	frozen GL_TEXTURE7 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE7"
		end

	frozen GL_TEXTURE8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE8"
		end

	frozen GL_TEXTURE9 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE9"
		end

	frozen GL_TEXTURE10 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE10"
		end

	frozen GL_TEXTURE11 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE11"
		end

	frozen GL_TEXTURE12 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE12"
		end

	frozen GL_TEXTURE13 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE13"
		end

	frozen GL_TEXTURE14 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE14"
		end

	frozen GL_TEXTURE15 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE15"
		end

	frozen GL_TEXTURE16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE16"
		end

	frozen GL_TEXTURE17 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE17"
		end

	frozen GL_TEXTURE18 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE18"
		end

	frozen GL_TEXTURE19 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE19"
		end

	frozen GL_TEXTURE20 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE20"
		end

	frozen GL_TEXTURE21 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE21"
		end

	frozen GL_TEXTURE22 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE22"
		end

	frozen GL_TEXTURE23 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE23"
		end

	frozen GL_TEXTURE24 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE24"
		end

	frozen GL_TEXTURE25 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE25"
		end

	frozen GL_TEXTURE26 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE26"
		end

	frozen GL_TEXTURE27 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE27"
		end

	frozen GL_TEXTURE28 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE28"
		end

	frozen GL_TEXTURE29 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE29"
		end

	frozen GL_TEXTURE30 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE30"
		end

	frozen GL_TEXTURE31 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE31"
		end

	frozen GL_ACTIVE_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_TEXTURE"
		end

	frozen GL_CLIENT_ACTIVE_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIENT_ACTIVE_TEXTURE"
		end

	frozen GL_MAX_TEXTURE_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_UNITS"
		end

	frozen GL_TRANSPOSE_MODELVIEW_MATRIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_MODELVIEW_MATRIX"
		end

	frozen GL_TRANSPOSE_PROJECTION_MATRIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_PROJECTION_MATRIX"
		end

	frozen GL_TRANSPOSE_TEXTURE_MATRIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_TEXTURE_MATRIX"
		end

	frozen GL_TRANSPOSE_COLOR_MATRIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_COLOR_MATRIX"
		end

	frozen GL_SUBTRACT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUBTRACT"
		end

	frozen GL_COMPRESSED_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_ALPHA"
		end

	frozen GL_COMPRESSED_LUMINANCE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_LUMINANCE"
		end

	frozen GL_COMPRESSED_LUMINANCE_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_LUMINANCE_ALPHA"
		end

	frozen GL_COMPRESSED_INTENSITY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_INTENSITY"
		end

	frozen GL_COMPRESSED_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB"
		end

	frozen GL_COMPRESSED_RGBA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA"
		end

	frozen GL_TEXTURE_COMPRESSION_HINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPRESSION_HINT"
		end

	frozen GL_NORMAL_MAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_MAP"
		end

	frozen GL_REFLECTION_MAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFLECTION_MAP"
		end

	frozen GL_TEXTURE_CUBE_MAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP"
		end

	frozen GL_TEXTURE_BINDING_CUBE_MAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_CUBE_MAP"
		end

	frozen GL_TEXTURE_CUBE_MAP_POSITIVE_X : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_POSITIVE_X"
		end

	frozen GL_TEXTURE_CUBE_MAP_NEGATIVE_X : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_NEGATIVE_X"
		end

	frozen GL_TEXTURE_CUBE_MAP_POSITIVE_Y : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_POSITIVE_Y"
		end

	frozen GL_TEXTURE_CUBE_MAP_NEGATIVE_Y : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_NEGATIVE_Y"
		end

	frozen GL_TEXTURE_CUBE_MAP_POSITIVE_Z : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_POSITIVE_Z"
		end

	frozen GL_TEXTURE_CUBE_MAP_NEGATIVE_Z : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_NEGATIVE_Z"
		end

	frozen GL_PROXY_TEXTURE_CUBE_MAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_CUBE_MAP"
		end

	frozen GL_MAX_CUBE_MAP_TEXTURE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CUBE_MAP_TEXTURE_SIZE"
		end

	frozen GL_COMBINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE"
		end

	frozen GL_COMBINE_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE_RGB"
		end

	frozen GL_COMBINE_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE_ALPHA"
		end

	frozen GL_RGB_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_SCALE"
		end

	frozen GL_ADD_SIGNED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ADD_SIGNED"
		end

	frozen GL_INTERPOLATE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERPOLATE"
		end

	frozen GL_CONSTANT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT"
		end

	frozen GL_PRIMARY_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMARY_COLOR"
		end

	frozen GL_PREVIOUS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PREVIOUS"
		end

	frozen GL_SOURCE0_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE0_RGB"
		end

	frozen GL_SOURCE1_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE1_RGB"
		end

	frozen GL_SOURCE2_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE2_RGB"
		end

	frozen GL_SOURCE0_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE0_ALPHA"
		end

	frozen GL_SOURCE1_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE1_ALPHA"
		end

	frozen GL_SOURCE2_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE2_ALPHA"
		end

	frozen GL_OPERAND0_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND0_RGB"
		end

	frozen GL_OPERAND1_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND1_RGB"
		end

	frozen GL_OPERAND2_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND2_RGB"
		end

	frozen GL_OPERAND0_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND0_ALPHA"
		end

	frozen GL_OPERAND1_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND1_ALPHA"
		end

	frozen GL_OPERAND2_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND2_ALPHA"
		end

	frozen GL_TEXTURE_COMPRESSED_IMAGE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPRESSED_IMAGE_SIZE"
		end

	frozen GL_TEXTURE_COMPRESSED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPRESSED"
		end

	frozen GL_NUM_COMPRESSED_TEXTURE_FORMATS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_COMPRESSED_TEXTURE_FORMATS"
		end

	frozen GL_COMPRESSED_TEXTURE_FORMATS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_TEXTURE_FORMATS"
		end

	frozen GL_DOT3_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT3_RGB"
		end

	frozen GL_DOT3_RGBA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT3_RGBA"
		end

	frozen GL_MULTISAMPLE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_BIT"
		end

	frozen GL_VERSION_1_4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_1_4"
		end

	frozen GL_BLEND_DST_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_DST_RGB"
		end

	frozen GL_BLEND_SRC_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_SRC_RGB"
		end

	frozen GL_BLEND_DST_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_DST_ALPHA"
		end

	frozen GL_BLEND_SRC_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_SRC_ALPHA"
		end

	frozen GL_POINT_SIZE_MIN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_MIN"
		end

	frozen GL_POINT_SIZE_MAX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_MAX"
		end

	frozen GL_POINT_FADE_THRESHOLD_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_FADE_THRESHOLD_SIZE"
		end

	frozen GL_POINT_DISTANCE_ATTENUATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_DISTANCE_ATTENUATION"
		end

	frozen GL_GENERATE_MIPMAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GENERATE_MIPMAP"
		end

	frozen GL_GENERATE_MIPMAP_HINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GENERATE_MIPMAP_HINT"
		end

	frozen GL_DEPTH_COMPONENT16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT16"
		end

	frozen GL_DEPTH_COMPONENT24 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT24"
		end

	frozen GL_DEPTH_COMPONENT32 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT32"
		end

	frozen GL_MIRRORED_REPEAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIRRORED_REPEAT"
		end

	frozen GL_FOG_COORDINATE_SOURCE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_SOURCE"
		end

	frozen GL_FOG_COORDINATE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE"
		end

	frozen GL_FRAGMENT_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_DEPTH"
		end

	frozen GL_CURRENT_FOG_COORDINATE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_FOG_COORDINATE"
		end

	frozen GL_FOG_COORDINATE_ARRAY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_TYPE"
		end

	frozen GL_FOG_COORDINATE_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_STRIDE"
		end

	frozen GL_FOG_COORDINATE_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_POINTER"
		end

	frozen GL_FOG_COORDINATE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY"
		end

	frozen GL_COLOR_SUM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_SUM"
		end

	frozen GL_CURRENT_SECONDARY_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_SECONDARY_COLOR"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_SIZE"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_TYPE"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_STRIDE"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_POINTER"
		end

	frozen GL_SECONDARY_COLOR_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY"
		end

	frozen GL_MAX_TEXTURE_LOD_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_LOD_BIAS"
		end

	frozen GL_TEXTURE_FILTER_CONTROL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_FILTER_CONTROL"
		end

	frozen GL_TEXTURE_LOD_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_LOD_BIAS"
		end

	frozen GL_INCR_WRAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INCR_WRAP"
		end

	frozen GL_DECR_WRAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DECR_WRAP"
		end

	frozen GL_TEXTURE_DEPTH_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_DEPTH_SIZE"
		end

	frozen GL_DEPTH_TEXTURE_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_TEXTURE_MODE"
		end

	frozen GL_TEXTURE_COMPARE_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPARE_MODE"
		end

	frozen GL_TEXTURE_COMPARE_FUNC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPARE_FUNC"
		end

	frozen GL_COMPARE_R_TO_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPARE_R_TO_TEXTURE"
		end

	frozen GL_VERSION_1_5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_1_5"
		end

	frozen GL_FOG_COORD_SRC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORD_SRC"
		end

	frozen GL_FOG_COORD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORD"
		end

	frozen GL_FOG_COORD_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORD_ARRAY"
		end

	frozen GL_SRC0_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC0_RGB"
		end

	frozen GL_FOG_COORD_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORD_ARRAY_POINTER"
		end

	frozen GL_FOG_COORD_ARRAY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORD_ARRAY_TYPE"
		end

	frozen GL_SRC1_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC1_ALPHA"
		end

	frozen GL_CURRENT_FOG_COORD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_FOG_COORD"
		end

	frozen GL_FOG_COORD_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORD_ARRAY_STRIDE"
		end

	frozen GL_SRC0_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC0_ALPHA"
		end

	frozen GL_SRC1_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC1_RGB"
		end

	frozen GL_SRC2_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC2_ALPHA"
		end

	frozen GL_SRC2_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC2_RGB"
		end

	frozen GL_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_SIZE"
		end

	frozen GL_BUFFER_USAGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_USAGE"
		end

	frozen GL_QUERY_COUNTER_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_COUNTER_BITS"
		end

	frozen GL_CURRENT_QUERY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_QUERY"
		end

	frozen GL_QUERY_RESULT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT"
		end

	frozen GL_QUERY_RESULT_AVAILABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT_AVAILABLE"
		end

	frozen GL_ARRAY_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_BUFFER"
		end

	frozen GL_ELEMENT_ARRAY_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_BUFFER"
		end

	frozen GL_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_BUFFER_BINDING"
		end

	frozen GL_ELEMENT_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_BUFFER_BINDING"
		end

	frozen GL_VERTEX_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_BUFFER_BINDING"
		end

	frozen GL_NORMAL_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_BUFFER_BINDING"
		end

	frozen GL_COLOR_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_BUFFER_BINDING"
		end

	frozen GL_INDEX_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_BUFFER_BINDING"
		end

	frozen GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING"
		end

	frozen GL_EDGE_FLAG_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_BUFFER_BINDING"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING"
		end

	frozen GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING"
		end

	frozen GL_WEIGHT_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WEIGHT_ARRAY_BUFFER_BINDING"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING"
		end

	frozen GL_READ_ONLY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_ONLY"
		end

	frozen GL_WRITE_ONLY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WRITE_ONLY"
		end

	frozen GL_READ_WRITE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_WRITE"
		end

	frozen GL_BUFFER_ACCESS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_ACCESS"
		end

	frozen GL_BUFFER_MAPPED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_MAPPED"
		end

	frozen GL_BUFFER_MAP_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_MAP_POINTER"
		end

	frozen GL_STREAM_DRAW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STREAM_DRAW"
		end

	frozen GL_STREAM_READ : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STREAM_READ"
		end

	frozen GL_STREAM_COPY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STREAM_COPY"
		end

	frozen GL_STATIC_DRAW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STATIC_DRAW"
		end

	frozen GL_STATIC_READ : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STATIC_READ"
		end

	frozen GL_STATIC_COPY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STATIC_COPY"
		end

	frozen GL_DYNAMIC_DRAW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DYNAMIC_DRAW"
		end

	frozen GL_DYNAMIC_READ : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DYNAMIC_READ"
		end

	frozen GL_DYNAMIC_COPY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DYNAMIC_COPY"
		end

	frozen GL_SAMPLES_PASSED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLES_PASSED"
		end

	frozen GL_VERSION_2_0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_2_0"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_ENABLED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_ENABLED"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_SIZE"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_STRIDE"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_TYPE"
		end

	frozen GL_CURRENT_VERTEX_ATTRIB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_VERTEX_ATTRIB"
		end

	frozen GL_VERTEX_PROGRAM_POINT_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_POINT_SIZE"
		end

	frozen GL_VERTEX_PROGRAM_TWO_SIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_TWO_SIDE"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_POINTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_POINTER"
		end

	frozen GL_STENCIL_BACK_FUNC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_FUNC"
		end

	frozen GL_STENCIL_BACK_FAIL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_FAIL"
		end

	frozen GL_STENCIL_BACK_PASS_DEPTH_FAIL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_PASS_DEPTH_FAIL"
		end

	frozen GL_STENCIL_BACK_PASS_DEPTH_PASS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_PASS_DEPTH_PASS"
		end

	frozen GL_MAX_DRAW_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DRAW_BUFFERS"
		end

	frozen GL_DRAW_BUFFER0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER0"
		end

	frozen GL_DRAW_BUFFER1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER1"
		end

	frozen GL_DRAW_BUFFER2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER2"
		end

	frozen GL_DRAW_BUFFER3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER3"
		end

	frozen GL_DRAW_BUFFER4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER4"
		end

	frozen GL_DRAW_BUFFER5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER5"
		end

	frozen GL_DRAW_BUFFER6 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER6"
		end

	frozen GL_DRAW_BUFFER7 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER7"
		end

	frozen GL_DRAW_BUFFER8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER8"
		end

	frozen GL_DRAW_BUFFER9 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER9"
		end

	frozen GL_DRAW_BUFFER10 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER10"
		end

	frozen GL_DRAW_BUFFER11 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER11"
		end

	frozen GL_DRAW_BUFFER12 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER12"
		end

	frozen GL_DRAW_BUFFER13 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER13"
		end

	frozen GL_DRAW_BUFFER14 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER14"
		end

	frozen GL_DRAW_BUFFER15 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER15"
		end

	frozen GL_BLEND_EQUATION_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_EQUATION_ALPHA"
		end

	frozen GL_POINT_SPRITE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SPRITE"
		end

	frozen GL_COORD_REPLACE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COORD_REPLACE"
		end

	frozen GL_MAX_VERTEX_ATTRIBS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_ATTRIBS"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_NORMALIZED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_NORMALIZED"
		end

	frozen GL_MAX_TEXTURE_COORDS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_COORDS"
		end

	frozen GL_MAX_TEXTURE_IMAGE_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_IMAGE_UNITS"
		end

	frozen GL_FRAGMENT_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_SHADER"
		end

	frozen GL_VERTEX_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER"
		end

	frozen GL_MAX_FRAGMENT_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_UNIFORM_COMPONENTS"
		end

	frozen GL_MAX_VERTEX_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_UNIFORM_COMPONENTS"
		end

	frozen GL_MAX_VARYING_FLOATS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VARYING_FLOATS"
		end

	frozen GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS"
		end

	frozen GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS"
		end

	frozen GL_SHADER_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_TYPE"
		end

	frozen GL_FLOAT_VEC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_VEC2"
		end

	frozen GL_FLOAT_VEC3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_VEC3"
		end

	frozen GL_FLOAT_VEC4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_VEC4"
		end

	frozen GL_INT_VEC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_VEC2"
		end

	frozen GL_INT_VEC3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_VEC3"
		end

	frozen GL_INT_VEC4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_VEC4"
		end

	frozen GL_BOOL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOOL"
		end

	frozen GL_BOOL_VEC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOOL_VEC2"
		end

	frozen GL_BOOL_VEC3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOOL_VEC3"
		end

	frozen GL_BOOL_VEC4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOOL_VEC4"
		end

	frozen GL_FLOAT_MAT2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT2"
		end

	frozen GL_FLOAT_MAT3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT3"
		end

	frozen GL_FLOAT_MAT4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT4"
		end

	frozen GL_SAMPLER_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_1D"
		end

	frozen GL_SAMPLER_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D"
		end

	frozen GL_SAMPLER_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_3D"
		end

	frozen GL_SAMPLER_CUBE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_CUBE"
		end

	frozen GL_SAMPLER_1D_SHADOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_1D_SHADOW"
		end

	frozen GL_SAMPLER_2D_SHADOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_SHADOW"
		end

	frozen GL_DELETE_STATUS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DELETE_STATUS"
		end

	frozen GL_COMPILE_STATUS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPILE_STATUS"
		end

	frozen GL_LINK_STATUS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINK_STATUS"
		end

	frozen GL_VALIDATE_STATUS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VALIDATE_STATUS"
		end

	frozen GL_INFO_LOG_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INFO_LOG_LENGTH"
		end

	frozen GL_ATTACHED_SHADERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATTACHED_SHADERS"
		end

	frozen GL_ACTIVE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_UNIFORMS"
		end

	frozen GL_ACTIVE_UNIFORM_MAX_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_UNIFORM_MAX_LENGTH"
		end

	frozen GL_SHADER_SOURCE_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_SOURCE_LENGTH"
		end

	frozen GL_ACTIVE_ATTRIBUTES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_ATTRIBUTES"
		end

	frozen GL_ACTIVE_ATTRIBUTE_MAX_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_ATTRIBUTE_MAX_LENGTH"
		end

	frozen GL_FRAGMENT_SHADER_DERIVATIVE_HINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_SHADER_DERIVATIVE_HINT"
		end

	frozen GL_SHADING_LANGUAGE_VERSION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADING_LANGUAGE_VERSION"
		end

	frozen GL_CURRENT_PROGRAM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_PROGRAM"
		end

	frozen GL_POINT_SPRITE_COORD_ORIGIN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SPRITE_COORD_ORIGIN"
		end

	frozen GL_LOWER_LEFT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOWER_LEFT"
		end

	frozen GL_UPPER_LEFT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UPPER_LEFT"
		end

	frozen GL_STENCIL_BACK_REF : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_REF"
		end

	frozen GL_STENCIL_BACK_VALUE_MASK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_VALUE_MASK"
		end

	frozen GL_STENCIL_BACK_WRITEMASK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_WRITEMASK"
		end

	frozen GL_VERSION_2_1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_2_1"
		end

	frozen GL_CURRENT_RASTER_SECONDARY_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_SECONDARY_COLOR"
		end

	frozen GL_PIXEL_PACK_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_PACK_BUFFER"
		end

	frozen GL_PIXEL_UNPACK_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_UNPACK_BUFFER"
		end

	frozen GL_PIXEL_PACK_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_PACK_BUFFER_BINDING"
		end

	frozen GL_PIXEL_UNPACK_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_UNPACK_BUFFER_BINDING"
		end

	frozen GL_FLOAT_MAT2x3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT2x3"
		end

	frozen GL_FLOAT_MAT2x4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT2x4"
		end

	frozen GL_FLOAT_MAT3x2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT3x2"
		end

	frozen GL_FLOAT_MAT3x4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT3x4"
		end

	frozen GL_FLOAT_MAT4x2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT4x2"
		end

	frozen GL_FLOAT_MAT4x3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT4x3"
		end

	frozen GL_SRGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB"
		end

	frozen GL_SRGB8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB8"
		end

	frozen GL_SRGB_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB_ALPHA"
		end

	frozen GL_SRGB8_ALPHA8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB8_ALPHA8"
		end

	frozen GL_SLUMINANCE_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SLUMINANCE_ALPHA"
		end

	frozen GL_SLUMINANCE8_ALPHA8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SLUMINANCE8_ALPHA8"
		end

	frozen GL_SLUMINANCE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SLUMINANCE"
		end

	frozen GL_SLUMINANCE8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SLUMINANCE8"
		end

	frozen GL_COMPRESSED_SRGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB"
		end

	frozen GL_COMPRESSED_SRGB_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB_ALPHA"
		end

	frozen GL_COMPRESSED_SLUMINANCE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SLUMINANCE"
		end

	frozen GL_COMPRESSED_SLUMINANCE_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SLUMINANCE_ALPHA"
		end

	frozen GL_VERSION_3_0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_3_0"
		end

	frozen GL_MAX_CLIP_DISTANCES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CLIP_DISTANCES"
		end

	frozen GL_CLIP_DISTANCE5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_DISTANCE5"
		end

	frozen GL_CLIP_DISTANCE1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_DISTANCE1"
		end

	frozen GL_CLIP_DISTANCE3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_DISTANCE3"
		end

	frozen GL_CLIP_DISTANCE0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_DISTANCE0"
		end

	frozen GL_CLIP_DISTANCE4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_DISTANCE4"
		end

	frozen GL_CLIP_DISTANCE2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_DISTANCE2"
		end

	frozen GL_MAX_VARYING_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VARYING_COMPONENTS"
		end

	frozen GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT"
		end

	frozen GL_MAJOR_VERSION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAJOR_VERSION"
		end

	frozen GL_MINOR_VERSION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MINOR_VERSION"
		end

	frozen GL_NUM_EXTENSIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_EXTENSIONS"
		end

	frozen GL_CONTEXT_FLAGS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONTEXT_FLAGS"
		end

	frozen GL_DEPTH_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_BUFFER"
		end

	frozen GL_STENCIL_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BUFFER"
		end

	frozen GL_RGBA32F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA32F"
		end

	frozen GL_RGB32F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB32F"
		end

	frozen GL_RGBA16F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16F"
		end

	frozen GL_RGB16F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16F"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_INTEGER"
		end

	frozen GL_MAX_ARRAY_TEXTURE_LAYERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ARRAY_TEXTURE_LAYERS"
		end

	frozen GL_MIN_PROGRAM_TEXEL_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_PROGRAM_TEXEL_OFFSET"
		end

	frozen GL_MAX_PROGRAM_TEXEL_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEXEL_OFFSET"
		end

	frozen GL_CLAMP_VERTEX_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_VERTEX_COLOR"
		end

	frozen GL_CLAMP_FRAGMENT_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_FRAGMENT_COLOR"
		end

	frozen GL_CLAMP_READ_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_READ_COLOR"
		end

	frozen GL_FIXED_ONLY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FIXED_ONLY"
		end

	frozen GL_TEXTURE_RED_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RED_TYPE"
		end

	frozen GL_TEXTURE_GREEN_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GREEN_TYPE"
		end

	frozen GL_TEXTURE_BLUE_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BLUE_TYPE"
		end

	frozen GL_TEXTURE_ALPHA_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_ALPHA_TYPE"
		end

	frozen GL_TEXTURE_LUMINANCE_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_LUMINANCE_TYPE"
		end

	frozen GL_TEXTURE_INTENSITY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_INTENSITY_TYPE"
		end

	frozen GL_TEXTURE_DEPTH_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_DEPTH_TYPE"
		end

	frozen GL_TEXTURE_1D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_1D_ARRAY"
		end

	frozen GL_PROXY_TEXTURE_1D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_1D_ARRAY"
		end

	frozen GL_TEXTURE_2D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_2D_ARRAY"
		end

	frozen GL_PROXY_TEXTURE_2D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_2D_ARRAY"
		end

	frozen GL_TEXTURE_BINDING_1D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_1D_ARRAY"
		end

	frozen GL_TEXTURE_BINDING_2D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_2D_ARRAY"
		end

	frozen GL_R11F_G11F_B10F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R11F_G11F_B10F"
		end

	frozen GL_UNSIGNED_INT_10F_11F_11F_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_10F_11F_11F_REV"
		end

	frozen GL_RGB9_E5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB9_E5"
		end

	frozen GL_UNSIGNED_INT_5_9_9_9_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_5_9_9_9_REV"
		end

	frozen GL_TEXTURE_SHARED_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SHARED_SIZE"
		end

	frozen GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_MODE"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS"
		end

	frozen GL_TRANSFORM_FEEDBACK_VARYINGS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_VARYINGS"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_START : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_START"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_SIZE"
		end

	frozen GL_PRIMITIVES_GENERATED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMITIVES_GENERATED"
		end

	frozen GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN"
		end

	frozen GL_RASTERIZER_DISCARD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RASTERIZER_DISCARD"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS"
		end

	frozen GL_INTERLEAVED_ATTRIBS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERLEAVED_ATTRIBS"
		end

	frozen GL_SEPARATE_ATTRIBS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SEPARATE_ATTRIBS"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_BINDING"
		end

	frozen GL_RGBA32UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA32UI"
		end

	frozen GL_RGB32UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB32UI"
		end

	frozen GL_RGBA16UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16UI"
		end

	frozen GL_RGB16UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16UI"
		end

	frozen GL_RGBA8UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA8UI"
		end

	frozen GL_RGB8UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB8UI"
		end

	frozen GL_RGBA32I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA32I"
		end

	frozen GL_RGB32I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB32I"
		end

	frozen GL_RGBA16I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16I"
		end

	frozen GL_RGB16I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16I"
		end

	frozen GL_RGBA8I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA8I"
		end

	frozen GL_RGB8I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB8I"
		end

	frozen GL_RED_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED_INTEGER"
		end

	frozen GL_GREEN_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREEN_INTEGER"
		end

	frozen GL_BLUE_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLUE_INTEGER"
		end

	frozen GL_ALPHA_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_INTEGER"
		end

	frozen GL_RGB_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_INTEGER"
		end

	frozen GL_RGBA_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_INTEGER"
		end

	frozen GL_BGR_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BGR_INTEGER"
		end

	frozen GL_BGRA_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BGRA_INTEGER"
		end

	frozen GL_SAMPLER_1D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_1D_ARRAY"
		end

	frozen GL_SAMPLER_2D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_ARRAY"
		end

	frozen GL_SAMPLER_1D_ARRAY_SHADOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_1D_ARRAY_SHADOW"
		end

	frozen GL_SAMPLER_2D_ARRAY_SHADOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_ARRAY_SHADOW"
		end

	frozen GL_SAMPLER_CUBE_SHADOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_CUBE_SHADOW"
		end

	frozen GL_UNSIGNED_INT_VEC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_VEC2"
		end

	frozen GL_UNSIGNED_INT_VEC3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_VEC3"
		end

	frozen GL_UNSIGNED_INT_VEC4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_VEC4"
		end

	frozen GL_INT_SAMPLER_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_1D"
		end

	frozen GL_INT_SAMPLER_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_2D"
		end

	frozen GL_INT_SAMPLER_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_3D"
		end

	frozen GL_INT_SAMPLER_CUBE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_CUBE"
		end

	frozen GL_INT_SAMPLER_1D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_1D_ARRAY"
		end

	frozen GL_INT_SAMPLER_2D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_2D_ARRAY"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_1D"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_2D"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_3D"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_CUBE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_CUBE"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_1D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_1D_ARRAY"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_2D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_2D_ARRAY"
		end

	frozen GL_QUERY_WAIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_WAIT"
		end

	frozen GL_QUERY_NO_WAIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_NO_WAIT"
		end

	frozen GL_QUERY_BY_REGION_WAIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_BY_REGION_WAIT"
		end

	frozen GL_QUERY_BY_REGION_NO_WAIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_BY_REGION_NO_WAIT"
		end

	frozen GL_VERSION_3_1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_3_1"
		end

	frozen GL_TEXTURE_RECTANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RECTANGLE"
		end

	frozen GL_TEXTURE_BINDING_RECTANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_RECTANGLE"
		end

	frozen GL_PROXY_TEXTURE_RECTANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_RECTANGLE"
		end

	frozen GL_MAX_RECTANGLE_TEXTURE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_RECTANGLE_TEXTURE_SIZE"
		end

	frozen GL_SAMPLER_2D_RECT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_RECT"
		end

	frozen GL_SAMPLER_2D_RECT_SHADOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_RECT_SHADOW"
		end

	frozen GL_TEXTURE_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER"
		end

	frozen GL_MAX_TEXTURE_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_BUFFER_SIZE"
		end

	frozen GL_TEXTURE_BINDING_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_BUFFER"
		end

	frozen GL_TEXTURE_BUFFER_DATA_STORE_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_DATA_STORE_BINDING"
		end

	frozen GL_TEXTURE_BUFFER_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_FORMAT"
		end

	frozen GL_SAMPLER_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_BUFFER"
		end

	frozen GL_INT_SAMPLER_2D_RECT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_2D_RECT"
		end

	frozen GL_INT_SAMPLER_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_BUFFER"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_2D_RECT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_2D_RECT"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_BUFFER"
		end

	frozen GL_RED_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED_SNORM"
		end

	frozen GL_RG_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG_SNORM"
		end

	frozen GL_RGB_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_SNORM"
		end

	frozen GL_RGBA_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_SNORM"
		end

	frozen GL_R8_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R8_SNORM"
		end

	frozen GL_RG8_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG8_SNORM"
		end

	frozen GL_RGB8_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB8_SNORM"
		end

	frozen GL_RGBA8_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA8_SNORM"
		end

	frozen GL_R16_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R16_SNORM"
		end

	frozen GL_RG16_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG16_SNORM"
		end

	frozen GL_RGB16_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16_SNORM"
		end

	frozen GL_RGBA16_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16_SNORM"
		end

	frozen GL_SIGNED_NORMALIZED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_NORMALIZED"
		end

	frozen GL_PRIMITIVE_RESTART : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMITIVE_RESTART"
		end

	frozen GL_PRIMITIVE_RESTART_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMITIVE_RESTART_INDEX"
		end

	frozen GL_BUFFER_ACCESS_FLAGS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_ACCESS_FLAGS"
		end

	frozen GL_BUFFER_MAP_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_MAP_LENGTH"
		end

	frozen GL_BUFFER_MAP_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_MAP_OFFSET"
		end

	frozen GL_VERSION_3_2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_3_2"
		end

	frozen GL_CONTEXT_CORE_PROFILE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONTEXT_CORE_PROFILE_BIT"
		end

	frozen GL_CONTEXT_COMPATIBILITY_PROFILE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONTEXT_COMPATIBILITY_PROFILE_BIT"
		end

	frozen GL_LINES_ADJACENCY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINES_ADJACENCY"
		end

	frozen GL_LINE_STRIP_ADJACENCY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_STRIP_ADJACENCY"
		end

	frozen GL_TRIANGLES_ADJACENCY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLES_ADJACENCY"
		end

	frozen GL_TRIANGLE_STRIP_ADJACENCY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLE_STRIP_ADJACENCY"
		end

	frozen GL_PROGRAM_POINT_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_POINT_SIZE"
		end

	frozen GL_GEOMETRY_VERTICES_OUT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_VERTICES_OUT"
		end

	frozen GL_GEOMETRY_INPUT_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_INPUT_TYPE"
		end

	frozen GL_GEOMETRY_OUTPUT_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_OUTPUT_TYPE"
		end

	frozen GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_LAYERED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_LAYERED"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS"
		end

	frozen GL_GEOMETRY_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_SHADER"
		end

	frozen GL_MAX_GEOMETRY_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_UNIFORM_COMPONENTS"
		end

	frozen GL_MAX_GEOMETRY_OUTPUT_VERTICES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_OUTPUT_VERTICES"
		end

	frozen GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS"
		end

	frozen GL_MAX_VERTEX_OUTPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_OUTPUT_COMPONENTS"
		end

	frozen GL_MAX_GEOMETRY_INPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_INPUT_COMPONENTS"
		end

	frozen GL_MAX_GEOMETRY_OUTPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_OUTPUT_COMPONENTS"
		end

	frozen GL_MAX_FRAGMENT_INPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_INPUT_COMPONENTS"
		end

	frozen GL_CONTEXT_PROFILE_MASK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONTEXT_PROFILE_MASK"
		end

	frozen GL_VERSION_3_3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_3_3"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_DIVISOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_DIVISOR"
		end

	frozen GL_RGB10_A2UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB10_A2UI"
		end

	frozen GL_VERSION_4_0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_4_0"
		end

	frozen GL_SAMPLE_SHADING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_SHADING"
		end

	frozen GL_MIN_SAMPLE_SHADING_VALUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_SAMPLE_SHADING_VALUE"
		end

	frozen GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET"
		end

	frozen GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET"
		end

	frozen GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS"
		end

	frozen GL_TEXTURE_CUBE_MAP_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_ARRAY"
		end

	frozen GL_TEXTURE_BINDING_CUBE_MAP_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_CUBE_MAP_ARRAY"
		end

	frozen GL_PROXY_TEXTURE_CUBE_MAP_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_CUBE_MAP_ARRAY"
		end

	frozen GL_SAMPLER_CUBE_MAP_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_CUBE_MAP_ARRAY"
		end

	frozen GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW"
		end

	frozen GL_INT_SAMPLER_CUBE_MAP_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_CUBE_MAP_ARRAY"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY"
		end

	frozen GL_VERSION_4_1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_4_1"
		end

	frozen GL_VERSION_4_2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_4_2"
		end

	frozen GL_COMPRESSED_RGBA_BPTC_UNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_BPTC_UNORM"
		end

	frozen GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM"
		end

	frozen GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT"
		end

	frozen GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT"
		end

	frozen GL_VERSION_4_3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_4_3"
		end

	frozen GL_NUM_SHADING_LANGUAGE_VERSIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_SHADING_LANGUAGE_VERSIONS"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_LONG : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_LONG"
		end

	frozen GL_VERSION_4_4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERSION_4_4"
		end

	frozen GL_MAX_VERTEX_ATTRIB_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_ATTRIB_STRIDE"
		end

	frozen GL_3DFX_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_3DFX_multisample"
		end

	frozen GL_MULTISAMPLE_3DFX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_3DFX"
		end

	frozen GL_SAMPLE_BUFFERS_3DFX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_BUFFERS_3DFX"
		end

	frozen GL_SAMPLES_3DFX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLES_3DFX"
		end

	frozen GL_MULTISAMPLE_BIT_3DFX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_BIT_3DFX"
		end

	frozen GL_3DFX_tbuffer : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_3DFX_tbuffer"
		end

	frozen GL_3DFX_texture_compression_FXT1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_3DFX_texture_compression_FXT1"
		end

	frozen GL_COMPRESSED_RGB_FXT1_3DFX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB_FXT1_3DFX"
		end

	frozen GL_COMPRESSED_RGBA_FXT1_3DFX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_FXT1_3DFX"
		end

	frozen GL_AMD_blend_minmax_factor : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_blend_minmax_factor"
		end

	frozen GL_FACTOR_MIN_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FACTOR_MIN_AMD"
		end

	frozen GL_FACTOR_MAX_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FACTOR_MAX_AMD"
		end

	frozen GL_AMD_conservative_depth : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_conservative_depth"
		end

	frozen GL_AMD_debug_output : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_debug_output"
		end

	frozen GL_MAX_DEBUG_MESSAGE_LENGTH_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEBUG_MESSAGE_LENGTH_AMD"
		end

	frozen GL_MAX_DEBUG_LOGGED_MESSAGES_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEBUG_LOGGED_MESSAGES_AMD"
		end

	frozen GL_DEBUG_LOGGED_MESSAGES_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_LOGGED_MESSAGES_AMD"
		end

	frozen GL_DEBUG_SEVERITY_HIGH_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_HIGH_AMD"
		end

	frozen GL_DEBUG_SEVERITY_MEDIUM_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_MEDIUM_AMD"
		end

	frozen GL_DEBUG_SEVERITY_LOW_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_LOW_AMD"
		end

	frozen GL_DEBUG_CATEGORY_API_ERROR_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CATEGORY_API_ERROR_AMD"
		end

	frozen GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD"
		end

	frozen GL_DEBUG_CATEGORY_DEPRECATION_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CATEGORY_DEPRECATION_AMD"
		end

	frozen GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD"
		end

	frozen GL_DEBUG_CATEGORY_PERFORMANCE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CATEGORY_PERFORMANCE_AMD"
		end

	frozen GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD"
		end

	frozen GL_DEBUG_CATEGORY_APPLICATION_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CATEGORY_APPLICATION_AMD"
		end

	frozen GL_DEBUG_CATEGORY_OTHER_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CATEGORY_OTHER_AMD"
		end

	frozen GL_AMD_depth_clamp_separate : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_depth_clamp_separate"
		end

	frozen GL_DEPTH_CLAMP_NEAR_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_CLAMP_NEAR_AMD"
		end

	frozen GL_DEPTH_CLAMP_FAR_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_CLAMP_FAR_AMD"
		end

	frozen GL_AMD_draw_buffers_blend : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_draw_buffers_blend"
		end

	frozen GL_AMD_interleaved_elements : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_interleaved_elements"
		end

	frozen GL_RG8UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG8UI"
		end

	frozen GL_RG16UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG16UI"
		end

	frozen GL_VERTEX_ELEMENT_SWIZZLE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ELEMENT_SWIZZLE_AMD"
		end

	frozen GL_VERTEX_ID_SWIZZLE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ID_SWIZZLE_AMD"
		end

	frozen GL_AMD_multi_draw_indirect : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_multi_draw_indirect"
		end

	frozen GL_AMD_name_gen_delete : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_name_gen_delete"
		end

	frozen GL_DATA_BUFFER_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DATA_BUFFER_AMD"
		end

	frozen GL_PERFORMANCE_MONITOR_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PERFORMANCE_MONITOR_AMD"
		end

	frozen GL_QUERY_OBJECT_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_OBJECT_AMD"
		end

	frozen GL_VERTEX_ARRAY_OBJECT_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_OBJECT_AMD"
		end

	frozen GL_SAMPLER_OBJECT_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_OBJECT_AMD"
		end

	frozen GL_AMD_performance_monitor : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_performance_monitor"
		end

	frozen GL_COUNTER_TYPE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COUNTER_TYPE_AMD"
		end

	frozen GL_COUNTER_RANGE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COUNTER_RANGE_AMD"
		end

	frozen GL_UNSIGNED_INT64_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT64_AMD"
		end

	frozen GL_PERCENTAGE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PERCENTAGE_AMD"
		end

	frozen GL_PERFMON_RESULT_AVAILABLE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PERFMON_RESULT_AVAILABLE_AMD"
		end

	frozen GL_PERFMON_RESULT_SIZE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PERFMON_RESULT_SIZE_AMD"
		end

	frozen GL_PERFMON_RESULT_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PERFMON_RESULT_AMD"
		end

	frozen GL_AMD_pinned_memory : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_pinned_memory"
		end

	frozen GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD"
		end

	frozen GL_AMD_query_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_query_buffer_object"
		end

	frozen GL_QUERY_BUFFER_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_BUFFER_AMD"
		end

	frozen GL_QUERY_BUFFER_BINDING_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_BUFFER_BINDING_AMD"
		end

	frozen GL_QUERY_RESULT_NO_WAIT_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT_NO_WAIT_AMD"
		end

	frozen GL_AMD_sample_positions : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_sample_positions"
		end

	frozen GL_SUBSAMPLE_DISTANCE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUBSAMPLE_DISTANCE_AMD"
		end

	frozen GL_AMD_seamless_cubemap_per_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_seamless_cubemap_per_texture"
		end

	frozen GL_TEXTURE_CUBE_MAP_SEAMLESS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_SEAMLESS_ARB"
		end

	frozen GL_AMD_shader_stencil_export : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_shader_stencil_export"
		end

	frozen GL_AMD_shader_trinary_minmax : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_shader_trinary_minmax"
		end

	frozen GL_AMD_sparse_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_sparse_texture"
		end

	frozen GL_TEXTURE_STORAGE_SPARSE_BIT_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_STORAGE_SPARSE_BIT_AMD"
		end

	frozen GL_VIRTUAL_PAGE_SIZE_X_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIRTUAL_PAGE_SIZE_X_AMD"
		end

	frozen GL_VIRTUAL_PAGE_SIZE_Y_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIRTUAL_PAGE_SIZE_Y_AMD"
		end

	frozen GL_VIRTUAL_PAGE_SIZE_Z_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIRTUAL_PAGE_SIZE_Z_AMD"
		end

	frozen GL_MAX_SPARSE_TEXTURE_SIZE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SPARSE_TEXTURE_SIZE_AMD"
		end

	frozen GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD"
		end

	frozen GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS"
		end

	frozen GL_MIN_SPARSE_LEVEL_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_SPARSE_LEVEL_AMD"
		end

	frozen GL_MIN_LOD_WARNING_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_LOD_WARNING_AMD"
		end

	frozen GL_AMD_stencil_operation_extended : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_stencil_operation_extended"
		end

	frozen GL_SET_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SET_AMD"
		end

	frozen GL_REPLACE_VALUE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACE_VALUE_AMD"
		end

	frozen GL_STENCIL_OP_VALUE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_OP_VALUE_AMD"
		end

	frozen GL_STENCIL_BACK_OP_VALUE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_OP_VALUE_AMD"
		end

	frozen GL_AMD_texture_texture4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_texture_texture4"
		end

	frozen GL_AMD_transform_feedback3_lines_triangles : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_transform_feedback3_lines_triangles"
		end

	frozen GL_AMD_vertex_shader_layer : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_vertex_shader_layer"
		end

	frozen GL_AMD_vertex_shader_tessellator : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_vertex_shader_tessellator"
		end

	frozen GL_SAMPLER_BUFFER_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_BUFFER_AMD"
		end

	frozen GL_INT_SAMPLER_BUFFER_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_BUFFER_AMD"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD"
		end

	frozen GL_TESSELLATION_MODE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESSELLATION_MODE_AMD"
		end

	frozen GL_TESSELLATION_FACTOR_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESSELLATION_FACTOR_AMD"
		end

	frozen GL_DISCRETE_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DISCRETE_AMD"
		end

	frozen GL_CONTINUOUS_AMD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONTINUOUS_AMD"
		end

	frozen GL_AMD_vertex_shader_viewport_index : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AMD_vertex_shader_viewport_index"
		end

	frozen GL_ANGLE_depth_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_depth_texture"
		end

	frozen GL_ANGLE_framebuffer_blit : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_framebuffer_blit"
		end

	frozen GL_DRAW_FRAMEBUFFER_BINDING_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_FRAMEBUFFER_BINDING_ANGLE"
		end

	frozen GL_READ_FRAMEBUFFER_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_FRAMEBUFFER_ANGLE"
		end

	frozen GL_DRAW_FRAMEBUFFER_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_FRAMEBUFFER_ANGLE"
		end

	frozen GL_READ_FRAMEBUFFER_BINDING_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_FRAMEBUFFER_BINDING_ANGLE"
		end

	frozen GL_ANGLE_framebuffer_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_framebuffer_multisample"
		end

	frozen GL_RENDERBUFFER_SAMPLES_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_SAMPLES_ANGLE"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE"
		end

	frozen GL_MAX_SAMPLES_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SAMPLES_ANGLE"
		end

	frozen GL_ANGLE_instanced_arrays : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_instanced_arrays"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE"
		end

	frozen GL_ANGLE_pack_reverse_row_order : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_pack_reverse_row_order"
		end

	frozen GL_PACK_REVERSE_ROW_ORDER_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_REVERSE_ROW_ORDER_ANGLE"
		end

	frozen GL_ANGLE_program_binary : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_program_binary"
		end

	frozen GL_PROGRAM_BINARY_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_BINARY_ANGLE"
		end

	frozen GL_ANGLE_texture_compression_dxt1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_texture_compression_dxt1"
		end

	frozen GL_COMPRESSED_RGB_S3TC_DXT1_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB_S3TC_DXT1_ANGLE"
		end

	frozen GL_COMPRESSED_RGBA_S3TC_DXT1_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_S3TC_DXT1_ANGLE"
		end

	frozen GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE"
		end

	frozen GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE"
		end

	frozen GL_ANGLE_texture_compression_dxt3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_texture_compression_dxt3"
		end

	frozen GL_ANGLE_texture_compression_dxt5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_texture_compression_dxt5"
		end

	frozen GL_ANGLE_texture_usage : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_texture_usage"
		end

	frozen GL_TEXTURE_USAGE_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_USAGE_ANGLE"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_ANGLE"
		end

	frozen GL_ANGLE_timer_query : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_timer_query"
		end

	frozen GL_QUERY_COUNTER_BITS_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_COUNTER_BITS_ANGLE"
		end

	frozen GL_CURRENT_QUERY_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_QUERY_ANGLE"
		end

	frozen GL_QUERY_RESULT_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT_ANGLE"
		end

	frozen GL_QUERY_RESULT_AVAILABLE_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT_AVAILABLE_ANGLE"
		end

	frozen GL_TIME_ELAPSED_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TIME_ELAPSED_ANGLE"
		end

	frozen GL_TIMESTAMP_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TIMESTAMP_ANGLE"
		end

	frozen GL_ANGLE_translated_shader_source : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANGLE_translated_shader_source"
		end

	frozen GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE"
		end

	frozen GL_APPLE_aux_depth_stencil : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_aux_depth_stencil"
		end

	frozen GL_AUX_DEPTH_STENCIL_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AUX_DEPTH_STENCIL_APPLE"
		end

	frozen GL_APPLE_client_storage : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_client_storage"
		end

	frozen GL_UNPACK_CLIENT_STORAGE_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_CLIENT_STORAGE_APPLE"
		end

	frozen GL_APPLE_element_array : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_element_array"
		end

	frozen GL_ELEMENT_ARRAY_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_APPLE"
		end

	frozen GL_ELEMENT_ARRAY_TYPE_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_TYPE_APPLE"
		end

	frozen GL_ELEMENT_ARRAY_POINTER_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_POINTER_APPLE"
		end

	frozen GL_APPLE_fence : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_fence"
		end

	frozen GL_DRAW_PIXELS_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_PIXELS_APPLE"
		end

	frozen GL_FENCE_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FENCE_APPLE"
		end

	frozen GL_APPLE_float_pixels : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_float_pixels"
		end

	frozen GL_HALF_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HALF_APPLE"
		end

	frozen GL_RGBA_FLOAT32_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_FLOAT32_APPLE"
		end

	frozen GL_RGB_FLOAT32_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_FLOAT32_APPLE"
		end

	frozen GL_ALPHA_FLOAT32_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_FLOAT32_APPLE"
		end

	frozen GL_INTENSITY_FLOAT32_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY_FLOAT32_APPLE"
		end

	frozen GL_LUMINANCE_FLOAT32_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_FLOAT32_APPLE"
		end

	frozen GL_LUMINANCE_ALPHA_FLOAT32_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA_FLOAT32_APPLE"
		end

	frozen GL_RGBA_FLOAT16_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_FLOAT16_APPLE"
		end

	frozen GL_RGB_FLOAT16_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_FLOAT16_APPLE"
		end

	frozen GL_ALPHA_FLOAT16_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_FLOAT16_APPLE"
		end

	frozen GL_INTENSITY_FLOAT16_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY_FLOAT16_APPLE"
		end

	frozen GL_LUMINANCE_FLOAT16_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_FLOAT16_APPLE"
		end

	frozen GL_LUMINANCE_ALPHA_FLOAT16_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA_FLOAT16_APPLE"
		end

	frozen GL_COLOR_FLOAT_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_FLOAT_APPLE"
		end

	frozen GL_APPLE_flush_buffer_range : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_flush_buffer_range"
		end

	frozen GL_BUFFER_SERIALIZED_MODIFY_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_SERIALIZED_MODIFY_APPLE"
		end

	frozen GL_BUFFER_FLUSHING_UNMAP_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_FLUSHING_UNMAP_APPLE"
		end

	frozen GL_APPLE_object_purgeable : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_object_purgeable"
		end

	frozen GL_BUFFER_OBJECT_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_OBJECT_APPLE"
		end

	frozen GL_RELEASED_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELEASED_APPLE"
		end

	frozen GL_VOLATILE_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VOLATILE_APPLE"
		end

	frozen GL_RETAINED_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RETAINED_APPLE"
		end

	frozen GL_UNDEFINED_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNDEFINED_APPLE"
		end

	frozen GL_PURGEABLE_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PURGEABLE_APPLE"
		end

	frozen GL_APPLE_pixel_buffer : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_pixel_buffer"
		end

	frozen GL_MIN_PBUFFER_VIEWPORT_DIMS_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_PBUFFER_VIEWPORT_DIMS_APPLE"
		end

	frozen GL_APPLE_rgb_422 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_rgb_422"
		end

	frozen GL_UNSIGNED_SHORT_8_8_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_8_8_APPLE"
		end

	frozen GL_UNSIGNED_SHORT_8_8_REV_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_8_8_REV_APPLE"
		end

	frozen GL_RGB_422_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_422_APPLE"
		end

	frozen GL_APPLE_row_bytes : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_row_bytes"
		end

	frozen GL_PACK_ROW_BYTES_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_ROW_BYTES_APPLE"
		end

	frozen GL_UNPACK_ROW_BYTES_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_ROW_BYTES_APPLE"
		end

	frozen GL_APPLE_specular_vector : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_specular_vector"
		end

	frozen GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE"
		end

	frozen GL_APPLE_texture_range : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_texture_range"
		end

	frozen GL_TEXTURE_RANGE_LENGTH_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RANGE_LENGTH_APPLE"
		end

	frozen GL_TEXTURE_RANGE_POINTER_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RANGE_POINTER_APPLE"
		end

	frozen GL_TEXTURE_STORAGE_HINT_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_STORAGE_HINT_APPLE"
		end

	frozen GL_STORAGE_PRIVATE_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STORAGE_PRIVATE_APPLE"
		end

	frozen GL_STORAGE_CACHED_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STORAGE_CACHED_APPLE"
		end

	frozen GL_STORAGE_SHARED_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STORAGE_SHARED_APPLE"
		end

	frozen GL_APPLE_transform_hint : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_transform_hint"
		end

	frozen GL_TRANSFORM_HINT_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_HINT_APPLE"
		end

	frozen GL_APPLE_vertex_array_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_vertex_array_object"
		end

	frozen GL_VERTEX_ARRAY_BINDING_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_BINDING_APPLE"
		end

	frozen GL_APPLE_vertex_array_range : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_vertex_array_range"
		end

	frozen GL_VERTEX_ARRAY_RANGE_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_RANGE_APPLE"
		end

	frozen GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE"
		end

	frozen GL_VERTEX_ARRAY_STORAGE_HINT_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_STORAGE_HINT_APPLE"
		end

	frozen GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE"
		end

	frozen GL_VERTEX_ARRAY_RANGE_POINTER_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_RANGE_POINTER_APPLE"
		end

	frozen GL_STORAGE_CLIENT_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STORAGE_CLIENT_APPLE"
		end

	frozen GL_APPLE_vertex_program_evaluators : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_vertex_program_evaluators"
		end

	frozen GL_VERTEX_ATTRIB_MAP1_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP1_APPLE"
		end

	frozen GL_VERTEX_ATTRIB_MAP2_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP2_APPLE"
		end

	frozen GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE"
		end

	frozen GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE"
		end

	frozen GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE"
		end

	frozen GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE"
		end

	frozen GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE"
		end

	frozen GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE"
		end

	frozen GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE"
		end

	frozen GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE"
		end

	frozen GL_APPLE_ycbcr_422 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_APPLE_ycbcr_422"
		end

	frozen GL_YCBCR_422_APPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_YCBCR_422_APPLE"
		end

	frozen GL_ARB_ES2_compatibility : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_ES2_compatibility"
		end

	frozen GL_FIXED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FIXED"
		end

	frozen GL_IMPLEMENTATION_COLOR_READ_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMPLEMENTATION_COLOR_READ_TYPE"
		end

	frozen GL_IMPLEMENTATION_COLOR_READ_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMPLEMENTATION_COLOR_READ_FORMAT"
		end

	frozen GL_RGB565 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB565"
		end

	frozen GL_LOW_FLOAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOW_FLOAT"
		end

	frozen GL_MEDIUM_FLOAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MEDIUM_FLOAT"
		end

	frozen GL_HIGH_FLOAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HIGH_FLOAT"
		end

	frozen GL_LOW_INT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOW_INT"
		end

	frozen GL_MEDIUM_INT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MEDIUM_INT"
		end

	frozen GL_HIGH_INT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HIGH_INT"
		end

	frozen GL_SHADER_BINARY_FORMATS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_BINARY_FORMATS"
		end

	frozen GL_NUM_SHADER_BINARY_FORMATS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_SHADER_BINARY_FORMATS"
		end

	frozen GL_SHADER_COMPILER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_COMPILER"
		end

	frozen GL_MAX_VERTEX_UNIFORM_VECTORS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_UNIFORM_VECTORS"
		end

	frozen GL_MAX_VARYING_VECTORS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VARYING_VECTORS"
		end

	frozen GL_MAX_FRAGMENT_UNIFORM_VECTORS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_UNIFORM_VECTORS"
		end

	frozen GL_ARB_ES3_compatibility : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_ES3_compatibility"
		end

	frozen GL_TEXTURE_IMMUTABLE_LEVELS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_IMMUTABLE_LEVELS"
		end

	frozen GL_PRIMITIVE_RESTART_FIXED_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMITIVE_RESTART_FIXED_INDEX"
		end

	frozen GL_ANY_SAMPLES_PASSED_CONSERVATIVE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANY_SAMPLES_PASSED_CONSERVATIVE"
		end

	frozen GL_MAX_ELEMENT_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ELEMENT_INDEX"
		end

	frozen GL_COMPRESSED_R11_EAC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_R11_EAC"
		end

	frozen GL_COMPRESSED_SIGNED_R11_EAC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SIGNED_R11_EAC"
		end

	frozen GL_COMPRESSED_RG11_EAC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RG11_EAC"
		end

	frozen GL_COMPRESSED_SIGNED_RG11_EAC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SIGNED_RG11_EAC"
		end

	frozen GL_COMPRESSED_RGB8_ETC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB8_ETC2"
		end

	frozen GL_COMPRESSED_SRGB8_ETC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ETC2"
		end

	frozen GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2"
		end

	frozen GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2"
		end

	frozen GL_COMPRESSED_RGBA8_ETC2_EAC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA8_ETC2_EAC"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC"
		end

	frozen GL_ARB_arrays_of_arrays : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_arrays_of_arrays"
		end

	frozen GL_ARB_base_instance : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_base_instance"
		end

	frozen GL_ARB_bindless_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_bindless_texture"
		end

	frozen GL_UNSIGNED_INT64_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT64_ARB"
		end

	frozen GL_ARB_blend_func_extended : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_blend_func_extended"
		end

	frozen GL_SRC1_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC1_COLOR"
		end

	frozen GL_ONE_MINUS_SRC1_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_SRC1_COLOR"
		end

	frozen GL_ONE_MINUS_SRC1_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_SRC1_ALPHA"
		end

	frozen GL_MAX_DUAL_SOURCE_DRAW_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DUAL_SOURCE_DRAW_BUFFERS"
		end

	frozen GL_ARB_buffer_storage : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_buffer_storage"
		end

	frozen GL_MAP_READ_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_READ_BIT"
		end

	frozen GL_MAP_WRITE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_WRITE_BIT"
		end

	frozen GL_MAP_PERSISTENT_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_PERSISTENT_BIT"
		end

	frozen GL_MAP_COHERENT_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_COHERENT_BIT"
		end

	frozen GL_DYNAMIC_STORAGE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DYNAMIC_STORAGE_BIT"
		end

	frozen GL_CLIENT_STORAGE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIENT_STORAGE_BIT"
		end

	frozen GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT"
		end

	frozen GL_BUFFER_IMMUTABLE_STORAGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_IMMUTABLE_STORAGE"
		end

	frozen GL_BUFFER_STORAGE_FLAGS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_STORAGE_FLAGS"
		end

	frozen GL_ARB_cl_event : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_cl_event"
		end

	frozen GL_SYNC_CL_EVENT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYNC_CL_EVENT_ARB"
		end

	frozen GL_SYNC_CL_EVENT_COMPLETE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYNC_CL_EVENT_COMPLETE_ARB"
		end

	frozen GL_ARB_clear_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_clear_buffer_object"
		end

	frozen GL_ARB_clear_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_clear_texture"
		end

	frozen GL_CLEAR_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLEAR_TEXTURE"
		end

	frozen GL_ARB_color_buffer_float : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_color_buffer_float"
		end

	frozen GL_RGBA_FLOAT_MODE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_FLOAT_MODE_ARB"
		end

	frozen GL_CLAMP_VERTEX_COLOR_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_VERTEX_COLOR_ARB"
		end

	frozen GL_CLAMP_FRAGMENT_COLOR_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_FRAGMENT_COLOR_ARB"
		end

	frozen GL_CLAMP_READ_COLOR_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_READ_COLOR_ARB"
		end

	frozen GL_FIXED_ONLY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FIXED_ONLY_ARB"
		end

	frozen GL_ARB_compatibility : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_compatibility"
		end

	frozen GL_ARB_compressed_texture_pixel_storage : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_compressed_texture_pixel_storage"
		end

	frozen GL_UNPACK_COMPRESSED_BLOCK_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_COMPRESSED_BLOCK_WIDTH"
		end

	frozen GL_UNPACK_COMPRESSED_BLOCK_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_COMPRESSED_BLOCK_HEIGHT"
		end

	frozen GL_UNPACK_COMPRESSED_BLOCK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_COMPRESSED_BLOCK_DEPTH"
		end

	frozen GL_UNPACK_COMPRESSED_BLOCK_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_COMPRESSED_BLOCK_SIZE"
		end

	frozen GL_PACK_COMPRESSED_BLOCK_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_COMPRESSED_BLOCK_WIDTH"
		end

	frozen GL_PACK_COMPRESSED_BLOCK_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_COMPRESSED_BLOCK_HEIGHT"
		end

	frozen GL_PACK_COMPRESSED_BLOCK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_COMPRESSED_BLOCK_DEPTH"
		end

	frozen GL_PACK_COMPRESSED_BLOCK_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_COMPRESSED_BLOCK_SIZE"
		end

	frozen GL_ARB_compute_shader : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_compute_shader"
		end

	frozen GL_COMPUTE_SHADER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPUTE_SHADER_BIT"
		end

	frozen GL_MAX_COMPUTE_SHARED_MEMORY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_SHARED_MEMORY_SIZE"
		end

	frozen GL_MAX_COMPUTE_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_UNIFORM_COMPONENTS"
		end

	frozen GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS"
		end

	frozen GL_MAX_COMPUTE_ATOMIC_COUNTERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_ATOMIC_COUNTERS"
		end

	frozen GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS"
		end

	frozen GL_COMPUTE_WORK_GROUP_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPUTE_WORK_GROUP_SIZE"
		end

	frozen GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS"
		end

	frozen GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER"
		end

	frozen GL_DISPATCH_INDIRECT_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DISPATCH_INDIRECT_BUFFER"
		end

	frozen GL_DISPATCH_INDIRECT_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DISPATCH_INDIRECT_BUFFER_BINDING"
		end

	frozen GL_COMPUTE_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPUTE_SHADER"
		end

	frozen GL_MAX_COMPUTE_UNIFORM_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_UNIFORM_BLOCKS"
		end

	frozen GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS"
		end

	frozen GL_MAX_COMPUTE_IMAGE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_IMAGE_UNIFORMS"
		end

	frozen GL_MAX_COMPUTE_WORK_GROUP_COUNT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_WORK_GROUP_COUNT"
		end

	frozen GL_MAX_COMPUTE_WORK_GROUP_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_WORK_GROUP_SIZE"
		end

	frozen GL_ARB_compute_variable_group_size : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_compute_variable_group_size"
		end

	frozen GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB"
		end

	frozen GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB"
		end

	frozen GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB"
		end

	frozen GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB"
		end

	frozen GL_ARB_conservative_depth : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_conservative_depth"
		end

	frozen GL_ARB_copy_buffer : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_copy_buffer"
		end

	frozen GL_COPY_READ_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COPY_READ_BUFFER"
		end

	frozen GL_COPY_WRITE_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COPY_WRITE_BUFFER"
		end

	frozen GL_ARB_copy_image : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_copy_image"
		end

	frozen GL_ARB_debug_output : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_debug_output"
		end

	frozen GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB"
		end

	frozen GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB"
		end

	frozen GL_DEBUG_CALLBACK_FUNCTION_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CALLBACK_FUNCTION_ARB"
		end

	frozen GL_DEBUG_CALLBACK_USER_PARAM_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CALLBACK_USER_PARAM_ARB"
		end

	frozen GL_DEBUG_SOURCE_API_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_API_ARB"
		end

	frozen GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB"
		end

	frozen GL_DEBUG_SOURCE_SHADER_COMPILER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_SHADER_COMPILER_ARB"
		end

	frozen GL_DEBUG_SOURCE_THIRD_PARTY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_THIRD_PARTY_ARB"
		end

	frozen GL_DEBUG_SOURCE_APPLICATION_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_APPLICATION_ARB"
		end

	frozen GL_DEBUG_SOURCE_OTHER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_OTHER_ARB"
		end

	frozen GL_DEBUG_TYPE_ERROR_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_ERROR_ARB"
		end

	frozen GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB"
		end

	frozen GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB"
		end

	frozen GL_DEBUG_TYPE_PORTABILITY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_PORTABILITY_ARB"
		end

	frozen GL_DEBUG_TYPE_PERFORMANCE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_PERFORMANCE_ARB"
		end

	frozen GL_DEBUG_TYPE_OTHER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_OTHER_ARB"
		end

	frozen GL_MAX_DEBUG_MESSAGE_LENGTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEBUG_MESSAGE_LENGTH_ARB"
		end

	frozen GL_MAX_DEBUG_LOGGED_MESSAGES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEBUG_LOGGED_MESSAGES_ARB"
		end

	frozen GL_DEBUG_LOGGED_MESSAGES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_LOGGED_MESSAGES_ARB"
		end

	frozen GL_DEBUG_SEVERITY_HIGH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_HIGH_ARB"
		end

	frozen GL_DEBUG_SEVERITY_MEDIUM_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_MEDIUM_ARB"
		end

	frozen GL_DEBUG_SEVERITY_LOW_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_LOW_ARB"
		end

	frozen GL_ARB_depth_buffer_float : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_depth_buffer_float"
		end

	frozen GL_DEPTH_COMPONENT32F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT32F"
		end

	frozen GL_DEPTH32F_STENCIL8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH32F_STENCIL8"
		end

	frozen GL_FLOAT_32_UNSIGNED_INT_24_8_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_32_UNSIGNED_INT_24_8_REV"
		end

	frozen GL_ARB_depth_clamp : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_depth_clamp"
		end

	frozen GL_DEPTH_CLAMP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_CLAMP"
		end

	frozen GL_ARB_depth_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_depth_texture"
		end

	frozen GL_DEPTH_COMPONENT16_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT16_ARB"
		end

	frozen GL_DEPTH_COMPONENT24_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT24_ARB"
		end

	frozen GL_DEPTH_COMPONENT32_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT32_ARB"
		end

	frozen GL_TEXTURE_DEPTH_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_DEPTH_SIZE_ARB"
		end

	frozen GL_DEPTH_TEXTURE_MODE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_TEXTURE_MODE_ARB"
		end

	frozen GL_ARB_draw_buffers : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_draw_buffers"
		end

	frozen GL_MAX_DRAW_BUFFERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DRAW_BUFFERS_ARB"
		end

	frozen GL_DRAW_BUFFER0_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER0_ARB"
		end

	frozen GL_DRAW_BUFFER1_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER1_ARB"
		end

	frozen GL_DRAW_BUFFER2_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER2_ARB"
		end

	frozen GL_DRAW_BUFFER3_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER3_ARB"
		end

	frozen GL_DRAW_BUFFER4_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER4_ARB"
		end

	frozen GL_DRAW_BUFFER5_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER5_ARB"
		end

	frozen GL_DRAW_BUFFER6_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER6_ARB"
		end

	frozen GL_DRAW_BUFFER7_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER7_ARB"
		end

	frozen GL_DRAW_BUFFER8_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER8_ARB"
		end

	frozen GL_DRAW_BUFFER9_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER9_ARB"
		end

	frozen GL_DRAW_BUFFER10_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER10_ARB"
		end

	frozen GL_DRAW_BUFFER11_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER11_ARB"
		end

	frozen GL_DRAW_BUFFER12_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER12_ARB"
		end

	frozen GL_DRAW_BUFFER13_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER13_ARB"
		end

	frozen GL_DRAW_BUFFER14_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER14_ARB"
		end

	frozen GL_DRAW_BUFFER15_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER15_ARB"
		end

	frozen GL_ARB_draw_buffers_blend : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_draw_buffers_blend"
		end

	frozen GL_ARB_draw_elements_base_vertex : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_draw_elements_base_vertex"
		end

	frozen GL_ARB_draw_indirect : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_draw_indirect"
		end

	frozen GL_DRAW_INDIRECT_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_INDIRECT_BUFFER"
		end

	frozen GL_DRAW_INDIRECT_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_INDIRECT_BUFFER_BINDING"
		end

	frozen GL_ARB_draw_instanced : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_draw_instanced"
		end

	frozen GL_ARB_enhanced_layouts : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_enhanced_layouts"
		end

	frozen GL_LOCATION_COMPONENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOCATION_COMPONENT"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_INDEX"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE"
		end

	frozen GL_ARB_explicit_attrib_location : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_explicit_attrib_location"
		end

	frozen GL_ARB_explicit_uniform_location : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_explicit_uniform_location"
		end

	frozen GL_MAX_UNIFORM_LOCATIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_UNIFORM_LOCATIONS"
		end

	frozen GL_ARB_fragment_coord_conventions : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_fragment_coord_conventions"
		end

	frozen GL_ARB_fragment_layer_viewport : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_fragment_layer_viewport"
		end

	frozen GL_ARB_fragment_program : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_fragment_program"
		end

	frozen GL_FRAGMENT_PROGRAM_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_PROGRAM_ARB"
		end

	frozen GL_PROGRAM_ALU_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_ALU_INSTRUCTIONS_ARB"
		end

	frozen GL_PROGRAM_TEX_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_TEX_INSTRUCTIONS_ARB"
		end

	frozen GL_PROGRAM_TEX_INDIRECTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_TEX_INDIRECTIONS_ARB"
		end

	frozen GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB"
		end

	frozen GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB"
		end

	frozen GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB"
		end

	frozen GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB"
		end

	frozen GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB"
		end

	frozen GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB"
		end

	frozen GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB"
		end

	frozen GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB"
		end

	frozen GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB"
		end

	frozen GL_MAX_TEXTURE_COORDS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_COORDS_ARB"
		end

	frozen GL_MAX_TEXTURE_IMAGE_UNITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_IMAGE_UNITS_ARB"
		end

	frozen GL_ARB_fragment_program_shadow : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_fragment_program_shadow"
		end

	frozen GL_ARB_fragment_shader : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_fragment_shader"
		end

	frozen GL_FRAGMENT_SHADER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_SHADER_ARB"
		end

	frozen GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB"
		end

	frozen GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB"
		end

	frozen GL_ARB_framebuffer_no_attachments : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_framebuffer_no_attachments"
		end

	frozen GL_FRAMEBUFFER_DEFAULT_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_DEFAULT_WIDTH"
		end

	frozen GL_FRAMEBUFFER_DEFAULT_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_DEFAULT_HEIGHT"
		end

	frozen GL_FRAMEBUFFER_DEFAULT_LAYERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_DEFAULT_LAYERS"
		end

	frozen GL_FRAMEBUFFER_DEFAULT_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_DEFAULT_SAMPLES"
		end

	frozen GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS"
		end

	frozen GL_MAX_FRAMEBUFFER_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAMEBUFFER_WIDTH"
		end

	frozen GL_MAX_FRAMEBUFFER_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAMEBUFFER_HEIGHT"
		end

	frozen GL_MAX_FRAMEBUFFER_LAYERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAMEBUFFER_LAYERS"
		end

	frozen GL_MAX_FRAMEBUFFER_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAMEBUFFER_SAMPLES"
		end

	frozen GL_ARB_framebuffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_framebuffer_object"
		end

	frozen GL_INVALID_FRAMEBUFFER_OPERATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVALID_FRAMEBUFFER_OPERATION"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE"
		end

	frozen GL_FRAMEBUFFER_DEFAULT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_DEFAULT"
		end

	frozen GL_FRAMEBUFFER_UNDEFINED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_UNDEFINED"
		end

	frozen GL_DEPTH_STENCIL_ATTACHMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_STENCIL_ATTACHMENT"
		end

	frozen GL_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX"
		end

	frozen GL_MAX_RENDERBUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_RENDERBUFFER_SIZE"
		end

	frozen GL_DEPTH_STENCIL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_STENCIL"
		end

	frozen GL_UNSIGNED_INT_24_8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_24_8"
		end

	frozen GL_DEPTH24_STENCIL8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH24_STENCIL8"
		end

	frozen GL_TEXTURE_STENCIL_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_STENCIL_SIZE"
		end

	frozen GL_UNSIGNED_NORMALIZED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_NORMALIZED"
		end

	frozen GL_DRAW_FRAMEBUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_FRAMEBUFFER_BINDING"
		end

	frozen GL_FRAMEBUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_BINDING"
		end

	frozen GL_RENDERBUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_BINDING"
		end

	frozen GL_READ_FRAMEBUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_FRAMEBUFFER"
		end

	frozen GL_DRAW_FRAMEBUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_FRAMEBUFFER"
		end

	frozen GL_READ_FRAMEBUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_FRAMEBUFFER_BINDING"
		end

	frozen GL_RENDERBUFFER_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_SAMPLES"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER"
		end

	frozen GL_FRAMEBUFFER_COMPLETE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_COMPLETE"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER"
		end

	frozen GL_FRAMEBUFFER_UNSUPPORTED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_UNSUPPORTED"
		end

	frozen GL_MAX_COLOR_ATTACHMENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COLOR_ATTACHMENTS"
		end

	frozen GL_COLOR_ATTACHMENT0 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT0"
		end

	frozen GL_COLOR_ATTACHMENT1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT1"
		end

	frozen GL_COLOR_ATTACHMENT2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT2"
		end

	frozen GL_COLOR_ATTACHMENT3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT3"
		end

	frozen GL_COLOR_ATTACHMENT4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT4"
		end

	frozen GL_COLOR_ATTACHMENT5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT5"
		end

	frozen GL_COLOR_ATTACHMENT6 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT6"
		end

	frozen GL_COLOR_ATTACHMENT7 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT7"
		end

	frozen GL_COLOR_ATTACHMENT8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT8"
		end

	frozen GL_COLOR_ATTACHMENT9 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT9"
		end

	frozen GL_COLOR_ATTACHMENT10 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT10"
		end

	frozen GL_COLOR_ATTACHMENT11 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT11"
		end

	frozen GL_COLOR_ATTACHMENT12 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT12"
		end

	frozen GL_COLOR_ATTACHMENT13 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT13"
		end

	frozen GL_COLOR_ATTACHMENT14 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT14"
		end

	frozen GL_COLOR_ATTACHMENT15 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT15"
		end

	frozen GL_DEPTH_ATTACHMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_ATTACHMENT"
		end

	frozen GL_STENCIL_ATTACHMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_ATTACHMENT"
		end

	frozen GL_FRAMEBUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER"
		end

	frozen GL_RENDERBUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER"
		end

	frozen GL_RENDERBUFFER_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_WIDTH"
		end

	frozen GL_RENDERBUFFER_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_HEIGHT"
		end

	frozen GL_RENDERBUFFER_INTERNAL_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_INTERNAL_FORMAT"
		end

	frozen GL_STENCIL_INDEX1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX1"
		end

	frozen GL_STENCIL_INDEX4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX4"
		end

	frozen GL_STENCIL_INDEX8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX8"
		end

	frozen GL_STENCIL_INDEX16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX16"
		end

	frozen GL_RENDERBUFFER_RED_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_RED_SIZE"
		end

	frozen GL_RENDERBUFFER_GREEN_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_GREEN_SIZE"
		end

	frozen GL_RENDERBUFFER_BLUE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_BLUE_SIZE"
		end

	frozen GL_RENDERBUFFER_ALPHA_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_ALPHA_SIZE"
		end

	frozen GL_RENDERBUFFER_DEPTH_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_DEPTH_SIZE"
		end

	frozen GL_RENDERBUFFER_STENCIL_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_STENCIL_SIZE"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE"
		end

	frozen GL_MAX_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SAMPLES"
		end

	frozen GL_ARB_framebuffer_sRGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_framebuffer_sRGB"
		end

	frozen GL_FRAMEBUFFER_SRGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_SRGB"
		end

	frozen GL_ARB_geometry_shader4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_geometry_shader4"
		end

	frozen GL_LINES_ADJACENCY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINES_ADJACENCY_ARB"
		end

	frozen GL_LINE_STRIP_ADJACENCY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_STRIP_ADJACENCY_ARB"
		end

	frozen GL_TRIANGLES_ADJACENCY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLES_ADJACENCY_ARB"
		end

	frozen GL_TRIANGLE_STRIP_ADJACENCY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLE_STRIP_ADJACENCY_ARB"
		end

	frozen GL_PROGRAM_POINT_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_POINT_SIZE_ARB"
		end

	frozen GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB"
		end

	frozen GL_GEOMETRY_SHADER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_SHADER_ARB"
		end

	frozen GL_GEOMETRY_VERTICES_OUT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_VERTICES_OUT_ARB"
		end

	frozen GL_GEOMETRY_INPUT_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_INPUT_TYPE_ARB"
		end

	frozen GL_GEOMETRY_OUTPUT_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_OUTPUT_TYPE_ARB"
		end

	frozen GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB"
		end

	frozen GL_MAX_VERTEX_VARYING_COMPONENTS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_VARYING_COMPONENTS_ARB"
		end

	frozen GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB"
		end

	frozen GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB"
		end

	frozen GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB"
		end

	frozen GL_ARB_get_program_binary : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_get_program_binary"
		end

	frozen GL_PROGRAM_BINARY_RETRIEVABLE_HINT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_BINARY_RETRIEVABLE_HINT"
		end

	frozen GL_PROGRAM_BINARY_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_BINARY_LENGTH"
		end

	frozen GL_NUM_PROGRAM_BINARY_FORMATS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_PROGRAM_BINARY_FORMATS"
		end

	frozen GL_PROGRAM_BINARY_FORMATS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_BINARY_FORMATS"
		end

	frozen GL_ARB_gpu_shader5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_gpu_shader5"
		end

	frozen GL_GEOMETRY_SHADER_INVOCATIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_SHADER_INVOCATIONS"
		end

	frozen GL_MAX_GEOMETRY_SHADER_INVOCATIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_SHADER_INVOCATIONS"
		end

	frozen GL_MIN_FRAGMENT_INTERPOLATION_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_FRAGMENT_INTERPOLATION_OFFSET"
		end

	frozen GL_MAX_FRAGMENT_INTERPOLATION_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_INTERPOLATION_OFFSET"
		end

	frozen GL_FRAGMENT_INTERPOLATION_OFFSET_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_INTERPOLATION_OFFSET_BITS"
		end

	frozen GL_MAX_VERTEX_STREAMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_STREAMS"
		end

	frozen GL_ARB_gpu_shader_fp64 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_gpu_shader_fp64"
		end

	frozen GL_DOUBLE_MAT2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT2"
		end

	frozen GL_DOUBLE_MAT3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT3"
		end

	frozen GL_DOUBLE_MAT4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT4"
		end

	frozen GL_DOUBLE_MAT2x3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT2x3"
		end

	frozen GL_DOUBLE_MAT2x4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT2x4"
		end

	frozen GL_DOUBLE_MAT3x2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT3x2"
		end

	frozen GL_DOUBLE_MAT3x4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT3x4"
		end

	frozen GL_DOUBLE_MAT4x2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT4x2"
		end

	frozen GL_DOUBLE_MAT4x3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT4x3"
		end

	frozen GL_DOUBLE_VEC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_VEC2"
		end

	frozen GL_DOUBLE_VEC3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_VEC3"
		end

	frozen GL_DOUBLE_VEC4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_VEC4"
		end

	frozen GL_ARB_half_float_pixel : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_half_float_pixel"
		end

	frozen GL_HALF_FLOAT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HALF_FLOAT_ARB"
		end

	frozen GL_ARB_half_float_vertex : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_half_float_vertex"
		end

	frozen GL_HALF_FLOAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HALF_FLOAT"
		end

	frozen GL_ARB_imaging : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_imaging"
		end

	frozen GL_CONSTANT_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_COLOR"
		end

	frozen GL_ONE_MINUS_CONSTANT_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_CONSTANT_COLOR"
		end

	frozen GL_CONSTANT_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_ALPHA"
		end

	frozen GL_ONE_MINUS_CONSTANT_ALPHA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_CONSTANT_ALPHA"
		end

	frozen GL_BLEND_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_COLOR"
		end

	frozen GL_FUNC_ADD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FUNC_ADD"
		end

	frozen GL_MIN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN"
		end

	frozen GL_MAX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX"
		end

	frozen GL_BLEND_EQUATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_EQUATION"
		end

	frozen GL_FUNC_SUBTRACT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FUNC_SUBTRACT"
		end

	frozen GL_FUNC_REVERSE_SUBTRACT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FUNC_REVERSE_SUBTRACT"
		end

	frozen GL_CONVOLUTION_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_1D"
		end

	frozen GL_CONVOLUTION_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_2D"
		end

	frozen GL_SEPARABLE_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SEPARABLE_2D"
		end

	frozen GL_CONVOLUTION_BORDER_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_BORDER_MODE"
		end

	frozen GL_CONVOLUTION_FILTER_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_FILTER_SCALE"
		end

	frozen GL_CONVOLUTION_FILTER_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_FILTER_BIAS"
		end

	frozen GL_REDUCE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REDUCE"
		end

	frozen GL_CONVOLUTION_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_FORMAT"
		end

	frozen GL_CONVOLUTION_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_WIDTH"
		end

	frozen GL_CONVOLUTION_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_HEIGHT"
		end

	frozen GL_MAX_CONVOLUTION_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CONVOLUTION_WIDTH"
		end

	frozen GL_MAX_CONVOLUTION_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CONVOLUTION_HEIGHT"
		end

	frozen GL_POST_CONVOLUTION_RED_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_RED_SCALE"
		end

	frozen GL_POST_CONVOLUTION_GREEN_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_GREEN_SCALE"
		end

	frozen GL_POST_CONVOLUTION_BLUE_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_BLUE_SCALE"
		end

	frozen GL_POST_CONVOLUTION_ALPHA_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_ALPHA_SCALE"
		end

	frozen GL_POST_CONVOLUTION_RED_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_RED_BIAS"
		end

	frozen GL_POST_CONVOLUTION_GREEN_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_GREEN_BIAS"
		end

	frozen GL_POST_CONVOLUTION_BLUE_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_BLUE_BIAS"
		end

	frozen GL_POST_CONVOLUTION_ALPHA_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_ALPHA_BIAS"
		end

	frozen GL_HISTOGRAM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM"
		end

	frozen GL_PROXY_HISTOGRAM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_HISTOGRAM"
		end

	frozen GL_HISTOGRAM_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_WIDTH"
		end

	frozen GL_HISTOGRAM_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_FORMAT"
		end

	frozen GL_HISTOGRAM_RED_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_RED_SIZE"
		end

	frozen GL_HISTOGRAM_GREEN_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_GREEN_SIZE"
		end

	frozen GL_HISTOGRAM_BLUE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_BLUE_SIZE"
		end

	frozen GL_HISTOGRAM_ALPHA_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_ALPHA_SIZE"
		end

	frozen GL_HISTOGRAM_LUMINANCE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_LUMINANCE_SIZE"
		end

	frozen GL_HISTOGRAM_SINK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_SINK"
		end

	frozen GL_MINMAX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MINMAX"
		end

	frozen GL_MINMAX_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MINMAX_FORMAT"
		end

	frozen GL_MINMAX_SINK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MINMAX_SINK"
		end

	frozen GL_TABLE_TOO_LARGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TABLE_TOO_LARGE"
		end

	frozen GL_COLOR_MATRIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_MATRIX"
		end

	frozen GL_COLOR_MATRIX_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_MATRIX_STACK_DEPTH"
		end

	frozen GL_MAX_COLOR_MATRIX_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COLOR_MATRIX_STACK_DEPTH"
		end

	frozen GL_POST_COLOR_MATRIX_RED_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_RED_SCALE"
		end

	frozen GL_POST_COLOR_MATRIX_GREEN_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_GREEN_SCALE"
		end

	frozen GL_POST_COLOR_MATRIX_BLUE_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_BLUE_SCALE"
		end

	frozen GL_POST_COLOR_MATRIX_ALPHA_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_ALPHA_SCALE"
		end

	frozen GL_POST_COLOR_MATRIX_RED_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_RED_BIAS"
		end

	frozen GL_POST_COLOR_MATRIX_GREEN_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_GREEN_BIAS"
		end

	frozen GL_POST_COLOR_MATRIX_BLUE_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_BLUE_BIAS"
		end

	frozen GL_POST_COLOR_MATRIX_ALPHA_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_ALPHA_BIAS"
		end

	frozen GL_COLOR_TABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE"
		end

	frozen GL_POST_CONVOLUTION_COLOR_TABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_COLOR_TABLE"
		end

	frozen GL_POST_COLOR_MATRIX_COLOR_TABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_COLOR_TABLE"
		end

	frozen GL_PROXY_COLOR_TABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_COLOR_TABLE"
		end

	frozen GL_PROXY_POST_CONVOLUTION_COLOR_TABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_POST_CONVOLUTION_COLOR_TABLE"
		end

	frozen GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE"
		end

	frozen GL_COLOR_TABLE_SCALE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_SCALE"
		end

	frozen GL_COLOR_TABLE_BIAS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_BIAS"
		end

	frozen GL_COLOR_TABLE_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_FORMAT"
		end

	frozen GL_COLOR_TABLE_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_WIDTH"
		end

	frozen GL_COLOR_TABLE_RED_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_RED_SIZE"
		end

	frozen GL_COLOR_TABLE_GREEN_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_GREEN_SIZE"
		end

	frozen GL_COLOR_TABLE_BLUE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_BLUE_SIZE"
		end

	frozen GL_COLOR_TABLE_ALPHA_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_ALPHA_SIZE"
		end

	frozen GL_COLOR_TABLE_LUMINANCE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_LUMINANCE_SIZE"
		end

	frozen GL_COLOR_TABLE_INTENSITY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_INTENSITY_SIZE"
		end

	frozen GL_IGNORE_BORDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IGNORE_BORDER"
		end

	frozen GL_CONSTANT_BORDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_BORDER"
		end

	frozen GL_WRAP_BORDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WRAP_BORDER"
		end

	frozen GL_REPLICATE_BORDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLICATE_BORDER"
		end

	frozen GL_CONVOLUTION_BORDER_COLOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_BORDER_COLOR"
		end

	frozen GL_ARB_indirect_parameters : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_indirect_parameters"
		end

	frozen GL_PARAMETER_BUFFER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PARAMETER_BUFFER_ARB"
		end

	frozen GL_PARAMETER_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PARAMETER_BUFFER_BINDING_ARB"
		end

	frozen GL_ARB_instanced_arrays : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_instanced_arrays"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB"
		end

	frozen GL_ARB_internalformat_query : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_internalformat_query"
		end

	frozen GL_NUM_SAMPLE_COUNTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_SAMPLE_COUNTS"
		end

	frozen GL_ARB_internalformat_query2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_internalformat_query2"
		end

	frozen GL_INTERNALFORMAT_SUPPORTED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_SUPPORTED"
		end

	frozen GL_INTERNALFORMAT_PREFERRED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_PREFERRED"
		end

	frozen GL_INTERNALFORMAT_RED_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_RED_SIZE"
		end

	frozen GL_INTERNALFORMAT_GREEN_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_GREEN_SIZE"
		end

	frozen GL_INTERNALFORMAT_BLUE_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_BLUE_SIZE"
		end

	frozen GL_INTERNALFORMAT_ALPHA_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_ALPHA_SIZE"
		end

	frozen GL_INTERNALFORMAT_DEPTH_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_DEPTH_SIZE"
		end

	frozen GL_INTERNALFORMAT_STENCIL_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_STENCIL_SIZE"
		end

	frozen GL_INTERNALFORMAT_SHARED_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_SHARED_SIZE"
		end

	frozen GL_INTERNALFORMAT_RED_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_RED_TYPE"
		end

	frozen GL_INTERNALFORMAT_GREEN_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_GREEN_TYPE"
		end

	frozen GL_INTERNALFORMAT_BLUE_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_BLUE_TYPE"
		end

	frozen GL_INTERNALFORMAT_ALPHA_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_ALPHA_TYPE"
		end

	frozen GL_INTERNALFORMAT_DEPTH_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_DEPTH_TYPE"
		end

	frozen GL_INTERNALFORMAT_STENCIL_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERNALFORMAT_STENCIL_TYPE"
		end

	frozen GL_MAX_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_WIDTH"
		end

	frozen GL_MAX_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_HEIGHT"
		end

	frozen GL_MAX_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEPTH"
		end

	frozen GL_MAX_LAYERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_LAYERS"
		end

	frozen GL_MAX_COMBINED_DIMENSIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_DIMENSIONS"
		end

	frozen GL_COLOR_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_COMPONENTS"
		end

	frozen GL_DEPTH_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENTS"
		end

	frozen GL_STENCIL_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_COMPONENTS"
		end

	frozen GL_COLOR_RENDERABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_RENDERABLE"
		end

	frozen GL_DEPTH_RENDERABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_RENDERABLE"
		end

	frozen GL_STENCIL_RENDERABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_RENDERABLE"
		end

	frozen GL_FRAMEBUFFER_RENDERABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_RENDERABLE"
		end

	frozen GL_FRAMEBUFFER_RENDERABLE_LAYERED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_RENDERABLE_LAYERED"
		end

	frozen GL_FRAMEBUFFER_BLEND : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_BLEND"
		end

	frozen GL_READ_PIXELS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_PIXELS"
		end

	frozen GL_READ_PIXELS_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_PIXELS_FORMAT"
		end

	frozen GL_READ_PIXELS_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_PIXELS_TYPE"
		end

	frozen GL_TEXTURE_IMAGE_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_IMAGE_FORMAT"
		end

	frozen GL_TEXTURE_IMAGE_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_IMAGE_TYPE"
		end

	frozen GL_GET_TEXTURE_IMAGE_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GET_TEXTURE_IMAGE_FORMAT"
		end

	frozen GL_GET_TEXTURE_IMAGE_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GET_TEXTURE_IMAGE_TYPE"
		end

	frozen GL_MIPMAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIPMAP"
		end

	frozen GL_MANUAL_GENERATE_MIPMAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MANUAL_GENERATE_MIPMAP"
		end

	frozen GL_AUTO_GENERATE_MIPMAP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AUTO_GENERATE_MIPMAP"
		end

	frozen GL_COLOR_ENCODING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ENCODING"
		end

	frozen GL_SRGB_READ : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB_READ"
		end

	frozen GL_SRGB_WRITE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB_WRITE"
		end

	frozen GL_SRGB_DECODE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB_DECODE_ARB"
		end

	frozen GL_FILTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FILTER"
		end

	frozen GL_VERTEX_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_TEXTURE"
		end

	frozen GL_TESS_CONTROL_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_CONTROL_TEXTURE"
		end

	frozen GL_TESS_EVALUATION_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_EVALUATION_TEXTURE"
		end

	frozen GL_GEOMETRY_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_TEXTURE"
		end

	frozen GL_FRAGMENT_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_TEXTURE"
		end

	frozen GL_COMPUTE_TEXTURE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPUTE_TEXTURE"
		end

	frozen GL_TEXTURE_SHADOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SHADOW"
		end

	frozen GL_TEXTURE_GATHER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GATHER"
		end

	frozen GL_TEXTURE_GATHER_SHADOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GATHER_SHADOW"
		end

	frozen GL_SHADER_IMAGE_LOAD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_IMAGE_LOAD"
		end

	frozen GL_SHADER_IMAGE_STORE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_IMAGE_STORE"
		end

	frozen GL_SHADER_IMAGE_ATOMIC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_IMAGE_ATOMIC"
		end

	frozen GL_IMAGE_TEXEL_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_TEXEL_SIZE"
		end

	frozen GL_IMAGE_COMPATIBILITY_CLASS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_COMPATIBILITY_CLASS"
		end

	frozen GL_IMAGE_PIXEL_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_PIXEL_FORMAT"
		end

	frozen GL_IMAGE_PIXEL_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_PIXEL_TYPE"
		end

	frozen GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST"
		end

	frozen GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST"
		end

	frozen GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE"
		end

	frozen GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE"
		end

	frozen GL_TEXTURE_COMPRESSED_BLOCK_WIDTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPRESSED_BLOCK_WIDTH"
		end

	frozen GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT"
		end

	frozen GL_TEXTURE_COMPRESSED_BLOCK_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPRESSED_BLOCK_SIZE"
		end

	frozen GL_CLEAR_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLEAR_BUFFER"
		end

	frozen GL_TEXTURE_VIEW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_VIEW"
		end

	frozen GL_VIEW_COMPATIBILITY_CLASS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_COMPATIBILITY_CLASS"
		end

	frozen GL_FULL_SUPPORT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FULL_SUPPORT"
		end

	frozen GL_CAVEAT_SUPPORT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CAVEAT_SUPPORT"
		end

	frozen GL_IMAGE_CLASS_4_X_32 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_4_X_32"
		end

	frozen GL_IMAGE_CLASS_2_X_32 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_2_X_32"
		end

	frozen GL_IMAGE_CLASS_1_X_32 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_1_X_32"
		end

	frozen GL_IMAGE_CLASS_4_X_16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_4_X_16"
		end

	frozen GL_IMAGE_CLASS_2_X_16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_2_X_16"
		end

	frozen GL_IMAGE_CLASS_1_X_16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_1_X_16"
		end

	frozen GL_IMAGE_CLASS_4_X_8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_4_X_8"
		end

	frozen GL_IMAGE_CLASS_2_X_8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_2_X_8"
		end

	frozen GL_IMAGE_CLASS_1_X_8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_1_X_8"
		end

	frozen GL_IMAGE_CLASS_11_11_10 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_11_11_10"
		end

	frozen GL_IMAGE_CLASS_10_10_10_2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CLASS_10_10_10_2"
		end

	frozen GL_VIEW_CLASS_128_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_128_BITS"
		end

	frozen GL_VIEW_CLASS_96_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_96_BITS"
		end

	frozen GL_VIEW_CLASS_64_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_64_BITS"
		end

	frozen GL_VIEW_CLASS_48_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_48_BITS"
		end

	frozen GL_VIEW_CLASS_32_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_32_BITS"
		end

	frozen GL_VIEW_CLASS_24_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_24_BITS"
		end

	frozen GL_VIEW_CLASS_16_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_16_BITS"
		end

	frozen GL_VIEW_CLASS_8_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_8_BITS"
		end

	frozen GL_VIEW_CLASS_S3TC_DXT1_RGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_S3TC_DXT1_RGB"
		end

	frozen GL_VIEW_CLASS_S3TC_DXT1_RGBA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_S3TC_DXT1_RGBA"
		end

	frozen GL_VIEW_CLASS_S3TC_DXT3_RGBA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_S3TC_DXT3_RGBA"
		end

	frozen GL_VIEW_CLASS_S3TC_DXT5_RGBA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_S3TC_DXT5_RGBA"
		end

	frozen GL_VIEW_CLASS_RGTC1_RED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_RGTC1_RED"
		end

	frozen GL_VIEW_CLASS_RGTC2_RG : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_RGTC2_RG"
		end

	frozen GL_VIEW_CLASS_BPTC_UNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_BPTC_UNORM"
		end

	frozen GL_VIEW_CLASS_BPTC_FLOAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEW_CLASS_BPTC_FLOAT"
		end

	frozen GL_ARB_invalidate_subdata : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_invalidate_subdata"
		end

	frozen GL_ARB_map_buffer_alignment : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_map_buffer_alignment"
		end

	frozen GL_MIN_MAP_BUFFER_ALIGNMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_MAP_BUFFER_ALIGNMENT"
		end

	frozen GL_ARB_map_buffer_range : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_map_buffer_range"
		end

	frozen GL_MAP_INVALIDATE_RANGE_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_INVALIDATE_RANGE_BIT"
		end

	frozen GL_MAP_INVALIDATE_BUFFER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_INVALIDATE_BUFFER_BIT"
		end

	frozen GL_MAP_FLUSH_EXPLICIT_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_FLUSH_EXPLICIT_BIT"
		end

	frozen GL_MAP_UNSYNCHRONIZED_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_UNSYNCHRONIZED_BIT"
		end

	frozen GL_ARB_matrix_palette : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_matrix_palette"
		end

	frozen GL_MATRIX_PALETTE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX_PALETTE_ARB"
		end

	frozen GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB"
		end

	frozen GL_MAX_PALETTE_MATRICES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PALETTE_MATRICES_ARB"
		end

	frozen GL_CURRENT_PALETTE_MATRIX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_PALETTE_MATRIX_ARB"
		end

	frozen GL_MATRIX_INDEX_ARRAY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX_INDEX_ARRAY_ARB"
		end

	frozen GL_CURRENT_MATRIX_INDEX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_MATRIX_INDEX_ARB"
		end

	frozen GL_MATRIX_INDEX_ARRAY_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX_INDEX_ARRAY_SIZE_ARB"
		end

	frozen GL_MATRIX_INDEX_ARRAY_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX_INDEX_ARRAY_TYPE_ARB"
		end

	frozen GL_MATRIX_INDEX_ARRAY_STRIDE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX_INDEX_ARRAY_STRIDE_ARB"
		end

	frozen GL_MATRIX_INDEX_ARRAY_POINTER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX_INDEX_ARRAY_POINTER_ARB"
		end

	frozen GL_ARB_multi_bind : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_multi_bind"
		end

	frozen GL_ARB_multi_draw_indirect : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_multi_draw_indirect"
		end

	frozen GL_ARB_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_multisample"
		end

	frozen GL_MULTISAMPLE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_ARB"
		end

	frozen GL_SAMPLE_ALPHA_TO_COVERAGE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_ALPHA_TO_COVERAGE_ARB"
		end

	frozen GL_SAMPLE_ALPHA_TO_ONE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_ALPHA_TO_ONE_ARB"
		end

	frozen GL_SAMPLE_COVERAGE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_COVERAGE_ARB"
		end

	frozen GL_SAMPLE_BUFFERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_BUFFERS_ARB"
		end

	frozen GL_SAMPLES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLES_ARB"
		end

	frozen GL_SAMPLE_COVERAGE_VALUE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_COVERAGE_VALUE_ARB"
		end

	frozen GL_SAMPLE_COVERAGE_INVERT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_COVERAGE_INVERT_ARB"
		end

	frozen GL_MULTISAMPLE_BIT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_BIT_ARB"
		end

	frozen GL_ARB_multitexture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_multitexture"
		end

	frozen GL_TEXTURE0_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE0_ARB"
		end

	frozen GL_TEXTURE1_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE1_ARB"
		end

	frozen GL_TEXTURE2_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE2_ARB"
		end

	frozen GL_TEXTURE3_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE3_ARB"
		end

	frozen GL_TEXTURE4_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE4_ARB"
		end

	frozen GL_TEXTURE5_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE5_ARB"
		end

	frozen GL_TEXTURE6_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE6_ARB"
		end

	frozen GL_TEXTURE7_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE7_ARB"
		end

	frozen GL_TEXTURE8_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE8_ARB"
		end

	frozen GL_TEXTURE9_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE9_ARB"
		end

	frozen GL_TEXTURE10_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE10_ARB"
		end

	frozen GL_TEXTURE11_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE11_ARB"
		end

	frozen GL_TEXTURE12_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE12_ARB"
		end

	frozen GL_TEXTURE13_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE13_ARB"
		end

	frozen GL_TEXTURE14_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE14_ARB"
		end

	frozen GL_TEXTURE15_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE15_ARB"
		end

	frozen GL_TEXTURE16_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE16_ARB"
		end

	frozen GL_TEXTURE17_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE17_ARB"
		end

	frozen GL_TEXTURE18_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE18_ARB"
		end

	frozen GL_TEXTURE19_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE19_ARB"
		end

	frozen GL_TEXTURE20_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE20_ARB"
		end

	frozen GL_TEXTURE21_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE21_ARB"
		end

	frozen GL_TEXTURE22_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE22_ARB"
		end

	frozen GL_TEXTURE23_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE23_ARB"
		end

	frozen GL_TEXTURE24_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE24_ARB"
		end

	frozen GL_TEXTURE25_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE25_ARB"
		end

	frozen GL_TEXTURE26_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE26_ARB"
		end

	frozen GL_TEXTURE27_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE27_ARB"
		end

	frozen GL_TEXTURE28_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE28_ARB"
		end

	frozen GL_TEXTURE29_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE29_ARB"
		end

	frozen GL_TEXTURE30_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE30_ARB"
		end

	frozen GL_TEXTURE31_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE31_ARB"
		end

	frozen GL_ACTIVE_TEXTURE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_TEXTURE_ARB"
		end

	frozen GL_CLIENT_ACTIVE_TEXTURE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIENT_ACTIVE_TEXTURE_ARB"
		end

	frozen GL_MAX_TEXTURE_UNITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_UNITS_ARB"
		end

	frozen GL_ARB_occlusion_query : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_occlusion_query"
		end

	frozen GL_QUERY_COUNTER_BITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_COUNTER_BITS_ARB"
		end

	frozen GL_CURRENT_QUERY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_QUERY_ARB"
		end

	frozen GL_QUERY_RESULT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT_ARB"
		end

	frozen GL_QUERY_RESULT_AVAILABLE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT_AVAILABLE_ARB"
		end

	frozen GL_SAMPLES_PASSED_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLES_PASSED_ARB"
		end

	frozen GL_ARB_occlusion_query2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_occlusion_query2"
		end

	frozen GL_ANY_SAMPLES_PASSED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ANY_SAMPLES_PASSED"
		end

	frozen GL_ARB_pixel_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_pixel_buffer_object"
		end

	frozen GL_PIXEL_PACK_BUFFER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_PACK_BUFFER_ARB"
		end

	frozen GL_PIXEL_UNPACK_BUFFER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_UNPACK_BUFFER_ARB"
		end

	frozen GL_PIXEL_PACK_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_PACK_BUFFER_BINDING_ARB"
		end

	frozen GL_PIXEL_UNPACK_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_UNPACK_BUFFER_BINDING_ARB"
		end

	frozen GL_ARB_point_parameters : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_point_parameters"
		end

	frozen GL_POINT_SIZE_MIN_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_MIN_ARB"
		end

	frozen GL_POINT_SIZE_MAX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_MAX_ARB"
		end

	frozen GL_POINT_FADE_THRESHOLD_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_FADE_THRESHOLD_SIZE_ARB"
		end

	frozen GL_POINT_DISTANCE_ATTENUATION_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_DISTANCE_ATTENUATION_ARB"
		end

	frozen GL_ARB_point_sprite : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_point_sprite"
		end

	frozen GL_POINT_SPRITE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SPRITE_ARB"
		end

	frozen GL_COORD_REPLACE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COORD_REPLACE_ARB"
		end

	frozen GL_ARB_program_interface_query : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_program_interface_query"
		end

	frozen GL_UNIFORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM"
		end

	frozen GL_UNIFORM_BLOCK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK"
		end

	frozen GL_PROGRAM_INPUT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_INPUT"
		end

	frozen GL_PROGRAM_OUTPUT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_OUTPUT"
		end

	frozen GL_BUFFER_VARIABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_VARIABLE"
		end

	frozen GL_SHADER_STORAGE_BLOCK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_STORAGE_BLOCK"
		end

	frozen GL_IS_PER_PATCH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IS_PER_PATCH"
		end

	frozen GL_VERTEX_SUBROUTINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SUBROUTINE"
		end

	frozen GL_TESS_CONTROL_SUBROUTINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_CONTROL_SUBROUTINE"
		end

	frozen GL_TESS_EVALUATION_SUBROUTINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_EVALUATION_SUBROUTINE"
		end

	frozen GL_GEOMETRY_SUBROUTINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_SUBROUTINE"
		end

	frozen GL_FRAGMENT_SUBROUTINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_SUBROUTINE"
		end

	frozen GL_COMPUTE_SUBROUTINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPUTE_SUBROUTINE"
		end

	frozen GL_VERTEX_SUBROUTINE_UNIFORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SUBROUTINE_UNIFORM"
		end

	frozen GL_TESS_CONTROL_SUBROUTINE_UNIFORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_CONTROL_SUBROUTINE_UNIFORM"
		end

	frozen GL_TESS_EVALUATION_SUBROUTINE_UNIFORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_EVALUATION_SUBROUTINE_UNIFORM"
		end

	frozen GL_GEOMETRY_SUBROUTINE_UNIFORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_SUBROUTINE_UNIFORM"
		end

	frozen GL_FRAGMENT_SUBROUTINE_UNIFORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_SUBROUTINE_UNIFORM"
		end

	frozen GL_COMPUTE_SUBROUTINE_UNIFORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPUTE_SUBROUTINE_UNIFORM"
		end

	frozen GL_TRANSFORM_FEEDBACK_VARYING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_VARYING"
		end

	frozen GL_ACTIVE_RESOURCES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_RESOURCES"
		end

	frozen GL_MAX_NAME_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_NAME_LENGTH"
		end

	frozen GL_MAX_NUM_ACTIVE_VARIABLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_NUM_ACTIVE_VARIABLES"
		end

	frozen GL_MAX_NUM_COMPATIBLE_SUBROUTINES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_NUM_COMPATIBLE_SUBROUTINES"
		end

	frozen GL_NAME_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NAME_LENGTH"
		end

	frozen GL_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TYPE"
		end

	frozen GL_ARRAY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_SIZE"
		end

	frozen GL_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET"
		end

	frozen GL_BLOCK_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLOCK_INDEX"
		end

	frozen GL_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_STRIDE"
		end

	frozen GL_MATRIX_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX_STRIDE"
		end

	frozen GL_IS_ROW_MAJOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IS_ROW_MAJOR"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_INDEX"
		end

	frozen GL_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_BINDING"
		end

	frozen GL_BUFFER_DATA_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_DATA_SIZE"
		end

	frozen GL_NUM_ACTIVE_VARIABLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_ACTIVE_VARIABLES"
		end

	frozen GL_ACTIVE_VARIABLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_VARIABLES"
		end

	frozen GL_REFERENCED_BY_VERTEX_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFERENCED_BY_VERTEX_SHADER"
		end

	frozen GL_REFERENCED_BY_TESS_CONTROL_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFERENCED_BY_TESS_CONTROL_SHADER"
		end

	frozen GL_REFERENCED_BY_TESS_EVALUATION_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFERENCED_BY_TESS_EVALUATION_SHADER"
		end

	frozen GL_REFERENCED_BY_GEOMETRY_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFERENCED_BY_GEOMETRY_SHADER"
		end

	frozen GL_REFERENCED_BY_FRAGMENT_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFERENCED_BY_FRAGMENT_SHADER"
		end

	frozen GL_REFERENCED_BY_COMPUTE_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFERENCED_BY_COMPUTE_SHADER"
		end

	frozen GL_TOP_LEVEL_ARRAY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TOP_LEVEL_ARRAY_SIZE"
		end

	frozen GL_TOP_LEVEL_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TOP_LEVEL_ARRAY_STRIDE"
		end

	frozen GL_LOCATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOCATION"
		end

	frozen GL_LOCATION_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOCATION_INDEX"
		end

	frozen GL_ARB_provoking_vertex : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_provoking_vertex"
		end

	frozen GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION"
		end

	frozen GL_FIRST_VERTEX_CONVENTION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FIRST_VERTEX_CONVENTION"
		end

	frozen GL_LAST_VERTEX_CONVENTION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LAST_VERTEX_CONVENTION"
		end

	frozen GL_PROVOKING_VERTEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROVOKING_VERTEX"
		end

	frozen GL_ARB_query_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_query_buffer_object"
		end

	frozen GL_QUERY_BUFFER_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_BUFFER_BARRIER_BIT"
		end

	frozen GL_QUERY_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_BUFFER"
		end

	frozen GL_QUERY_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_BUFFER_BINDING"
		end

	frozen GL_QUERY_RESULT_NO_WAIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT_NO_WAIT"
		end

	frozen GL_ARB_robust_buffer_access_behavior : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_robust_buffer_access_behavior"
		end

	frozen GL_ARB_robustness : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_robustness"
		end

	frozen GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB"
		end

	frozen GL_LOSE_CONTEXT_ON_RESET_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOSE_CONTEXT_ON_RESET_ARB"
		end

	frozen GL_GUILTY_CONTEXT_RESET_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GUILTY_CONTEXT_RESET_ARB"
		end

	frozen GL_INNOCENT_CONTEXT_RESET_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INNOCENT_CONTEXT_RESET_ARB"
		end

	frozen GL_UNKNOWN_CONTEXT_RESET_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNKNOWN_CONTEXT_RESET_ARB"
		end

	frozen GL_RESET_NOTIFICATION_STRATEGY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESET_NOTIFICATION_STRATEGY_ARB"
		end

	frozen GL_NO_RESET_NOTIFICATION_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NO_RESET_NOTIFICATION_ARB"
		end

	frozen GL_ARB_robustness_application_isolation : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_robustness_application_isolation"
		end

	frozen GL_ARB_robustness_share_group_isolation : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_robustness_share_group_isolation"
		end

	frozen GL_ARB_sample_shading : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_sample_shading"
		end

	frozen GL_SAMPLE_SHADING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_SHADING_ARB"
		end

	frozen GL_MIN_SAMPLE_SHADING_VALUE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_SAMPLE_SHADING_VALUE_ARB"
		end

	frozen GL_ARB_sampler_objects : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_sampler_objects"
		end

	frozen GL_SAMPLER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_BINDING"
		end

	frozen GL_ARB_seamless_cube_map : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_seamless_cube_map"
		end

	frozen GL_TEXTURE_CUBE_MAP_SEAMLESS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_SEAMLESS"
		end

	frozen GL_ARB_seamless_cubemap_per_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_seamless_cubemap_per_texture"
		end

	frozen GL_ARB_separate_shader_objects : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_separate_shader_objects"
		end

	frozen GL_VERTEX_SHADER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_BIT"
		end

	frozen GL_FRAGMENT_SHADER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_SHADER_BIT"
		end

	frozen GL_GEOMETRY_SHADER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_SHADER_BIT"
		end

	frozen GL_TESS_CONTROL_SHADER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_CONTROL_SHADER_BIT"
		end

	frozen GL_TESS_EVALUATION_SHADER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_EVALUATION_SHADER_BIT"
		end

	frozen GL_PROGRAM_SEPARABLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_SEPARABLE"
		end

	frozen GL_ACTIVE_PROGRAM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_PROGRAM"
		end

	frozen GL_PROGRAM_PIPELINE_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_PIPELINE_BINDING"
		end

	frozen GL_ALL_SHADER_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALL_SHADER_BITS"
		end

	frozen GL_ARB_shader_atomic_counters : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_atomic_counters"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_BINDING"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_START : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_START"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_SIZE"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER"
		end

	frozen GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER"
		end

	frozen GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS"
		end

	frozen GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS"
		end

	frozen GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS"
		end

	frozen GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS"
		end

	frozen GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS"
		end

	frozen GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS"
		end

	frozen GL_MAX_VERTEX_ATOMIC_COUNTERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_ATOMIC_COUNTERS"
		end

	frozen GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS"
		end

	frozen GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS"
		end

	frozen GL_MAX_GEOMETRY_ATOMIC_COUNTERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_ATOMIC_COUNTERS"
		end

	frozen GL_MAX_FRAGMENT_ATOMIC_COUNTERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_ATOMIC_COUNTERS"
		end

	frozen GL_MAX_COMBINED_ATOMIC_COUNTERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_ATOMIC_COUNTERS"
		end

	frozen GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE"
		end

	frozen GL_ACTIVE_ATOMIC_COUNTER_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_ATOMIC_COUNTER_BUFFERS"
		end

	frozen GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX"
		end

	frozen GL_UNSIGNED_INT_ATOMIC_COUNTER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_ATOMIC_COUNTER"
		end

	frozen GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS"
		end

	frozen GL_ARB_shader_bit_encoding : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_bit_encoding"
		end

	frozen GL_ARB_shader_draw_parameters : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_draw_parameters"
		end

	frozen GL_ARB_shader_group_vote : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_group_vote"
		end

	frozen GL_ARB_shader_image_load_store : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_image_load_store"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT"
		end

	frozen GL_ELEMENT_ARRAY_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_BARRIER_BIT"
		end

	frozen GL_UNIFORM_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BARRIER_BIT"
		end

	frozen GL_TEXTURE_FETCH_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_FETCH_BARRIER_BIT"
		end

	frozen GL_SHADER_IMAGE_ACCESS_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_IMAGE_ACCESS_BARRIER_BIT"
		end

	frozen GL_COMMAND_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMMAND_BARRIER_BIT"
		end

	frozen GL_PIXEL_BUFFER_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_BUFFER_BARRIER_BIT"
		end

	frozen GL_TEXTURE_UPDATE_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_UPDATE_BARRIER_BIT"
		end

	frozen GL_BUFFER_UPDATE_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_UPDATE_BARRIER_BIT"
		end

	frozen GL_FRAMEBUFFER_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_BARRIER_BIT"
		end

	frozen GL_TRANSFORM_FEEDBACK_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BARRIER_BIT"
		end

	frozen GL_ATOMIC_COUNTER_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BARRIER_BIT"
		end

	frozen GL_MAX_IMAGE_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_IMAGE_UNITS"
		end

	frozen GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS"
		end

	frozen GL_IMAGE_BINDING_NAME : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_NAME"
		end

	frozen GL_IMAGE_BINDING_LEVEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_LEVEL"
		end

	frozen GL_IMAGE_BINDING_LAYERED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_LAYERED"
		end

	frozen GL_IMAGE_BINDING_LAYER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_LAYER"
		end

	frozen GL_IMAGE_BINDING_ACCESS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_ACCESS"
		end

	frozen GL_IMAGE_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_1D"
		end

	frozen GL_IMAGE_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D"
		end

	frozen GL_IMAGE_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_3D"
		end

	frozen GL_IMAGE_2D_RECT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D_RECT"
		end

	frozen GL_IMAGE_CUBE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CUBE"
		end

	frozen GL_IMAGE_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BUFFER"
		end

	frozen GL_IMAGE_1D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_1D_ARRAY"
		end

	frozen GL_IMAGE_2D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D_ARRAY"
		end

	frozen GL_IMAGE_CUBE_MAP_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CUBE_MAP_ARRAY"
		end

	frozen GL_IMAGE_2D_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D_MULTISAMPLE"
		end

	frozen GL_IMAGE_2D_MULTISAMPLE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D_MULTISAMPLE_ARRAY"
		end

	frozen GL_INT_IMAGE_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_1D"
		end

	frozen GL_INT_IMAGE_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D"
		end

	frozen GL_INT_IMAGE_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_3D"
		end

	frozen GL_INT_IMAGE_2D_RECT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D_RECT"
		end

	frozen GL_INT_IMAGE_CUBE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_CUBE"
		end

	frozen GL_INT_IMAGE_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_BUFFER"
		end

	frozen GL_INT_IMAGE_1D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_1D_ARRAY"
		end

	frozen GL_INT_IMAGE_2D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D_ARRAY"
		end

	frozen GL_INT_IMAGE_CUBE_MAP_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_CUBE_MAP_ARRAY"
		end

	frozen GL_INT_IMAGE_2D_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D_MULTISAMPLE"
		end

	frozen GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY"
		end

	frozen GL_UNSIGNED_INT_IMAGE_1D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_1D"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D"
		end

	frozen GL_UNSIGNED_INT_IMAGE_3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_3D"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D_RECT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D_RECT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_CUBE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_CUBE"
		end

	frozen GL_UNSIGNED_INT_IMAGE_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_BUFFER"
		end

	frozen GL_UNSIGNED_INT_IMAGE_1D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_1D_ARRAY"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D_ARRAY"
		end

	frozen GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY"
		end

	frozen GL_MAX_IMAGE_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_IMAGE_SAMPLES"
		end

	frozen GL_IMAGE_BINDING_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_FORMAT"
		end

	frozen GL_IMAGE_FORMAT_COMPATIBILITY_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_FORMAT_COMPATIBILITY_TYPE"
		end

	frozen GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE"
		end

	frozen GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS"
		end

	frozen GL_MAX_VERTEX_IMAGE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_IMAGE_UNIFORMS"
		end

	frozen GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS"
		end

	frozen GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS"
		end

	frozen GL_MAX_GEOMETRY_IMAGE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_IMAGE_UNIFORMS"
		end

	frozen GL_MAX_FRAGMENT_IMAGE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_IMAGE_UNIFORMS"
		end

	frozen GL_MAX_COMBINED_IMAGE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_IMAGE_UNIFORMS"
		end

	frozen GL_ALL_BARRIER_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALL_BARRIER_BITS"
		end

	frozen GL_ARB_shader_image_size : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_image_size"
		end

	frozen GL_ARB_shader_objects : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_objects"
		end

	frozen GL_PROGRAM_OBJECT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_OBJECT_ARB"
		end

	frozen GL_SHADER_OBJECT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_OBJECT_ARB"
		end

	frozen GL_OBJECT_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_TYPE_ARB"
		end

	frozen GL_OBJECT_SUBTYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_SUBTYPE_ARB"
		end

	frozen GL_FLOAT_VEC2_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_VEC2_ARB"
		end

	frozen GL_FLOAT_VEC3_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_VEC3_ARB"
		end

	frozen GL_FLOAT_VEC4_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_VEC4_ARB"
		end

	frozen GL_INT_VEC2_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_VEC2_ARB"
		end

	frozen GL_INT_VEC3_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_VEC3_ARB"
		end

	frozen GL_INT_VEC4_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_VEC4_ARB"
		end

	frozen GL_BOOL_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOOL_ARB"
		end

	frozen GL_BOOL_VEC2_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOOL_VEC2_ARB"
		end

	frozen GL_BOOL_VEC3_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOOL_VEC3_ARB"
		end

	frozen GL_BOOL_VEC4_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOOL_VEC4_ARB"
		end

	frozen GL_FLOAT_MAT2_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT2_ARB"
		end

	frozen GL_FLOAT_MAT3_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT3_ARB"
		end

	frozen GL_FLOAT_MAT4_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_MAT4_ARB"
		end

	frozen GL_SAMPLER_1D_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_1D_ARB"
		end

	frozen GL_SAMPLER_2D_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_ARB"
		end

	frozen GL_SAMPLER_3D_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_3D_ARB"
		end

	frozen GL_SAMPLER_CUBE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_CUBE_ARB"
		end

	frozen GL_SAMPLER_1D_SHADOW_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_1D_SHADOW_ARB"
		end

	frozen GL_SAMPLER_2D_SHADOW_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_SHADOW_ARB"
		end

	frozen GL_SAMPLER_2D_RECT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_RECT_ARB"
		end

	frozen GL_SAMPLER_2D_RECT_SHADOW_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_RECT_SHADOW_ARB"
		end

	frozen GL_OBJECT_DELETE_STATUS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_DELETE_STATUS_ARB"
		end

	frozen GL_OBJECT_COMPILE_STATUS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_COMPILE_STATUS_ARB"
		end

	frozen GL_OBJECT_LINK_STATUS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_LINK_STATUS_ARB"
		end

	frozen GL_OBJECT_VALIDATE_STATUS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_VALIDATE_STATUS_ARB"
		end

	frozen GL_OBJECT_INFO_LOG_LENGTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_INFO_LOG_LENGTH_ARB"
		end

	frozen GL_OBJECT_ATTACHED_OBJECTS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_ATTACHED_OBJECTS_ARB"
		end

	frozen GL_OBJECT_ACTIVE_UNIFORMS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_ACTIVE_UNIFORMS_ARB"
		end

	frozen GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB"
		end

	frozen GL_OBJECT_SHADER_SOURCE_LENGTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_SHADER_SOURCE_LENGTH_ARB"
		end

	frozen GL_ARB_shader_precision : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_precision"
		end

	frozen GL_ARB_shader_stencil_export : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_stencil_export"
		end

	frozen GL_ARB_shader_storage_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_storage_buffer_object"
		end

	frozen GL_SHADER_STORAGE_BARRIER_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_STORAGE_BARRIER_BIT"
		end

	frozen GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES"
		end

	frozen GL_SHADER_STORAGE_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_STORAGE_BUFFER"
		end

	frozen GL_SHADER_STORAGE_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_STORAGE_BUFFER_BINDING"
		end

	frozen GL_SHADER_STORAGE_BUFFER_START : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_STORAGE_BUFFER_START"
		end

	frozen GL_SHADER_STORAGE_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_STORAGE_BUFFER_SIZE"
		end

	frozen GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS"
		end

	frozen GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS"
		end

	frozen GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS"
		end

	frozen GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS"
		end

	frozen GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS"
		end

	frozen GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS"
		end

	frozen GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS"
		end

	frozen GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS"
		end

	frozen GL_MAX_SHADER_STORAGE_BLOCK_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SHADER_STORAGE_BLOCK_SIZE"
		end

	frozen GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT"
		end

	frozen GL_ARB_shader_subroutine : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_subroutine"
		end

	frozen GL_ACTIVE_SUBROUTINES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_SUBROUTINES"
		end

	frozen GL_ACTIVE_SUBROUTINE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_SUBROUTINE_UNIFORMS"
		end

	frozen GL_MAX_SUBROUTINES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SUBROUTINES"
		end

	frozen GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS"
		end

	frozen GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS"
		end

	frozen GL_ACTIVE_SUBROUTINE_MAX_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_SUBROUTINE_MAX_LENGTH"
		end

	frozen GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH"
		end

	frozen GL_NUM_COMPATIBLE_SUBROUTINES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_COMPATIBLE_SUBROUTINES"
		end

	frozen GL_COMPATIBLE_SUBROUTINES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPATIBLE_SUBROUTINES"
		end

	frozen GL_ARB_shader_texture_lod : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shader_texture_lod"
		end

	frozen GL_ARB_shading_language_100 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shading_language_100"
		end

	frozen GL_SHADING_LANGUAGE_VERSION_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADING_LANGUAGE_VERSION_ARB"
		end

	frozen GL_ARB_shading_language_420pack : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shading_language_420pack"
		end

	frozen GL_ARB_shading_language_include : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shading_language_include"
		end

	frozen GL_SHADER_INCLUDE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_INCLUDE_ARB"
		end

	frozen GL_NAMED_STRING_LENGTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NAMED_STRING_LENGTH_ARB"
		end

	frozen GL_NAMED_STRING_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NAMED_STRING_TYPE_ARB"
		end

	frozen GL_ARB_shading_language_packing : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shading_language_packing"
		end

	frozen GL_ARB_shadow : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shadow"
		end

	frozen GL_TEXTURE_COMPARE_MODE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPARE_MODE_ARB"
		end

	frozen GL_TEXTURE_COMPARE_FUNC_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPARE_FUNC_ARB"
		end

	frozen GL_COMPARE_R_TO_TEXTURE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPARE_R_TO_TEXTURE_ARB"
		end

	frozen GL_ARB_shadow_ambient : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_shadow_ambient"
		end

	frozen GL_TEXTURE_COMPARE_FAIL_VALUE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPARE_FAIL_VALUE_ARB"
		end

	frozen GL_ARB_sparse_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_sparse_texture"
		end

	frozen GL_VIRTUAL_PAGE_SIZE_X_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIRTUAL_PAGE_SIZE_X_ARB"
		end

	frozen GL_VIRTUAL_PAGE_SIZE_Y_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIRTUAL_PAGE_SIZE_Y_ARB"
		end

	frozen GL_VIRTUAL_PAGE_SIZE_Z_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIRTUAL_PAGE_SIZE_Z_ARB"
		end

	frozen GL_MAX_SPARSE_TEXTURE_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SPARSE_TEXTURE_SIZE_ARB"
		end

	frozen GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB"
		end

	frozen GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB"
		end

	frozen GL_TEXTURE_SPARSE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SPARSE_ARB"
		end

	frozen GL_VIRTUAL_PAGE_SIZE_INDEX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIRTUAL_PAGE_SIZE_INDEX_ARB"
		end

	frozen GL_NUM_VIRTUAL_PAGE_SIZES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_VIRTUAL_PAGE_SIZES_ARB"
		end

	frozen GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB"
		end

	frozen GL_NUM_SPARSE_LEVELS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_SPARSE_LEVELS_ARB"
		end

	frozen GL_ARB_stencil_texturing : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_stencil_texturing"
		end

	frozen GL_DEPTH_STENCIL_TEXTURE_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_STENCIL_TEXTURE_MODE"
		end

	frozen GL_ARB_sync : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_sync"
		end

	frozen GL_SYNC_FLUSH_COMMANDS_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYNC_FLUSH_COMMANDS_BIT"
		end

	frozen GL_MAX_SERVER_WAIT_TIMEOUT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SERVER_WAIT_TIMEOUT"
		end

	frozen GL_OBJECT_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_TYPE"
		end

	frozen GL_SYNC_CONDITION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYNC_CONDITION"
		end

	frozen GL_SYNC_STATUS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYNC_STATUS"
		end

	frozen GL_SYNC_FLAGS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYNC_FLAGS"
		end

	frozen GL_SYNC_FENCE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYNC_FENCE"
		end

	frozen GL_SYNC_GPU_COMMANDS_COMPLETE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYNC_GPU_COMMANDS_COMPLETE"
		end

	frozen GL_UNSIGNALED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNALED"
		end

	frozen GL_SIGNALED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNALED"
		end

	frozen GL_ALREADY_SIGNALED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALREADY_SIGNALED"
		end

	frozen GL_TIMEOUT_EXPIRED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TIMEOUT_EXPIRED"
		end

	frozen GL_CONDITION_SATISFIED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONDITION_SATISFIED"
		end

	frozen GL_WAIT_FAILED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WAIT_FAILED"
		end

	frozen GL_TIMEOUT_IGNORED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TIMEOUT_IGNORED"
		end

	frozen GL_ARB_tessellation_shader : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_tessellation_shader"
		end

	frozen GL_PATCHES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATCHES"
		end

	frozen GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER"
		end

	frozen GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER"
		end

	frozen GL_MAX_TESS_CONTROL_INPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_INPUT_COMPONENTS"
		end

	frozen GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS"
		end

	frozen GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS"
		end

	frozen GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS"
		end

	frozen GL_PATCH_VERTICES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATCH_VERTICES"
		end

	frozen GL_PATCH_DEFAULT_INNER_LEVEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATCH_DEFAULT_INNER_LEVEL"
		end

	frozen GL_PATCH_DEFAULT_OUTER_LEVEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATCH_DEFAULT_OUTER_LEVEL"
		end

	frozen GL_TESS_CONTROL_OUTPUT_VERTICES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_CONTROL_OUTPUT_VERTICES"
		end

	frozen GL_TESS_GEN_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_GEN_MODE"
		end

	frozen GL_TESS_GEN_SPACING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_GEN_SPACING"
		end

	frozen GL_TESS_GEN_VERTEX_ORDER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_GEN_VERTEX_ORDER"
		end

	frozen GL_TESS_GEN_POINT_MODE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_GEN_POINT_MODE"
		end

	frozen GL_ISOLINES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ISOLINES"
		end

	frozen GL_FRACTIONAL_ODD : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRACTIONAL_ODD"
		end

	frozen GL_FRACTIONAL_EVEN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRACTIONAL_EVEN"
		end

	frozen GL_MAX_PATCH_VERTICES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PATCH_VERTICES"
		end

	frozen GL_MAX_TESS_GEN_LEVEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_GEN_LEVEL"
		end

	frozen GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS"
		end

	frozen GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS"
		end

	frozen GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS"
		end

	frozen GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS"
		end

	frozen GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS"
		end

	frozen GL_MAX_TESS_PATCH_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_PATCH_COMPONENTS"
		end

	frozen GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS"
		end

	frozen GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS"
		end

	frozen GL_TESS_EVALUATION_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_EVALUATION_SHADER"
		end

	frozen GL_TESS_CONTROL_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_CONTROL_SHADER"
		end

	frozen GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS"
		end

	frozen GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS"
		end

	frozen GL_ARB_texture_border_clamp : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_border_clamp"
		end

	frozen GL_CLAMP_TO_BORDER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_TO_BORDER_ARB"
		end

	frozen GL_ARB_texture_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_buffer_object"
		end

	frozen GL_TEXTURE_BUFFER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_ARB"
		end

	frozen GL_MAX_TEXTURE_BUFFER_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_BUFFER_SIZE_ARB"
		end

	frozen GL_TEXTURE_BINDING_BUFFER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_BUFFER_ARB"
		end

	frozen GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB"
		end

	frozen GL_TEXTURE_BUFFER_FORMAT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_FORMAT_ARB"
		end

	frozen GL_ARB_texture_buffer_object_rgb32 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_buffer_object_rgb32"
		end

	frozen GL_ARB_texture_buffer_range : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_buffer_range"
		end

	frozen GL_TEXTURE_BUFFER_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_OFFSET"
		end

	frozen GL_TEXTURE_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_SIZE"
		end

	frozen GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT"
		end

	frozen GL_ARB_texture_compression : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_compression"
		end

	frozen GL_COMPRESSED_ALPHA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_ALPHA_ARB"
		end

	frozen GL_COMPRESSED_LUMINANCE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_LUMINANCE_ARB"
		end

	frozen GL_COMPRESSED_LUMINANCE_ALPHA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_LUMINANCE_ALPHA_ARB"
		end

	frozen GL_COMPRESSED_INTENSITY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_INTENSITY_ARB"
		end

	frozen GL_COMPRESSED_RGB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB_ARB"
		end

	frozen GL_COMPRESSED_RGBA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ARB"
		end

	frozen GL_TEXTURE_COMPRESSION_HINT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPRESSION_HINT_ARB"
		end

	frozen GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB"
		end

	frozen GL_TEXTURE_COMPRESSED_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPRESSED_ARB"
		end

	frozen GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB"
		end

	frozen GL_COMPRESSED_TEXTURE_FORMATS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_TEXTURE_FORMATS_ARB"
		end

	frozen GL_ARB_texture_compression_bptc : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_compression_bptc"
		end

	frozen GL_COMPRESSED_RGBA_BPTC_UNORM_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_BPTC_UNORM_ARB"
		end

	frozen GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB"
		end

	frozen GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB"
		end

	frozen GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB"
		end

	frozen GL_ARB_texture_compression_rgtc : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_compression_rgtc"
		end

	frozen GL_COMPRESSED_RED_RGTC1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RED_RGTC1"
		end

	frozen GL_COMPRESSED_SIGNED_RED_RGTC1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SIGNED_RED_RGTC1"
		end

	frozen GL_COMPRESSED_RG_RGTC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RG_RGTC2"
		end

	frozen GL_COMPRESSED_SIGNED_RG_RGTC2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SIGNED_RG_RGTC2"
		end

	frozen GL_ARB_texture_cube_map : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_cube_map"
		end

	frozen GL_NORMAL_MAP_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_MAP_ARB"
		end

	frozen GL_REFLECTION_MAP_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFLECTION_MAP_ARB"
		end

	frozen GL_TEXTURE_CUBE_MAP_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_ARB"
		end

	frozen GL_TEXTURE_BINDING_CUBE_MAP_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_CUBE_MAP_ARB"
		end

	frozen GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB"
		end

	frozen GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB"
		end

	frozen GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB"
		end

	frozen GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB"
		end

	frozen GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB"
		end

	frozen GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB"
		end

	frozen GL_PROXY_TEXTURE_CUBE_MAP_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_CUBE_MAP_ARB"
		end

	frozen GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB"
		end

	frozen GL_ARB_texture_cube_map_array : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_cube_map_array"
		end

	frozen GL_TEXTURE_CUBE_MAP_ARRAY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_ARRAY_ARB"
		end

	frozen GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB"
		end

	frozen GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB"
		end

	frozen GL_SAMPLER_CUBE_MAP_ARRAY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_CUBE_MAP_ARRAY_ARB"
		end

	frozen GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB"
		end

	frozen GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB"
		end

	frozen GL_ARB_texture_env_add : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_env_add"
		end

	frozen GL_ARB_texture_env_combine : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_env_combine"
		end

	frozen GL_SUBTRACT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUBTRACT_ARB"
		end

	frozen GL_COMBINE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE_ARB"
		end

	frozen GL_COMBINE_RGB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE_RGB_ARB"
		end

	frozen GL_COMBINE_ALPHA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE_ALPHA_ARB"
		end

	frozen GL_RGB_SCALE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_SCALE_ARB"
		end

	frozen GL_ADD_SIGNED_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ADD_SIGNED_ARB"
		end

	frozen GL_INTERPOLATE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERPOLATE_ARB"
		end

	frozen GL_CONSTANT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_ARB"
		end

	frozen GL_PRIMARY_COLOR_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMARY_COLOR_ARB"
		end

	frozen GL_PREVIOUS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PREVIOUS_ARB"
		end

	frozen GL_SOURCE0_RGB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE0_RGB_ARB"
		end

	frozen GL_SOURCE1_RGB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE1_RGB_ARB"
		end

	frozen GL_SOURCE2_RGB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE2_RGB_ARB"
		end

	frozen GL_SOURCE0_ALPHA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE0_ALPHA_ARB"
		end

	frozen GL_SOURCE1_ALPHA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE1_ALPHA_ARB"
		end

	frozen GL_SOURCE2_ALPHA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE2_ALPHA_ARB"
		end

	frozen GL_OPERAND0_RGB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND0_RGB_ARB"
		end

	frozen GL_OPERAND1_RGB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND1_RGB_ARB"
		end

	frozen GL_OPERAND2_RGB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND2_RGB_ARB"
		end

	frozen GL_OPERAND0_ALPHA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND0_ALPHA_ARB"
		end

	frozen GL_OPERAND1_ALPHA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND1_ALPHA_ARB"
		end

	frozen GL_OPERAND2_ALPHA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND2_ALPHA_ARB"
		end

	frozen GL_ARB_texture_env_crossbar : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_env_crossbar"
		end

	frozen GL_ARB_texture_env_dot3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_env_dot3"
		end

	frozen GL_DOT3_RGB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT3_RGB_ARB"
		end

	frozen GL_DOT3_RGBA_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT3_RGBA_ARB"
		end

	frozen GL_ARB_texture_float : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_float"
		end

	frozen GL_RGBA32F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA32F_ARB"
		end

	frozen GL_RGB32F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB32F_ARB"
		end

	frozen GL_ALPHA32F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA32F_ARB"
		end

	frozen GL_INTENSITY32F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY32F_ARB"
		end

	frozen GL_LUMINANCE32F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE32F_ARB"
		end

	frozen GL_LUMINANCE_ALPHA32F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA32F_ARB"
		end

	frozen GL_RGBA16F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16F_ARB"
		end

	frozen GL_RGB16F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16F_ARB"
		end

	frozen GL_ALPHA16F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA16F_ARB"
		end

	frozen GL_INTENSITY16F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY16F_ARB"
		end

	frozen GL_LUMINANCE16F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16F_ARB"
		end

	frozen GL_LUMINANCE_ALPHA16F_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA16F_ARB"
		end

	frozen GL_TEXTURE_RED_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RED_TYPE_ARB"
		end

	frozen GL_TEXTURE_GREEN_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GREEN_TYPE_ARB"
		end

	frozen GL_TEXTURE_BLUE_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BLUE_TYPE_ARB"
		end

	frozen GL_TEXTURE_ALPHA_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_ALPHA_TYPE_ARB"
		end

	frozen GL_TEXTURE_LUMINANCE_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_LUMINANCE_TYPE_ARB"
		end

	frozen GL_TEXTURE_INTENSITY_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_INTENSITY_TYPE_ARB"
		end

	frozen GL_TEXTURE_DEPTH_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_DEPTH_TYPE_ARB"
		end

	frozen GL_UNSIGNED_NORMALIZED_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_NORMALIZED_ARB"
		end

	frozen GL_ARB_texture_gather : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_gather"
		end

	frozen GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB"
		end

	frozen GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB"
		end

	frozen GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB"
		end

	frozen GL_ARB_texture_mirror_clamp_to_edge : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_mirror_clamp_to_edge"
		end

	frozen GL_MIRROR_CLAMP_TO_EDGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIRROR_CLAMP_TO_EDGE"
		end

	frozen GL_ARB_texture_mirrored_repeat : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_mirrored_repeat"
		end

	frozen GL_MIRRORED_REPEAT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIRRORED_REPEAT_ARB"
		end

	frozen GL_ARB_texture_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_multisample"
		end

	frozen GL_SAMPLE_POSITION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_POSITION"
		end

	frozen GL_SAMPLE_MASK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK"
		end

	frozen GL_SAMPLE_MASK_VALUE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK_VALUE"
		end

	frozen GL_MAX_SAMPLE_MASK_WORDS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SAMPLE_MASK_WORDS"
		end

	frozen GL_TEXTURE_2D_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_2D_MULTISAMPLE"
		end

	frozen GL_PROXY_TEXTURE_2D_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_2D_MULTISAMPLE"
		end

	frozen GL_TEXTURE_2D_MULTISAMPLE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_2D_MULTISAMPLE_ARRAY"
		end

	frozen GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY"
		end

	frozen GL_TEXTURE_BINDING_2D_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_2D_MULTISAMPLE"
		end

	frozen GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY"
		end

	frozen GL_TEXTURE_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SAMPLES"
		end

	frozen GL_TEXTURE_FIXED_SAMPLE_LOCATIONS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_FIXED_SAMPLE_LOCATIONS"
		end

	frozen GL_SAMPLER_2D_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_MULTISAMPLE"
		end

	frozen GL_INT_SAMPLER_2D_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_2D_MULTISAMPLE"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE"
		end

	frozen GL_SAMPLER_2D_MULTISAMPLE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_MULTISAMPLE_ARRAY"
		end

	frozen GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY"
		end

	frozen GL_MAX_COLOR_TEXTURE_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COLOR_TEXTURE_SAMPLES"
		end

	frozen GL_MAX_DEPTH_TEXTURE_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEPTH_TEXTURE_SAMPLES"
		end

	frozen GL_MAX_INTEGER_SAMPLES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_INTEGER_SAMPLES"
		end

	frozen GL_ARB_texture_non_power_of_two : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_non_power_of_two"
		end

	frozen GL_ARB_texture_query_levels : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_query_levels"
		end

	frozen GL_ARB_texture_query_lod : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_query_lod"
		end

	frozen GL_ARB_texture_rectangle : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_rectangle"
		end

	frozen GL_TEXTURE_RECTANGLE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RECTANGLE_ARB"
		end

	frozen GL_TEXTURE_BINDING_RECTANGLE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_RECTANGLE_ARB"
		end

	frozen GL_PROXY_TEXTURE_RECTANGLE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_RECTANGLE_ARB"
		end

	frozen GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB"
		end

	frozen GL_ARB_texture_rg : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_rg"
		end

	frozen GL_COMPRESSED_RED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RED"
		end

	frozen GL_COMPRESSED_RG : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RG"
		end

	frozen GL_RG : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG"
		end

	frozen GL_RG_INTEGER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG_INTEGER"
		end

	frozen GL_R8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R8"
		end

	frozen GL_R16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R16"
		end

	frozen GL_RG8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG8"
		end

	frozen GL_RG16 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG16"
		end

	frozen GL_R16F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R16F"
		end

	frozen GL_R32F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R32F"
		end

	frozen GL_RG16F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG16F"
		end

	frozen GL_RG32F : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG32F"
		end

	frozen GL_R8I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R8I"
		end

	frozen GL_R8UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R8UI"
		end

	frozen GL_R16I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R16I"
		end

	frozen GL_R16UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R16UI"
		end

	frozen GL_R32I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R32I"
		end

	frozen GL_R32UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R32UI"
		end

	frozen GL_RG8I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG8I"
		end

	frozen GL_RG16I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG16I"
		end

	frozen GL_RG32I : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG32I"
		end

	frozen GL_RG32UI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RG32UI"
		end

	frozen GL_ARB_texture_rgb10_a2ui : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_rgb10_a2ui"
		end

	frozen GL_ARB_texture_stencil8 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_stencil8"
		end

	frozen GL_ARB_texture_storage : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_storage"
		end

	frozen GL_TEXTURE_IMMUTABLE_FORMAT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_IMMUTABLE_FORMAT"
		end

	frozen GL_ARB_texture_storage_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_storage_multisample"
		end

	frozen GL_ARB_texture_swizzle : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_swizzle"
		end

	frozen GL_TEXTURE_SWIZZLE_R : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_R"
		end

	frozen GL_TEXTURE_SWIZZLE_G : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_G"
		end

	frozen GL_TEXTURE_SWIZZLE_B : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_B"
		end

	frozen GL_TEXTURE_SWIZZLE_A : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_A"
		end

	frozen GL_TEXTURE_SWIZZLE_RGBA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_RGBA"
		end

	frozen GL_ARB_texture_view : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_texture_view"
		end

	frozen GL_TEXTURE_VIEW_MIN_LEVEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_VIEW_MIN_LEVEL"
		end

	frozen GL_TEXTURE_VIEW_NUM_LEVELS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_VIEW_NUM_LEVELS"
		end

	frozen GL_TEXTURE_VIEW_MIN_LAYER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_VIEW_MIN_LAYER"
		end

	frozen GL_TEXTURE_VIEW_NUM_LAYERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_VIEW_NUM_LAYERS"
		end

	frozen GL_ARB_timer_query : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_timer_query"
		end

	frozen GL_TIME_ELAPSED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TIME_ELAPSED"
		end

	frozen GL_TIMESTAMP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TIMESTAMP"
		end

	frozen GL_ARB_transform_feedback2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_transform_feedback2"
		end

	frozen GL_TRANSFORM_FEEDBACK : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE"
		end

	frozen GL_TRANSFORM_FEEDBACK_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BINDING"
		end

	frozen GL_ARB_transform_feedback3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_transform_feedback3"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_BUFFERS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_BUFFERS"
		end

	frozen GL_ARB_transform_feedback_instanced : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_transform_feedback_instanced"
		end

	frozen GL_ARB_transpose_matrix : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_transpose_matrix"
		end

	frozen GL_TRANSPOSE_MODELVIEW_MATRIX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_MODELVIEW_MATRIX_ARB"
		end

	frozen GL_TRANSPOSE_PROJECTION_MATRIX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_PROJECTION_MATRIX_ARB"
		end

	frozen GL_TRANSPOSE_TEXTURE_MATRIX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_TEXTURE_MATRIX_ARB"
		end

	frozen GL_TRANSPOSE_COLOR_MATRIX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_COLOR_MATRIX_ARB"
		end

	frozen GL_ARB_uniform_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_uniform_buffer_object"
		end

	frozen GL_UNIFORM_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BUFFER"
		end

	frozen GL_UNIFORM_BUFFER_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BUFFER_BINDING"
		end

	frozen GL_UNIFORM_BUFFER_START : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BUFFER_START"
		end

	frozen GL_UNIFORM_BUFFER_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BUFFER_SIZE"
		end

	frozen GL_MAX_VERTEX_UNIFORM_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_UNIFORM_BLOCKS"
		end

	frozen GL_MAX_GEOMETRY_UNIFORM_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_UNIFORM_BLOCKS"
		end

	frozen GL_MAX_FRAGMENT_UNIFORM_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_UNIFORM_BLOCKS"
		end

	frozen GL_MAX_COMBINED_UNIFORM_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_UNIFORM_BLOCKS"
		end

	frozen GL_MAX_UNIFORM_BUFFER_BINDINGS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_UNIFORM_BUFFER_BINDINGS"
		end

	frozen GL_MAX_UNIFORM_BLOCK_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_UNIFORM_BLOCK_SIZE"
		end

	frozen GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS"
		end

	frozen GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS"
		end

	frozen GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS"
		end

	frozen GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT"
		end

	frozen GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH"
		end

	frozen GL_ACTIVE_UNIFORM_BLOCKS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_UNIFORM_BLOCKS"
		end

	frozen GL_UNIFORM_TYPE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_TYPE"
		end

	frozen GL_UNIFORM_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_SIZE"
		end

	frozen GL_UNIFORM_NAME_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_NAME_LENGTH"
		end

	frozen GL_UNIFORM_BLOCK_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_INDEX"
		end

	frozen GL_UNIFORM_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_OFFSET"
		end

	frozen GL_UNIFORM_ARRAY_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_ARRAY_STRIDE"
		end

	frozen GL_UNIFORM_MATRIX_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_MATRIX_STRIDE"
		end

	frozen GL_UNIFORM_IS_ROW_MAJOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_IS_ROW_MAJOR"
		end

	frozen GL_UNIFORM_BLOCK_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_BINDING"
		end

	frozen GL_UNIFORM_BLOCK_DATA_SIZE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_DATA_SIZE"
		end

	frozen GL_UNIFORM_BLOCK_NAME_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_NAME_LENGTH"
		end

	frozen GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS"
		end

	frozen GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES"
		end

	frozen GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER"
		end

	frozen GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER"
		end

	frozen GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER"
		end

	frozen GL_INVALID_INDEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVALID_INDEX"
		end

	frozen GL_ARB_vertex_array_bgra : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_array_bgra"
		end

	frozen GL_ARB_vertex_array_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_array_object"
		end

	frozen GL_VERTEX_ARRAY_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_BINDING"
		end

	frozen GL_ARB_vertex_attrib_64bit : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_attrib_64bit"
		end

	frozen GL_ARB_vertex_attrib_binding : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_attrib_binding"
		end

	frozen GL_VERTEX_ATTRIB_BINDING : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_BINDING"
		end

	frozen GL_VERTEX_ATTRIB_RELATIVE_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_RELATIVE_OFFSET"
		end

	frozen GL_VERTEX_BINDING_DIVISOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_BINDING_DIVISOR"
		end

	frozen GL_VERTEX_BINDING_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_BINDING_OFFSET"
		end

	frozen GL_VERTEX_BINDING_STRIDE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_BINDING_STRIDE"
		end

	frozen GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET"
		end

	frozen GL_MAX_VERTEX_ATTRIB_BINDINGS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_ATTRIB_BINDINGS"
		end

	frozen GL_ARB_vertex_blend : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_blend"
		end

	frozen GL_MODELVIEW0_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW0_ARB"
		end

	frozen GL_MODELVIEW1_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW1_ARB"
		end

	frozen GL_MAX_VERTEX_UNITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_UNITS_ARB"
		end

	frozen GL_ACTIVE_VERTEX_UNITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_VERTEX_UNITS_ARB"
		end

	frozen GL_WEIGHT_SUM_UNITY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WEIGHT_SUM_UNITY_ARB"
		end

	frozen GL_VERTEX_BLEND_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_BLEND_ARB"
		end

	frozen GL_CURRENT_WEIGHT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_WEIGHT_ARB"
		end

	frozen GL_WEIGHT_ARRAY_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WEIGHT_ARRAY_TYPE_ARB"
		end

	frozen GL_WEIGHT_ARRAY_STRIDE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WEIGHT_ARRAY_STRIDE_ARB"
		end

	frozen GL_WEIGHT_ARRAY_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WEIGHT_ARRAY_SIZE_ARB"
		end

	frozen GL_WEIGHT_ARRAY_POINTER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WEIGHT_ARRAY_POINTER_ARB"
		end

	frozen GL_WEIGHT_ARRAY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WEIGHT_ARRAY_ARB"
		end

	frozen GL_MODELVIEW2_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW2_ARB"
		end

	frozen GL_MODELVIEW3_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW3_ARB"
		end

	frozen GL_MODELVIEW4_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW4_ARB"
		end

	frozen GL_MODELVIEW5_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW5_ARB"
		end

	frozen GL_MODELVIEW6_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW6_ARB"
		end

	frozen GL_MODELVIEW7_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW7_ARB"
		end

	frozen GL_MODELVIEW8_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW8_ARB"
		end

	frozen GL_MODELVIEW9_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW9_ARB"
		end

	frozen GL_MODELVIEW10_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW10_ARB"
		end

	frozen GL_MODELVIEW11_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW11_ARB"
		end

	frozen GL_MODELVIEW12_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW12_ARB"
		end

	frozen GL_MODELVIEW13_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW13_ARB"
		end

	frozen GL_MODELVIEW14_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW14_ARB"
		end

	frozen GL_MODELVIEW15_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW15_ARB"
		end

	frozen GL_MODELVIEW16_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW16_ARB"
		end

	frozen GL_MODELVIEW17_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW17_ARB"
		end

	frozen GL_MODELVIEW18_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW18_ARB"
		end

	frozen GL_MODELVIEW19_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW19_ARB"
		end

	frozen GL_MODELVIEW20_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW20_ARB"
		end

	frozen GL_MODELVIEW21_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW21_ARB"
		end

	frozen GL_MODELVIEW22_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW22_ARB"
		end

	frozen GL_MODELVIEW23_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW23_ARB"
		end

	frozen GL_MODELVIEW24_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW24_ARB"
		end

	frozen GL_MODELVIEW25_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW25_ARB"
		end

	frozen GL_MODELVIEW26_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW26_ARB"
		end

	frozen GL_MODELVIEW27_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW27_ARB"
		end

	frozen GL_MODELVIEW28_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW28_ARB"
		end

	frozen GL_MODELVIEW29_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW29_ARB"
		end

	frozen GL_MODELVIEW30_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW30_ARB"
		end

	frozen GL_MODELVIEW31_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW31_ARB"
		end

	frozen GL_ARB_vertex_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_buffer_object"
		end

	frozen GL_BUFFER_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_SIZE_ARB"
		end

	frozen GL_BUFFER_USAGE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_USAGE_ARB"
		end

	frozen GL_ARRAY_BUFFER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_BUFFER_ARB"
		end

	frozen GL_ELEMENT_ARRAY_BUFFER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_BUFFER_ARB"
		end

	frozen GL_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_VERTEX_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_NORMAL_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_COLOR_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_INDEX_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB"
		end

	frozen GL_READ_ONLY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_ONLY_ARB"
		end

	frozen GL_WRITE_ONLY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WRITE_ONLY_ARB"
		end

	frozen GL_READ_WRITE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_WRITE_ARB"
		end

	frozen GL_BUFFER_ACCESS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_ACCESS_ARB"
		end

	frozen GL_BUFFER_MAPPED_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_MAPPED_ARB"
		end

	frozen GL_BUFFER_MAP_POINTER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_MAP_POINTER_ARB"
		end

	frozen GL_STREAM_DRAW_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STREAM_DRAW_ARB"
		end

	frozen GL_STREAM_READ_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STREAM_READ_ARB"
		end

	frozen GL_STREAM_COPY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STREAM_COPY_ARB"
		end

	frozen GL_STATIC_DRAW_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STATIC_DRAW_ARB"
		end

	frozen GL_STATIC_READ_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STATIC_READ_ARB"
		end

	frozen GL_STATIC_COPY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STATIC_COPY_ARB"
		end

	frozen GL_DYNAMIC_DRAW_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DYNAMIC_DRAW_ARB"
		end

	frozen GL_DYNAMIC_READ_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DYNAMIC_READ_ARB"
		end

	frozen GL_DYNAMIC_COPY_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DYNAMIC_COPY_ARB"
		end

	frozen GL_ARB_vertex_program : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_program"
		end

	frozen GL_COLOR_SUM_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_SUM_ARB"
		end

	frozen GL_VERTEX_PROGRAM_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_ARB"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB"
		end

	frozen GL_CURRENT_VERTEX_ATTRIB_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_VERTEX_ATTRIB_ARB"
		end

	frozen GL_PROGRAM_LENGTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_LENGTH_ARB"
		end

	frozen GL_PROGRAM_STRING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_STRING_ARB"
		end

	frozen GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB"
		end

	frozen GL_MAX_PROGRAM_MATRICES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_MATRICES_ARB"
		end

	frozen GL_CURRENT_MATRIX_STACK_DEPTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_MATRIX_STACK_DEPTH_ARB"
		end

	frozen GL_CURRENT_MATRIX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_MATRIX_ARB"
		end

	frozen GL_VERTEX_PROGRAM_POINT_SIZE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_POINT_SIZE_ARB"
		end

	frozen GL_VERTEX_PROGRAM_TWO_SIDE_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_TWO_SIDE_ARB"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB"
		end

	frozen GL_PROGRAM_ERROR_POSITION_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_ERROR_POSITION_ARB"
		end

	frozen GL_PROGRAM_BINDING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_BINDING_ARB"
		end

	frozen GL_MAX_VERTEX_ATTRIBS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_ATTRIBS_ARB"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB"
		end

	frozen GL_PROGRAM_ERROR_STRING_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_ERROR_STRING_ARB"
		end

	frozen GL_PROGRAM_FORMAT_ASCII_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_FORMAT_ASCII_ARB"
		end

	frozen GL_PROGRAM_FORMAT_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_FORMAT_ARB"
		end

	frozen GL_PROGRAM_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_INSTRUCTIONS_ARB"
		end

	frozen GL_MAX_PROGRAM_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_INSTRUCTIONS_ARB"
		end

	frozen GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB"
		end

	frozen GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB"
		end

	frozen GL_PROGRAM_TEMPORARIES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_TEMPORARIES_ARB"
		end

	frozen GL_MAX_PROGRAM_TEMPORARIES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEMPORARIES_ARB"
		end

	frozen GL_PROGRAM_NATIVE_TEMPORARIES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_NATIVE_TEMPORARIES_ARB"
		end

	frozen GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB"
		end

	frozen GL_PROGRAM_PARAMETERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_PARAMETERS_ARB"
		end

	frozen GL_MAX_PROGRAM_PARAMETERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_PARAMETERS_ARB"
		end

	frozen GL_PROGRAM_NATIVE_PARAMETERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_NATIVE_PARAMETERS_ARB"
		end

	frozen GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB"
		end

	frozen GL_PROGRAM_ATTRIBS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_ATTRIBS_ARB"
		end

	frozen GL_MAX_PROGRAM_ATTRIBS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_ATTRIBS_ARB"
		end

	frozen GL_PROGRAM_NATIVE_ATTRIBS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_NATIVE_ATTRIBS_ARB"
		end

	frozen GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB"
		end

	frozen GL_PROGRAM_ADDRESS_REGISTERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_ADDRESS_REGISTERS_ARB"
		end

	frozen GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB"
		end

	frozen GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB"
		end

	frozen GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB"
		end

	frozen GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB"
		end

	frozen GL_MAX_PROGRAM_ENV_PARAMETERS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_ENV_PARAMETERS_ARB"
		end

	frozen GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB"
		end

	frozen GL_TRANSPOSE_CURRENT_MATRIX_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_CURRENT_MATRIX_ARB"
		end

	frozen GL_MATRIX0_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX0_ARB"
		end

	frozen GL_MATRIX1_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX1_ARB"
		end

	frozen GL_MATRIX2_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX2_ARB"
		end

	frozen GL_MATRIX3_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX3_ARB"
		end

	frozen GL_MATRIX4_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX4_ARB"
		end

	frozen GL_MATRIX5_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX5_ARB"
		end

	frozen GL_MATRIX6_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX6_ARB"
		end

	frozen GL_MATRIX7_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX7_ARB"
		end

	frozen GL_MATRIX8_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX8_ARB"
		end

	frozen GL_MATRIX9_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX9_ARB"
		end

	frozen GL_MATRIX10_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX10_ARB"
		end

	frozen GL_MATRIX11_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX11_ARB"
		end

	frozen GL_MATRIX12_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX12_ARB"
		end

	frozen GL_MATRIX13_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX13_ARB"
		end

	frozen GL_MATRIX14_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX14_ARB"
		end

	frozen GL_MATRIX15_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX15_ARB"
		end

	frozen GL_MATRIX16_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX16_ARB"
		end

	frozen GL_MATRIX17_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX17_ARB"
		end

	frozen GL_MATRIX18_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX18_ARB"
		end

	frozen GL_MATRIX19_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX19_ARB"
		end

	frozen GL_MATRIX20_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX20_ARB"
		end

	frozen GL_MATRIX21_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX21_ARB"
		end

	frozen GL_MATRIX22_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX22_ARB"
		end

	frozen GL_MATRIX23_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX23_ARB"
		end

	frozen GL_MATRIX24_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX24_ARB"
		end

	frozen GL_MATRIX25_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX25_ARB"
		end

	frozen GL_MATRIX26_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX26_ARB"
		end

	frozen GL_MATRIX27_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX27_ARB"
		end

	frozen GL_MATRIX28_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX28_ARB"
		end

	frozen GL_MATRIX29_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX29_ARB"
		end

	frozen GL_MATRIX30_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX30_ARB"
		end

	frozen GL_MATRIX31_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX31_ARB"
		end

	frozen GL_ARB_vertex_shader : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_shader"
		end

	frozen GL_VERTEX_SHADER_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_ARB"
		end

	frozen GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB"
		end

	frozen GL_MAX_VARYING_FLOATS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VARYING_FLOATS_ARB"
		end

	frozen GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB"
		end

	frozen GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB"
		end

	frozen GL_OBJECT_ACTIVE_ATTRIBUTES_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_ACTIVE_ATTRIBUTES_ARB"
		end

	frozen GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB"
		end

	frozen GL_ARB_vertex_type_10f_11f_11f_rev : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_type_10f_11f_11f_rev"
		end

	frozen GL_ARB_vertex_type_2_10_10_10_rev : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_vertex_type_2_10_10_10_rev"
		end

	frozen GL_UNSIGNED_INT_2_10_10_10_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_2_10_10_10_REV"
		end

	frozen GL_INT_2_10_10_10_REV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_2_10_10_10_REV"
		end

	frozen GL_ARB_viewport_array : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_viewport_array"
		end

	frozen GL_MAX_VIEWPORTS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VIEWPORTS"
		end

	frozen GL_VIEWPORT_SUBPIXEL_BITS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEWPORT_SUBPIXEL_BITS"
		end

	frozen GL_VIEWPORT_BOUNDS_RANGE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEWPORT_BOUNDS_RANGE"
		end

	frozen GL_LAYER_PROVOKING_VERTEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LAYER_PROVOKING_VERTEX"
		end

	frozen GL_VIEWPORT_INDEX_PROVOKING_VERTEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIEWPORT_INDEX_PROVOKING_VERTEX"
		end

	frozen GL_UNDEFINED_VERTEX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNDEFINED_VERTEX"
		end

	frozen GL_ARB_window_pos : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARB_window_pos"
		end

	frozen GL_ATIX_point_sprites : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATIX_point_sprites"
		end

	frozen GL_TEXTURE_POINT_MODE_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_POINT_MODE_ATIX"
		end

	frozen GL_TEXTURE_POINT_ONE_COORD_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_POINT_ONE_COORD_ATIX"
		end

	frozen GL_TEXTURE_POINT_SPRITE_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_POINT_SPRITE_ATIX"
		end

	frozen GL_POINT_SPRITE_CULL_MODE_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SPRITE_CULL_MODE_ATIX"
		end

	frozen GL_POINT_SPRITE_CULL_CENTER_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SPRITE_CULL_CENTER_ATIX"
		end

	frozen GL_POINT_SPRITE_CULL_CLIP_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SPRITE_CULL_CLIP_ATIX"
		end

	frozen GL_ATIX_texture_env_combine3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATIX_texture_env_combine3"
		end

	frozen GL_MODULATE_ADD_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODULATE_ADD_ATIX"
		end

	frozen GL_MODULATE_SIGNED_ADD_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODULATE_SIGNED_ADD_ATIX"
		end

	frozen GL_MODULATE_SUBTRACT_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODULATE_SUBTRACT_ATIX"
		end

	frozen GL_ATIX_texture_env_route : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATIX_texture_env_route"
		end

	frozen GL_SECONDARY_COLOR_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ATIX"
		end

	frozen GL_TEXTURE_OUTPUT_RGB_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_OUTPUT_RGB_ATIX"
		end

	frozen GL_TEXTURE_OUTPUT_ALPHA_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_OUTPUT_ALPHA_ATIX"
		end

	frozen GL_ATIX_vertex_shader_output_point_size : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATIX_vertex_shader_output_point_size"
		end

	frozen GL_OUTPUT_POINT_SIZE_ATIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_POINT_SIZE_ATIX"
		end

	frozen GL_ATI_draw_buffers : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_draw_buffers"
		end

	frozen GL_MAX_DRAW_BUFFERS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DRAW_BUFFERS_ATI"
		end

	frozen GL_DRAW_BUFFER0_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER0_ATI"
		end

	frozen GL_DRAW_BUFFER1_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER1_ATI"
		end

	frozen GL_DRAW_BUFFER2_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER2_ATI"
		end

	frozen GL_DRAW_BUFFER3_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER3_ATI"
		end

	frozen GL_DRAW_BUFFER4_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER4_ATI"
		end

	frozen GL_DRAW_BUFFER5_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER5_ATI"
		end

	frozen GL_DRAW_BUFFER6_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER6_ATI"
		end

	frozen GL_DRAW_BUFFER7_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER7_ATI"
		end

	frozen GL_DRAW_BUFFER8_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER8_ATI"
		end

	frozen GL_DRAW_BUFFER9_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER9_ATI"
		end

	frozen GL_DRAW_BUFFER10_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER10_ATI"
		end

	frozen GL_DRAW_BUFFER11_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER11_ATI"
		end

	frozen GL_DRAW_BUFFER12_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER12_ATI"
		end

	frozen GL_DRAW_BUFFER13_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER13_ATI"
		end

	frozen GL_DRAW_BUFFER14_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER14_ATI"
		end

	frozen GL_DRAW_BUFFER15_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_BUFFER15_ATI"
		end

	frozen GL_ATI_element_array : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_element_array"
		end

	frozen GL_ELEMENT_ARRAY_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_ATI"
		end

	frozen GL_ELEMENT_ARRAY_TYPE_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_TYPE_ATI"
		end

	frozen GL_ELEMENT_ARRAY_POINTER_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_POINTER_ATI"
		end

	frozen GL_ATI_envmap_bumpmap : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_envmap_bumpmap"
		end

	frozen GL_BUMP_ROT_MATRIX_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUMP_ROT_MATRIX_ATI"
		end

	frozen GL_BUMP_ROT_MATRIX_SIZE_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUMP_ROT_MATRIX_SIZE_ATI"
		end

	frozen GL_BUMP_NUM_TEX_UNITS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUMP_NUM_TEX_UNITS_ATI"
		end

	frozen GL_BUMP_TEX_UNITS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUMP_TEX_UNITS_ATI"
		end

	frozen GL_DUDV_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DUDV_ATI"
		end

	frozen GL_DU8DV8_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DU8DV8_ATI"
		end

	frozen GL_BUMP_ENVMAP_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUMP_ENVMAP_ATI"
		end

	frozen GL_BUMP_TARGET_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUMP_TARGET_ATI"
		end

	frozen GL_ATI_fragment_shader : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_fragment_shader"
		end

	frozen GL_RED_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED_BIT_ATI"
		end

	frozen GL_2X_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_2X_BIT_ATI"
		end

	frozen GL_4X_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4X_BIT_ATI"
		end

	frozen GL_GREEN_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREEN_BIT_ATI"
		end

	frozen GL_COMP_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMP_BIT_ATI"
		end

	frozen GL_BLUE_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLUE_BIT_ATI"
		end

	frozen GL_8X_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_8X_BIT_ATI"
		end

	frozen GL_NEGATE_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEGATE_BIT_ATI"
		end

	frozen GL_BIAS_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BIAS_BIT_ATI"
		end

	frozen GL_HALF_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HALF_BIT_ATI"
		end

	frozen GL_QUARTER_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUARTER_BIT_ATI"
		end

	frozen GL_EIGHTH_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EIGHTH_BIT_ATI"
		end

	frozen GL_SATURATE_BIT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SATURATE_BIT_ATI"
		end

	frozen GL_FRAGMENT_SHADER_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_SHADER_ATI"
		end

	frozen GL_REG_0_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REG_0_ATI"
		end

	frozen GL_REG_1_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REG_1_ATI"
		end

	frozen GL_REG_2_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REG_2_ATI"
		end

	frozen GL_REG_3_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REG_3_ATI"
		end

	frozen GL_REG_4_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REG_4_ATI"
		end

	frozen GL_REG_5_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REG_5_ATI"
		end

	frozen GL_CON_0_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CON_0_ATI"
		end

	frozen GL_CON_1_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CON_1_ATI"
		end

	frozen GL_CON_2_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CON_2_ATI"
		end

	frozen GL_CON_3_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CON_3_ATI"
		end

	frozen GL_CON_4_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CON_4_ATI"
		end

	frozen GL_CON_5_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CON_5_ATI"
		end

	frozen GL_CON_6_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CON_6_ATI"
		end

	frozen GL_CON_7_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CON_7_ATI"
		end

	frozen GL_MOV_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MOV_ATI"
		end

	frozen GL_ADD_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ADD_ATI"
		end

	frozen GL_MUL_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MUL_ATI"
		end

	frozen GL_SUB_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUB_ATI"
		end

	frozen GL_DOT3_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT3_ATI"
		end

	frozen GL_DOT4_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT4_ATI"
		end

	frozen GL_MAD_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAD_ATI"
		end

	frozen GL_LERP_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LERP_ATI"
		end

	frozen GL_CND_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CND_ATI"
		end

	frozen GL_CND0_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CND0_ATI"
		end

	frozen GL_DOT2_ADD_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT2_ADD_ATI"
		end

	frozen GL_SECONDARY_INTERPOLATOR_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_INTERPOLATOR_ATI"
		end

	frozen GL_NUM_FRAGMENT_REGISTERS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_FRAGMENT_REGISTERS_ATI"
		end

	frozen GL_NUM_FRAGMENT_CONSTANTS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_FRAGMENT_CONSTANTS_ATI"
		end

	frozen GL_NUM_PASSES_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_PASSES_ATI"
		end

	frozen GL_NUM_INSTRUCTIONS_PER_PASS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_INSTRUCTIONS_PER_PASS_ATI"
		end

	frozen GL_NUM_INSTRUCTIONS_TOTAL_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_INSTRUCTIONS_TOTAL_ATI"
		end

	frozen GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI"
		end

	frozen GL_NUM_LOOPBACK_COMPONENTS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_LOOPBACK_COMPONENTS_ATI"
		end

	frozen GL_COLOR_ALPHA_PAIRING_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ALPHA_PAIRING_ATI"
		end

	frozen GL_SWIZZLE_STR_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SWIZZLE_STR_ATI"
		end

	frozen GL_SWIZZLE_STQ_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SWIZZLE_STQ_ATI"
		end

	frozen GL_SWIZZLE_STR_DR_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SWIZZLE_STR_DR_ATI"
		end

	frozen GL_SWIZZLE_STQ_DQ_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SWIZZLE_STQ_DQ_ATI"
		end

	frozen GL_SWIZZLE_STRQ_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SWIZZLE_STRQ_ATI"
		end

	frozen GL_SWIZZLE_STRQ_DQ_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SWIZZLE_STRQ_DQ_ATI"
		end

	frozen GL_ATI_map_object_buffer : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_map_object_buffer"
		end

	frozen GL_ATI_meminfo : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_meminfo"
		end

	frozen GL_VBO_FREE_MEMORY_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VBO_FREE_MEMORY_ATI"
		end

	frozen GL_TEXTURE_FREE_MEMORY_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_FREE_MEMORY_ATI"
		end

	frozen GL_RENDERBUFFER_FREE_MEMORY_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_FREE_MEMORY_ATI"
		end

	frozen GL_ATI_pn_triangles : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_pn_triangles"
		end

	frozen GL_PN_TRIANGLES_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PN_TRIANGLES_ATI"
		end

	frozen GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI"
		end

	frozen GL_PN_TRIANGLES_POINT_MODE_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PN_TRIANGLES_POINT_MODE_ATI"
		end

	frozen GL_PN_TRIANGLES_NORMAL_MODE_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PN_TRIANGLES_NORMAL_MODE_ATI"
		end

	frozen GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI"
		end

	frozen GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI"
		end

	frozen GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI"
		end

	frozen GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI"
		end

	frozen GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI"
		end

	frozen GL_ATI_separate_stencil : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_separate_stencil"
		end

	frozen GL_STENCIL_BACK_FUNC_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_FUNC_ATI"
		end

	frozen GL_STENCIL_BACK_FAIL_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_FAIL_ATI"
		end

	frozen GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI"
		end

	frozen GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI"
		end

	frozen GL_ATI_shader_texture_lod : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_shader_texture_lod"
		end

	frozen GL_ATI_text_fragment_shader : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_text_fragment_shader"
		end

	frozen GL_TEXT_FRAGMENT_SHADER_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXT_FRAGMENT_SHADER_ATI"
		end

	frozen GL_ATI_texture_compression_3dc : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_texture_compression_3dc"
		end

	frozen GL_COMPRESSED_LUMINANCE_ALPHA_3DC_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_LUMINANCE_ALPHA_3DC_ATI"
		end

	frozen GL_ATI_texture_env_combine3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_texture_env_combine3"
		end

	frozen GL_MODULATE_ADD_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODULATE_ADD_ATI"
		end

	frozen GL_MODULATE_SIGNED_ADD_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODULATE_SIGNED_ADD_ATI"
		end

	frozen GL_MODULATE_SUBTRACT_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODULATE_SUBTRACT_ATI"
		end

	frozen GL_ATI_texture_float : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_texture_float"
		end

	frozen GL_RGBA_FLOAT32_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_FLOAT32_ATI"
		end

	frozen GL_RGB_FLOAT32_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_FLOAT32_ATI"
		end

	frozen GL_ALPHA_FLOAT32_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_FLOAT32_ATI"
		end

	frozen GL_INTENSITY_FLOAT32_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY_FLOAT32_ATI"
		end

	frozen GL_LUMINANCE_FLOAT32_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_FLOAT32_ATI"
		end

	frozen GL_LUMINANCE_ALPHA_FLOAT32_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA_FLOAT32_ATI"
		end

	frozen GL_RGBA_FLOAT16_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_FLOAT16_ATI"
		end

	frozen GL_RGB_FLOAT16_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_FLOAT16_ATI"
		end

	frozen GL_ALPHA_FLOAT16_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_FLOAT16_ATI"
		end

	frozen GL_INTENSITY_FLOAT16_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY_FLOAT16_ATI"
		end

	frozen GL_LUMINANCE_FLOAT16_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_FLOAT16_ATI"
		end

	frozen GL_LUMINANCE_ALPHA_FLOAT16_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA_FLOAT16_ATI"
		end

	frozen GL_ATI_texture_mirror_once : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_texture_mirror_once"
		end

	frozen GL_MIRROR_CLAMP_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIRROR_CLAMP_ATI"
		end

	frozen GL_MIRROR_CLAMP_TO_EDGE_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIRROR_CLAMP_TO_EDGE_ATI"
		end

	frozen GL_ATI_vertex_array_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_vertex_array_object"
		end

	frozen GL_STATIC_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STATIC_ATI"
		end

	frozen GL_DYNAMIC_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DYNAMIC_ATI"
		end

	frozen GL_PRESERVE_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRESERVE_ATI"
		end

	frozen GL_DISCARD_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DISCARD_ATI"
		end

	frozen GL_OBJECT_BUFFER_SIZE_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_BUFFER_SIZE_ATI"
		end

	frozen GL_OBJECT_BUFFER_USAGE_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_BUFFER_USAGE_ATI"
		end

	frozen GL_ARRAY_OBJECT_BUFFER_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_OBJECT_BUFFER_ATI"
		end

	frozen GL_ARRAY_OBJECT_OFFSET_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_OBJECT_OFFSET_ATI"
		end

	frozen GL_ATI_vertex_attrib_array_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_vertex_attrib_array_object"
		end

	frozen GL_ATI_vertex_streams : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATI_vertex_streams"
		end

	frozen GL_MAX_VERTEX_STREAMS_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_STREAMS_ATI"
		end

	frozen GL_VERTEX_SOURCE_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SOURCE_ATI"
		end

	frozen GL_VERTEX_STREAM0_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_STREAM0_ATI"
		end

	frozen GL_VERTEX_STREAM1_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_STREAM1_ATI"
		end

	frozen GL_VERTEX_STREAM2_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_STREAM2_ATI"
		end

	frozen GL_VERTEX_STREAM3_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_STREAM3_ATI"
		end

	frozen GL_VERTEX_STREAM4_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_STREAM4_ATI"
		end

	frozen GL_VERTEX_STREAM5_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_STREAM5_ATI"
		end

	frozen GL_VERTEX_STREAM6_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_STREAM6_ATI"
		end

	frozen GL_VERTEX_STREAM7_ATI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_STREAM7_ATI"
		end

	frozen GL_EXT_422_pixels : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_422_pixels"
		end

	frozen GL_422_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_422_EXT"
		end

	frozen GL_422_REV_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_422_REV_EXT"
		end

	frozen GL_422_AVERAGE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_422_AVERAGE_EXT"
		end

	frozen GL_422_REV_AVERAGE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_422_REV_AVERAGE_EXT"
		end

	frozen GL_EXT_Cg_shader : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_Cg_shader"
		end

	frozen GL_CG_VERTEX_SHADER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CG_VERTEX_SHADER_EXT"
		end

	frozen GL_CG_FRAGMENT_SHADER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CG_FRAGMENT_SHADER_EXT"
		end

	frozen GL_EXT_abgr : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_abgr"
		end

	frozen GL_ABGR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ABGR_EXT"
		end

	frozen GL_EXT_bgra : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_bgra"
		end

	frozen GL_BGR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BGR_EXT"
		end

	frozen GL_BGRA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BGRA_EXT"
		end

	frozen GL_EXT_bindable_uniform : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_bindable_uniform"
		end

	frozen GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT"
		end

	frozen GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT"
		end

	frozen GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT"
		end

	frozen GL_MAX_BINDABLE_UNIFORM_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_BINDABLE_UNIFORM_SIZE_EXT"
		end

	frozen GL_UNIFORM_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BUFFER_EXT"
		end

	frozen GL_UNIFORM_BUFFER_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BUFFER_BINDING_EXT"
		end

	frozen GL_EXT_blend_color : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_blend_color"
		end

	frozen GL_CONSTANT_COLOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_COLOR_EXT"
		end

	frozen GL_ONE_MINUS_CONSTANT_COLOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_CONSTANT_COLOR_EXT"
		end

	frozen GL_CONSTANT_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_ALPHA_EXT"
		end

	frozen GL_ONE_MINUS_CONSTANT_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_MINUS_CONSTANT_ALPHA_EXT"
		end

	frozen GL_BLEND_COLOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_COLOR_EXT"
		end

	frozen GL_EXT_blend_equation_separate : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_blend_equation_separate"
		end

	frozen GL_BLEND_EQUATION_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_EQUATION_RGB_EXT"
		end

	frozen GL_BLEND_EQUATION_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_EQUATION_ALPHA_EXT"
		end

	frozen GL_EXT_blend_func_separate : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_blend_func_separate"
		end

	frozen GL_BLEND_DST_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_DST_RGB_EXT"
		end

	frozen GL_BLEND_SRC_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_SRC_RGB_EXT"
		end

	frozen GL_BLEND_DST_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_DST_ALPHA_EXT"
		end

	frozen GL_BLEND_SRC_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_SRC_ALPHA_EXT"
		end

	frozen GL_EXT_blend_logic_op : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_blend_logic_op"
		end

	frozen GL_EXT_blend_minmax : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_blend_minmax"
		end

	frozen GL_FUNC_ADD_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FUNC_ADD_EXT"
		end

	frozen GL_MIN_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_EXT"
		end

	frozen GL_MAX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_EXT"
		end

	frozen GL_BLEND_EQUATION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_EQUATION_EXT"
		end

	frozen GL_EXT_blend_subtract : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_blend_subtract"
		end

	frozen GL_FUNC_SUBTRACT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FUNC_SUBTRACT_EXT"
		end

	frozen GL_FUNC_REVERSE_SUBTRACT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FUNC_REVERSE_SUBTRACT_EXT"
		end

	frozen GL_EXT_clip_volume_hint : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_clip_volume_hint"
		end

	frozen GL_CLIP_VOLUME_CLIPPING_HINT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_VOLUME_CLIPPING_HINT_EXT"
		end

	frozen GL_EXT_cmyka : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_cmyka"
		end

	frozen GL_CMYK_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CMYK_EXT"
		end

	frozen GL_CMYKA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CMYKA_EXT"
		end

	frozen GL_PACK_CMYK_HINT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_CMYK_HINT_EXT"
		end

	frozen GL_UNPACK_CMYK_HINT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_CMYK_HINT_EXT"
		end

	frozen GL_EXT_color_subtable : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_color_subtable"
		end

	frozen GL_EXT_compiled_vertex_array : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_compiled_vertex_array"
		end

	frozen GL_ARRAY_ELEMENT_LOCK_FIRST_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_ELEMENT_LOCK_FIRST_EXT"
		end

	frozen GL_ARRAY_ELEMENT_LOCK_COUNT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARRAY_ELEMENT_LOCK_COUNT_EXT"
		end

	frozen GL_EXT_convolution : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_convolution"
		end

	frozen GL_CONVOLUTION_1D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_1D_EXT"
		end

	frozen GL_CONVOLUTION_2D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_2D_EXT"
		end

	frozen GL_SEPARABLE_2D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SEPARABLE_2D_EXT"
		end

	frozen GL_CONVOLUTION_BORDER_MODE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_BORDER_MODE_EXT"
		end

	frozen GL_CONVOLUTION_FILTER_SCALE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_FILTER_SCALE_EXT"
		end

	frozen GL_CONVOLUTION_FILTER_BIAS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_FILTER_BIAS_EXT"
		end

	frozen GL_REDUCE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REDUCE_EXT"
		end

	frozen GL_CONVOLUTION_FORMAT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_FORMAT_EXT"
		end

	frozen GL_CONVOLUTION_WIDTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_WIDTH_EXT"
		end

	frozen GL_CONVOLUTION_HEIGHT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_HEIGHT_EXT"
		end

	frozen GL_MAX_CONVOLUTION_WIDTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CONVOLUTION_WIDTH_EXT"
		end

	frozen GL_MAX_CONVOLUTION_HEIGHT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CONVOLUTION_HEIGHT_EXT"
		end

	frozen GL_POST_CONVOLUTION_RED_SCALE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_RED_SCALE_EXT"
		end

	frozen GL_POST_CONVOLUTION_GREEN_SCALE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_GREEN_SCALE_EXT"
		end

	frozen GL_POST_CONVOLUTION_BLUE_SCALE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_BLUE_SCALE_EXT"
		end

	frozen GL_POST_CONVOLUTION_ALPHA_SCALE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_ALPHA_SCALE_EXT"
		end

	frozen GL_POST_CONVOLUTION_RED_BIAS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_RED_BIAS_EXT"
		end

	frozen GL_POST_CONVOLUTION_GREEN_BIAS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_GREEN_BIAS_EXT"
		end

	frozen GL_POST_CONVOLUTION_BLUE_BIAS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_BLUE_BIAS_EXT"
		end

	frozen GL_POST_CONVOLUTION_ALPHA_BIAS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_ALPHA_BIAS_EXT"
		end

	frozen GL_EXT_coordinate_frame : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_coordinate_frame"
		end

	frozen GL_TANGENT_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TANGENT_ARRAY_EXT"
		end

	frozen GL_BINORMAL_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BINORMAL_ARRAY_EXT"
		end

	frozen GL_CURRENT_TANGENT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_TANGENT_EXT"
		end

	frozen GL_CURRENT_BINORMAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_BINORMAL_EXT"
		end

	frozen GL_TANGENT_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TANGENT_ARRAY_TYPE_EXT"
		end

	frozen GL_TANGENT_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TANGENT_ARRAY_STRIDE_EXT"
		end

	frozen GL_BINORMAL_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BINORMAL_ARRAY_TYPE_EXT"
		end

	frozen GL_BINORMAL_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BINORMAL_ARRAY_STRIDE_EXT"
		end

	frozen GL_TANGENT_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TANGENT_ARRAY_POINTER_EXT"
		end

	frozen GL_BINORMAL_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BINORMAL_ARRAY_POINTER_EXT"
		end

	frozen GL_MAP1_TANGENT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_TANGENT_EXT"
		end

	frozen GL_MAP2_TANGENT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_TANGENT_EXT"
		end

	frozen GL_MAP1_BINORMAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_BINORMAL_EXT"
		end

	frozen GL_MAP2_BINORMAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_BINORMAL_EXT"
		end

	frozen GL_EXT_copy_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_copy_texture"
		end

	frozen GL_EXT_cull_vertex : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_cull_vertex"
		end

	frozen GL_CULL_VERTEX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CULL_VERTEX_EXT"
		end

	frozen GL_CULL_VERTEX_EYE_POSITION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CULL_VERTEX_EYE_POSITION_EXT"
		end

	frozen GL_CULL_VERTEX_OBJECT_POSITION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CULL_VERTEX_OBJECT_POSITION_EXT"
		end

	frozen GL_EXT_debug_marker : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_debug_marker"
		end

	frozen GL_EXT_depth_bounds_test : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_depth_bounds_test"
		end

	frozen GL_DEPTH_BOUNDS_TEST_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_BOUNDS_TEST_EXT"
		end

	frozen GL_DEPTH_BOUNDS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_BOUNDS_EXT"
		end

	frozen GL_EXT_direct_state_access : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_direct_state_access"
		end

	frozen GL_PROGRAM_MATRIX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_MATRIX_EXT"
		end

	frozen GL_TRANSPOSE_PROGRAM_MATRIX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_PROGRAM_MATRIX_EXT"
		end

	frozen GL_PROGRAM_MATRIX_STACK_DEPTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_MATRIX_STACK_DEPTH_EXT"
		end

	frozen GL_EXT_draw_buffers2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_draw_buffers2"
		end

	frozen GL_EXT_draw_instanced : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_draw_instanced"
		end

	frozen GL_EXT_draw_range_elements : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_draw_range_elements"
		end

	frozen GL_MAX_ELEMENTS_VERTICES_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ELEMENTS_VERTICES_EXT"
		end

	frozen GL_MAX_ELEMENTS_INDICES_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ELEMENTS_INDICES_EXT"
		end

	frozen GL_EXT_fog_coord : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_fog_coord"
		end

	frozen GL_FOG_COORDINATE_SOURCE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_SOURCE_EXT"
		end

	frozen GL_FOG_COORDINATE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_EXT"
		end

	frozen GL_FRAGMENT_DEPTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_DEPTH_EXT"
		end

	frozen GL_CURRENT_FOG_COORDINATE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_FOG_COORDINATE_EXT"
		end

	frozen GL_FOG_COORDINATE_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_TYPE_EXT"
		end

	frozen GL_FOG_COORDINATE_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_STRIDE_EXT"
		end

	frozen GL_FOG_COORDINATE_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_POINTER_EXT"
		end

	frozen GL_FOG_COORDINATE_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_EXT"
		end

	frozen GL_EXT_fragment_lighting : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_fragment_lighting"
		end

	frozen GL_FRAGMENT_LIGHTING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_LIGHTING_EXT"
		end

	frozen GL_FRAGMENT_COLOR_MATERIAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_COLOR_MATERIAL_EXT"
		end

	frozen GL_FRAGMENT_COLOR_MATERIAL_FACE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_COLOR_MATERIAL_FACE_EXT"
		end

	frozen GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT"
		end

	frozen GL_MAX_FRAGMENT_LIGHTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_LIGHTS_EXT"
		end

	frozen GL_MAX_ACTIVE_LIGHTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ACTIVE_LIGHTS_EXT"
		end

	frozen GL_CURRENT_RASTER_NORMAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_RASTER_NORMAL_EXT"
		end

	frozen GL_LIGHT_ENV_MODE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT_ENV_MODE_EXT"
		end

	frozen GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT"
		end

	frozen GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT"
		end

	frozen GL_FRAGMENT_LIGHT_MODEL_AMBIENT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_LIGHT_MODEL_AMBIENT_EXT"
		end

	frozen GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT"
		end

	frozen GL_FRAGMENT_LIGHT0_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_LIGHT0_EXT"
		end

	frozen GL_FRAGMENT_LIGHT7_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_LIGHT7_EXT"
		end

	frozen GL_EXT_framebuffer_blit : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_framebuffer_blit"
		end

	frozen GL_DRAW_FRAMEBUFFER_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_FRAMEBUFFER_BINDING_EXT"
		end

	frozen GL_READ_FRAMEBUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_FRAMEBUFFER_EXT"
		end

	frozen GL_DRAW_FRAMEBUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_FRAMEBUFFER_EXT"
		end

	frozen GL_READ_FRAMEBUFFER_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_FRAMEBUFFER_BINDING_EXT"
		end

	frozen GL_EXT_framebuffer_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_framebuffer_multisample"
		end

	frozen GL_RENDERBUFFER_SAMPLES_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_SAMPLES_EXT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT"
		end

	frozen GL_MAX_SAMPLES_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SAMPLES_EXT"
		end

	frozen GL_EXT_framebuffer_multisample_blit_scaled : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_framebuffer_multisample_blit_scaled"
		end

	frozen GL_SCALED_RESOLVE_FASTEST_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCALED_RESOLVE_FASTEST_EXT"
		end

	frozen GL_SCALED_RESOLVE_NICEST_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCALED_RESOLVE_NICEST_EXT"
		end

	frozen GL_EXT_framebuffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_framebuffer_object"
		end

	frozen GL_INVALID_FRAMEBUFFER_OPERATION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVALID_FRAMEBUFFER_OPERATION_EXT"
		end

	frozen GL_MAX_RENDERBUFFER_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_RENDERBUFFER_SIZE_EXT"
		end

	frozen GL_FRAMEBUFFER_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_BINDING_EXT"
		end

	frozen GL_RENDERBUFFER_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_BINDING_EXT"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT"
		end

	frozen GL_FRAMEBUFFER_COMPLETE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_COMPLETE_EXT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT"
		end

	frozen GL_FRAMEBUFFER_UNSUPPORTED_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_UNSUPPORTED_EXT"
		end

	frozen GL_MAX_COLOR_ATTACHMENTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COLOR_ATTACHMENTS_EXT"
		end

	frozen GL_COLOR_ATTACHMENT0_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT0_EXT"
		end

	frozen GL_COLOR_ATTACHMENT1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT1_EXT"
		end

	frozen GL_COLOR_ATTACHMENT2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT2_EXT"
		end

	frozen GL_COLOR_ATTACHMENT3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT3_EXT"
		end

	frozen GL_COLOR_ATTACHMENT4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT4_EXT"
		end

	frozen GL_COLOR_ATTACHMENT5_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT5_EXT"
		end

	frozen GL_COLOR_ATTACHMENT6_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT6_EXT"
		end

	frozen GL_COLOR_ATTACHMENT7_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT7_EXT"
		end

	frozen GL_COLOR_ATTACHMENT8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT8_EXT"
		end

	frozen GL_COLOR_ATTACHMENT9_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT9_EXT"
		end

	frozen GL_COLOR_ATTACHMENT10_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT10_EXT"
		end

	frozen GL_COLOR_ATTACHMENT11_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT11_EXT"
		end

	frozen GL_COLOR_ATTACHMENT12_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT12_EXT"
		end

	frozen GL_COLOR_ATTACHMENT13_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT13_EXT"
		end

	frozen GL_COLOR_ATTACHMENT14_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT14_EXT"
		end

	frozen GL_COLOR_ATTACHMENT15_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ATTACHMENT15_EXT"
		end

	frozen GL_DEPTH_ATTACHMENT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_ATTACHMENT_EXT"
		end

	frozen GL_STENCIL_ATTACHMENT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_ATTACHMENT_EXT"
		end

	frozen GL_FRAMEBUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_EXT"
		end

	frozen GL_RENDERBUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_EXT"
		end

	frozen GL_RENDERBUFFER_WIDTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_WIDTH_EXT"
		end

	frozen GL_RENDERBUFFER_HEIGHT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_HEIGHT_EXT"
		end

	frozen GL_RENDERBUFFER_INTERNAL_FORMAT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_INTERNAL_FORMAT_EXT"
		end

	frozen GL_STENCIL_INDEX1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX1_EXT"
		end

	frozen GL_STENCIL_INDEX4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX4_EXT"
		end

	frozen GL_STENCIL_INDEX8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX8_EXT"
		end

	frozen GL_STENCIL_INDEX16_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_INDEX16_EXT"
		end

	frozen GL_RENDERBUFFER_RED_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_RED_SIZE_EXT"
		end

	frozen GL_RENDERBUFFER_GREEN_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_GREEN_SIZE_EXT"
		end

	frozen GL_RENDERBUFFER_BLUE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_BLUE_SIZE_EXT"
		end

	frozen GL_RENDERBUFFER_ALPHA_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_ALPHA_SIZE_EXT"
		end

	frozen GL_RENDERBUFFER_DEPTH_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_DEPTH_SIZE_EXT"
		end

	frozen GL_RENDERBUFFER_STENCIL_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_STENCIL_SIZE_EXT"
		end

	frozen GL_EXT_framebuffer_sRGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_framebuffer_sRGB"
		end

	frozen GL_FRAMEBUFFER_SRGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_SRGB_EXT"
		end

	frozen GL_FRAMEBUFFER_SRGB_CAPABLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_SRGB_CAPABLE_EXT"
		end

	frozen GL_EXT_geometry_shader4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_geometry_shader4"
		end

	frozen GL_LINES_ADJACENCY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINES_ADJACENCY_EXT"
		end

	frozen GL_LINE_STRIP_ADJACENCY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_STRIP_ADJACENCY_EXT"
		end

	frozen GL_TRIANGLES_ADJACENCY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLES_ADJACENCY_EXT"
		end

	frozen GL_TRIANGLE_STRIP_ADJACENCY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLE_STRIP_ADJACENCY_EXT"
		end

	frozen GL_PROGRAM_POINT_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_POINT_SIZE_EXT"
		end

	frozen GL_MAX_VARYING_COMPONENTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VARYING_COMPONENTS_EXT"
		end

	frozen GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT"
		end

	frozen GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT"
		end

	frozen GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT"
		end

	frozen GL_GEOMETRY_SHADER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_SHADER_EXT"
		end

	frozen GL_GEOMETRY_VERTICES_OUT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_VERTICES_OUT_EXT"
		end

	frozen GL_GEOMETRY_INPUT_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_INPUT_TYPE_EXT"
		end

	frozen GL_GEOMETRY_OUTPUT_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_OUTPUT_TYPE_EXT"
		end

	frozen GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT"
		end

	frozen GL_MAX_VERTEX_VARYING_COMPONENTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_VARYING_COMPONENTS_EXT"
		end

	frozen GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT"
		end

	frozen GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT"
		end

	frozen GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT"
		end

	frozen GL_EXT_gpu_program_parameters : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_gpu_program_parameters"
		end

	frozen GL_EXT_gpu_shader4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_gpu_shader4"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT"
		end

	frozen GL_SAMPLER_1D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_1D_ARRAY_EXT"
		end

	frozen GL_SAMPLER_2D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_ARRAY_EXT"
		end

	frozen GL_SAMPLER_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_BUFFER_EXT"
		end

	frozen GL_SAMPLER_1D_ARRAY_SHADOW_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_1D_ARRAY_SHADOW_EXT"
		end

	frozen GL_SAMPLER_2D_ARRAY_SHADOW_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_2D_ARRAY_SHADOW_EXT"
		end

	frozen GL_SAMPLER_CUBE_SHADOW_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_CUBE_SHADOW_EXT"
		end

	frozen GL_UNSIGNED_INT_VEC2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_VEC2_EXT"
		end

	frozen GL_UNSIGNED_INT_VEC3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_VEC3_EXT"
		end

	frozen GL_UNSIGNED_INT_VEC4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_VEC4_EXT"
		end

	frozen GL_INT_SAMPLER_1D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_1D_EXT"
		end

	frozen GL_INT_SAMPLER_2D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_2D_EXT"
		end

	frozen GL_INT_SAMPLER_3D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_3D_EXT"
		end

	frozen GL_INT_SAMPLER_CUBE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_CUBE_EXT"
		end

	frozen GL_INT_SAMPLER_2D_RECT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_2D_RECT_EXT"
		end

	frozen GL_INT_SAMPLER_1D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_1D_ARRAY_EXT"
		end

	frozen GL_INT_SAMPLER_2D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_2D_ARRAY_EXT"
		end

	frozen GL_INT_SAMPLER_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_BUFFER_EXT"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_1D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_1D_EXT"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_2D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_2D_EXT"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_3D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_3D_EXT"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_CUBE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_CUBE_EXT"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT"
		end

	frozen GL_EXT_histogram : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_histogram"
		end

	frozen GL_HISTOGRAM_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_EXT"
		end

	frozen GL_PROXY_HISTOGRAM_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_HISTOGRAM_EXT"
		end

	frozen GL_HISTOGRAM_WIDTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_WIDTH_EXT"
		end

	frozen GL_HISTOGRAM_FORMAT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_FORMAT_EXT"
		end

	frozen GL_HISTOGRAM_RED_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_RED_SIZE_EXT"
		end

	frozen GL_HISTOGRAM_GREEN_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_GREEN_SIZE_EXT"
		end

	frozen GL_HISTOGRAM_BLUE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_BLUE_SIZE_EXT"
		end

	frozen GL_HISTOGRAM_ALPHA_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_ALPHA_SIZE_EXT"
		end

	frozen GL_HISTOGRAM_LUMINANCE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_LUMINANCE_SIZE_EXT"
		end

	frozen GL_HISTOGRAM_SINK_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HISTOGRAM_SINK_EXT"
		end

	frozen GL_MINMAX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MINMAX_EXT"
		end

	frozen GL_MINMAX_FORMAT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MINMAX_FORMAT_EXT"
		end

	frozen GL_MINMAX_SINK_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MINMAX_SINK_EXT"
		end

	frozen GL_EXT_index_array_formats : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_index_array_formats"
		end

	frozen GL_EXT_index_func : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_index_func"
		end

	frozen GL_EXT_index_material : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_index_material"
		end

	frozen GL_EXT_index_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_index_texture"
		end

	frozen GL_EXT_light_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_light_texture"
		end

	frozen GL_FRAGMENT_MATERIAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_MATERIAL_EXT"
		end

	frozen GL_FRAGMENT_NORMAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_NORMAL_EXT"
		end

	frozen GL_FRAGMENT_COLOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_COLOR_EXT"
		end

	frozen GL_ATTENUATION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATTENUATION_EXT"
		end

	frozen GL_SHADOW_ATTENUATION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADOW_ATTENUATION_EXT"
		end

	frozen GL_TEXTURE_APPLICATION_MODE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_APPLICATION_MODE_EXT"
		end

	frozen GL_TEXTURE_LIGHT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_LIGHT_EXT"
		end

	frozen GL_TEXTURE_MATERIAL_FACE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MATERIAL_FACE_EXT"
		end

	frozen GL_TEXTURE_MATERIAL_PARAMETER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MATERIAL_PARAMETER_EXT"
		end

	frozen GL_EXT_misc_attribute : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_misc_attribute"
		end

	frozen GL_EXT_multi_draw_arrays : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_multi_draw_arrays"
		end

	frozen GL_EXT_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_multisample"
		end

	frozen GL_MULTISAMPLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_EXT"
		end

	frozen GL_SAMPLE_ALPHA_TO_MASK_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_ALPHA_TO_MASK_EXT"
		end

	frozen GL_SAMPLE_ALPHA_TO_ONE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_ALPHA_TO_ONE_EXT"
		end

	frozen GL_SAMPLE_MASK_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK_EXT"
		end

	frozen GL_1PASS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_1PASS_EXT"
		end

	frozen GL_2PASS_0_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_2PASS_0_EXT"
		end

	frozen GL_2PASS_1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_2PASS_1_EXT"
		end

	frozen GL_4PASS_0_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4PASS_0_EXT"
		end

	frozen GL_4PASS_1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4PASS_1_EXT"
		end

	frozen GL_4PASS_2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4PASS_2_EXT"
		end

	frozen GL_4PASS_3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4PASS_3_EXT"
		end

	frozen GL_SAMPLE_BUFFERS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_BUFFERS_EXT"
		end

	frozen GL_SAMPLES_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLES_EXT"
		end

	frozen GL_SAMPLE_MASK_VALUE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK_VALUE_EXT"
		end

	frozen GL_SAMPLE_MASK_INVERT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK_INVERT_EXT"
		end

	frozen GL_SAMPLE_PATTERN_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_PATTERN_EXT"
		end

	frozen GL_MULTISAMPLE_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_BIT_EXT"
		end

	frozen GL_EXT_packed_depth_stencil : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_packed_depth_stencil"
		end

	frozen GL_DEPTH_STENCIL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_STENCIL_EXT"
		end

	frozen GL_UNSIGNED_INT_24_8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_24_8_EXT"
		end

	frozen GL_DEPTH24_STENCIL8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH24_STENCIL8_EXT"
		end

	frozen GL_TEXTURE_STENCIL_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_STENCIL_SIZE_EXT"
		end

	frozen GL_EXT_packed_float : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_packed_float"
		end

	frozen GL_R11F_G11F_B10F_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R11F_G11F_B10F_EXT"
		end

	frozen GL_UNSIGNED_INT_10F_11F_11F_REV_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_10F_11F_11F_REV_EXT"
		end

	frozen GL_RGBA_SIGNED_COMPONENTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_SIGNED_COMPONENTS_EXT"
		end

	frozen GL_EXT_packed_pixels : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_packed_pixels"
		end

	frozen GL_UNSIGNED_BYTE_3_3_2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_BYTE_3_3_2_EXT"
		end

	frozen GL_UNSIGNED_SHORT_4_4_4_4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_4_4_4_4_EXT"
		end

	frozen GL_UNSIGNED_SHORT_5_5_5_1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_5_5_5_1_EXT"
		end

	frozen GL_UNSIGNED_INT_8_8_8_8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_8_8_8_8_EXT"
		end

	frozen GL_UNSIGNED_INT_10_10_10_2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_10_10_10_2_EXT"
		end

	frozen GL_EXT_paletted_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_paletted_texture"
		end

	frozen GL_COLOR_TABLE_FORMAT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_FORMAT_EXT"
		end

	frozen GL_COLOR_TABLE_WIDTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_WIDTH_EXT"
		end

	frozen GL_COLOR_TABLE_RED_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_RED_SIZE_EXT"
		end

	frozen GL_COLOR_TABLE_GREEN_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_GREEN_SIZE_EXT"
		end

	frozen GL_COLOR_TABLE_BLUE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_BLUE_SIZE_EXT"
		end

	frozen GL_COLOR_TABLE_ALPHA_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_ALPHA_SIZE_EXT"
		end

	frozen GL_COLOR_TABLE_LUMINANCE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_LUMINANCE_SIZE_EXT"
		end

	frozen GL_COLOR_TABLE_INTENSITY_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_INTENSITY_SIZE_EXT"
		end

	frozen GL_TEXTURE_INDEX_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_INDEX_SIZE_EXT"
		end

	frozen GL_EXT_pixel_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_pixel_buffer_object"
		end

	frozen GL_PIXEL_PACK_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_PACK_BUFFER_EXT"
		end

	frozen GL_PIXEL_UNPACK_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_UNPACK_BUFFER_EXT"
		end

	frozen GL_PIXEL_PACK_BUFFER_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_PACK_BUFFER_BINDING_EXT"
		end

	frozen GL_PIXEL_UNPACK_BUFFER_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_UNPACK_BUFFER_BINDING_EXT"
		end

	frozen GL_EXT_pixel_transform : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_pixel_transform"
		end

	frozen GL_PIXEL_TRANSFORM_2D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_TRANSFORM_2D_EXT"
		end

	frozen GL_PIXEL_MAG_FILTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MAG_FILTER_EXT"
		end

	frozen GL_PIXEL_MIN_FILTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_MIN_FILTER_EXT"
		end

	frozen GL_PIXEL_CUBIC_WEIGHT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_CUBIC_WEIGHT_EXT"
		end

	frozen GL_CUBIC_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CUBIC_EXT"
		end

	frozen GL_AVERAGE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AVERAGE_EXT"
		end

	frozen GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT"
		end

	frozen GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT"
		end

	frozen GL_PIXEL_TRANSFORM_2D_MATRIX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_TRANSFORM_2D_MATRIX_EXT"
		end

	frozen GL_EXT_pixel_transform_color_table : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_pixel_transform_color_table"
		end

	frozen GL_EXT_point_parameters : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_point_parameters"
		end

	frozen GL_POINT_SIZE_MIN_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_MIN_EXT"
		end

	frozen GL_POINT_SIZE_MAX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SIZE_MAX_EXT"
		end

	frozen GL_POINT_FADE_THRESHOLD_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_FADE_THRESHOLD_SIZE_EXT"
		end

	frozen GL_DISTANCE_ATTENUATION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DISTANCE_ATTENUATION_EXT"
		end

	frozen GL_EXT_polygon_offset : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_polygon_offset"
		end

	frozen GL_POLYGON_OFFSET_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_EXT"
		end

	frozen GL_POLYGON_OFFSET_FACTOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_FACTOR_EXT"
		end

	frozen GL_POLYGON_OFFSET_BIAS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POLYGON_OFFSET_BIAS_EXT"
		end

	frozen GL_EXT_provoking_vertex : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_provoking_vertex"
		end

	frozen GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT"
		end

	frozen GL_FIRST_VERTEX_CONVENTION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FIRST_VERTEX_CONVENTION_EXT"
		end

	frozen GL_LAST_VERTEX_CONVENTION_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LAST_VERTEX_CONVENTION_EXT"
		end

	frozen GL_PROVOKING_VERTEX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROVOKING_VERTEX_EXT"
		end

	frozen GL_EXT_rescale_normal : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_rescale_normal"
		end

	frozen GL_RESCALE_NORMAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESCALE_NORMAL_EXT"
		end

	frozen GL_EXT_scene_marker : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_scene_marker"
		end

	frozen GL_EXT_secondary_color : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_secondary_color"
		end

	frozen GL_COLOR_SUM_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_SUM_EXT"
		end

	frozen GL_CURRENT_SECONDARY_COLOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_SECONDARY_COLOR_EXT"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_SIZE_EXT"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_TYPE_EXT"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_POINTER_EXT"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_EXT"
		end

	frozen GL_EXT_separate_shader_objects : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_separate_shader_objects"
		end

	frozen GL_ACTIVE_PROGRAM_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_PROGRAM_EXT"
		end

	frozen GL_EXT_separate_specular_color : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_separate_specular_color"
		end

	frozen GL_LIGHT_MODEL_COLOR_CONTROL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHT_MODEL_COLOR_CONTROL_EXT"
		end

	frozen GL_SINGLE_COLOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SINGLE_COLOR_EXT"
		end

	frozen GL_SEPARATE_SPECULAR_COLOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SEPARATE_SPECULAR_COLOR_EXT"
		end

	frozen GL_EXT_shader_image_load_store : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_shader_image_load_store"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT"
		end

	frozen GL_ELEMENT_ARRAY_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_BARRIER_BIT_EXT"
		end

	frozen GL_UNIFORM_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNIFORM_BARRIER_BIT_EXT"
		end

	frozen GL_TEXTURE_FETCH_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_FETCH_BARRIER_BIT_EXT"
		end

	frozen GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT"
		end

	frozen GL_COMMAND_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMMAND_BARRIER_BIT_EXT"
		end

	frozen GL_PIXEL_BUFFER_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_BUFFER_BARRIER_BIT_EXT"
		end

	frozen GL_TEXTURE_UPDATE_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_UPDATE_BARRIER_BIT_EXT"
		end

	frozen GL_BUFFER_UPDATE_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_UPDATE_BARRIER_BIT_EXT"
		end

	frozen GL_FRAMEBUFFER_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAMEBUFFER_BARRIER_BIT_EXT"
		end

	frozen GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT"
		end

	frozen GL_ATOMIC_COUNTER_BARRIER_BIT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATOMIC_COUNTER_BARRIER_BIT_EXT"
		end

	frozen GL_MAX_IMAGE_UNITS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_IMAGE_UNITS_EXT"
		end

	frozen GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT"
		end

	frozen GL_IMAGE_BINDING_NAME_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_NAME_EXT"
		end

	frozen GL_IMAGE_BINDING_LEVEL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_LEVEL_EXT"
		end

	frozen GL_IMAGE_BINDING_LAYERED_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_LAYERED_EXT"
		end

	frozen GL_IMAGE_BINDING_LAYER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_LAYER_EXT"
		end

	frozen GL_IMAGE_BINDING_ACCESS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_ACCESS_EXT"
		end

	frozen GL_IMAGE_1D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_1D_EXT"
		end

	frozen GL_IMAGE_2D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D_EXT"
		end

	frozen GL_IMAGE_3D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_3D_EXT"
		end

	frozen GL_IMAGE_2D_RECT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D_RECT_EXT"
		end

	frozen GL_IMAGE_CUBE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CUBE_EXT"
		end

	frozen GL_IMAGE_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BUFFER_EXT"
		end

	frozen GL_IMAGE_1D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_1D_ARRAY_EXT"
		end

	frozen GL_IMAGE_2D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D_ARRAY_EXT"
		end

	frozen GL_IMAGE_CUBE_MAP_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_CUBE_MAP_ARRAY_EXT"
		end

	frozen GL_IMAGE_2D_MULTISAMPLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D_MULTISAMPLE_EXT"
		end

	frozen GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT"
		end

	frozen GL_INT_IMAGE_1D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_1D_EXT"
		end

	frozen GL_INT_IMAGE_2D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D_EXT"
		end

	frozen GL_INT_IMAGE_3D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_3D_EXT"
		end

	frozen GL_INT_IMAGE_2D_RECT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D_RECT_EXT"
		end

	frozen GL_INT_IMAGE_CUBE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_CUBE_EXT"
		end

	frozen GL_INT_IMAGE_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_BUFFER_EXT"
		end

	frozen GL_INT_IMAGE_1D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_1D_ARRAY_EXT"
		end

	frozen GL_INT_IMAGE_2D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D_ARRAY_EXT"
		end

	frozen GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT"
		end

	frozen GL_INT_IMAGE_2D_MULTISAMPLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D_MULTISAMPLE_EXT"
		end

	frozen GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_1D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_1D_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_3D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_3D_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_CUBE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_CUBE_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_BUFFER_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT"
		end

	frozen GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT"
		end

	frozen GL_MAX_IMAGE_SAMPLES_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_IMAGE_SAMPLES_EXT"
		end

	frozen GL_IMAGE_BINDING_FORMAT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMAGE_BINDING_FORMAT_EXT"
		end

	frozen GL_ALL_BARRIER_BITS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALL_BARRIER_BITS_EXT"
		end

	frozen GL_EXT_shadow_funcs : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_shadow_funcs"
		end

	frozen GL_EXT_shared_texture_palette : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_shared_texture_palette"
		end

	frozen GL_SHARED_TEXTURE_PALETTE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHARED_TEXTURE_PALETTE_EXT"
		end

	frozen GL_EXT_stencil_clear_tag : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_stencil_clear_tag"
		end

	frozen GL_STENCIL_TAG_BITS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_TAG_BITS_EXT"
		end

	frozen GL_STENCIL_CLEAR_TAG_VALUE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_CLEAR_TAG_VALUE_EXT"
		end

	frozen GL_EXT_stencil_two_side : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_stencil_two_side"
		end

	frozen GL_STENCIL_TEST_TWO_SIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STENCIL_TEST_TWO_SIDE_EXT"
		end

	frozen GL_ACTIVE_STENCIL_FACE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_STENCIL_FACE_EXT"
		end

	frozen GL_EXT_stencil_wrap : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_stencil_wrap"
		end

	frozen GL_INCR_WRAP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INCR_WRAP_EXT"
		end

	frozen GL_DECR_WRAP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DECR_WRAP_EXT"
		end

	frozen GL_EXT_subtexture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_subtexture"
		end

	frozen GL_EXT_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture"
		end

	frozen GL_ALPHA4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA4_EXT"
		end

	frozen GL_ALPHA8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA8_EXT"
		end

	frozen GL_ALPHA12_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA12_EXT"
		end

	frozen GL_ALPHA16_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA16_EXT"
		end

	frozen GL_LUMINANCE4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE4_EXT"
		end

	frozen GL_LUMINANCE8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE8_EXT"
		end

	frozen GL_LUMINANCE12_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE12_EXT"
		end

	frozen GL_LUMINANCE16_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_EXT"
		end

	frozen GL_LUMINANCE4_ALPHA4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE4_ALPHA4_EXT"
		end

	frozen GL_LUMINANCE6_ALPHA2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE6_ALPHA2_EXT"
		end

	frozen GL_LUMINANCE8_ALPHA8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE8_ALPHA8_EXT"
		end

	frozen GL_LUMINANCE12_ALPHA4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE12_ALPHA4_EXT"
		end

	frozen GL_LUMINANCE12_ALPHA12_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE12_ALPHA12_EXT"
		end

	frozen GL_LUMINANCE16_ALPHA16_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_ALPHA16_EXT"
		end

	frozen GL_INTENSITY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY_EXT"
		end

	frozen GL_INTENSITY4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY4_EXT"
		end

	frozen GL_INTENSITY8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY8_EXT"
		end

	frozen GL_INTENSITY12_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY12_EXT"
		end

	frozen GL_INTENSITY16_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY16_EXT"
		end

	frozen GL_RGB2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB2_EXT"
		end

	frozen GL_RGB4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB4_EXT"
		end

	frozen GL_RGB5_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB5_EXT"
		end

	frozen GL_RGB8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB8_EXT"
		end

	frozen GL_RGB10_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB10_EXT"
		end

	frozen GL_RGB12_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB12_EXT"
		end

	frozen GL_RGB16_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16_EXT"
		end

	frozen GL_RGBA2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA2_EXT"
		end

	frozen GL_RGBA4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA4_EXT"
		end

	frozen GL_RGB5_A1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB5_A1_EXT"
		end

	frozen GL_RGBA8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA8_EXT"
		end

	frozen GL_RGB10_A2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB10_A2_EXT"
		end

	frozen GL_RGBA12_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA12_EXT"
		end

	frozen GL_RGBA16_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16_EXT"
		end

	frozen GL_TEXTURE_RED_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RED_SIZE_EXT"
		end

	frozen GL_TEXTURE_GREEN_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GREEN_SIZE_EXT"
		end

	frozen GL_TEXTURE_BLUE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BLUE_SIZE_EXT"
		end

	frozen GL_TEXTURE_ALPHA_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_ALPHA_SIZE_EXT"
		end

	frozen GL_TEXTURE_LUMINANCE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_LUMINANCE_SIZE_EXT"
		end

	frozen GL_TEXTURE_INTENSITY_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_INTENSITY_SIZE_EXT"
		end

	frozen GL_REPLACE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACE_EXT"
		end

	frozen GL_PROXY_TEXTURE_1D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_1D_EXT"
		end

	frozen GL_PROXY_TEXTURE_2D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_2D_EXT"
		end

	frozen GL_EXT_texture3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture3D"
		end

	frozen GL_PACK_SKIP_IMAGES_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_SKIP_IMAGES_EXT"
		end

	frozen GL_PACK_IMAGE_HEIGHT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_IMAGE_HEIGHT_EXT"
		end

	frozen GL_UNPACK_SKIP_IMAGES_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_SKIP_IMAGES_EXT"
		end

	frozen GL_UNPACK_IMAGE_HEIGHT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_IMAGE_HEIGHT_EXT"
		end

	frozen GL_TEXTURE_3D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_3D_EXT"
		end

	frozen GL_PROXY_TEXTURE_3D_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_3D_EXT"
		end

	frozen GL_TEXTURE_DEPTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_DEPTH_EXT"
		end

	frozen GL_TEXTURE_WRAP_R_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_WRAP_R_EXT"
		end

	frozen GL_MAX_3D_TEXTURE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_3D_TEXTURE_SIZE_EXT"
		end

	frozen GL_EXT_texture_array : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_array"
		end

	frozen GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT"
		end

	frozen GL_MAX_ARRAY_TEXTURE_LAYERS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ARRAY_TEXTURE_LAYERS_EXT"
		end

	frozen GL_TEXTURE_1D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_1D_ARRAY_EXT"
		end

	frozen GL_PROXY_TEXTURE_1D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_1D_ARRAY_EXT"
		end

	frozen GL_TEXTURE_2D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_2D_ARRAY_EXT"
		end

	frozen GL_PROXY_TEXTURE_2D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_2D_ARRAY_EXT"
		end

	frozen GL_TEXTURE_BINDING_1D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_1D_ARRAY_EXT"
		end

	frozen GL_TEXTURE_BINDING_2D_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_2D_ARRAY_EXT"
		end

	frozen GL_EXT_texture_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_buffer_object"
		end

	frozen GL_TEXTURE_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_EXT"
		end

	frozen GL_MAX_TEXTURE_BUFFER_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_BUFFER_SIZE_EXT"
		end

	frozen GL_TEXTURE_BINDING_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_BUFFER_EXT"
		end

	frozen GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT"
		end

	frozen GL_TEXTURE_BUFFER_FORMAT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BUFFER_FORMAT_EXT"
		end

	frozen GL_EXT_texture_compression_dxt1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_compression_dxt1"
		end

	frozen GL_EXT_texture_compression_latc : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_compression_latc"
		end

	frozen GL_COMPRESSED_LUMINANCE_LATC1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_LUMINANCE_LATC1_EXT"
		end

	frozen GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT"
		end

	frozen GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT"
		end

	frozen GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT"
		end

	frozen GL_EXT_texture_compression_rgtc : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_compression_rgtc"
		end

	frozen GL_COMPRESSED_RED_RGTC1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RED_RGTC1_EXT"
		end

	frozen GL_COMPRESSED_SIGNED_RED_RGTC1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SIGNED_RED_RGTC1_EXT"
		end

	frozen GL_COMPRESSED_RED_GREEN_RGTC2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RED_GREEN_RGTC2_EXT"
		end

	frozen GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT"
		end

	frozen GL_EXT_texture_compression_s3tc : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_compression_s3tc"
		end

	frozen GL_COMPRESSED_RGB_S3TC_DXT1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGB_S3TC_DXT1_EXT"
		end

	frozen GL_COMPRESSED_RGBA_S3TC_DXT1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_S3TC_DXT1_EXT"
		end

	frozen GL_COMPRESSED_RGBA_S3TC_DXT3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_S3TC_DXT3_EXT"
		end

	frozen GL_COMPRESSED_RGBA_S3TC_DXT5_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_S3TC_DXT5_EXT"
		end

	frozen GL_EXT_texture_cube_map : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_cube_map"
		end

	frozen GL_NORMAL_MAP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_MAP_EXT"
		end

	frozen GL_REFLECTION_MAP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFLECTION_MAP_EXT"
		end

	frozen GL_TEXTURE_CUBE_MAP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_EXT"
		end

	frozen GL_TEXTURE_BINDING_CUBE_MAP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_CUBE_MAP_EXT"
		end

	frozen GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT"
		end

	frozen GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT"
		end

	frozen GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT"
		end

	frozen GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT"
		end

	frozen GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT"
		end

	frozen GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT"
		end

	frozen GL_PROXY_TEXTURE_CUBE_MAP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_CUBE_MAP_EXT"
		end

	frozen GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT"
		end

	frozen GL_EXT_texture_edge_clamp : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_edge_clamp"
		end

	frozen GL_CLAMP_TO_EDGE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_TO_EDGE_EXT"
		end

	frozen GL_EXT_texture_env : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_env"
		end

	frozen GL_EXT_texture_env_add : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_env_add"
		end

	frozen GL_EXT_texture_env_combine : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_env_combine"
		end

	frozen GL_COMBINE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE_EXT"
		end

	frozen GL_COMBINE_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE_RGB_EXT"
		end

	frozen GL_COMBINE_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE_ALPHA_EXT"
		end

	frozen GL_RGB_SCALE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_SCALE_EXT"
		end

	frozen GL_ADD_SIGNED_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ADD_SIGNED_EXT"
		end

	frozen GL_INTERPOLATE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERPOLATE_EXT"
		end

	frozen GL_CONSTANT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_EXT"
		end

	frozen GL_PRIMARY_COLOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMARY_COLOR_EXT"
		end

	frozen GL_PREVIOUS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PREVIOUS_EXT"
		end

	frozen GL_SOURCE0_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE0_RGB_EXT"
		end

	frozen GL_SOURCE1_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE1_RGB_EXT"
		end

	frozen GL_SOURCE2_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE2_RGB_EXT"
		end

	frozen GL_SOURCE0_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE0_ALPHA_EXT"
		end

	frozen GL_SOURCE1_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE1_ALPHA_EXT"
		end

	frozen GL_SOURCE2_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE2_ALPHA_EXT"
		end

	frozen GL_OPERAND0_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND0_RGB_EXT"
		end

	frozen GL_OPERAND1_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND1_RGB_EXT"
		end

	frozen GL_OPERAND2_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND2_RGB_EXT"
		end

	frozen GL_OPERAND0_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND0_ALPHA_EXT"
		end

	frozen GL_OPERAND1_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND1_ALPHA_EXT"
		end

	frozen GL_OPERAND2_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND2_ALPHA_EXT"
		end

	frozen GL_EXT_texture_env_dot3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_env_dot3"
		end

	frozen GL_DOT3_RGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT3_RGB_EXT"
		end

	frozen GL_DOT3_RGBA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT3_RGBA_EXT"
		end

	frozen GL_EXT_texture_filter_anisotropic : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_filter_anisotropic"
		end

	frozen GL_TEXTURE_MAX_ANISOTROPY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAX_ANISOTROPY_EXT"
		end

	frozen GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT"
		end

	frozen GL_EXT_texture_integer : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_integer"
		end

	frozen GL_RGBA32UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA32UI_EXT"
		end

	frozen GL_RGB32UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB32UI_EXT"
		end

	frozen GL_ALPHA32UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA32UI_EXT"
		end

	frozen GL_INTENSITY32UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY32UI_EXT"
		end

	frozen GL_LUMINANCE32UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE32UI_EXT"
		end

	frozen GL_LUMINANCE_ALPHA32UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA32UI_EXT"
		end

	frozen GL_RGBA16UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16UI_EXT"
		end

	frozen GL_RGB16UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16UI_EXT"
		end

	frozen GL_ALPHA16UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA16UI_EXT"
		end

	frozen GL_INTENSITY16UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY16UI_EXT"
		end

	frozen GL_LUMINANCE16UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16UI_EXT"
		end

	frozen GL_LUMINANCE_ALPHA16UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA16UI_EXT"
		end

	frozen GL_RGBA8UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA8UI_EXT"
		end

	frozen GL_RGB8UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB8UI_EXT"
		end

	frozen GL_ALPHA8UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA8UI_EXT"
		end

	frozen GL_INTENSITY8UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY8UI_EXT"
		end

	frozen GL_LUMINANCE8UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE8UI_EXT"
		end

	frozen GL_LUMINANCE_ALPHA8UI_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA8UI_EXT"
		end

	frozen GL_RGBA32I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA32I_EXT"
		end

	frozen GL_RGB32I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB32I_EXT"
		end

	frozen GL_ALPHA32I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA32I_EXT"
		end

	frozen GL_INTENSITY32I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY32I_EXT"
		end

	frozen GL_LUMINANCE32I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE32I_EXT"
		end

	frozen GL_LUMINANCE_ALPHA32I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA32I_EXT"
		end

	frozen GL_RGBA16I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16I_EXT"
		end

	frozen GL_RGB16I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16I_EXT"
		end

	frozen GL_ALPHA16I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA16I_EXT"
		end

	frozen GL_INTENSITY16I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY16I_EXT"
		end

	frozen GL_LUMINANCE16I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16I_EXT"
		end

	frozen GL_LUMINANCE_ALPHA16I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA16I_EXT"
		end

	frozen GL_RGBA8I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA8I_EXT"
		end

	frozen GL_RGB8I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB8I_EXT"
		end

	frozen GL_ALPHA8I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA8I_EXT"
		end

	frozen GL_INTENSITY8I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY8I_EXT"
		end

	frozen GL_LUMINANCE8I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE8I_EXT"
		end

	frozen GL_LUMINANCE_ALPHA8I_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA8I_EXT"
		end

	frozen GL_RED_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED_INTEGER_EXT"
		end

	frozen GL_GREEN_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREEN_INTEGER_EXT"
		end

	frozen GL_BLUE_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLUE_INTEGER_EXT"
		end

	frozen GL_ALPHA_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_INTEGER_EXT"
		end

	frozen GL_RGB_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_INTEGER_EXT"
		end

	frozen GL_RGBA_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_INTEGER_EXT"
		end

	frozen GL_BGR_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BGR_INTEGER_EXT"
		end

	frozen GL_BGRA_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BGRA_INTEGER_EXT"
		end

	frozen GL_LUMINANCE_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_INTEGER_EXT"
		end

	frozen GL_LUMINANCE_ALPHA_INTEGER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA_INTEGER_EXT"
		end

	frozen GL_RGBA_INTEGER_MODE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_INTEGER_MODE_EXT"
		end

	frozen GL_EXT_texture_lod_bias : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_lod_bias"
		end

	frozen GL_MAX_TEXTURE_LOD_BIAS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_LOD_BIAS_EXT"
		end

	frozen GL_TEXTURE_FILTER_CONTROL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_FILTER_CONTROL_EXT"
		end

	frozen GL_TEXTURE_LOD_BIAS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_LOD_BIAS_EXT"
		end

	frozen GL_EXT_texture_mirror_clamp : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_mirror_clamp"
		end

	frozen GL_MIRROR_CLAMP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIRROR_CLAMP_EXT"
		end

	frozen GL_MIRROR_CLAMP_TO_EDGE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIRROR_CLAMP_TO_EDGE_EXT"
		end

	frozen GL_MIRROR_CLAMP_TO_BORDER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIRROR_CLAMP_TO_BORDER_EXT"
		end

	frozen GL_EXT_texture_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_object"
		end

	frozen GL_TEXTURE_PRIORITY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_PRIORITY_EXT"
		end

	frozen GL_TEXTURE_RESIDENT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RESIDENT_EXT"
		end

	frozen GL_TEXTURE_1D_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_1D_BINDING_EXT"
		end

	frozen GL_TEXTURE_2D_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_2D_BINDING_EXT"
		end

	frozen GL_TEXTURE_3D_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_3D_BINDING_EXT"
		end

	frozen GL_EXT_texture_perturb_normal : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_perturb_normal"
		end

	frozen GL_PERTURB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PERTURB_EXT"
		end

	frozen GL_TEXTURE_NORMAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_NORMAL_EXT"
		end

	frozen GL_EXT_texture_rectangle : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_rectangle"
		end

	frozen GL_TEXTURE_RECTANGLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RECTANGLE_EXT"
		end

	frozen GL_TEXTURE_BINDING_RECTANGLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_RECTANGLE_EXT"
		end

	frozen GL_PROXY_TEXTURE_RECTANGLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_RECTANGLE_EXT"
		end

	frozen GL_MAX_RECTANGLE_TEXTURE_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_RECTANGLE_TEXTURE_SIZE_EXT"
		end

	frozen GL_EXT_texture_sRGB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_sRGB"
		end

	frozen GL_SRGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB_EXT"
		end

	frozen GL_SRGB8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB8_EXT"
		end

	frozen GL_SRGB_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB_ALPHA_EXT"
		end

	frozen GL_SRGB8_ALPHA8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRGB8_ALPHA8_EXT"
		end

	frozen GL_SLUMINANCE_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SLUMINANCE_ALPHA_EXT"
		end

	frozen GL_SLUMINANCE8_ALPHA8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SLUMINANCE8_ALPHA8_EXT"
		end

	frozen GL_SLUMINANCE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SLUMINANCE_EXT"
		end

	frozen GL_SLUMINANCE8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SLUMINANCE8_EXT"
		end

	frozen GL_COMPRESSED_SRGB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB_EXT"
		end

	frozen GL_COMPRESSED_SRGB_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB_ALPHA_EXT"
		end

	frozen GL_COMPRESSED_SLUMINANCE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SLUMINANCE_EXT"
		end

	frozen GL_COMPRESSED_SLUMINANCE_ALPHA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SLUMINANCE_ALPHA_EXT"
		end

	frozen GL_COMPRESSED_SRGB_S3TC_DXT1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB_S3TC_DXT1_EXT"
		end

	frozen GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT"
		end

	frozen GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT"
		end

	frozen GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT"
		end

	frozen GL_EXT_texture_sRGB_decode : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_sRGB_decode"
		end

	frozen GL_TEXTURE_SRGB_DECODE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SRGB_DECODE_EXT"
		end

	frozen GL_DECODE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DECODE_EXT"
		end

	frozen GL_SKIP_DECODE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SKIP_DECODE_EXT"
		end

	frozen GL_EXT_texture_shared_exponent : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_shared_exponent"
		end

	frozen GL_RGB9_E5_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB9_E5_EXT"
		end

	frozen GL_UNSIGNED_INT_5_9_9_9_REV_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_5_9_9_9_REV_EXT"
		end

	frozen GL_TEXTURE_SHARED_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SHARED_SIZE_EXT"
		end

	frozen GL_EXT_texture_snorm : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_snorm"
		end

	frozen GL_ALPHA_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_SNORM"
		end

	frozen GL_LUMINANCE_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_SNORM"
		end

	frozen GL_LUMINANCE_ALPHA_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA_SNORM"
		end

	frozen GL_INTENSITY_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY_SNORM"
		end

	frozen GL_ALPHA8_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA8_SNORM"
		end

	frozen GL_LUMINANCE8_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE8_SNORM"
		end

	frozen GL_LUMINANCE8_ALPHA8_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE8_ALPHA8_SNORM"
		end

	frozen GL_INTENSITY8_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY8_SNORM"
		end

	frozen GL_ALPHA16_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA16_SNORM"
		end

	frozen GL_LUMINANCE16_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_SNORM"
		end

	frozen GL_LUMINANCE16_ALPHA16_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_ALPHA16_SNORM"
		end

	frozen GL_INTENSITY16_SNORM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY16_SNORM"
		end

	frozen GL_EXT_texture_swizzle : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_texture_swizzle"
		end

	frozen GL_TEXTURE_SWIZZLE_R_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_R_EXT"
		end

	frozen GL_TEXTURE_SWIZZLE_G_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_G_EXT"
		end

	frozen GL_TEXTURE_SWIZZLE_B_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_B_EXT"
		end

	frozen GL_TEXTURE_SWIZZLE_A_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_A_EXT"
		end

	frozen GL_TEXTURE_SWIZZLE_RGBA_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SWIZZLE_RGBA_EXT"
		end

	frozen GL_EXT_timer_query : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_timer_query"
		end

	frozen GL_TIME_ELAPSED_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TIME_ELAPSED_EXT"
		end

	frozen GL_EXT_transform_feedback : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_transform_feedback"
		end

	frozen GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT"
		end

	frozen GL_TRANSFORM_FEEDBACK_VARYINGS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_VARYINGS_EXT"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT"
		end

	frozen GL_PRIMITIVES_GENERATED_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMITIVES_GENERATED_EXT"
		end

	frozen GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT"
		end

	frozen GL_RASTERIZER_DISCARD_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RASTERIZER_DISCARD_EXT"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT"
		end

	frozen GL_INTERLEAVED_ATTRIBS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERLEAVED_ATTRIBS_EXT"
		end

	frozen GL_SEPARATE_ATTRIBS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SEPARATE_ATTRIBS_EXT"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_EXT"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT"
		end

	frozen GL_EXT_vertex_array : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_vertex_array"
		end

	frozen GL_DOUBLE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_EXT"
		end

	frozen GL_VERTEX_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_EXT"
		end

	frozen GL_NORMAL_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_EXT"
		end

	frozen GL_COLOR_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_EXT"
		end

	frozen GL_INDEX_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_EXT"
		end

	frozen GL_TEXTURE_COORD_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_EXT"
		end

	frozen GL_EDGE_FLAG_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_EXT"
		end

	frozen GL_VERTEX_ARRAY_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_SIZE_EXT"
		end

	frozen GL_VERTEX_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_TYPE_EXT"
		end

	frozen GL_VERTEX_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_STRIDE_EXT"
		end

	frozen GL_VERTEX_ARRAY_COUNT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_COUNT_EXT"
		end

	frozen GL_NORMAL_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_TYPE_EXT"
		end

	frozen GL_NORMAL_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_STRIDE_EXT"
		end

	frozen GL_NORMAL_ARRAY_COUNT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_COUNT_EXT"
		end

	frozen GL_COLOR_ARRAY_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_SIZE_EXT"
		end

	frozen GL_COLOR_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_TYPE_EXT"
		end

	frozen GL_COLOR_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_STRIDE_EXT"
		end

	frozen GL_COLOR_ARRAY_COUNT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_COUNT_EXT"
		end

	frozen GL_INDEX_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_TYPE_EXT"
		end

	frozen GL_INDEX_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_STRIDE_EXT"
		end

	frozen GL_INDEX_ARRAY_COUNT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_COUNT_EXT"
		end

	frozen GL_TEXTURE_COORD_ARRAY_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_SIZE_EXT"
		end

	frozen GL_TEXTURE_COORD_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_TYPE_EXT"
		end

	frozen GL_TEXTURE_COORD_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_STRIDE_EXT"
		end

	frozen GL_TEXTURE_COORD_ARRAY_COUNT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_COUNT_EXT"
		end

	frozen GL_EDGE_FLAG_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_STRIDE_EXT"
		end

	frozen GL_EDGE_FLAG_ARRAY_COUNT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_COUNT_EXT"
		end

	frozen GL_VERTEX_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_POINTER_EXT"
		end

	frozen GL_NORMAL_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_POINTER_EXT"
		end

	frozen GL_COLOR_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_POINTER_EXT"
		end

	frozen GL_INDEX_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_POINTER_EXT"
		end

	frozen GL_TEXTURE_COORD_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_POINTER_EXT"
		end

	frozen GL_EDGE_FLAG_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_POINTER_EXT"
		end

	frozen GL_EXT_vertex_array_bgra : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_vertex_array_bgra"
		end

	frozen GL_EXT_vertex_attrib_64bit : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_vertex_attrib_64bit"
		end

	frozen GL_DOUBLE_MAT2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT2_EXT"
		end

	frozen GL_DOUBLE_MAT3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT3_EXT"
		end

	frozen GL_DOUBLE_MAT4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT4_EXT"
		end

	frozen GL_DOUBLE_MAT2x3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT2x3_EXT"
		end

	frozen GL_DOUBLE_MAT2x4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT2x4_EXT"
		end

	frozen GL_DOUBLE_MAT3x2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT3x2_EXT"
		end

	frozen GL_DOUBLE_MAT3x4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT3x4_EXT"
		end

	frozen GL_DOUBLE_MAT4x2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT4x2_EXT"
		end

	frozen GL_DOUBLE_MAT4x3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_MAT4x3_EXT"
		end

	frozen GL_DOUBLE_VEC2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_VEC2_EXT"
		end

	frozen GL_DOUBLE_VEC3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_VEC3_EXT"
		end

	frozen GL_DOUBLE_VEC4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOUBLE_VEC4_EXT"
		end

	frozen GL_EXT_vertex_shader : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_vertex_shader"
		end

	frozen GL_VERTEX_SHADER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_EXT"
		end

	frozen GL_VERTEX_SHADER_BINDING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_BINDING_EXT"
		end

	frozen GL_OP_INDEX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_INDEX_EXT"
		end

	frozen GL_OP_NEGATE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_NEGATE_EXT"
		end

	frozen GL_OP_DOT3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_DOT3_EXT"
		end

	frozen GL_OP_DOT4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_DOT4_EXT"
		end

	frozen GL_OP_MUL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_MUL_EXT"
		end

	frozen GL_OP_ADD_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_ADD_EXT"
		end

	frozen GL_OP_MADD_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_MADD_EXT"
		end

	frozen GL_OP_FRAC_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_FRAC_EXT"
		end

	frozen GL_OP_MAX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_MAX_EXT"
		end

	frozen GL_OP_MIN_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_MIN_EXT"
		end

	frozen GL_OP_SET_GE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_SET_GE_EXT"
		end

	frozen GL_OP_SET_LT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_SET_LT_EXT"
		end

	frozen GL_OP_CLAMP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_CLAMP_EXT"
		end

	frozen GL_OP_FLOOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_FLOOR_EXT"
		end

	frozen GL_OP_ROUND_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_ROUND_EXT"
		end

	frozen GL_OP_EXP_BASE_2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_EXP_BASE_2_EXT"
		end

	frozen GL_OP_LOG_BASE_2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_LOG_BASE_2_EXT"
		end

	frozen GL_OP_POWER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_POWER_EXT"
		end

	frozen GL_OP_RECIP_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_RECIP_EXT"
		end

	frozen GL_OP_RECIP_SQRT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_RECIP_SQRT_EXT"
		end

	frozen GL_OP_SUB_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_SUB_EXT"
		end

	frozen GL_OP_CROSS_PRODUCT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_CROSS_PRODUCT_EXT"
		end

	frozen GL_OP_MULTIPLY_MATRIX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_MULTIPLY_MATRIX_EXT"
		end

	frozen GL_OP_MOV_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OP_MOV_EXT"
		end

	frozen GL_OUTPUT_VERTEX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_VERTEX_EXT"
		end

	frozen GL_OUTPUT_COLOR0_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_COLOR0_EXT"
		end

	frozen GL_OUTPUT_COLOR1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_COLOR1_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD0_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD0_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD1_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD2_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD2_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD3_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD3_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD4_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD4_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD5_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD5_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD6_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD6_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD7_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD7_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD8_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD8_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD9_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD9_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD10_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD10_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD11_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD11_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD12_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD12_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD13_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD13_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD14_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD14_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD15_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD15_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD16_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD16_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD17_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD17_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD18_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD18_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD19_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD19_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD20_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD20_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD21_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD21_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD22_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD22_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD23_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD23_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD24_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD24_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD25_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD25_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD26_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD26_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD27_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD27_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD28_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD28_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD29_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD29_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD30_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD30_EXT"
		end

	frozen GL_OUTPUT_TEXTURE_COORD31_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_TEXTURE_COORD31_EXT"
		end

	frozen GL_OUTPUT_FOG_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OUTPUT_FOG_EXT"
		end

	frozen GL_SCALAR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCALAR_EXT"
		end

	frozen GL_VECTOR_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VECTOR_EXT"
		end

	frozen GL_MATRIX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX_EXT"
		end

	frozen GL_VARIANT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIANT_EXT"
		end

	frozen GL_INVARIANT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVARIANT_EXT"
		end

	frozen GL_LOCAL_CONSTANT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOCAL_CONSTANT_EXT"
		end

	frozen GL_LOCAL_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOCAL_EXT"
		end

	frozen GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT"
		end

	frozen GL_MAX_VERTEX_SHADER_VARIANTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_SHADER_VARIANTS_EXT"
		end

	frozen GL_MAX_VERTEX_SHADER_INVARIANTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_SHADER_INVARIANTS_EXT"
		end

	frozen GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT"
		end

	frozen GL_MAX_VERTEX_SHADER_LOCALS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_SHADER_LOCALS_EXT"
		end

	frozen GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT"
		end

	frozen GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT"
		end

	frozen GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT"
		end

	frozen GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT"
		end

	frozen GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT"
		end

	frozen GL_VERTEX_SHADER_INSTRUCTIONS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_INSTRUCTIONS_EXT"
		end

	frozen GL_VERTEX_SHADER_VARIANTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_VARIANTS_EXT"
		end

	frozen GL_VERTEX_SHADER_INVARIANTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_INVARIANTS_EXT"
		end

	frozen GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT"
		end

	frozen GL_VERTEX_SHADER_LOCALS_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_LOCALS_EXT"
		end

	frozen GL_VERTEX_SHADER_OPTIMIZED_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_SHADER_OPTIMIZED_EXT"
		end

	frozen GL_X_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_X_EXT"
		end

	frozen GL_Y_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_Y_EXT"
		end

	frozen GL_Z_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_Z_EXT"
		end

	frozen GL_W_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_W_EXT"
		end

	frozen GL_NEGATIVE_X_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEGATIVE_X_EXT"
		end

	frozen GL_NEGATIVE_Y_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEGATIVE_Y_EXT"
		end

	frozen GL_NEGATIVE_Z_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEGATIVE_Z_EXT"
		end

	frozen GL_NEGATIVE_W_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEGATIVE_W_EXT"
		end

	frozen GL_ZERO_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ZERO_EXT"
		end

	frozen GL_ONE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ONE_EXT"
		end

	frozen GL_NEGATIVE_ONE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEGATIVE_ONE_EXT"
		end

	frozen GL_NORMALIZED_RANGE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMALIZED_RANGE_EXT"
		end

	frozen GL_FULL_RANGE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FULL_RANGE_EXT"
		end

	frozen GL_CURRENT_VERTEX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_VERTEX_EXT"
		end

	frozen GL_MVP_MATRIX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MVP_MATRIX_EXT"
		end

	frozen GL_VARIANT_VALUE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIANT_VALUE_EXT"
		end

	frozen GL_VARIANT_DATATYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIANT_DATATYPE_EXT"
		end

	frozen GL_VARIANT_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIANT_ARRAY_STRIDE_EXT"
		end

	frozen GL_VARIANT_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIANT_ARRAY_TYPE_EXT"
		end

	frozen GL_VARIANT_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIANT_ARRAY_EXT"
		end

	frozen GL_VARIANT_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIANT_ARRAY_POINTER_EXT"
		end

	frozen GL_INVARIANT_VALUE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVARIANT_VALUE_EXT"
		end

	frozen GL_INVARIANT_DATATYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVARIANT_DATATYPE_EXT"
		end

	frozen GL_LOCAL_CONSTANT_VALUE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOCAL_CONSTANT_VALUE_EXT"
		end

	frozen GL_LOCAL_CONSTANT_DATATYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOCAL_CONSTANT_DATATYPE_EXT"
		end

	frozen GL_EXT_vertex_weighting : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_vertex_weighting"
		end

	frozen GL_MODELVIEW0_STACK_DEPTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW0_STACK_DEPTH_EXT"
		end

	frozen GL_MODELVIEW0_MATRIX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW0_MATRIX_EXT"
		end

	frozen GL_MODELVIEW0_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW0_EXT"
		end

	frozen GL_MODELVIEW1_STACK_DEPTH_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW1_STACK_DEPTH_EXT"
		end

	frozen GL_MODELVIEW1_MATRIX_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW1_MATRIX_EXT"
		end

	frozen GL_VERTEX_WEIGHTING_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_WEIGHTING_EXT"
		end

	frozen GL_MODELVIEW1_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW1_EXT"
		end

	frozen GL_CURRENT_VERTEX_WEIGHT_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_VERTEX_WEIGHT_EXT"
		end

	frozen GL_VERTEX_WEIGHT_ARRAY_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_WEIGHT_ARRAY_EXT"
		end

	frozen GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT"
		end

	frozen GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT"
		end

	frozen GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT"
		end

	frozen GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT"
		end

	frozen GL_EXT_x11_sync_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXT_x11_sync_object"
		end

	frozen GL_SYNC_X11_FENCE_EXT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYNC_X11_FENCE_EXT"
		end

	frozen GL_GREMEDY_frame_terminator : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREMEDY_frame_terminator"
		end

	frozen GL_GREMEDY_string_marker : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREMEDY_string_marker"
		end

	frozen GL_HP_convolution_border_modes : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HP_convolution_border_modes"
		end

	frozen GL_HP_image_transform : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HP_image_transform"
		end

	frozen GL_HP_occlusion_test : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HP_occlusion_test"
		end

	frozen GL_HP_texture_lighting : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HP_texture_lighting"
		end

	frozen GL_IBM_cull_vertex : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IBM_cull_vertex"
		end

	frozen GL_CULL_VERTEX_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CULL_VERTEX_IBM"
		end

	frozen GL_IBM_multimode_draw_arrays : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IBM_multimode_draw_arrays"
		end

	frozen GL_IBM_rasterpos_clip : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IBM_rasterpos_clip"
		end

	frozen GL_RASTER_POSITION_UNCLIPPED_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RASTER_POSITION_UNCLIPPED_IBM"
		end

	frozen GL_IBM_static_data : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IBM_static_data"
		end

	frozen GL_ALL_STATIC_DATA_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALL_STATIC_DATA_IBM"
		end

	frozen GL_STATIC_VERTEX_ARRAY_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STATIC_VERTEX_ARRAY_IBM"
		end

	frozen GL_IBM_texture_mirrored_repeat : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IBM_texture_mirrored_repeat"
		end

	frozen GL_MIRRORED_REPEAT_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIRRORED_REPEAT_IBM"
		end

	frozen GL_IBM_vertex_array_lists : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IBM_vertex_array_lists"
		end

	frozen GL_VERTEX_ARRAY_LIST_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_LIST_IBM"
		end

	frozen GL_NORMAL_ARRAY_LIST_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_LIST_IBM"
		end

	frozen GL_COLOR_ARRAY_LIST_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_LIST_IBM"
		end

	frozen GL_INDEX_ARRAY_LIST_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_LIST_IBM"
		end

	frozen GL_TEXTURE_COORD_ARRAY_LIST_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_LIST_IBM"
		end

	frozen GL_EDGE_FLAG_ARRAY_LIST_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_LIST_IBM"
		end

	frozen GL_FOG_COORDINATE_ARRAY_LIST_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_LIST_IBM"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_LIST_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_LIST_IBM"
		end

	frozen GL_VERTEX_ARRAY_LIST_STRIDE_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_LIST_STRIDE_IBM"
		end

	frozen GL_NORMAL_ARRAY_LIST_STRIDE_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_LIST_STRIDE_IBM"
		end

	frozen GL_COLOR_ARRAY_LIST_STRIDE_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_LIST_STRIDE_IBM"
		end

	frozen GL_INDEX_ARRAY_LIST_STRIDE_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_LIST_STRIDE_IBM"
		end

	frozen GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM"
		end

	frozen GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM"
		end

	frozen GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM"
		end

	frozen GL_INGR_color_clamp : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INGR_color_clamp"
		end

	frozen GL_RED_MIN_CLAMP_INGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED_MIN_CLAMP_INGR"
		end

	frozen GL_GREEN_MIN_CLAMP_INGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREEN_MIN_CLAMP_INGR"
		end

	frozen GL_BLUE_MIN_CLAMP_INGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLUE_MIN_CLAMP_INGR"
		end

	frozen GL_ALPHA_MIN_CLAMP_INGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_MIN_CLAMP_INGR"
		end

	frozen GL_RED_MAX_CLAMP_INGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RED_MAX_CLAMP_INGR"
		end

	frozen GL_GREEN_MAX_CLAMP_INGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GREEN_MAX_CLAMP_INGR"
		end

	frozen GL_BLUE_MAX_CLAMP_INGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLUE_MAX_CLAMP_INGR"
		end

	frozen GL_ALPHA_MAX_CLAMP_INGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_MAX_CLAMP_INGR"
		end

	frozen GL_INGR_interlace_read : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INGR_interlace_read"
		end

	frozen GL_INTERLACE_READ_INGR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERLACE_READ_INGR"
		end

	frozen GL_INTEL_map_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTEL_map_texture"
		end

	frozen GL_LAYOUT_DEFAULT_INTEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LAYOUT_DEFAULT_INTEL"
		end

	frozen GL_LAYOUT_LINEAR_INTEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LAYOUT_LINEAR_INTEL"
		end

	frozen GL_LAYOUT_LINEAR_CPU_CACHED_INTEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LAYOUT_LINEAR_CPU_CACHED_INTEL"
		end

	frozen GL_TEXTURE_MEMORY_LAYOUT_INTEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MEMORY_LAYOUT_INTEL"
		end

	frozen GL_INTEL_parallel_arrays : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTEL_parallel_arrays"
		end

	frozen GL_PARALLEL_ARRAYS_INTEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PARALLEL_ARRAYS_INTEL"
		end

	frozen GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL"
		end

	frozen GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL"
		end

	frozen GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL"
		end

	frozen GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL"
		end

	frozen GL_INTEL_texture_scissor : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTEL_texture_scissor"
		end

	frozen GL_KHR_debug : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_KHR_debug"
		end

	frozen GL_CONTEXT_FLAG_DEBUG_BIT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONTEXT_FLAG_DEBUG_BIT"
		end

	frozen GL_DEBUG_OUTPUT_SYNCHRONOUS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_OUTPUT_SYNCHRONOUS"
		end

	frozen GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH"
		end

	frozen GL_DEBUG_CALLBACK_FUNCTION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CALLBACK_FUNCTION"
		end

	frozen GL_DEBUG_CALLBACK_USER_PARAM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_CALLBACK_USER_PARAM"
		end

	frozen GL_DEBUG_SOURCE_API : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_API"
		end

	frozen GL_DEBUG_SOURCE_WINDOW_SYSTEM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_WINDOW_SYSTEM"
		end

	frozen GL_DEBUG_SOURCE_SHADER_COMPILER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_SHADER_COMPILER"
		end

	frozen GL_DEBUG_SOURCE_THIRD_PARTY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_THIRD_PARTY"
		end

	frozen GL_DEBUG_SOURCE_APPLICATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_APPLICATION"
		end

	frozen GL_DEBUG_SOURCE_OTHER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SOURCE_OTHER"
		end

	frozen GL_DEBUG_TYPE_ERROR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_ERROR"
		end

	frozen GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR"
		end

	frozen GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR"
		end

	frozen GL_DEBUG_TYPE_PORTABILITY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_PORTABILITY"
		end

	frozen GL_DEBUG_TYPE_PERFORMANCE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_PERFORMANCE"
		end

	frozen GL_DEBUG_TYPE_OTHER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_OTHER"
		end

	frozen GL_DEBUG_TYPE_MARKER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_MARKER"
		end

	frozen GL_DEBUG_TYPE_PUSH_GROUP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_PUSH_GROUP"
		end

	frozen GL_DEBUG_TYPE_POP_GROUP : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_TYPE_POP_GROUP"
		end

	frozen GL_DEBUG_SEVERITY_NOTIFICATION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_NOTIFICATION"
		end

	frozen GL_MAX_DEBUG_GROUP_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEBUG_GROUP_STACK_DEPTH"
		end

	frozen GL_DEBUG_GROUP_STACK_DEPTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_GROUP_STACK_DEPTH"
		end

	frozen GL_BUFFER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER"
		end

	frozen GL_SHADER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER"
		end

	frozen GL_PROGRAM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM"
		end

	frozen GL_QUERY : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY"
		end

	frozen GL_PROGRAM_PIPELINE : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_PIPELINE"
		end

	frozen GL_SAMPLER : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER"
		end

	frozen GL_DISPLAY_LIST : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DISPLAY_LIST"
		end

	frozen GL_MAX_LABEL_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_LABEL_LENGTH"
		end

	frozen GL_MAX_DEBUG_MESSAGE_LENGTH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEBUG_MESSAGE_LENGTH"
		end

	frozen GL_MAX_DEBUG_LOGGED_MESSAGES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEBUG_LOGGED_MESSAGES"
		end

	frozen GL_DEBUG_LOGGED_MESSAGES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_LOGGED_MESSAGES"
		end

	frozen GL_DEBUG_SEVERITY_HIGH : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_HIGH"
		end

	frozen GL_DEBUG_SEVERITY_MEDIUM : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_MEDIUM"
		end

	frozen GL_DEBUG_SEVERITY_LOW : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_SEVERITY_LOW"
		end

	frozen GL_DEBUG_OUTPUT : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_OUTPUT"
		end

	frozen GL_KHR_texture_compression_astc_ldr : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_KHR_texture_compression_astc_ldr"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_4x4_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_4x4_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_5x4_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_5x4_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_5x5_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_5x5_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_6x5_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_6x5_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_6x6_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_6x6_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_8x5_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_8x5_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_8x6_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_8x6_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_8x8_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_8x8_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_10x5_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_10x5_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_10x6_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_10x6_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_10x8_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_10x8_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_10x10_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_10x10_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_12x10_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_12x10_KHR"
		end

	frozen GL_COMPRESSED_RGBA_ASTC_12x12_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_RGBA_ASTC_12x12_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR"
		end

	frozen GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR"
		end

	frozen GL_KTX_buffer_region : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_KTX_buffer_region"
		end

	frozen GL_KTX_FRONT_REGION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_KTX_FRONT_REGION"
		end

	frozen GL_KTX_BACK_REGION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_KTX_BACK_REGION"
		end

	frozen GL_KTX_Z_REGION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_KTX_Z_REGION"
		end

	frozen GL_KTX_STENCIL_REGION : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_KTX_STENCIL_REGION"
		end

	frozen GL_MESAX_texture_stack : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MESAX_texture_stack"
		end

	frozen GL_TEXTURE_1D_STACK_MESAX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_1D_STACK_MESAX"
		end

	frozen GL_TEXTURE_2D_STACK_MESAX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_2D_STACK_MESAX"
		end

	frozen GL_PROXY_TEXTURE_1D_STACK_MESAX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_1D_STACK_MESAX"
		end

	frozen GL_PROXY_TEXTURE_2D_STACK_MESAX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_2D_STACK_MESAX"
		end

	frozen GL_TEXTURE_1D_STACK_BINDING_MESAX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_1D_STACK_BINDING_MESAX"
		end

	frozen GL_TEXTURE_2D_STACK_BINDING_MESAX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_2D_STACK_BINDING_MESAX"
		end

	frozen GL_MESA_pack_invert : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MESA_pack_invert"
		end

	frozen GL_PACK_INVERT_MESA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_INVERT_MESA"
		end

	frozen GL_MESA_resize_buffers : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MESA_resize_buffers"
		end

	frozen GL_MESA_window_pos : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MESA_window_pos"
		end

	frozen GL_MESA_ycbcr_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MESA_ycbcr_texture"
		end

	frozen GL_UNSIGNED_SHORT_8_8_MESA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_8_8_MESA"
		end

	frozen GL_UNSIGNED_SHORT_8_8_REV_MESA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_SHORT_8_8_REV_MESA"
		end

	frozen GL_YCBCR_MESA : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_YCBCR_MESA"
		end

	frozen GL_NVX_conditional_render : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NVX_conditional_render"
		end

	frozen GL_NVX_gpu_memory_info : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NVX_gpu_memory_info"
		end

	frozen GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX"
		end

	frozen GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX"
		end

	frozen GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX"
		end

	frozen GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX"
		end

	frozen GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX"
		end

	frozen GL_NV_bindless_multi_draw_indirect : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_bindless_multi_draw_indirect"
		end

	frozen GL_NV_bindless_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_bindless_texture"
		end

	frozen GL_NV_blend_equation_advanced : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_blend_equation_advanced"
		end

	frozen GL_BLEND_PREMULTIPLIED_SRC_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_PREMULTIPLIED_SRC_NV"
		end

	frozen GL_BLEND_OVERLAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_OVERLAP_NV"
		end

	frozen GL_UNCORRELATED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNCORRELATED_NV"
		end

	frozen GL_DISJOINT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DISJOINT_NV"
		end

	frozen GL_CONJOINT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONJOINT_NV"
		end

	frozen GL_BLEND_ADVANCED_COHERENT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BLEND_ADVANCED_COHERENT_NV"
		end

	frozen GL_SRC_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC_NV"
		end

	frozen GL_DST_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DST_NV"
		end

	frozen GL_SRC_OVER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC_OVER_NV"
		end

	frozen GL_DST_OVER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DST_OVER_NV"
		end

	frozen GL_SRC_IN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC_IN_NV"
		end

	frozen GL_DST_IN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DST_IN_NV"
		end

	frozen GL_SRC_OUT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC_OUT_NV"
		end

	frozen GL_DST_OUT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DST_OUT_NV"
		end

	frozen GL_SRC_ATOP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SRC_ATOP_NV"
		end

	frozen GL_DST_ATOP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DST_ATOP_NV"
		end

	frozen GL_PLUS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PLUS_NV"
		end

	frozen GL_PLUS_DARKER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PLUS_DARKER_NV"
		end

	frozen GL_MULTIPLY_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTIPLY_NV"
		end

	frozen GL_SCREEN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCREEN_NV"
		end

	frozen GL_OVERLAY_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OVERLAY_NV"
		end

	frozen GL_DARKEN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DARKEN_NV"
		end

	frozen GL_LIGHTEN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LIGHTEN_NV"
		end

	frozen GL_COLORDODGE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLORDODGE_NV"
		end

	frozen GL_COLORBURN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLORBURN_NV"
		end

	frozen GL_HARDLIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HARDLIGHT_NV"
		end

	frozen GL_SOFTLIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOFTLIGHT_NV"
		end

	frozen GL_DIFFERENCE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DIFFERENCE_NV"
		end

	frozen GL_MINUS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MINUS_NV"
		end

	frozen GL_EXCLUSION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXCLUSION_NV"
		end

	frozen GL_CONTRAST_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONTRAST_NV"
		end

	frozen GL_INVERT_RGB_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVERT_RGB_NV"
		end

	frozen GL_LINEARDODGE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINEARDODGE_NV"
		end

	frozen GL_LINEARBURN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINEARBURN_NV"
		end

	frozen GL_VIVIDLIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIVIDLIGHT_NV"
		end

	frozen GL_LINEARLIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINEARLIGHT_NV"
		end

	frozen GL_PINLIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PINLIGHT_NV"
		end

	frozen GL_HARDMIX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HARDMIX_NV"
		end

	frozen GL_HSL_HUE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HSL_HUE_NV"
		end

	frozen GL_HSL_SATURATION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HSL_SATURATION_NV"
		end

	frozen GL_HSL_COLOR_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HSL_COLOR_NV"
		end

	frozen GL_HSL_LUMINOSITY_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HSL_LUMINOSITY_NV"
		end

	frozen GL_PLUS_CLAMPED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PLUS_CLAMPED_NV"
		end

	frozen GL_PLUS_CLAMPED_ALPHA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PLUS_CLAMPED_ALPHA_NV"
		end

	frozen GL_MINUS_CLAMPED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MINUS_CLAMPED_NV"
		end

	frozen GL_INVERT_OVG_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVERT_OVG_NV"
		end

	frozen GL_NV_blend_equation_advanced_coherent : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_blend_equation_advanced_coherent"
		end

	frozen GL_NV_blend_square : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_blend_square"
		end

	frozen GL_NV_compute_program5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_compute_program5"
		end

	frozen GL_COMPUTE_PROGRAM_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPUTE_PROGRAM_NV"
		end

	frozen GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV"
		end

	frozen GL_NV_conditional_render : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_conditional_render"
		end

	frozen GL_QUERY_WAIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_WAIT_NV"
		end

	frozen GL_QUERY_NO_WAIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_NO_WAIT_NV"
		end

	frozen GL_QUERY_BY_REGION_WAIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_BY_REGION_WAIT_NV"
		end

	frozen GL_QUERY_BY_REGION_NO_WAIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_BY_REGION_NO_WAIT_NV"
		end

	frozen GL_NV_copy_depth_to_color : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_copy_depth_to_color"
		end

	frozen GL_DEPTH_STENCIL_TO_RGBA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_STENCIL_TO_RGBA_NV"
		end

	frozen GL_DEPTH_STENCIL_TO_BGRA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_STENCIL_TO_BGRA_NV"
		end

	frozen GL_NV_copy_image : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_copy_image"
		end

	frozen GL_NV_deep_texture3D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_deep_texture3D"
		end

	frozen GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV"
		end

	frozen GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV"
		end

	frozen GL_NV_depth_buffer_float : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_depth_buffer_float"
		end

	frozen GL_DEPTH_COMPONENT32F_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT32F_NV"
		end

	frozen GL_DEPTH32F_STENCIL8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH32F_STENCIL8_NV"
		end

	frozen GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV"
		end

	frozen GL_DEPTH_BUFFER_FLOAT_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_BUFFER_FLOAT_MODE_NV"
		end

	frozen GL_NV_depth_clamp : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_depth_clamp"
		end

	frozen GL_DEPTH_CLAMP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_CLAMP_NV"
		end

	frozen GL_NV_depth_range_unclamped : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_depth_range_unclamped"
		end

	frozen GL_SAMPLE_COUNT_BITS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_COUNT_BITS_NV"
		end

	frozen GL_CURRENT_SAMPLE_COUNT_QUERY_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_SAMPLE_COUNT_QUERY_NV"
		end

	frozen GL_QUERY_RESULT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT_NV"
		end

	frozen GL_QUERY_RESULT_AVAILABLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUERY_RESULT_AVAILABLE_NV"
		end

	frozen GL_SAMPLE_COUNT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_COUNT_NV"
		end

	frozen GL_NV_draw_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_draw_texture"
		end

	frozen GL_NV_evaluators : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_evaluators"
		end

	frozen GL_EVAL_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_2D_NV"
		end

	frozen GL_EVAL_TRIANGULAR_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_TRIANGULAR_2D_NV"
		end

	frozen GL_MAP_TESSELLATION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_TESSELLATION_NV"
		end

	frozen GL_MAP_ATTRIB_U_ORDER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_ATTRIB_U_ORDER_NV"
		end

	frozen GL_MAP_ATTRIB_V_ORDER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP_ATTRIB_V_ORDER_NV"
		end

	frozen GL_EVAL_FRACTIONAL_TESSELLATION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_FRACTIONAL_TESSELLATION_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB0_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB0_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB1_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB1_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB2_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB3_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB4_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB5_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB5_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB6_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB6_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB7_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB7_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB8_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB9_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB9_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB10_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB10_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB11_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB11_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB12_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB12_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB13_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB13_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB14_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB14_NV"
		end

	frozen GL_EVAL_VERTEX_ATTRIB15_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EVAL_VERTEX_ATTRIB15_NV"
		end

	frozen GL_MAX_MAP_TESSELLATION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_MAP_TESSELLATION_NV"
		end

	frozen GL_MAX_RATIONAL_EVAL_ORDER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_RATIONAL_EVAL_ORDER_NV"
		end

	frozen GL_NV_explicit_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_explicit_multisample"
		end

	frozen GL_SAMPLE_POSITION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_POSITION_NV"
		end

	frozen GL_SAMPLE_MASK_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK_NV"
		end

	frozen GL_SAMPLE_MASK_VALUE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK_VALUE_NV"
		end

	frozen GL_TEXTURE_BINDING_RENDERBUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_RENDERBUFFER_NV"
		end

	frozen GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV"
		end

	frozen GL_TEXTURE_RENDERBUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RENDERBUFFER_NV"
		end

	frozen GL_SAMPLER_RENDERBUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLER_RENDERBUFFER_NV"
		end

	frozen GL_INT_SAMPLER_RENDERBUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT_SAMPLER_RENDERBUFFER_NV"
		end

	frozen GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV"
		end

	frozen GL_MAX_SAMPLE_MASK_WORDS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SAMPLE_MASK_WORDS_NV"
		end

	frozen GL_NV_fence : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_fence"
		end

	frozen GL_ALL_COMPLETED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALL_COMPLETED_NV"
		end

	frozen GL_FENCE_STATUS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FENCE_STATUS_NV"
		end

	frozen GL_FENCE_CONDITION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FENCE_CONDITION_NV"
		end

	frozen GL_NV_float_buffer : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_float_buffer"
		end

	frozen GL_FLOAT_R_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_R_NV"
		end

	frozen GL_FLOAT_RG_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RG_NV"
		end

	frozen GL_FLOAT_RGB_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RGB_NV"
		end

	frozen GL_FLOAT_RGBA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RGBA_NV"
		end

	frozen GL_FLOAT_R16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_R16_NV"
		end

	frozen GL_FLOAT_R32_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_R32_NV"
		end

	frozen GL_FLOAT_RG16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RG16_NV"
		end

	frozen GL_FLOAT_RG32_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RG32_NV"
		end

	frozen GL_FLOAT_RGB16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RGB16_NV"
		end

	frozen GL_FLOAT_RGB32_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RGB32_NV"
		end

	frozen GL_FLOAT_RGBA16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RGBA16_NV"
		end

	frozen GL_FLOAT_RGBA32_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RGBA32_NV"
		end

	frozen GL_TEXTURE_FLOAT_COMPONENTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_FLOAT_COMPONENTS_NV"
		end

	frozen GL_FLOAT_CLEAR_COLOR_VALUE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_CLEAR_COLOR_VALUE_NV"
		end

	frozen GL_FLOAT_RGBA_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT_RGBA_MODE_NV"
		end

	frozen GL_NV_fog_distance : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_fog_distance"
		end

	frozen GL_FOG_DISTANCE_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_DISTANCE_MODE_NV"
		end

	frozen GL_EYE_RADIAL_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EYE_RADIAL_NV"
		end

	frozen GL_EYE_PLANE_ABSOLUTE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EYE_PLANE_ABSOLUTE_NV"
		end

	frozen GL_NV_fragment_program : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_fragment_program"
		end

	frozen GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV"
		end

	frozen GL_FRAGMENT_PROGRAM_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_PROGRAM_NV"
		end

	frozen GL_MAX_TEXTURE_COORDS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_COORDS_NV"
		end

	frozen GL_MAX_TEXTURE_IMAGE_UNITS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TEXTURE_IMAGE_UNITS_NV"
		end

	frozen GL_FRAGMENT_PROGRAM_BINDING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_PROGRAM_BINDING_NV"
		end

	frozen GL_PROGRAM_ERROR_STRING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_ERROR_STRING_NV"
		end

	frozen GL_NV_fragment_program2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_fragment_program2"
		end

	frozen GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV"
		end

	frozen GL_MAX_PROGRAM_CALL_DEPTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_CALL_DEPTH_NV"
		end

	frozen GL_MAX_PROGRAM_IF_DEPTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_IF_DEPTH_NV"
		end

	frozen GL_MAX_PROGRAM_LOOP_DEPTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_LOOP_DEPTH_NV"
		end

	frozen GL_MAX_PROGRAM_LOOP_COUNT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_LOOP_COUNT_NV"
		end

	frozen GL_NV_fragment_program4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_fragment_program4"
		end

	frozen GL_NV_fragment_program_option : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_fragment_program_option"
		end

	frozen GL_NV_framebuffer_multisample_coverage : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_framebuffer_multisample_coverage"
		end

	frozen GL_RENDERBUFFER_COVERAGE_SAMPLES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_COVERAGE_SAMPLES_NV"
		end

	frozen GL_RENDERBUFFER_COLOR_SAMPLES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RENDERBUFFER_COLOR_SAMPLES_NV"
		end

	frozen GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV"
		end

	frozen GL_MULTISAMPLE_COVERAGE_MODES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_COVERAGE_MODES_NV"
		end

	frozen GL_NV_geometry_program4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_geometry_program4"
		end

	frozen GL_GEOMETRY_PROGRAM_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_PROGRAM_NV"
		end

	frozen GL_MAX_PROGRAM_OUTPUT_VERTICES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_OUTPUT_VERTICES_NV"
		end

	frozen GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV"
		end

	frozen GL_NV_geometry_shader4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_geometry_shader4"
		end

	frozen GL_NV_gpu_program4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_gpu_program4"
		end

	frozen GL_MIN_PROGRAM_TEXEL_OFFSET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_PROGRAM_TEXEL_OFFSET_NV"
		end

	frozen GL_MAX_PROGRAM_TEXEL_OFFSET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEXEL_OFFSET_NV"
		end

	frozen GL_PROGRAM_ATTRIB_COMPONENTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_ATTRIB_COMPONENTS_NV"
		end

	frozen GL_PROGRAM_RESULT_COMPONENTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_RESULT_COMPONENTS_NV"
		end

	frozen GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV"
		end

	frozen GL_MAX_PROGRAM_RESULT_COMPONENTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_RESULT_COMPONENTS_NV"
		end

	frozen GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV"
		end

	frozen GL_MAX_PROGRAM_GENERIC_RESULTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_GENERIC_RESULTS_NV"
		end

	frozen GL_NV_gpu_program5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_gpu_program5"
		end

	frozen GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV"
		end

	frozen GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV"
		end

	frozen GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV"
		end

	frozen GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV"
		end

	frozen GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV"
		end

	frozen GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV"
		end

	frozen GL_NV_gpu_program5_mem_extended : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_gpu_program5_mem_extended"
		end

	frozen GL_NV_gpu_program_fp64 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_gpu_program_fp64"
		end

	frozen GL_NV_gpu_shader5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_gpu_shader5"
		end

	frozen GL_INT64_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT64_NV"
		end

	frozen GL_UNSIGNED_INT64_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT64_NV"
		end

	frozen GL_INT8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT8_NV"
		end

	frozen GL_INT8_VEC2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT8_VEC2_NV"
		end

	frozen GL_INT8_VEC3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT8_VEC3_NV"
		end

	frozen GL_INT8_VEC4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT8_VEC4_NV"
		end

	frozen GL_INT16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT16_NV"
		end

	frozen GL_INT16_VEC2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT16_VEC2_NV"
		end

	frozen GL_INT16_VEC3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT16_VEC3_NV"
		end

	frozen GL_INT16_VEC4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT16_VEC4_NV"
		end

	frozen GL_INT64_VEC2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT64_VEC2_NV"
		end

	frozen GL_INT64_VEC3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT64_VEC3_NV"
		end

	frozen GL_INT64_VEC4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INT64_VEC4_NV"
		end

	frozen GL_UNSIGNED_INT8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT8_NV"
		end

	frozen GL_UNSIGNED_INT8_VEC2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT8_VEC2_NV"
		end

	frozen GL_UNSIGNED_INT8_VEC3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT8_VEC3_NV"
		end

	frozen GL_UNSIGNED_INT8_VEC4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT8_VEC4_NV"
		end

	frozen GL_UNSIGNED_INT16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT16_NV"
		end

	frozen GL_UNSIGNED_INT16_VEC2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT16_VEC2_NV"
		end

	frozen GL_UNSIGNED_INT16_VEC3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT16_VEC3_NV"
		end

	frozen GL_UNSIGNED_INT16_VEC4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT16_VEC4_NV"
		end

	frozen GL_UNSIGNED_INT64_VEC2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT64_VEC2_NV"
		end

	frozen GL_UNSIGNED_INT64_VEC3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT64_VEC3_NV"
		end

	frozen GL_UNSIGNED_INT64_VEC4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT64_VEC4_NV"
		end

	frozen GL_FLOAT16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT16_NV"
		end

	frozen GL_FLOAT16_VEC2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT16_VEC2_NV"
		end

	frozen GL_FLOAT16_VEC3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT16_VEC3_NV"
		end

	frozen GL_FLOAT16_VEC4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FLOAT16_VEC4_NV"
		end

	frozen GL_NV_half_float : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_half_float"
		end

	frozen GL_HALF_FLOAT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HALF_FLOAT_NV"
		end

	frozen GL_NV_light_max_exponent : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_light_max_exponent"
		end

	frozen GL_MAX_SHININESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SHININESS_NV"
		end

	frozen GL_MAX_SPOT_EXPONENT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SPOT_EXPONENT_NV"
		end

	frozen GL_NV_multisample_coverage : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_multisample_coverage"
		end

	frozen GL_COLOR_SAMPLES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_SAMPLES_NV"
		end

	frozen GL_NV_multisample_filter_hint : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_multisample_filter_hint"
		end

	frozen GL_MULTISAMPLE_FILTER_HINT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_FILTER_HINT_NV"
		end

	frozen GL_NV_occlusion_query : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_occlusion_query"
		end

	frozen GL_PIXEL_COUNTER_BITS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_COUNTER_BITS_NV"
		end

	frozen GL_CURRENT_OCCLUSION_QUERY_ID_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_OCCLUSION_QUERY_ID_NV"
		end

	frozen GL_PIXEL_COUNT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_COUNT_NV"
		end

	frozen GL_PIXEL_COUNT_AVAILABLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PIXEL_COUNT_AVAILABLE_NV"
		end

	frozen GL_NV_packed_depth_stencil : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_packed_depth_stencil"
		end

	frozen GL_DEPTH_STENCIL_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_STENCIL_NV"
		end

	frozen GL_UNSIGNED_INT_24_8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_24_8_NV"
		end

	frozen GL_NV_parameter_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_parameter_buffer_object"
		end

	frozen GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV"
		end

	frozen GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV"
		end

	frozen GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV"
		end

	frozen GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV"
		end

	frozen GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV"
		end

	frozen GL_NV_parameter_buffer_object2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_parameter_buffer_object2"
		end

	frozen GL_NV_path_rendering : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_path_rendering"
		end

	frozen GL_CLOSE_PATH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLOSE_PATH_NV"
		end

	frozen GL_BOLD_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOLD_BIT_NV"
		end

	frozen GL_GLYPH_WIDTH_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLYPH_WIDTH_BIT_NV"
		end

	frozen GL_GLYPH_HEIGHT_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLYPH_HEIGHT_BIT_NV"
		end

	frozen GL_ITALIC_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ITALIC_BIT_NV"
		end

	frozen GL_MOVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MOVE_TO_NV"
		end

	frozen GL_RELATIVE_MOVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_MOVE_TO_NV"
		end

	frozen GL_LINE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LINE_TO_NV"
		end

	frozen GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV"
		end

	frozen GL_RELATIVE_LINE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_LINE_TO_NV"
		end

	frozen GL_HORIZONTAL_LINE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HORIZONTAL_LINE_TO_NV"
		end

	frozen GL_RELATIVE_HORIZONTAL_LINE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_HORIZONTAL_LINE_TO_NV"
		end

	frozen GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV"
		end

	frozen GL_VERTICAL_LINE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTICAL_LINE_TO_NV"
		end

	frozen GL_RELATIVE_VERTICAL_LINE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_VERTICAL_LINE_TO_NV"
		end

	frozen GL_QUADRATIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUADRATIC_CURVE_TO_NV"
		end

	frozen GL_RELATIVE_QUADRATIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_QUADRATIC_CURVE_TO_NV"
		end

	frozen GL_CUBIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CUBIC_CURVE_TO_NV"
		end

	frozen GL_RELATIVE_CUBIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_CUBIC_CURVE_TO_NV"
		end

	frozen GL_SMOOTH_QUADRATIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SMOOTH_QUADRATIC_CURVE_TO_NV"
		end

	frozen GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV"
		end

	frozen GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV"
		end

	frozen GL_SMOOTH_CUBIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SMOOTH_CUBIC_CURVE_TO_NV"
		end

	frozen GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV"
		end

	frozen GL_SMALL_CCW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SMALL_CCW_ARC_TO_NV"
		end

	frozen GL_RELATIVE_SMALL_CCW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_SMALL_CCW_ARC_TO_NV"
		end

	frozen GL_SMALL_CW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SMALL_CW_ARC_TO_NV"
		end

	frozen GL_RELATIVE_SMALL_CW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_SMALL_CW_ARC_TO_NV"
		end

	frozen GL_LARGE_CCW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LARGE_CCW_ARC_TO_NV"
		end

	frozen GL_RELATIVE_LARGE_CCW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_LARGE_CCW_ARC_TO_NV"
		end

	frozen GL_LARGE_CW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LARGE_CW_ARC_TO_NV"
		end

	frozen GL_RELATIVE_LARGE_CW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_LARGE_CW_ARC_TO_NV"
		end

	frozen GL_GLYPH_VERTICAL_BEARING_X_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLYPH_VERTICAL_BEARING_X_BIT_NV"
		end

	frozen GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV"
		end

	frozen GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV"
		end

	frozen GL_RESTART_PATH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESTART_PATH_NV"
		end

	frozen GL_DUP_FIRST_CUBIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DUP_FIRST_CUBIC_CURVE_TO_NV"
		end

	frozen GL_DUP_LAST_CUBIC_CURVE_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DUP_LAST_CUBIC_CURVE_TO_NV"
		end

	frozen GL_RECT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RECT_NV"
		end

	frozen GL_CIRCULAR_CCW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CIRCULAR_CCW_ARC_TO_NV"
		end

	frozen GL_CIRCULAR_CW_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CIRCULAR_CW_ARC_TO_NV"
		end

	frozen GL_CIRCULAR_TANGENT_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CIRCULAR_TANGENT_ARC_TO_NV"
		end

	frozen GL_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ARC_TO_NV"
		end

	frozen GL_RELATIVE_ARC_TO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RELATIVE_ARC_TO_NV"
		end

	frozen GL_GLYPH_HAS_KERNING_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLYPH_HAS_KERNING_BIT_NV"
		end

	frozen GL_PATH_FORMAT_SVG_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_FORMAT_SVG_NV"
		end

	frozen GL_PATH_FORMAT_PS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_FORMAT_PS_NV"
		end

	frozen GL_STANDARD_FONT_NAME_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STANDARD_FONT_NAME_NV"
		end

	frozen GL_SYSTEM_FONT_NAME_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SYSTEM_FONT_NAME_NV"
		end

	frozen GL_FILE_NAME_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FILE_NAME_NV"
		end

	frozen GL_PATH_STROKE_WIDTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_STROKE_WIDTH_NV"
		end

	frozen GL_PATH_END_CAPS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_END_CAPS_NV"
		end

	frozen GL_PATH_INITIAL_END_CAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_INITIAL_END_CAP_NV"
		end

	frozen GL_PATH_TERMINAL_END_CAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_TERMINAL_END_CAP_NV"
		end

	frozen GL_PATH_JOIN_STYLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_JOIN_STYLE_NV"
		end

	frozen GL_PATH_MITER_LIMIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_MITER_LIMIT_NV"
		end

	frozen GL_PATH_DASH_CAPS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_DASH_CAPS_NV"
		end

	frozen GL_PATH_INITIAL_DASH_CAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_INITIAL_DASH_CAP_NV"
		end

	frozen GL_PATH_TERMINAL_DASH_CAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_TERMINAL_DASH_CAP_NV"
		end

	frozen GL_PATH_DASH_OFFSET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_DASH_OFFSET_NV"
		end

	frozen GL_PATH_CLIENT_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_CLIENT_LENGTH_NV"
		end

	frozen GL_PATH_FILL_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_FILL_MODE_NV"
		end

	frozen GL_PATH_FILL_MASK_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_FILL_MASK_NV"
		end

	frozen GL_PATH_FILL_COVER_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_FILL_COVER_MODE_NV"
		end

	frozen GL_PATH_STROKE_COVER_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_STROKE_COVER_MODE_NV"
		end

	frozen GL_PATH_STROKE_MASK_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_STROKE_MASK_NV"
		end

	frozen GL_COUNT_UP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COUNT_UP_NV"
		end

	frozen GL_COUNT_DOWN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COUNT_DOWN_NV"
		end

	frozen GL_PATH_OBJECT_BOUNDING_BOX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_OBJECT_BOUNDING_BOX_NV"
		end

	frozen GL_CONVEX_HULL_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVEX_HULL_NV"
		end

	frozen GL_BOUNDING_BOX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOUNDING_BOX_NV"
		end

	frozen GL_TRANSLATE_X_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSLATE_X_NV"
		end

	frozen GL_TRANSLATE_Y_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSLATE_Y_NV"
		end

	frozen GL_TRANSLATE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSLATE_2D_NV"
		end

	frozen GL_TRANSLATE_3D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSLATE_3D_NV"
		end

	frozen GL_AFFINE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AFFINE_2D_NV"
		end

	frozen GL_AFFINE_3D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_AFFINE_3D_NV"
		end

	frozen GL_TRANSPOSE_AFFINE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_AFFINE_2D_NV"
		end

	frozen GL_TRANSPOSE_AFFINE_3D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_AFFINE_3D_NV"
		end

	frozen GL_UTF8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UTF8_NV"
		end

	frozen GL_UTF16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UTF16_NV"
		end

	frozen GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV"
		end

	frozen GL_PATH_COMMAND_COUNT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_COMMAND_COUNT_NV"
		end

	frozen GL_PATH_COORD_COUNT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_COORD_COUNT_NV"
		end

	frozen GL_PATH_DASH_ARRAY_COUNT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_DASH_ARRAY_COUNT_NV"
		end

	frozen GL_PATH_COMPUTED_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_COMPUTED_LENGTH_NV"
		end

	frozen GL_PATH_FILL_BOUNDING_BOX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_FILL_BOUNDING_BOX_NV"
		end

	frozen GL_PATH_STROKE_BOUNDING_BOX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_STROKE_BOUNDING_BOX_NV"
		end

	frozen GL_SQUARE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SQUARE_NV"
		end

	frozen GL_ROUND_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ROUND_NV"
		end

	frozen GL_TRIANGULAR_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGULAR_NV"
		end

	frozen GL_BEVEL_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BEVEL_NV"
		end

	frozen GL_MITER_REVERT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MITER_REVERT_NV"
		end

	frozen GL_MITER_TRUNCATE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MITER_TRUNCATE_NV"
		end

	frozen GL_SKIP_MISSING_GLYPH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SKIP_MISSING_GLYPH_NV"
		end

	frozen GL_USE_MISSING_GLYPH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_USE_MISSING_GLYPH_NV"
		end

	frozen GL_PATH_ERROR_POSITION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_ERROR_POSITION_NV"
		end

	frozen GL_PATH_FOG_GEN_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_FOG_GEN_MODE_NV"
		end

	frozen GL_ACCUM_ADJACENT_PAIRS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACCUM_ADJACENT_PAIRS_NV"
		end

	frozen GL_ADJACENT_PAIRS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ADJACENT_PAIRS_NV"
		end

	frozen GL_FIRST_TO_REST_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FIRST_TO_REST_NV"
		end

	frozen GL_PATH_GEN_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_GEN_MODE_NV"
		end

	frozen GL_PATH_GEN_COEFF_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_GEN_COEFF_NV"
		end

	frozen GL_PATH_GEN_COLOR_FORMAT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_GEN_COLOR_FORMAT_NV"
		end

	frozen GL_PATH_GEN_COMPONENTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_GEN_COMPONENTS_NV"
		end

	frozen GL_PATH_DASH_OFFSET_RESET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_DASH_OFFSET_RESET_NV"
		end

	frozen GL_MOVE_TO_RESETS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MOVE_TO_RESETS_NV"
		end

	frozen GL_MOVE_TO_CONTINUES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MOVE_TO_CONTINUES_NV"
		end

	frozen GL_PATH_STENCIL_FUNC_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_STENCIL_FUNC_NV"
		end

	frozen GL_PATH_STENCIL_REF_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_STENCIL_REF_NV"
		end

	frozen GL_PATH_STENCIL_VALUE_MASK_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_STENCIL_VALUE_MASK_NV"
		end

	frozen GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV"
		end

	frozen GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV"
		end

	frozen GL_PATH_COVER_DEPTH_FUNC_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PATH_COVER_DEPTH_FUNC_NV"
		end

	frozen GL_FONT_X_MIN_BOUNDS_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_X_MIN_BOUNDS_BIT_NV"
		end

	frozen GL_FONT_Y_MIN_BOUNDS_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_Y_MIN_BOUNDS_BIT_NV"
		end

	frozen GL_FONT_X_MAX_BOUNDS_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_X_MAX_BOUNDS_BIT_NV"
		end

	frozen GL_FONT_Y_MAX_BOUNDS_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_Y_MAX_BOUNDS_BIT_NV"
		end

	frozen GL_FONT_UNITS_PER_EM_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_UNITS_PER_EM_BIT_NV"
		end

	frozen GL_FONT_ASCENDER_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_ASCENDER_BIT_NV"
		end

	frozen GL_FONT_DESCENDER_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_DESCENDER_BIT_NV"
		end

	frozen GL_FONT_HEIGHT_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_HEIGHT_BIT_NV"
		end

	frozen GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV"
		end

	frozen GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV"
		end

	frozen GL_FONT_UNDERLINE_POSITION_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_UNDERLINE_POSITION_BIT_NV"
		end

	frozen GL_FONT_UNDERLINE_THICKNESS_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_UNDERLINE_THICKNESS_BIT_NV"
		end

	frozen GL_FONT_HAS_KERNING_BIT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FONT_HAS_KERNING_BIT_NV"
		end

	frozen GL_NV_pixel_data_range : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_pixel_data_range"
		end

	frozen GL_WRITE_PIXEL_DATA_RANGE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WRITE_PIXEL_DATA_RANGE_NV"
		end

	frozen GL_READ_PIXEL_DATA_RANGE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_PIXEL_DATA_RANGE_NV"
		end

	frozen GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV"
		end

	frozen GL_READ_PIXEL_DATA_RANGE_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_PIXEL_DATA_RANGE_LENGTH_NV"
		end

	frozen GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV"
		end

	frozen GL_READ_PIXEL_DATA_RANGE_POINTER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_READ_PIXEL_DATA_RANGE_POINTER_NV"
		end

	frozen GL_NV_point_sprite : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_point_sprite"
		end

	frozen GL_POINT_SPRITE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SPRITE_NV"
		end

	frozen GL_COORD_REPLACE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COORD_REPLACE_NV"
		end

	frozen GL_POINT_SPRITE_R_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POINT_SPRITE_R_MODE_NV"
		end

	frozen GL_NV_present_video : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_present_video"
		end

	frozen GL_FRAME_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAME_NV"
		end

	frozen GL_FIELDS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FIELDS_NV"
		end

	frozen GL_CURRENT_TIME_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_TIME_NV"
		end

	frozen GL_NUM_FILL_STREAMS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_FILL_STREAMS_NV"
		end

	frozen GL_PRESENT_TIME_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRESENT_TIME_NV"
		end

	frozen GL_PRESENT_DURATION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRESENT_DURATION_NV"
		end

	frozen GL_NV_primitive_restart : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_primitive_restart"
		end

	frozen GL_PRIMITIVE_RESTART_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMITIVE_RESTART_NV"
		end

	frozen GL_PRIMITIVE_RESTART_INDEX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMITIVE_RESTART_INDEX_NV"
		end

	frozen GL_NV_register_combiners : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_register_combiners"
		end

	frozen GL_REGISTER_COMBINERS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REGISTER_COMBINERS_NV"
		end

	frozen GL_VARIABLE_A_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIABLE_A_NV"
		end

	frozen GL_VARIABLE_B_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIABLE_B_NV"
		end

	frozen GL_VARIABLE_C_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIABLE_C_NV"
		end

	frozen GL_VARIABLE_D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIABLE_D_NV"
		end

	frozen GL_VARIABLE_E_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIABLE_E_NV"
		end

	frozen GL_VARIABLE_F_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIABLE_F_NV"
		end

	frozen GL_VARIABLE_G_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VARIABLE_G_NV"
		end

	frozen GL_CONSTANT_COLOR0_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_COLOR0_NV"
		end

	frozen GL_CONSTANT_COLOR1_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSTANT_COLOR1_NV"
		end

	frozen GL_PRIMARY_COLOR_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMARY_COLOR_NV"
		end

	frozen GL_SECONDARY_COLOR_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_NV"
		end

	frozen GL_SPARE0_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SPARE0_NV"
		end

	frozen GL_SPARE1_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SPARE1_NV"
		end

	frozen GL_DISCARD_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DISCARD_NV"
		end

	frozen GL_E_TIMES_F_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_E_TIMES_F_NV"
		end

	frozen GL_SPARE0_PLUS_SECONDARY_COLOR_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SPARE0_PLUS_SECONDARY_COLOR_NV"
		end

	frozen GL_UNSIGNED_IDENTITY_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_IDENTITY_NV"
		end

	frozen GL_UNSIGNED_INVERT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INVERT_NV"
		end

	frozen GL_EXPAND_NORMAL_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXPAND_NORMAL_NV"
		end

	frozen GL_EXPAND_NEGATE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXPAND_NEGATE_NV"
		end

	frozen GL_HALF_BIAS_NORMAL_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HALF_BIAS_NORMAL_NV"
		end

	frozen GL_HALF_BIAS_NEGATE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HALF_BIAS_NEGATE_NV"
		end

	frozen GL_SIGNED_IDENTITY_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_IDENTITY_NV"
		end

	frozen GL_SIGNED_NEGATE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_NEGATE_NV"
		end

	frozen GL_SCALE_BY_TWO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCALE_BY_TWO_NV"
		end

	frozen GL_SCALE_BY_FOUR_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCALE_BY_FOUR_NV"
		end

	frozen GL_SCALE_BY_ONE_HALF_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCALE_BY_ONE_HALF_NV"
		end

	frozen GL_BIAS_BY_NEGATIVE_ONE_HALF_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BIAS_BY_NEGATIVE_ONE_HALF_NV"
		end

	frozen GL_COMBINER_INPUT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_INPUT_NV"
		end

	frozen GL_COMBINER_MAPPING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_MAPPING_NV"
		end

	frozen GL_COMBINER_COMPONENT_USAGE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_COMPONENT_USAGE_NV"
		end

	frozen GL_COMBINER_AB_DOT_PRODUCT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_AB_DOT_PRODUCT_NV"
		end

	frozen GL_COMBINER_CD_DOT_PRODUCT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_CD_DOT_PRODUCT_NV"
		end

	frozen GL_COMBINER_MUX_SUM_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_MUX_SUM_NV"
		end

	frozen GL_COMBINER_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_SCALE_NV"
		end

	frozen GL_COMBINER_BIAS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_BIAS_NV"
		end

	frozen GL_COMBINER_AB_OUTPUT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_AB_OUTPUT_NV"
		end

	frozen GL_COMBINER_CD_OUTPUT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_CD_OUTPUT_NV"
		end

	frozen GL_COMBINER_SUM_OUTPUT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER_SUM_OUTPUT_NV"
		end

	frozen GL_MAX_GENERAL_COMBINERS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GENERAL_COMBINERS_NV"
		end

	frozen GL_NUM_GENERAL_COMBINERS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_GENERAL_COMBINERS_NV"
		end

	frozen GL_COLOR_SUM_CLAMP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_SUM_CLAMP_NV"
		end

	frozen GL_COMBINER0_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER0_NV"
		end

	frozen GL_COMBINER1_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER1_NV"
		end

	frozen GL_COMBINER2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER2_NV"
		end

	frozen GL_COMBINER3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER3_NV"
		end

	frozen GL_COMBINER4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER4_NV"
		end

	frozen GL_COMBINER5_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER5_NV"
		end

	frozen GL_COMBINER6_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER6_NV"
		end

	frozen GL_COMBINER7_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINER7_NV"
		end

	frozen GL_NV_register_combiners2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_register_combiners2"
		end

	frozen GL_PER_STAGE_CONSTANTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PER_STAGE_CONSTANTS_NV"
		end

	frozen GL_NV_shader_atomic_counters : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_shader_atomic_counters"
		end

	frozen GL_NV_shader_atomic_float : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_shader_atomic_float"
		end

	frozen GL_NV_shader_buffer_load : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_shader_buffer_load"
		end

	frozen GL_BUFFER_GPU_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BUFFER_GPU_ADDRESS_NV"
		end

	frozen GL_GPU_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GPU_ADDRESS_NV"
		end

	frozen GL_MAX_SHADER_BUFFER_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_SHADER_BUFFER_ADDRESS_NV"
		end

	frozen GL_NV_shader_storage_buffer_object : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_shader_storage_buffer_object"
		end

	frozen GL_NV_tessellation_program5 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_tessellation_program5"
		end

	frozen GL_MAX_PROGRAM_PATCH_ATTRIBS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_PROGRAM_PATCH_ATTRIBS_NV"
		end

	frozen GL_TESS_CONTROL_PROGRAM_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_CONTROL_PROGRAM_NV"
		end

	frozen GL_TESS_EVALUATION_PROGRAM_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_EVALUATION_PROGRAM_NV"
		end

	frozen GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV"
		end

	frozen GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV"
		end

	frozen GL_NV_texgen_emboss : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texgen_emboss"
		end

	frozen GL_EMBOSS_LIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EMBOSS_LIGHT_NV"
		end

	frozen GL_EMBOSS_CONSTANT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EMBOSS_CONSTANT_NV"
		end

	frozen GL_EMBOSS_MAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EMBOSS_MAP_NV"
		end

	frozen GL_NV_texgen_reflection : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texgen_reflection"
		end

	frozen GL_NORMAL_MAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_MAP_NV"
		end

	frozen GL_REFLECTION_MAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REFLECTION_MAP_NV"
		end

	frozen GL_NV_texture_barrier : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texture_barrier"
		end

	frozen GL_NV_texture_compression_vtc : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texture_compression_vtc"
		end

	frozen GL_NV_texture_env_combine4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texture_env_combine4"
		end

	frozen GL_COMBINE4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COMBINE4_NV"
		end

	frozen GL_SOURCE3_RGB_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE3_RGB_NV"
		end

	frozen GL_SOURCE3_ALPHA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SOURCE3_ALPHA_NV"
		end

	frozen GL_OPERAND3_RGB_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND3_RGB_NV"
		end

	frozen GL_OPERAND3_ALPHA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OPERAND3_ALPHA_NV"
		end

	frozen GL_NV_texture_expand_normal : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texture_expand_normal"
		end

	frozen GL_TEXTURE_UNSIGNED_REMAP_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_UNSIGNED_REMAP_MODE_NV"
		end

	frozen GL_NV_texture_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texture_multisample"
		end

	frozen GL_TEXTURE_COVERAGE_SAMPLES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COVERAGE_SAMPLES_NV"
		end

	frozen GL_TEXTURE_COLOR_SAMPLES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COLOR_SAMPLES_NV"
		end

	frozen GL_NV_texture_rectangle : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texture_rectangle"
		end

	frozen GL_TEXTURE_RECTANGLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_RECTANGLE_NV"
		end

	frozen GL_TEXTURE_BINDING_RECTANGLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BINDING_RECTANGLE_NV"
		end

	frozen GL_PROXY_TEXTURE_RECTANGLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_RECTANGLE_NV"
		end

	frozen GL_MAX_RECTANGLE_TEXTURE_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_RECTANGLE_TEXTURE_SIZE_NV"
		end

	frozen GL_NV_texture_shader : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texture_shader"
		end

	frozen GL_OFFSET_TEXTURE_RECTANGLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_TEXTURE_RECTANGLE_NV"
		end

	frozen GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV"
		end

	frozen GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV"
		end

	frozen GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV"
		end

	frozen GL_UNSIGNED_INT_S8_S8_8_8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_S8_S8_8_8_NV"
		end

	frozen GL_UNSIGNED_INT_8_8_S8_S8_REV_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNSIGNED_INT_8_8_S8_S8_REV_NV"
		end

	frozen GL_DSDT_MAG_INTENSITY_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DSDT_MAG_INTENSITY_NV"
		end

	frozen GL_SHADER_CONSISTENT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_CONSISTENT_NV"
		end

	frozen GL_TEXTURE_SHADER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_SHADER_NV"
		end

	frozen GL_SHADER_OPERATION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADER_OPERATION_NV"
		end

	frozen GL_CULL_MODES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CULL_MODES_NV"
		end

	frozen GL_OFFSET_TEXTURE_2D_MATRIX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_TEXTURE_2D_MATRIX_NV"
		end

	frozen GL_OFFSET_TEXTURE_MATRIX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_TEXTURE_MATRIX_NV"
		end

	frozen GL_OFFSET_TEXTURE_2D_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_TEXTURE_2D_SCALE_NV"
		end

	frozen GL_OFFSET_TEXTURE_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_TEXTURE_SCALE_NV"
		end

	frozen GL_OFFSET_TEXTURE_BIAS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_TEXTURE_BIAS_NV"
		end

	frozen GL_OFFSET_TEXTURE_2D_BIAS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_TEXTURE_2D_BIAS_NV"
		end

	frozen GL_PREVIOUS_TEXTURE_INPUT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PREVIOUS_TEXTURE_INPUT_NV"
		end

	frozen GL_CONST_EYE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONST_EYE_NV"
		end

	frozen GL_PASS_THROUGH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PASS_THROUGH_NV"
		end

	frozen GL_CULL_FRAGMENT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CULL_FRAGMENT_NV"
		end

	frozen GL_OFFSET_TEXTURE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_TEXTURE_2D_NV"
		end

	frozen GL_DEPENDENT_AR_TEXTURE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPENDENT_AR_TEXTURE_2D_NV"
		end

	frozen GL_DEPENDENT_GB_TEXTURE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPENDENT_GB_TEXTURE_2D_NV"
		end

	frozen GL_DOT_PRODUCT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_NV"
		end

	frozen GL_DOT_PRODUCT_DEPTH_REPLACE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_DEPTH_REPLACE_NV"
		end

	frozen GL_DOT_PRODUCT_TEXTURE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_TEXTURE_2D_NV"
		end

	frozen GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV"
		end

	frozen GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV"
		end

	frozen GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV"
		end

	frozen GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV"
		end

	frozen GL_HILO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HILO_NV"
		end

	frozen GL_DSDT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DSDT_NV"
		end

	frozen GL_DSDT_MAG_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DSDT_MAG_NV"
		end

	frozen GL_DSDT_MAG_VIB_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DSDT_MAG_VIB_NV"
		end

	frozen GL_HILO16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HILO16_NV"
		end

	frozen GL_SIGNED_HILO_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_HILO_NV"
		end

	frozen GL_SIGNED_HILO16_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_HILO16_NV"
		end

	frozen GL_SIGNED_RGBA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_RGBA_NV"
		end

	frozen GL_SIGNED_RGBA8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_RGBA8_NV"
		end

	frozen GL_SIGNED_RGB_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_RGB_NV"
		end

	frozen GL_SIGNED_RGB8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_RGB8_NV"
		end

	frozen GL_SIGNED_LUMINANCE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_LUMINANCE_NV"
		end

	frozen GL_SIGNED_LUMINANCE8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_LUMINANCE8_NV"
		end

	frozen GL_SIGNED_LUMINANCE_ALPHA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_LUMINANCE_ALPHA_NV"
		end

	frozen GL_SIGNED_LUMINANCE8_ALPHA8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_LUMINANCE8_ALPHA8_NV"
		end

	frozen GL_SIGNED_ALPHA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_ALPHA_NV"
		end

	frozen GL_SIGNED_ALPHA8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_ALPHA8_NV"
		end

	frozen GL_SIGNED_INTENSITY_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_INTENSITY_NV"
		end

	frozen GL_SIGNED_INTENSITY8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_INTENSITY8_NV"
		end

	frozen GL_DSDT8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DSDT8_NV"
		end

	frozen GL_DSDT8_MAG8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DSDT8_MAG8_NV"
		end

	frozen GL_DSDT8_MAG8_INTENSITY8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DSDT8_MAG8_INTENSITY8_NV"
		end

	frozen GL_SIGNED_RGB_UNSIGNED_ALPHA_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_RGB_UNSIGNED_ALPHA_NV"
		end

	frozen GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV"
		end

	frozen GL_HI_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HI_SCALE_NV"
		end

	frozen GL_LO_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LO_SCALE_NV"
		end

	frozen GL_DS_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DS_SCALE_NV"
		end

	frozen GL_DT_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DT_SCALE_NV"
		end

	frozen GL_MAGNITUDE_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAGNITUDE_SCALE_NV"
		end

	frozen GL_VIBRANCE_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIBRANCE_SCALE_NV"
		end

	frozen GL_HI_BIAS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HI_BIAS_NV"
		end

	frozen GL_LO_BIAS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LO_BIAS_NV"
		end

	frozen GL_DS_BIAS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DS_BIAS_NV"
		end

	frozen GL_DT_BIAS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DT_BIAS_NV"
		end

	frozen GL_MAGNITUDE_BIAS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAGNITUDE_BIAS_NV"
		end

	frozen GL_VIBRANCE_BIAS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIBRANCE_BIAS_NV"
		end

	frozen GL_TEXTURE_BORDER_VALUES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BORDER_VALUES_NV"
		end

	frozen GL_TEXTURE_HI_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_HI_SIZE_NV"
		end

	frozen GL_TEXTURE_LO_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_LO_SIZE_NV"
		end

	frozen GL_TEXTURE_DS_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_DS_SIZE_NV"
		end

	frozen GL_TEXTURE_DT_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_DT_SIZE_NV"
		end

	frozen GL_TEXTURE_MAG_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAG_SIZE_NV"
		end

	frozen GL_NV_texture_shader2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texture_shader2"
		end

	frozen GL_DOT_PRODUCT_TEXTURE_3D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_TEXTURE_3D_NV"
		end

	frozen GL_NV_texture_shader3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_texture_shader3"
		end

	frozen GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV"
		end

	frozen GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV"
		end

	frozen GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV"
		end

	frozen GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV"
		end

	frozen GL_OFFSET_HILO_TEXTURE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_HILO_TEXTURE_2D_NV"
		end

	frozen GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV"
		end

	frozen GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV"
		end

	frozen GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV"
		end

	frozen GL_DEPENDENT_HILO_TEXTURE_2D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPENDENT_HILO_TEXTURE_2D_NV"
		end

	frozen GL_DEPENDENT_RGB_TEXTURE_3D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPENDENT_RGB_TEXTURE_3D_NV"
		end

	frozen GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV"
		end

	frozen GL_DOT_PRODUCT_PASS_THROUGH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_PASS_THROUGH_NV"
		end

	frozen GL_DOT_PRODUCT_TEXTURE_1D_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_TEXTURE_1D_NV"
		end

	frozen GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV"
		end

	frozen GL_HILO8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_HILO8_NV"
		end

	frozen GL_SIGNED_HILO8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SIGNED_HILO8_NV"
		end

	frozen GL_FORCE_BLUE_TO_ONE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FORCE_BLUE_TO_ONE_NV"
		end

	frozen GL_NV_transform_feedback : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_transform_feedback"
		end

	frozen GL_BACK_PRIMARY_COLOR_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BACK_PRIMARY_COLOR_NV"
		end

	frozen GL_BACK_SECONDARY_COLOR_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BACK_SECONDARY_COLOR_NV"
		end

	frozen GL_TEXTURE_COORD_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_NV"
		end

	frozen GL_CLIP_DISTANCE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_DISTANCE_NV"
		end

	frozen GL_VERTEX_ID_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ID_NV"
		end

	frozen GL_PRIMITIVE_ID_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMITIVE_ID_NV"
		end

	frozen GL_GENERIC_ATTRIB_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GENERIC_ATTRIB_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_ATTRIBS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_ATTRIBS_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV"
		end

	frozen GL_ACTIVE_VARYINGS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_VARYINGS_NV"
		end

	frozen GL_ACTIVE_VARYING_MAX_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ACTIVE_VARYING_MAX_LENGTH_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_VARYINGS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_VARYINGS_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_START_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_START_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_RECORD_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_RECORD_NV"
		end

	frozen GL_PRIMITIVES_GENERATED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PRIMITIVES_GENERATED_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV"
		end

	frozen GL_RASTERIZER_DISCARD_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RASTERIZER_DISCARD_NV"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV"
		end

	frozen GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV"
		end

	frozen GL_INTERLEAVED_ATTRIBS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERLEAVED_ATTRIBS_NV"
		end

	frozen GL_SEPARATE_ATTRIBS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SEPARATE_ATTRIBS_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV"
		end

	frozen GL_NV_transform_feedback2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_transform_feedback2"
		end

	frozen GL_TRANSFORM_FEEDBACK_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV"
		end

	frozen GL_TRANSFORM_FEEDBACK_BINDING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSFORM_FEEDBACK_BINDING_NV"
		end

	frozen GL_NV_vdpau_interop : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vdpau_interop"
		end

	frozen GL_SURFACE_STATE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SURFACE_STATE_NV"
		end

	frozen GL_SURFACE_REGISTERED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SURFACE_REGISTERED_NV"
		end

	frozen GL_SURFACE_MAPPED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SURFACE_MAPPED_NV"
		end

	frozen GL_WRITE_DISCARD_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WRITE_DISCARD_NV"
		end

	frozen GL_NV_vertex_array_range : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_array_range"
		end

	frozen GL_VERTEX_ARRAY_RANGE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_RANGE_NV"
		end

	frozen GL_VERTEX_ARRAY_RANGE_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_RANGE_LENGTH_NV"
		end

	frozen GL_VERTEX_ARRAY_RANGE_VALID_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_RANGE_VALID_NV"
		end

	frozen GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV"
		end

	frozen GL_VERTEX_ARRAY_RANGE_POINTER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_RANGE_POINTER_NV"
		end

	frozen GL_NV_vertex_array_range2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_array_range2"
		end

	frozen GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV"
		end

	frozen GL_NV_vertex_attrib_integer_64bit : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_attrib_integer_64bit"
		end

	frozen GL_NV_vertex_buffer_unified_memory : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_buffer_unified_memory"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV"
		end

	frozen GL_ELEMENT_ARRAY_UNIFIED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_UNIFIED_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV"
		end

	frozen GL_VERTEX_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_ADDRESS_NV"
		end

	frozen GL_NORMAL_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_ADDRESS_NV"
		end

	frozen GL_COLOR_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_ADDRESS_NV"
		end

	frozen GL_INDEX_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_ADDRESS_NV"
		end

	frozen GL_TEXTURE_COORD_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_ADDRESS_NV"
		end

	frozen GL_EDGE_FLAG_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_ADDRESS_NV"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV"
		end

	frozen GL_FOG_COORD_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORD_ARRAY_ADDRESS_NV"
		end

	frozen GL_ELEMENT_ARRAY_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_ADDRESS_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV"
		end

	frozen GL_VERTEX_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ARRAY_LENGTH_NV"
		end

	frozen GL_NORMAL_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_ARRAY_LENGTH_NV"
		end

	frozen GL_COLOR_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_ARRAY_LENGTH_NV"
		end

	frozen GL_INDEX_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_ARRAY_LENGTH_NV"
		end

	frozen GL_TEXTURE_COORD_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COORD_ARRAY_LENGTH_NV"
		end

	frozen GL_EDGE_FLAG_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGE_FLAG_ARRAY_LENGTH_NV"
		end

	frozen GL_SECONDARY_COLOR_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SECONDARY_COLOR_ARRAY_LENGTH_NV"
		end

	frozen GL_FOG_COORD_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_COORD_ARRAY_LENGTH_NV"
		end

	frozen GL_ELEMENT_ARRAY_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ELEMENT_ARRAY_LENGTH_NV"
		end

	frozen GL_DRAW_INDIRECT_UNIFIED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_INDIRECT_UNIFIED_NV"
		end

	frozen GL_DRAW_INDIRECT_ADDRESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_INDIRECT_ADDRESS_NV"
		end

	frozen GL_DRAW_INDIRECT_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRAW_INDIRECT_LENGTH_NV"
		end

	frozen GL_NV_vertex_program : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_program"
		end

	frozen GL_VERTEX_PROGRAM_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_NV"
		end

	frozen GL_VERTEX_STATE_PROGRAM_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_STATE_PROGRAM_NV"
		end

	frozen GL_ATTRIB_ARRAY_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATTRIB_ARRAY_SIZE_NV"
		end

	frozen GL_ATTRIB_ARRAY_STRIDE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATTRIB_ARRAY_STRIDE_NV"
		end

	frozen GL_ATTRIB_ARRAY_TYPE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATTRIB_ARRAY_TYPE_NV"
		end

	frozen GL_CURRENT_ATTRIB_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_ATTRIB_NV"
		end

	frozen GL_PROGRAM_LENGTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_LENGTH_NV"
		end

	frozen GL_PROGRAM_STRING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_STRING_NV"
		end

	frozen GL_MODELVIEW_PROJECTION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MODELVIEW_PROJECTION_NV"
		end

	frozen GL_IDENTITY_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IDENTITY_NV"
		end

	frozen GL_INVERSE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVERSE_NV"
		end

	frozen GL_TRANSPOSE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRANSPOSE_NV"
		end

	frozen GL_INVERSE_TRANSPOSE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVERSE_TRANSPOSE_NV"
		end

	frozen GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV"
		end

	frozen GL_MAX_TRACK_MATRICES_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_TRACK_MATRICES_NV"
		end

	frozen GL_MATRIX0_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX0_NV"
		end

	frozen GL_MATRIX1_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX1_NV"
		end

	frozen GL_MATRIX2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX2_NV"
		end

	frozen GL_MATRIX3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX3_NV"
		end

	frozen GL_MATRIX4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX4_NV"
		end

	frozen GL_MATRIX5_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX5_NV"
		end

	frozen GL_MATRIX6_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX6_NV"
		end

	frozen GL_MATRIX7_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATRIX7_NV"
		end

	frozen GL_CURRENT_MATRIX_STACK_DEPTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_MATRIX_STACK_DEPTH_NV"
		end

	frozen GL_CURRENT_MATRIX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CURRENT_MATRIX_NV"
		end

	frozen GL_VERTEX_PROGRAM_POINT_SIZE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_POINT_SIZE_NV"
		end

	frozen GL_VERTEX_PROGRAM_TWO_SIDE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_TWO_SIDE_NV"
		end

	frozen GL_PROGRAM_PARAMETER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_PARAMETER_NV"
		end

	frozen GL_ATTRIB_ARRAY_POINTER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ATTRIB_ARRAY_POINTER_NV"
		end

	frozen GL_PROGRAM_TARGET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_TARGET_NV"
		end

	frozen GL_PROGRAM_RESIDENT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_RESIDENT_NV"
		end

	frozen GL_TRACK_MATRIX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRACK_MATRIX_NV"
		end

	frozen GL_TRACK_MATRIX_TRANSFORM_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRACK_MATRIX_TRANSFORM_NV"
		end

	frozen GL_VERTEX_PROGRAM_BINDING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PROGRAM_BINDING_NV"
		end

	frozen GL_PROGRAM_ERROR_POSITION_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROGRAM_ERROR_POSITION_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY0_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY0_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY1_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY1_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY2_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY2_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY3_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY3_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY4_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY5_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY5_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY6_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY6_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY7_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY7_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY8_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY8_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY9_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY9_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY10_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY10_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY11_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY11_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY12_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY12_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY13_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY13_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY14_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY14_NV"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY15_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY15_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB0_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB0_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB1_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB1_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB2_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB2_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB3_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB3_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB4_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB4_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB5_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB5_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB6_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB6_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB7_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB7_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB8_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB8_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB9_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB9_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB10_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB10_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB11_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB11_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB12_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB12_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB13_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB13_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB14_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB14_4_NV"
		end

	frozen GL_MAP1_VERTEX_ATTRIB15_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP1_VERTEX_ATTRIB15_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB0_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB0_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB1_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB1_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB2_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB2_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB3_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB3_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB4_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB4_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB5_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB5_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB6_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB6_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB7_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB7_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB8_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB8_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB9_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB9_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB10_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB10_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB11_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB11_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB12_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB12_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB13_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB13_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB14_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB14_4_NV"
		end

	frozen GL_MAP2_VERTEX_ATTRIB15_4_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAP2_VERTEX_ATTRIB15_4_NV"
		end

	frozen GL_NV_vertex_program1_1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_program1_1"
		end

	frozen GL_NV_vertex_program2 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_program2"
		end

	frozen GL_NV_vertex_program2_option : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_program2_option"
		end

	frozen GL_NV_vertex_program3 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_program3"
		end

	frozen MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB"
		end

	frozen GL_NV_vertex_program4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_vertex_program4"
		end

	frozen GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV"
		end

	frozen GL_NV_video_capture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NV_video_capture"
		end

	frozen GL_VIDEO_BUFFER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_BUFFER_NV"
		end

	frozen GL_VIDEO_BUFFER_BINDING_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_BUFFER_BINDING_NV"
		end

	frozen GL_FIELD_UPPER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FIELD_UPPER_NV"
		end

	frozen GL_FIELD_LOWER_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FIELD_LOWER_NV"
		end

	frozen GL_NUM_VIDEO_CAPTURE_STREAMS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NUM_VIDEO_CAPTURE_STREAMS_NV"
		end

	frozen GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV"
		end

	frozen GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV"
		end

	frozen GL_LAST_VIDEO_CAPTURE_STATUS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LAST_VIDEO_CAPTURE_STATUS_NV"
		end

	frozen GL_VIDEO_BUFFER_PITCH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_BUFFER_PITCH_NV"
		end

	frozen GL_VIDEO_COLOR_CONVERSION_MATRIX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_COLOR_CONVERSION_MATRIX_NV"
		end

	frozen GL_VIDEO_COLOR_CONVERSION_MAX_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_COLOR_CONVERSION_MAX_NV"
		end

	frozen GL_VIDEO_COLOR_CONVERSION_MIN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_COLOR_CONVERSION_MIN_NV"
		end

	frozen GL_VIDEO_COLOR_CONVERSION_OFFSET_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_COLOR_CONVERSION_OFFSET_NV"
		end

	frozen GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV"
		end

	frozen GL_PARTIAL_SUCCESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PARTIAL_SUCCESS_NV"
		end

	frozen GL_SUCCESS_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUCCESS_NV"
		end

	frozen GL_FAILURE_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FAILURE_NV"
		end

	frozen GL_YCBYCR8_422_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_YCBYCR8_422_NV"
		end

	frozen GL_YCBAYCR8A_4224_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_YCBAYCR8A_4224_NV"
		end

	frozen GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV"
		end

	frozen GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV"
		end

	frozen GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV"
		end

	frozen GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV"
		end

	frozen GL_Z4Y12Z4CB12Z4CR12_444_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_Z4Y12Z4CB12Z4CR12_444_NV"
		end

	frozen GL_VIDEO_CAPTURE_FRAME_WIDTH_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_CAPTURE_FRAME_WIDTH_NV"
		end

	frozen GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV"
		end

	frozen GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV"
		end

	frozen GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV"
		end

	frozen GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV"
		end

	frozen GL_OES_byte_coordinates : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OES_byte_coordinates"
		end

	frozen GL_OES_compressed_paletted_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OES_compressed_paletted_texture"
		end

	frozen GL_PALETTE4_RGB8_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE4_RGB8_OES"
		end

	frozen GL_PALETTE4_RGBA8_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE4_RGBA8_OES"
		end

	frozen GL_PALETTE4_R5_G6_B5_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE4_R5_G6_B5_OES"
		end

	frozen GL_PALETTE4_RGBA4_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE4_RGBA4_OES"
		end

	frozen GL_PALETTE4_RGB5_A1_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE4_RGB5_A1_OES"
		end

	frozen GL_PALETTE8_RGB8_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE8_RGB8_OES"
		end

	frozen GL_PALETTE8_RGBA8_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE8_RGBA8_OES"
		end

	frozen GL_PALETTE8_R5_G6_B5_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE8_R5_G6_B5_OES"
		end

	frozen GL_PALETTE8_RGBA4_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE8_RGBA4_OES"
		end

	frozen GL_PALETTE8_RGB5_A1_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PALETTE8_RGB5_A1_OES"
		end

	frozen GL_OES_read_format : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OES_read_format"
		end

	frozen GL_IMPLEMENTATION_COLOR_READ_TYPE_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMPLEMENTATION_COLOR_READ_TYPE_OES"
		end

	frozen GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES"
		end

	frozen GL_OES_single_precision : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OES_single_precision"
		end

	frozen GL_OML_interlace : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OML_interlace"
		end

	frozen GL_INTERLACE_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERLACE_OML"
		end

	frozen GL_INTERLACE_READ_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERLACE_READ_OML"
		end

	frozen GL_OML_resample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OML_resample"
		end

	frozen GL_PACK_RESAMPLE_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_RESAMPLE_OML"
		end

	frozen GL_UNPACK_RESAMPLE_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_RESAMPLE_OML"
		end

	frozen GL_RESAMPLE_REPLICATE_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESAMPLE_REPLICATE_OML"
		end

	frozen GL_RESAMPLE_ZERO_FILL_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESAMPLE_ZERO_FILL_OML"
		end

	frozen GL_RESAMPLE_AVERAGE_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESAMPLE_AVERAGE_OML"
		end

	frozen GL_RESAMPLE_DECIMATE_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESAMPLE_DECIMATE_OML"
		end

	frozen GL_OML_subsample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OML_subsample"
		end

	frozen GL_FORMAT_SUBSAMPLE_24_24_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FORMAT_SUBSAMPLE_24_24_OML"
		end

	frozen GL_FORMAT_SUBSAMPLE_244_244_OML : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FORMAT_SUBSAMPLE_244_244_OML"
		end

	frozen GL_PGI_misc_hints : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PGI_misc_hints"
		end

	frozen GL_PREFER_DOUBLEBUFFER_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PREFER_DOUBLEBUFFER_HINT_PGI"
		end

	frozen GL_CONSERVE_MEMORY_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONSERVE_MEMORY_HINT_PGI"
		end

	frozen GL_RECLAIM_MEMORY_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RECLAIM_MEMORY_HINT_PGI"
		end

	frozen GL_NATIVE_GRAPHICS_HANDLE_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NATIVE_GRAPHICS_HANDLE_PGI"
		end

	frozen GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI"
		end

	frozen GL_NATIVE_GRAPHICS_END_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NATIVE_GRAPHICS_END_HINT_PGI"
		end

	frozen GL_ALWAYS_FAST_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALWAYS_FAST_HINT_PGI"
		end

	frozen GL_ALWAYS_SOFT_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALWAYS_SOFT_HINT_PGI"
		end

	frozen GL_ALLOW_DRAW_OBJ_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALLOW_DRAW_OBJ_HINT_PGI"
		end

	frozen GL_ALLOW_DRAW_WIN_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALLOW_DRAW_WIN_HINT_PGI"
		end

	frozen GL_ALLOW_DRAW_FRG_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALLOW_DRAW_FRG_HINT_PGI"
		end

	frozen GL_ALLOW_DRAW_MEM_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALLOW_DRAW_MEM_HINT_PGI"
		end

	frozen GL_STRICT_DEPTHFUNC_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STRICT_DEPTHFUNC_HINT_PGI"
		end

	frozen GL_STRICT_LIGHTING_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STRICT_LIGHTING_HINT_PGI"
		end

	frozen GL_STRICT_SCISSOR_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STRICT_SCISSOR_HINT_PGI"
		end

	frozen GL_FULL_STIPPLE_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FULL_STIPPLE_HINT_PGI"
		end

	frozen GL_CLIP_NEAR_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_NEAR_HINT_PGI"
		end

	frozen GL_CLIP_FAR_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLIP_FAR_HINT_PGI"
		end

	frozen GL_WIDE_LINE_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WIDE_LINE_HINT_PGI"
		end

	frozen GL_BACK_NORMALS_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_BACK_NORMALS_HINT_PGI"
		end

	frozen GL_PGI_vertex_hints : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PGI_vertex_hints"
		end

	frozen GL_VERTEX23_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX23_BIT_PGI"
		end

	frozen GL_VERTEX4_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX4_BIT_PGI"
		end

	frozen GL_COLOR3_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR3_BIT_PGI"
		end

	frozen GL_COLOR4_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR4_BIT_PGI"
		end

	frozen GL_EDGEFLAG_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EDGEFLAG_BIT_PGI"
		end

	frozen GL_INDEX_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INDEX_BIT_PGI"
		end

	frozen GL_MAT_AMBIENT_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAT_AMBIENT_BIT_PGI"
		end

	frozen GL_VERTEX_DATA_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_DATA_HINT_PGI"
		end

	frozen GL_VERTEX_CONSISTENT_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_CONSISTENT_HINT_PGI"
		end

	frozen GL_MATERIAL_SIDE_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MATERIAL_SIDE_HINT_PGI"
		end

	frozen GL_MAX_VERTEX_HINT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_VERTEX_HINT_PGI"
		end

	frozen GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI"
		end

	frozen GL_MAT_DIFFUSE_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAT_DIFFUSE_BIT_PGI"
		end

	frozen GL_MAT_EMISSION_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAT_EMISSION_BIT_PGI"
		end

	frozen GL_MAT_COLOR_INDEXES_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAT_COLOR_INDEXES_BIT_PGI"
		end

	frozen GL_MAT_SHININESS_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAT_SHININESS_BIT_PGI"
		end

	frozen GL_MAT_SPECULAR_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAT_SPECULAR_BIT_PGI"
		end

	frozen GL_NORMAL_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_NORMAL_BIT_PGI"
		end

	frozen GL_TEXCOORD1_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXCOORD1_BIT_PGI"
		end

	frozen GL_TEXCOORD2_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXCOORD2_BIT_PGI"
		end

	frozen GL_TEXCOORD3_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXCOORD3_BIT_PGI"
		end

	frozen GL_TEXCOORD4_BIT_PGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXCOORD4_BIT_PGI"
		end

	frozen GL_REGAL_ES1_0_compatibility : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REGAL_ES1_0_compatibility"
		end

	frozen GL_REGAL_ES1_1_compatibility : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REGAL_ES1_1_compatibility"
		end

	frozen GL_REGAL_enable : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REGAL_enable"
		end

	frozen GL_ERROR_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ERROR_REGAL"
		end

	frozen GL_DEBUG_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEBUG_REGAL"
		end

	frozen GL_LOG_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_REGAL"
		end

	frozen GL_EMULATION_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EMULATION_REGAL"
		end

	frozen GL_DRIVER_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DRIVER_REGAL"
		end

	frozen GL_MISSING_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MISSING_REGAL"
		end

	frozen GL_TRACE_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRACE_REGAL"
		end

	frozen GL_CACHE_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CACHE_REGAL"
		end

	frozen GL_CODE_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CODE_REGAL"
		end

	frozen GL_STATISTICS_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_STATISTICS_REGAL"
		end

	frozen GL_REGAL_error_string : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REGAL_error_string"
		end

	frozen GL_REGAL_extension_query : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REGAL_extension_query"
		end

	frozen GL_REGAL_log : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REGAL_log"
		end

	frozen GL_LOG_ERROR_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_ERROR_REGAL"
		end

	frozen GL_LOG_WARNING_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_WARNING_REGAL"
		end

	frozen GL_LOG_INFO_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_INFO_REGAL"
		end

	frozen GL_LOG_APP_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_APP_REGAL"
		end

	frozen GL_LOG_DRIVER_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_DRIVER_REGAL"
		end

	frozen GL_LOG_INTERNAL_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_INTERNAL_REGAL"
		end

	frozen GL_LOG_DEBUG_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_DEBUG_REGAL"
		end

	frozen GL_LOG_STATUS_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_STATUS_REGAL"
		end

	frozen GL_LOG_HTTP_REGAL : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LOG_HTTP_REGAL"
		end

	frozen GL_REND_screen_coordinates : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REND_screen_coordinates"
		end

	frozen GL_SCREEN_COORDINATES_REND : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SCREEN_COORDINATES_REND"
		end

	frozen GL_INVERTED_SCREEN_W_REND : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INVERTED_SCREEN_W_REND"
		end

	frozen GL_S3_s3tc : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_S3_s3tc"
		end

	frozen GL_RGB_S3TC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_S3TC"
		end

	frozen GL_RGB4_S3TC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB4_S3TC"
		end

	frozen GL_RGBA_S3TC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_S3TC"
		end

	frozen GL_RGBA4_S3TC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA4_S3TC"
		end

	frozen GL_RGBA_DXT5_S3TC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_DXT5_S3TC"
		end

	frozen GL_RGBA4_DXT5_S3TC : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA4_DXT5_S3TC"
		end

	frozen GL_SGIS_color_range : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_color_range"
		end

	frozen GL_EXTENDED_RANGE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EXTENDED_RANGE_SGIS"
		end

	frozen GL_MIN_RED_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_RED_SGIS"
		end

	frozen GL_MAX_RED_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_RED_SGIS"
		end

	frozen GL_MIN_GREEN_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_GREEN_SGIS"
		end

	frozen GL_MAX_GREEN_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_GREEN_SGIS"
		end

	frozen GL_MIN_BLUE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_BLUE_SGIS"
		end

	frozen GL_MAX_BLUE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_BLUE_SGIS"
		end

	frozen GL_MIN_ALPHA_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_ALPHA_SGIS"
		end

	frozen GL_MAX_ALPHA_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ALPHA_SGIS"
		end

	frozen GL_SGIS_detail_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_detail_texture"
		end

	frozen GL_SGIS_fog_function : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_fog_function"
		end

	frozen GL_SGIS_generate_mipmap : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_generate_mipmap"
		end

	frozen GL_GENERATE_MIPMAP_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GENERATE_MIPMAP_SGIS"
		end

	frozen GL_GENERATE_MIPMAP_HINT_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GENERATE_MIPMAP_HINT_SGIS"
		end

	frozen GL_SGIS_multisample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_multisample"
		end

	frozen GL_MULTISAMPLE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MULTISAMPLE_SGIS"
		end

	frozen GL_SAMPLE_ALPHA_TO_MASK_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_ALPHA_TO_MASK_SGIS"
		end

	frozen GL_SAMPLE_ALPHA_TO_ONE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_ALPHA_TO_ONE_SGIS"
		end

	frozen GL_SAMPLE_MASK_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK_SGIS"
		end

	frozen GL_1PASS_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_1PASS_SGIS"
		end

	frozen GL_2PASS_0_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_2PASS_0_SGIS"
		end

	frozen GL_2PASS_1_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_2PASS_1_SGIS"
		end

	frozen GL_4PASS_0_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4PASS_0_SGIS"
		end

	frozen GL_4PASS_1_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4PASS_1_SGIS"
		end

	frozen GL_4PASS_2_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4PASS_2_SGIS"
		end

	frozen GL_4PASS_3_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_4PASS_3_SGIS"
		end

	frozen GL_SAMPLE_BUFFERS_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_BUFFERS_SGIS"
		end

	frozen GL_SAMPLES_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLES_SGIS"
		end

	frozen GL_SAMPLE_MASK_VALUE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK_VALUE_SGIS"
		end

	frozen GL_SAMPLE_MASK_INVERT_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_MASK_INVERT_SGIS"
		end

	frozen GL_SAMPLE_PATTERN_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SAMPLE_PATTERN_SGIS"
		end

	frozen GL_SGIS_pixel_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_pixel_texture"
		end

	frozen GL_SGIS_point_line_texgen : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_point_line_texgen"
		end

	frozen GL_EYE_DISTANCE_TO_POINT_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EYE_DISTANCE_TO_POINT_SGIS"
		end

	frozen GL_OBJECT_DISTANCE_TO_POINT_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_DISTANCE_TO_POINT_SGIS"
		end

	frozen GL_EYE_DISTANCE_TO_LINE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EYE_DISTANCE_TO_LINE_SGIS"
		end

	frozen GL_OBJECT_DISTANCE_TO_LINE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_DISTANCE_TO_LINE_SGIS"
		end

	frozen GL_EYE_POINT_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EYE_POINT_SGIS"
		end

	frozen GL_OBJECT_POINT_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_POINT_SGIS"
		end

	frozen GL_EYE_LINE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_EYE_LINE_SGIS"
		end

	frozen GL_OBJECT_LINE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_OBJECT_LINE_SGIS"
		end

	frozen GL_SGIS_sharpen_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_sharpen_texture"
		end

	frozen GL_SGIS_texture4D : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_texture4D"
		end

	frozen GL_SGIS_texture_border_clamp : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_texture_border_clamp"
		end

	frozen GL_CLAMP_TO_BORDER_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_TO_BORDER_SGIS"
		end

	frozen GL_SGIS_texture_edge_clamp : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_texture_edge_clamp"
		end

	frozen GL_CLAMP_TO_EDGE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CLAMP_TO_EDGE_SGIS"
		end

	frozen GL_SGIS_texture_filter4 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_texture_filter4"
		end

	frozen GL_SGIS_texture_lod : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_texture_lod"
		end

	frozen GL_TEXTURE_MIN_LOD_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MIN_LOD_SGIS"
		end

	frozen GL_TEXTURE_MAX_LOD_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAX_LOD_SGIS"
		end

	frozen GL_TEXTURE_BASE_LEVEL_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_BASE_LEVEL_SGIS"
		end

	frozen GL_TEXTURE_MAX_LEVEL_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAX_LEVEL_SGIS"
		end

	frozen GL_SGIS_texture_select : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIS_texture_select"
		end

	frozen GL_SGIX_async : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_async"
		end

	frozen GL_ASYNC_MARKER_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ASYNC_MARKER_SGIX"
		end

	frozen GL_SGIX_async_histogram : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_async_histogram"
		end

	frozen GL_ASYNC_HISTOGRAM_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ASYNC_HISTOGRAM_SGIX"
		end

	frozen GL_MAX_ASYNC_HISTOGRAM_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ASYNC_HISTOGRAM_SGIX"
		end

	frozen GL_SGIX_async_pixel : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_async_pixel"
		end

	frozen GL_ASYNC_TEX_IMAGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ASYNC_TEX_IMAGE_SGIX"
		end

	frozen GL_ASYNC_DRAW_PIXELS_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ASYNC_DRAW_PIXELS_SGIX"
		end

	frozen GL_ASYNC_READ_PIXELS_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ASYNC_READ_PIXELS_SGIX"
		end

	frozen GL_MAX_ASYNC_TEX_IMAGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ASYNC_TEX_IMAGE_SGIX"
		end

	frozen GL_MAX_ASYNC_DRAW_PIXELS_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ASYNC_DRAW_PIXELS_SGIX"
		end

	frozen GL_MAX_ASYNC_READ_PIXELS_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_ASYNC_READ_PIXELS_SGIX"
		end

	frozen GL_SGIX_blend_alpha_minmax : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_blend_alpha_minmax"
		end

	frozen GL_ALPHA_MIN_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_MIN_SGIX"
		end

	frozen GL_ALPHA_MAX_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_MAX_SGIX"
		end

	frozen GL_SGIX_clipmap : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_clipmap"
		end

	frozen GL_SGIX_convolution_accuracy : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_convolution_accuracy"
		end

	frozen GL_CONVOLUTION_HINT_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_CONVOLUTION_HINT_SGIX"
		end

	frozen GL_SGIX_depth_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_depth_texture"
		end

	frozen GL_DEPTH_COMPONENT16_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT16_SGIX"
		end

	frozen GL_DEPTH_COMPONENT24_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT24_SGIX"
		end

	frozen GL_DEPTH_COMPONENT32_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_DEPTH_COMPONENT32_SGIX"
		end

	frozen GL_SGIX_flush_raster : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_flush_raster"
		end

	frozen GL_SGIX_fog_offset : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_fog_offset"
		end

	frozen GL_FOG_OFFSET_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_OFFSET_SGIX"
		end

	frozen GL_FOG_OFFSET_VALUE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_OFFSET_VALUE_SGIX"
		end

	frozen GL_SGIX_fog_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_fog_texture"
		end

	frozen GL_TEXTURE_FOG_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_FOG_SGIX"
		end

	frozen GL_FOG_PATCHY_FACTOR_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_PATCHY_FACTOR_SGIX"
		end

	frozen GL_FRAGMENT_FOG_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FRAGMENT_FOG_SGIX"
		end

	frozen GL_SGIX_fragment_specular_lighting : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_fragment_specular_lighting"
		end

	frozen GL_SGIX_framezoom : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_framezoom"
		end

	frozen GL_SGIX_interlace : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_interlace"
		end

	frozen GL_INTERLACE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTERLACE_SGIX"
		end

	frozen GL_SGIX_ir_instrument1 : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_ir_instrument1"
		end

	frozen GL_SGIX_list_priority : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_list_priority"
		end

	frozen GL_SGIX_pixel_texture : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_pixel_texture"
		end

	frozen GL_SGIX_pixel_texture_bits : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_pixel_texture_bits"
		end

	frozen GL_SGIX_reference_plane : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_reference_plane"
		end

	frozen GL_SGIX_resample : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_resample"
		end

	frozen GL_PACK_RESAMPLE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PACK_RESAMPLE_SGIX"
		end

	frozen GL_UNPACK_RESAMPLE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_RESAMPLE_SGIX"
		end

	frozen GL_RESAMPLE_DECIMATE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESAMPLE_DECIMATE_SGIX"
		end

	frozen GL_RESAMPLE_REPLICATE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESAMPLE_REPLICATE_SGIX"
		end

	frozen GL_RESAMPLE_ZERO_FILL_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESAMPLE_ZERO_FILL_SGIX"
		end

	frozen GL_SGIX_shadow : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_shadow"
		end

	frozen GL_TEXTURE_COMPARE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPARE_SGIX"
		end

	frozen GL_TEXTURE_COMPARE_OPERATOR_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COMPARE_OPERATOR_SGIX"
		end

	frozen GL_TEXTURE_LEQUAL_R_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_LEQUAL_R_SGIX"
		end

	frozen GL_TEXTURE_GEQUAL_R_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_GEQUAL_R_SGIX"
		end

	frozen GL_SGIX_shadow_ambient : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_shadow_ambient"
		end

	frozen GL_SHADOW_AMBIENT_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SHADOW_AMBIENT_SGIX"
		end

	frozen GL_SGIX_sprite : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_sprite"
		end

	frozen GL_SGIX_tag_sample_buffer : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_tag_sample_buffer"
		end

	frozen GL_SGIX_texture_add_env : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_texture_add_env"
		end

	frozen GL_SGIX_texture_coordinate_clamp : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_texture_coordinate_clamp"
		end

	frozen GL_TEXTURE_MAX_CLAMP_S_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAX_CLAMP_S_SGIX"
		end

	frozen GL_TEXTURE_MAX_CLAMP_T_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAX_CLAMP_T_SGIX"
		end

	frozen GL_TEXTURE_MAX_CLAMP_R_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MAX_CLAMP_R_SGIX"
		end

	frozen GL_SGIX_texture_lod_bias : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_texture_lod_bias"
		end

	frozen GL_SGIX_texture_multi_buffer : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_texture_multi_buffer"
		end

	frozen GL_TEXTURE_MULTI_BUFFER_HINT_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_MULTI_BUFFER_HINT_SGIX"
		end

	frozen GL_SGIX_texture_range : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_texture_range"
		end

	frozen GL_RGB_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_SIGNED_SGIX"
		end

	frozen GL_RGBA_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_SIGNED_SGIX"
		end

	frozen GL_ALPHA_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_SIGNED_SGIX"
		end

	frozen GL_LUMINANCE_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_SIGNED_SGIX"
		end

	frozen GL_INTENSITY_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY_SIGNED_SGIX"
		end

	frozen GL_LUMINANCE_ALPHA_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA_SIGNED_SGIX"
		end

	frozen GL_RGB16_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16_SIGNED_SGIX"
		end

	frozen GL_RGBA16_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16_SIGNED_SGIX"
		end

	frozen GL_ALPHA16_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA16_SIGNED_SGIX"
		end

	frozen GL_LUMINANCE16_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_SIGNED_SGIX"
		end

	frozen GL_INTENSITY16_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY16_SIGNED_SGIX"
		end

	frozen GL_LUMINANCE16_ALPHA16_SIGNED_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_ALPHA16_SIGNED_SGIX"
		end

	frozen GL_RGB_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB_EXTENDED_RANGE_SGIX"
		end

	frozen GL_RGBA_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA_EXTENDED_RANGE_SGIX"
		end

	frozen GL_ALPHA_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA_EXTENDED_RANGE_SGIX"
		end

	frozen GL_LUMINANCE_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_EXTENDED_RANGE_SGIX"
		end

	frozen GL_INTENSITY_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY_EXTENDED_RANGE_SGIX"
		end

	frozen GL_LUMINANCE_ALPHA_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE_ALPHA_EXTENDED_RANGE_SGIX"
		end

	frozen GL_RGB16_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGB16_EXTENDED_RANGE_SGIX"
		end

	frozen GL_RGBA16_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RGBA16_EXTENDED_RANGE_SGIX"
		end

	frozen GL_ALPHA16_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_ALPHA16_EXTENDED_RANGE_SGIX"
		end

	frozen GL_LUMINANCE16_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_EXTENDED_RANGE_SGIX"
		end

	frozen GL_INTENSITY16_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_INTENSITY16_EXTENDED_RANGE_SGIX"
		end

	frozen GL_LUMINANCE16_ALPHA16_EXTENDED_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_LUMINANCE16_ALPHA16_EXTENDED_RANGE_SGIX"
		end

	frozen GL_MIN_LUMINANCE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_LUMINANCE_SGIS"
		end

	frozen GL_MAX_LUMINANCE_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_LUMINANCE_SGIS"
		end

	frozen GL_MIN_INTENSITY_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MIN_INTENSITY_SGIS"
		end

	frozen GL_MAX_INTENSITY_SGIS : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_INTENSITY_SGIS"
		end

	frozen GL_SGIX_texture_scale_bias : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_texture_scale_bias"
		end

	frozen GL_POST_TEXTURE_FILTER_BIAS_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_TEXTURE_FILTER_BIAS_SGIX"
		end

	frozen GL_POST_TEXTURE_FILTER_SCALE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_TEXTURE_FILTER_SCALE_SGIX"
		end

	frozen GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX"
		end

	frozen GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX"
		end

	frozen GL_SGIX_vertex_preclip : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_vertex_preclip"
		end

	frozen GL_VERTEX_PRECLIP_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PRECLIP_SGIX"
		end

	frozen GL_VERTEX_PRECLIP_HINT_SGIX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_VERTEX_PRECLIP_HINT_SGIX"
		end

	frozen GL_SGIX_vertex_preclip_hint : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_vertex_preclip_hint"
		end

	frozen GL_SGIX_ycrcb : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGIX_ycrcb"
		end

	frozen GL_SGI_color_matrix : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGI_color_matrix"
		end

	frozen GL_COLOR_MATRIX_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_MATRIX_SGI"
		end

	frozen GL_COLOR_MATRIX_STACK_DEPTH_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_MATRIX_STACK_DEPTH_SGI"
		end

	frozen GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI"
		end

	frozen GL_POST_COLOR_MATRIX_RED_SCALE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_RED_SCALE_SGI"
		end

	frozen GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI"
		end

	frozen GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI"
		end

	frozen GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI"
		end

	frozen GL_POST_COLOR_MATRIX_RED_BIAS_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_RED_BIAS_SGI"
		end

	frozen GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI"
		end

	frozen GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI"
		end

	frozen GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI"
		end

	frozen GL_SGI_color_table : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGI_color_table"
		end

	frozen GL_COLOR_TABLE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_SGI"
		end

	frozen GL_POST_CONVOLUTION_COLOR_TABLE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_CONVOLUTION_COLOR_TABLE_SGI"
		end

	frozen GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI"
		end

	frozen GL_PROXY_COLOR_TABLE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_COLOR_TABLE_SGI"
		end

	frozen GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI"
		end

	frozen GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI"
		end

	frozen GL_COLOR_TABLE_SCALE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_SCALE_SGI"
		end

	frozen GL_COLOR_TABLE_BIAS_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_BIAS_SGI"
		end

	frozen GL_COLOR_TABLE_FORMAT_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_FORMAT_SGI"
		end

	frozen GL_COLOR_TABLE_WIDTH_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_WIDTH_SGI"
		end

	frozen GL_COLOR_TABLE_RED_SIZE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_RED_SIZE_SGI"
		end

	frozen GL_COLOR_TABLE_GREEN_SIZE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_GREEN_SIZE_SGI"
		end

	frozen GL_COLOR_TABLE_BLUE_SIZE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_BLUE_SIZE_SGI"
		end

	frozen GL_COLOR_TABLE_ALPHA_SIZE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_ALPHA_SIZE_SGI"
		end

	frozen GL_COLOR_TABLE_LUMINANCE_SIZE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_LUMINANCE_SIZE_SGI"
		end

	frozen GL_COLOR_TABLE_INTENSITY_SIZE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_COLOR_TABLE_INTENSITY_SIZE_SGI"
		end

	frozen GL_SGI_texture_color_table : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SGI_texture_color_table"
		end

	frozen GL_TEXTURE_COLOR_TABLE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_COLOR_TABLE_SGI"
		end

	frozen GL_PROXY_TEXTURE_COLOR_TABLE_SGI : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PROXY_TEXTURE_COLOR_TABLE_SGI"
		end

	frozen GL_SUNX_constant_data : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUNX_constant_data"
		end

	frozen GL_UNPACK_CONSTANT_DATA_SUNX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_UNPACK_CONSTANT_DATA_SUNX"
		end

	frozen GL_TEXTURE_CONSTANT_DATA_SUNX : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TEXTURE_CONSTANT_DATA_SUNX"
		end

	frozen GL_SUN_convolution_border_modes : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUN_convolution_border_modes"
		end

	frozen GL_WRAP_BORDER_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WRAP_BORDER_SUN"
		end

	frozen GL_SUN_global_alpha : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUN_global_alpha"
		end

	frozen GL_GLOBAL_ALPHA_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLOBAL_ALPHA_SUN"
		end

	frozen GL_GLOBAL_ALPHA_FACTOR_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_GLOBAL_ALPHA_FACTOR_SUN"
		end

	frozen GL_SUN_mesh_array : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUN_mesh_array"
		end

	frozen GL_QUAD_MESH_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_QUAD_MESH_SUN"
		end

	frozen GL_TRIANGLE_MESH_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLE_MESH_SUN"
		end

	frozen GL_SUN_read_video_pixels : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUN_read_video_pixels"
		end

	frozen GL_SUN_slice_accum : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUN_slice_accum"
		end

	frozen GL_SLICE_ACCUM_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SLICE_ACCUM_SUN"
		end

	frozen GL_SUN_triangle_list : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUN_triangle_list"
		end

	frozen GL_RESTART_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_RESTART_SUN"
		end

	frozen GL_REPLACE_MIDDLE_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACE_MIDDLE_SUN"
		end

	frozen GL_REPLACE_OLDEST_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACE_OLDEST_SUN"
		end

	frozen GL_TRIANGLE_LIST_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_TRIANGLE_LIST_SUN"
		end

	frozen GL_REPLACEMENT_CODE_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACEMENT_CODE_SUN"
		end

	frozen GL_REPLACEMENT_CODE_ARRAY_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACEMENT_CODE_ARRAY_SUN"
		end

	frozen GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN"
		end

	frozen GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN"
		end

	frozen GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN"
		end

	frozen GL_R1UI_V3F_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R1UI_V3F_SUN"
		end

	frozen GL_R1UI_C4UB_V3F_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R1UI_C4UB_V3F_SUN"
		end

	frozen GL_R1UI_C3F_V3F_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R1UI_C3F_V3F_SUN"
		end

	frozen GL_R1UI_N3F_V3F_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R1UI_N3F_V3F_SUN"
		end

	frozen GL_R1UI_C4F_N3F_V3F_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R1UI_C4F_N3F_V3F_SUN"
		end

	frozen GL_R1UI_T2F_V3F_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R1UI_T2F_V3F_SUN"
		end

	frozen GL_R1UI_T2F_N3F_V3F_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R1UI_T2F_N3F_V3F_SUN"
		end

	frozen GL_R1UI_T2F_C4F_N3F_V3F_SUN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_R1UI_T2F_C4F_N3F_V3F_SUN"
		end

	frozen GL_SUN_vertex : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_SUN_vertex"
		end

	frozen GL_WIN_phong_shading : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WIN_phong_shading"
		end

	frozen GL_PHONG_WIN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PHONG_WIN"
		end

	frozen GL_PHONG_HINT_WIN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_PHONG_HINT_WIN"
		end

	frozen GL_WIN_specular_fog : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WIN_specular_fog"
		end

	frozen GL_FOG_SPECULAR_TEXTURE_WIN : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_FOG_SPECULAR_TEXTURE_WIN"
		end

	frozen GL_WIN_swap_hint : NATURAL
		external
			"C [macro <glew_order.h>] : unsigned int"
		alias
			"GL_WIN_swap_hint"
		end

end

