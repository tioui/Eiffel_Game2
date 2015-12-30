
note
    description: "External for OpenGL utility (glu) library."
    author: "Louis Marchand"
    date: "Mon, 28 Dec 2015 17:01:53 +0000"
    revision: "1.0"

class
    GLU_EXTERNAL

feature -- C external


	frozen GLU_EXT_object_space_tess : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_EXT_object_space_tess"
		end

	frozen GLU_EXT_nurbs_tessellator : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_EXT_nurbs_tessellator"
		end

	frozen GLU_FALSE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_FALSE"
		end

	frozen GLU_TRUE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TRUE"
		end

	frozen GLU_VERSION_1_1 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_VERSION_1_1"
		end

	frozen GLU_VERSION_1_2 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_VERSION_1_2"
		end

	frozen GLU_VERSION_1_3 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_VERSION_1_3"
		end

	frozen GLU_VERSION : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_VERSION"
		end

	frozen GLU_EXTENSIONS : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_EXTENSIONS"
		end

	frozen GLU_INVALID_ENUM : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_INVALID_ENUM"
		end

	frozen GLU_INVALID_VALUE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_INVALID_VALUE"
		end

	frozen GLU_OUT_OF_MEMORY : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_OUT_OF_MEMORY"
		end

	frozen GLU_INCOMPATIBLE_GL_VERSION : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_INCOMPATIBLE_GL_VERSION"
		end

	frozen GLU_INVALID_OPERATION : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_INVALID_OPERATION"
		end

	frozen GLU_OUTLINE_POLYGON : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_OUTLINE_POLYGON"
		end

	frozen GLU_OUTLINE_PATCH : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_OUTLINE_PATCH"
		end

	frozen GLU_NURBS_ERROR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR"
		end

	frozen GLU_ERROR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_ERROR"
		end

	frozen GLU_NURBS_BEGIN : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_BEGIN"
		end

	frozen GLU_NURBS_BEGIN_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_BEGIN_EXT"
		end

	frozen GLU_NURBS_VERTEX : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_VERTEX"
		end

	frozen GLU_NURBS_VERTEX_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_VERTEX_EXT"
		end

	frozen GLU_NURBS_NORMAL : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_NORMAL"
		end

	frozen GLU_NURBS_NORMAL_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_NORMAL_EXT"
		end

	frozen GLU_NURBS_COLOR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_COLOR"
		end

	frozen GLU_NURBS_COLOR_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_COLOR_EXT"
		end

	frozen GLU_NURBS_TEXTURE_COORD : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_TEXTURE_COORD"
		end

	frozen GLU_NURBS_TEX_COORD_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_TEX_COORD_EXT"
		end

	frozen GLU_NURBS_END : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_END"
		end

	frozen GLU_NURBS_END_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_END_EXT"
		end

	frozen GLU_NURBS_BEGIN_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_BEGIN_DATA"
		end

	frozen GLU_NURBS_BEGIN_DATA_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_BEGIN_DATA_EXT"
		end

	frozen GLU_NURBS_VERTEX_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_VERTEX_DATA"
		end

	frozen GLU_NURBS_VERTEX_DATA_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_VERTEX_DATA_EXT"
		end

	frozen GLU_NURBS_NORMAL_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_NORMAL_DATA"
		end

	frozen GLU_NURBS_NORMAL_DATA_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_NORMAL_DATA_EXT"
		end

	frozen GLU_NURBS_COLOR_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_COLOR_DATA"
		end

	frozen GLU_NURBS_COLOR_DATA_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_COLOR_DATA_EXT"
		end

	frozen GLU_NURBS_TEXTURE_COORD_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_TEXTURE_COORD_DATA"
		end

	frozen GLU_NURBS_TEX_COORD_DATA_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_TEX_COORD_DATA_EXT"
		end

	frozen GLU_NURBS_END_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_END_DATA"
		end

	frozen GLU_NURBS_END_DATA_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_END_DATA_EXT"
		end

	frozen GLU_NURBS_ERROR1 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR1"
		end

	frozen GLU_NURBS_ERROR2 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR2"
		end

	frozen GLU_NURBS_ERROR3 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR3"
		end

	frozen GLU_NURBS_ERROR4 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR4"
		end

	frozen GLU_NURBS_ERROR5 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR5"
		end

	frozen GLU_NURBS_ERROR6 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR6"
		end

	frozen GLU_NURBS_ERROR7 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR7"
		end

	frozen GLU_NURBS_ERROR8 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR8"
		end

	frozen GLU_NURBS_ERROR9 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR9"
		end

	frozen GLU_NURBS_ERROR10 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR10"
		end

	frozen GLU_NURBS_ERROR11 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR11"
		end

	frozen GLU_NURBS_ERROR12 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR12"
		end

	frozen GLU_NURBS_ERROR13 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR13"
		end

	frozen GLU_NURBS_ERROR14 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR14"
		end

	frozen GLU_NURBS_ERROR15 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR15"
		end

	frozen GLU_NURBS_ERROR16 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR16"
		end

	frozen GLU_NURBS_ERROR17 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR17"
		end

	frozen GLU_NURBS_ERROR18 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR18"
		end

	frozen GLU_NURBS_ERROR19 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR19"
		end

	frozen GLU_NURBS_ERROR20 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR20"
		end

	frozen GLU_NURBS_ERROR21 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR21"
		end

	frozen GLU_NURBS_ERROR22 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR22"
		end

	frozen GLU_NURBS_ERROR23 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR23"
		end

	frozen GLU_NURBS_ERROR24 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR24"
		end

	frozen GLU_NURBS_ERROR25 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR25"
		end

	frozen GLU_NURBS_ERROR26 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR26"
		end

	frozen GLU_NURBS_ERROR27 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR27"
		end

	frozen GLU_NURBS_ERROR28 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR28"
		end

	frozen GLU_NURBS_ERROR29 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR29"
		end

	frozen GLU_NURBS_ERROR30 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR30"
		end

	frozen GLU_NURBS_ERROR31 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR31"
		end

	frozen GLU_NURBS_ERROR32 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR32"
		end

	frozen GLU_NURBS_ERROR33 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR33"
		end

	frozen GLU_NURBS_ERROR34 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR34"
		end

	frozen GLU_NURBS_ERROR35 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR35"
		end

	frozen GLU_NURBS_ERROR36 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR36"
		end

	frozen GLU_NURBS_ERROR37 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_ERROR37"
		end

	frozen GLU_AUTO_LOAD_MATRIX : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_AUTO_LOAD_MATRIX"
		end

	frozen GLU_CULLING : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_CULLING"
		end

	frozen GLU_SAMPLING_TOLERANCE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_SAMPLING_TOLERANCE"
		end

	frozen GLU_DISPLAY_MODE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_DISPLAY_MODE"
		end

	frozen GLU_PARAMETRIC_TOLERANCE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_PARAMETRIC_TOLERANCE"
		end

	frozen GLU_SAMPLING_METHOD : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_SAMPLING_METHOD"
		end

	frozen GLU_U_STEP : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_U_STEP"
		end

	frozen GLU_V_STEP : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_V_STEP"
		end

	frozen GLU_NURBS_MODE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_MODE"
		end

	frozen GLU_NURBS_MODE_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_MODE_EXT"
		end

	frozen GLU_NURBS_TESSELLATOR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_TESSELLATOR"
		end

	frozen GLU_NURBS_TESSELLATOR_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_TESSELLATOR_EXT"
		end

	frozen GLU_NURBS_RENDERER : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_RENDERER"
		end

	frozen GLU_NURBS_RENDERER_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NURBS_RENDERER_EXT"
		end

	frozen GLU_OBJECT_PARAMETRIC_ERROR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_OBJECT_PARAMETRIC_ERROR"
		end

	frozen GLU_OBJECT_PARAMETRIC_ERROR_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_OBJECT_PARAMETRIC_ERROR_EXT"
		end

	frozen GLU_OBJECT_PATH_LENGTH : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_OBJECT_PATH_LENGTH"
		end

	frozen GLU_OBJECT_PATH_LENGTH_EXT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_OBJECT_PATH_LENGTH_EXT"
		end

	frozen GLU_PATH_LENGTH : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_PATH_LENGTH"
		end

	frozen GLU_PARAMETRIC_ERROR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_PARAMETRIC_ERROR"
		end

	frozen GLU_DOMAIN_DISTANCE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_DOMAIN_DISTANCE"
		end

	frozen GLU_MAP1_TRIM_2 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_MAP1_TRIM_2"
		end

	frozen GLU_MAP1_TRIM_3 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_MAP1_TRIM_3"
		end

	frozen GLU_POINT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_POINT"
		end

	frozen GLU_LINE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_LINE"
		end

	frozen GLU_FILL : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_FILL"
		end

	frozen GLU_SILHOUETTE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_SILHOUETTE"
		end

	frozen GLU_SMOOTH : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_SMOOTH"
		end

	frozen GLU_FLAT : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_FLAT"
		end

	frozen GLU_NONE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_NONE"
		end

	frozen GLU_OUTSIDE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_OUTSIDE"
		end

	frozen GLU_INSIDE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_INSIDE"
		end

	frozen GLU_TESS_BEGIN : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_BEGIN"
		end

	frozen GLU_BEGIN : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_BEGIN"
		end

	frozen GLU_TESS_VERTEX : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_VERTEX"
		end

	frozen GLU_VERTEX : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_VERTEX"
		end

	frozen GLU_TESS_END : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_END"
		end

	frozen GLU_END : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_END"
		end

	frozen GLU_TESS_ERROR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR"
		end

	frozen GLU_TESS_EDGE_FLAG : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_EDGE_FLAG"
		end

	frozen GLU_EDGE_FLAG : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_EDGE_FLAG"
		end

	frozen GLU_TESS_COMBINE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_COMBINE"
		end

	frozen GLU_TESS_BEGIN_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_BEGIN_DATA"
		end

	frozen GLU_TESS_VERTEX_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_VERTEX_DATA"
		end

	frozen GLU_TESS_END_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_END_DATA"
		end

	frozen GLU_TESS_ERROR_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR_DATA"
		end

	frozen GLU_TESS_EDGE_FLAG_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_EDGE_FLAG_DATA"
		end

	frozen GLU_TESS_COMBINE_DATA : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_COMBINE_DATA"
		end

	frozen GLU_CW : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_CW"
		end

	frozen GLU_CCW : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_CCW"
		end

	frozen GLU_INTERIOR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_INTERIOR"
		end

	frozen GLU_EXTERIOR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_EXTERIOR"
		end

	frozen GLU_UNKNOWN : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_UNKNOWN"
		end

	frozen GLU_TESS_WINDING_RULE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_WINDING_RULE"
		end

	frozen GLU_TESS_BOUNDARY_ONLY : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_BOUNDARY_ONLY"
		end

	frozen GLU_TESS_TOLERANCE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_TOLERANCE"
		end

	frozen GLU_TESS_ERROR1 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR1"
		end

	frozen GLU_TESS_ERROR2 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR2"
		end

	frozen GLU_TESS_ERROR3 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR3"
		end

	frozen GLU_TESS_ERROR4 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR4"
		end

	frozen GLU_TESS_ERROR5 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR5"
		end

	frozen GLU_TESS_ERROR6 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR6"
		end

	frozen GLU_TESS_ERROR7 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR7"
		end

	frozen GLU_TESS_ERROR8 : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_ERROR8"
		end

	frozen GLU_TESS_MISSING_BEGIN_POLYGON : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_MISSING_BEGIN_POLYGON"
		end

	frozen GLU_TESS_MISSING_BEGIN_CONTOUR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_MISSING_BEGIN_CONTOUR"
		end

	frozen GLU_TESS_MISSING_END_POLYGON : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_MISSING_END_POLYGON"
		end

	frozen GLU_TESS_MISSING_END_CONTOUR : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_MISSING_END_CONTOUR"
		end

	frozen GLU_TESS_COORD_TOO_LARGE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_COORD_TOO_LARGE"
		end

	frozen GLU_TESS_NEED_COMBINE_CALLBACK : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_NEED_COMBINE_CALLBACK"
		end

	frozen GLU_TESS_WINDING_ODD : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_WINDING_ODD"
		end

	frozen GLU_TESS_WINDING_NONZERO : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_WINDING_NONZERO"
		end

	frozen GLU_TESS_WINDING_POSITIVE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_WINDING_POSITIVE"
		end

	frozen GLU_TESS_WINDING_NEGATIVE : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_WINDING_NEGATIVE"
		end

	frozen GLU_TESS_WINDING_ABS_GEQ_TWO : INTEGER
		external
			"C [macro <GL/glu.h>] : int"
		alias
			"GLU_TESS_WINDING_ABS_GEQ_TWO"
		end

	frozen GLU_TESS_MAX_COORD : REAL_64
		external
			"C [macro <GL/glu.h>] : double"
		alias
			"GLU_TESS_MAX_COORD"
		end

	frozen gluBeginCurve(a_nurb: POINTER)
		external
			"C(GLUnurbs *) | <GL/glu.h>"
		alias
			"gluBeginCurve"
		end

	frozen gluBeginPolygon(a_tess: POINTER)
		external
			"C(GLUtesselator *) | <GL/glu.h>"
		alias
			"gluBeginPolygon"
		end

	frozen gluBeginSurface(a_nurb: POINTER)
		external
			"C(GLUnurbs *) | <GL/glu.h>"
		alias
			"gluBeginSurface"
		end

	frozen gluBeginTrim(a_nurb: POINTER)
		external
			"C(GLUnurbs *) | <GL/glu.h>"
		alias
			"gluBeginTrim"
		end

	frozen gluBuild1DMipmapLevels(a_target: NATURAL; a_internalFormat: INTEGER; a_width: INTEGER; a_format: NATURAL; a_type: NATURAL; a_level: INTEGER; a_base: INTEGER; a_max: INTEGER; a_data: POINTER):INTEGER
		external
			"C(GLenum,GLint,GLsizei,GLenum,GLenum,GLint,GLint,GLint,void *):GLint | <GL/glu.h>"
		alias
			"gluBuild1DMipmapLevels"
		end

	frozen gluBuild1DMipmaps(a_target: NATURAL; a_internalFormat: INTEGER; a_width: INTEGER; a_format: NATURAL; a_type: NATURAL; a_data: POINTER):INTEGER
		external
			"C(GLenum,GLint,GLsizei,GLenum,GLenum,void *):GLint | <GL/glu.h>"
		alias
			"gluBuild1DMipmaps"
		end

	frozen gluBuild2DMipmapLevels(a_target: NATURAL; a_internalFormat: INTEGER; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_level: INTEGER; a_base: INTEGER; a_max: INTEGER; a_data: POINTER):INTEGER
		external
			"C(GLenum,GLint,GLsizei,GLsizei,GLenum,GLenum,GLint,GLint,GLint,void *):GLint | <GL/glu.h>"
		alias
			"gluBuild2DMipmapLevels"
		end

	frozen gluBuild2DMipmaps(a_target: NATURAL; a_internalFormat: INTEGER; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_data: POINTER):INTEGER
		external
			"C(GLenum,GLint,GLsizei,GLsizei,GLenum,GLenum,void *):GLint | <GL/glu.h>"
		alias
			"gluBuild2DMipmaps"
		end

	frozen gluBuild3DMipmapLevels(a_target: NATURAL; a_internalFormat: INTEGER; a_width: INTEGER; a_height: INTEGER; a_depth: INTEGER; a_format: NATURAL; a_type: NATURAL; a_level: INTEGER; a_base: INTEGER; a_max: INTEGER; a_data: POINTER):INTEGER
		external
			"C(GLenum,GLint,GLsizei,GLsizei,GLsizei,GLenum,GLenum,GLint,GLint,GLint,void *):GLint | <GL/glu.h>"
		alias
			"gluBuild3DMipmapLevels"
		end

	frozen gluBuild3DMipmaps(a_target: NATURAL; a_internalFormat: INTEGER; a_width: INTEGER; a_height: INTEGER; a_depth: INTEGER; a_format: NATURAL; a_type: NATURAL; a_data: POINTER):INTEGER
		external
			"C(GLenum,GLint,GLsizei,GLsizei,GLsizei,GLenum,GLenum,void *):GLint | <GL/glu.h>"
		alias
			"gluBuild3DMipmaps"
		end

	frozen gluCheckExtension(a_extName: POINTER; a_extString: POINTER):NATURAL_8
		external
			"C(GLubyte *,GLubyte *):GLboolean | <GL/glu.h>"
		alias
			"gluCheckExtension"
		end

	frozen gluCylinder(a_quad: POINTER; a_base: REAL_64; a_top: REAL_64; a_height: REAL_64; a_slices: INTEGER; a_stacks: INTEGER)
		external
			"C(GLUquadric *,GLdouble,GLdouble,GLdouble,GLint,GLint) | <GL/glu.h>"
		alias
			"gluCylinder"
		end

	frozen gluDeleteNurbsRenderer(a_nurb: POINTER)
		external
			"C(GLUnurbs *) | <GL/glu.h>"
		alias
			"gluDeleteNurbsRenderer"
		end

	frozen gluDeleteQuadric(a_quad: POINTER)
		external
			"C(GLUquadric *) | <GL/glu.h>"
		alias
			"gluDeleteQuadric"
		end

	frozen gluDeleteTess(a_tess: POINTER)
		external
			"C(GLUtesselator *) | <GL/glu.h>"
		alias
			"gluDeleteTess"
		end

	frozen gluDisk(a_quad: POINTER; a_inner: REAL_64; a_outer: REAL_64; a_slices: INTEGER; a_loops: INTEGER)
		external
			"C(GLUquadric *,GLdouble,GLdouble,GLint,GLint) | <GL/glu.h>"
		alias
			"gluDisk"
		end

	frozen gluEndCurve(a_nurb: POINTER)
		external
			"C(GLUnurbs *) | <GL/glu.h>"
		alias
			"gluEndCurve"
		end

	frozen gluEndPolygon(a_tess: POINTER)
		external
			"C(GLUtesselator *) | <GL/glu.h>"
		alias
			"gluEndPolygon"
		end

	frozen gluEndSurface(a_nurb: POINTER)
		external
			"C(GLUnurbs *) | <GL/glu.h>"
		alias
			"gluEndSurface"
		end

	frozen gluEndTrim(a_nurb: POINTER)
		external
			"C(GLUnurbs *) | <GL/glu.h>"
		alias
			"gluEndTrim"
		end

	frozen gluErrorString(a_error: NATURAL):POINTER
		external
			"C(GLenum):GLubyte * | <GL/glu.h>"
		alias
			"gluErrorString"
		end

	frozen gluGetNurbsProperty(a_nurb: POINTER; a_property: NATURAL; a_data: POINTER)
		external
			"C(GLUnurbs *,GLenum,GLfloat *) | <GL/glu.h>"
		alias
			"gluGetNurbsProperty"
		end

	frozen gluGetString(a_name: NATURAL):POINTER
		external
			"C(GLenum):GLubyte * | <GL/glu.h>"
		alias
			"gluGetString"
		end

	frozen gluGetTessProperty(a_tess: POINTER; a_which: NATURAL; a_data: POINTER)
		external
			"C(GLUtesselator *,GLenum,GLdouble *) | <GL/glu.h>"
		alias
			"gluGetTessProperty"
		end

	frozen gluLoadSamplingMatrices(a_nurb: POINTER; a_model: POINTER; a_perspective: POINTER; a_view: POINTER)
		external
			"C(GLUnurbs *,GLfloat *,GLfloat *,GLint *) | <GL/glu.h>"
		alias
			"gluLoadSamplingMatrices"
		end

	frozen gluLookAt(a_eyeX: REAL_64; a_eyeY: REAL_64; a_eyeZ: REAL_64; a_centerX: REAL_64; a_centerY: REAL_64; a_centerZ: REAL_64; a_upX: REAL_64; a_upY: REAL_64; a_upZ: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble,GLdouble) | <GL/glu.h>"
		alias
			"gluLookAt"
		end

	frozen gluNewNurbsRenderer:POINTER
		external
			"C:GLUnurbs * | <GL/glu.h>"
		alias
			"gluNewNurbsRenderer"
		end

	frozen gluNewQuadric:POINTER
		external
			"C:GLUquadric * | <GL/glu.h>"
		alias
			"gluNewQuadric"
		end

	frozen gluNewTess:POINTER
		external
			"C:GLUtesselator * | <GL/glu.h>"
		alias
			"gluNewTess"
		end

	frozen gluNextContour(a_tess: POINTER; a_type: NATURAL)
		external
			"C(GLUtesselator *,GLenum) | <GL/glu.h>"
		alias
			"gluNextContour"
		end

	frozen gluNurbsCallback(a_nurb: POINTER; a_which: NATURAL; a_CallBackFunc: POINTER)
		external
			"C(GLUnurbs *,GLenum,_GLUfuncptr *) | <GL/glu.h>"
		alias
			"gluNurbsCallback"
		end

	frozen gluNurbsCallbackData(a_nurb: POINTER; a_userData: POINTER)
		external
			"C(GLUnurbs *,GLvoid *) | <GL/glu.h>"
		alias
			"gluNurbsCallbackData"
		end

	frozen gluNurbsCallbackDataEXT(a_nurb: POINTER; a_userData: POINTER)
		external
			"C(GLUnurbs *,GLvoid *) | <GL/glu.h>"
		alias
			"gluNurbsCallbackDataEXT"
		end

	frozen gluNurbsCurve(a_nurb: POINTER; a_knotCount: INTEGER; a_knots: POINTER; a_stride: INTEGER; a_control: POINTER; a_order: INTEGER; a_type: NATURAL)
		external
			"C(GLUnurbs *,GLint,GLfloat *,GLint,GLfloat *,GLint,GLenum) | <GL/glu.h>"
		alias
			"gluNurbsCurve"
		end

	frozen gluNurbsProperty(a_nurb: POINTER; a_property: NATURAL; a_value: REAL_32)
		external
			"C(GLUnurbs *,GLenum,GLfloat) | <GL/glu.h>"
		alias
			"gluNurbsProperty"
		end

	frozen gluNurbsSurface(a_nurb: POINTER; a_sKnotCount: INTEGER; a_sKnots: POINTER; a_tKnotCount: INTEGER; a_tKnots: POINTER; a_sStride: INTEGER; a_tStride: INTEGER; a_control: POINTER; a_sOrder: INTEGER; a_tOrder: INTEGER; a_type: NATURAL)
		external
			"C(GLUnurbs *,GLint,GLfloat *,GLint,GLfloat *,GLint,GLint,GLfloat *,GLint,GLint,GLenum) | <GL/glu.h>"
		alias
			"gluNurbsSurface"
		end

	frozen gluOrtho2D(a_left: REAL_64; a_right: REAL_64; a_bottom: REAL_64; a_top: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <GL/glu.h>"
		alias
			"gluOrtho2D"
		end

	frozen gluPartialDisk(a_quad: POINTER; a_inner: REAL_64; a_outer: REAL_64; a_slices: INTEGER; a_loops: INTEGER; a_start: REAL_64; a_sweep: REAL_64)
		external
			"C(GLUquadric *,GLdouble,GLdouble,GLint,GLint,GLdouble,GLdouble) | <GL/glu.h>"
		alias
			"gluPartialDisk"
		end

	frozen gluPerspective(a_fovy: REAL_64; a_aspect: REAL_64; a_zNear: REAL_64; a_zFar: REAL_64)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble) | <GL/glu.h>"
		alias
			"gluPerspective"
		end

	frozen gluPickMatrix(a_x: REAL_64; a_y: REAL_64; a_delX: REAL_64; a_delY: REAL_64; a_viewport: POINTER)
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble,GLint *) | <GL/glu.h>"
		alias
			"gluPickMatrix"
		end

	frozen gluProject(a_objX: REAL_64; a_objY: REAL_64; a_objZ: REAL_64; a_model: POINTER; a_proj: POINTER; a_view: POINTER; a_winX: POINTER; a_winY: POINTER; a_winZ: POINTER):INTEGER
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble *,GLdouble *,GLint *,GLdouble *,GLdouble *,GLdouble *):GLint | <GL/glu.h>"
		alias
			"gluProject"
		end

	frozen gluPwlCurve(a_nurb: POINTER; a_count: INTEGER; a_data: POINTER; a_stride: INTEGER; a_type: NATURAL)
		external
			"C(GLUnurbs *,GLint,GLfloat *,GLint,GLenum) | <GL/glu.h>"
		alias
			"gluPwlCurve"
		end

	frozen gluQuadricCallback(a_quad: POINTER; a_which: NATURAL; a_CallBackFunc: POINTER)
		external
			"C(GLUquadric *,GLenum,_GLUfuncptr *) | <GL/glu.h>"
		alias
			"gluQuadricCallback"
		end

	frozen gluQuadricDrawStyle(a_quad: POINTER; a_draw: NATURAL)
		external
			"C(GLUquadric *,GLenum) | <GL/glu.h>"
		alias
			"gluQuadricDrawStyle"
		end

	frozen gluQuadricNormals(a_quad: POINTER; a_normal: NATURAL)
		external
			"C(GLUquadric *,GLenum) | <GL/glu.h>"
		alias
			"gluQuadricNormals"
		end

	frozen gluQuadricOrientation(a_quad: POINTER; a_orientation: NATURAL)
		external
			"C(GLUquadric *,GLenum) | <GL/glu.h>"
		alias
			"gluQuadricOrientation"
		end

	frozen gluQuadricTexture(a_quad: POINTER; a_texture: NATURAL_8)
		external
			"C(GLUquadric *,GLboolean) | <GL/glu.h>"
		alias
			"gluQuadricTexture"
		end

	frozen gluScaleImage(a_format: NATURAL; a_wIn: INTEGER; a_hIn: INTEGER; a_typeIn: NATURAL; a_dataIn: POINTER; a_wOut: INTEGER; a_hOut: INTEGER; a_typeOut: NATURAL; a_dataOut: POINTER):INTEGER
		external
			"C(GLenum,GLsizei,GLsizei,GLenum,void *,GLsizei,GLsizei,GLenum,GLvoid *):GLint | <GL/glu.h>"
		alias
			"gluScaleImage"
		end

	frozen gluSphere(a_quad: POINTER; a_radius: REAL_64; a_slices: INTEGER; a_stacks: INTEGER)
		external
			"C(GLUquadric *,GLdouble,GLint,GLint) | <GL/glu.h>"
		alias
			"gluSphere"
		end

	frozen gluTessBeginContour(a_tess: POINTER)
		external
			"C(GLUtesselator *) | <GL/glu.h>"
		alias
			"gluTessBeginContour"
		end

	frozen gluTessBeginPolygon(a_tess: POINTER; a_data: POINTER)
		external
			"C(GLUtesselator *,GLvoid *) | <GL/glu.h>"
		alias
			"gluTessBeginPolygon"
		end

	frozen gluTessCallback(a_tess: POINTER; a_which: NATURAL; a_CallBackFunc: POINTER)
		external
			"C(GLUtesselator *,GLenum,_GLUfuncptr *) | <GL/glu.h>"
		alias
			"gluTessCallback"
		end

	frozen gluTessEndContour(a_tess: POINTER)
		external
			"C(GLUtesselator *) | <GL/glu.h>"
		alias
			"gluTessEndContour"
		end

	frozen gluTessEndPolygon(a_tess: POINTER)
		external
			"C(GLUtesselator *) | <GL/glu.h>"
		alias
			"gluTessEndPolygon"
		end

	frozen gluTessNormal(a_tess: POINTER; a_valueX: REAL_64; a_valueY: REAL_64; a_valueZ: REAL_64)
		external
			"C(GLUtesselator *,GLdouble,GLdouble,GLdouble) | <GL/glu.h>"
		alias
			"gluTessNormal"
		end

	frozen gluTessProperty(a_tess: POINTER; a_which: NATURAL; a_data: REAL_64)
		external
			"C(GLUtesselator *,GLenum,GLdouble) | <GL/glu.h>"
		alias
			"gluTessProperty"
		end

	frozen gluTessVertex(a_tess: POINTER; a_location: POINTER; a_data: POINTER)
		external
			"C(GLUtesselator *,GLdouble *,GLvoid *) | <GL/glu.h>"
		alias
			"gluTessVertex"
		end

	frozen gluUnProject(a_winX: REAL_64; a_winY: REAL_64; a_winZ: REAL_64; a_model: POINTER; a_proj: POINTER; a_view: POINTER; a_objX: POINTER; a_objY: POINTER; a_objZ: POINTER):INTEGER
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble *,GLdouble *,GLint *,GLdouble *,GLdouble *,GLdouble *):GLint | <GL/glu.h>"
		alias
			"gluUnProject"
		end

	frozen gluUnProject4(a_winX: REAL_64; a_winY: REAL_64; a_winZ: REAL_64; a_clipW: REAL_64; a_model: POINTER; a_proj: POINTER; a_view: POINTER; a_nearVal: REAL_64; a_farVal: REAL_64; a_objX: POINTER; a_objY: POINTER; a_objZ: POINTER; a_objW: POINTER):INTEGER
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble,GLdouble *,GLdouble *,GLint *,GLdouble,GLdouble,GLdouble *,GLdouble *,GLdouble *,GLdouble *):GLint | <GL/glu.h>"
		alias
			"gluUnProject4"
		end


end

