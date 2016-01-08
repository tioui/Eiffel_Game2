
note
    description: "External for OpenGL Utility library on Unix."
    author: "Louis Marchand"
    date: "Mon, 28 Dec 2015 17:01:53 +0000"
    revision: "1.0"

class
    GLU_PLATFORM

feature -- C external

	frozen GLU_EXT_object_space_tess : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_EXT_object_space_tess"
		end

	frozen GLU_EXT_nurbs_tessellator : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_EXT_nurbs_tessellator"
		end

		
	frozen GLU_VERSION_1_3 : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_VERSION_1_3"
		end

	frozen GLU_INVALID_OPERATION : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_INVALID_OPERATION"
		end

	frozen GLU_NURBS_ERROR : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_ERROR"
		end

	frozen GLU_NURBS_BEGIN : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_BEGIN"
		end

	frozen GLU_NURBS_BEGIN_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_BEGIN_EXT"
		end

	frozen GLU_NURBS_VERTEX : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_VERTEX"
		end

	frozen GLU_NURBS_VERTEX_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_VERTEX_EXT"
		end

	frozen GLU_NURBS_NORMAL : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_NORMAL"
		end

	frozen GLU_NURBS_NORMAL_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_NORMAL_EXT"
		end

	frozen GLU_NURBS_COLOR : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_COLOR"
		end

	frozen GLU_NURBS_COLOR_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_COLOR_EXT"
		end

	frozen GLU_NURBS_TEXTURE_COORD : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_TEXTURE_COORD"
		end

	frozen GLU_NURBS_TEX_COORD_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_TEX_COORD_EXT"
		end

	frozen GLU_NURBS_END : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_END"
		end

	frozen GLU_NURBS_END_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_END_EXT"
		end

	frozen GLU_NURBS_BEGIN_DATA : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_BEGIN_DATA"
		end

	frozen GLU_NURBS_BEGIN_DATA_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_BEGIN_DATA_EXT"
		end

	frozen GLU_NURBS_VERTEX_DATA : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_VERTEX_DATA"
		end

	frozen GLU_NURBS_VERTEX_DATA_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_VERTEX_DATA_EXT"
		end

	frozen GLU_NURBS_NORMAL_DATA : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_NORMAL_DATA"
		end

	frozen GLU_NURBS_NORMAL_DATA_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_NORMAL_DATA_EXT"
		end

	frozen GLU_NURBS_COLOR_DATA : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_COLOR_DATA"
		end

	frozen GLU_NURBS_COLOR_DATA_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_COLOR_DATA_EXT"
		end

	frozen GLU_NURBS_TEXTURE_COORD_DATA : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_TEXTURE_COORD_DATA"
		end

	frozen GLU_NURBS_TEX_COORD_DATA_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_TEX_COORD_DATA_EXT"
		end

	frozen GLU_NURBS_END_DATA : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_END_DATA"
		end

	frozen GLU_NURBS_END_DATA_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_END_DATA_EXT"
		end

	frozen GLU_NURBS_MODE : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_MODE"
		end

	frozen GLU_NURBS_MODE_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_MODE_EXT"
		end

	frozen GLU_NURBS_TESSELLATOR : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_TESSELLATOR"
		end

	frozen GLU_NURBS_TESSELLATOR_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_TESSELLATOR_EXT"
		end

	frozen GLU_NURBS_RENDERER : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_RENDERER"
		end

	frozen GLU_NURBS_RENDERER_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_NURBS_RENDERER_EXT"
		end

	frozen GLU_OBJECT_PARAMETRIC_ERROR : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_OBJECT_PARAMETRIC_ERROR"
		end

	frozen GLU_OBJECT_PARAMETRIC_ERROR_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_OBJECT_PARAMETRIC_ERROR_EXT"
		end

	frozen GLU_OBJECT_PATH_LENGTH : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_OBJECT_PATH_LENGTH"
		end

	frozen GLU_OBJECT_PATH_LENGTH_EXT : NATURAL
		external
			"C [macro <GL/glu.h>] : unsigned int"
		alias
			"GLU_OBJECT_PATH_LENGTH_EXT"
		end

	frozen gluBuild1DMipmapLevels(a_target: NATURAL; a_internalFormat: INTEGER; a_width: INTEGER; a_format: NATURAL; a_type: NATURAL; a_level: INTEGER; a_base: INTEGER; a_max: INTEGER; a_data: POINTER):INTEGER
		external
			"C(GLenum,GLint,GLsizei,GLenum,GLenum,GLint,GLint,GLint,void *):GLint | <GL/glu.h>"
		alias
			"gluBuild1DMipmapLevels"
		end

	frozen gluBuild2DMipmapLevels(a_target: NATURAL; a_internalFormat: INTEGER; a_width: INTEGER; a_height: INTEGER; a_format: NATURAL; a_type: NATURAL; a_level: INTEGER; a_base: INTEGER; a_max: INTEGER; a_data: POINTER):INTEGER
		external
			"C(GLenum,GLint,GLsizei,GLsizei,GLenum,GLenum,GLint,GLint,GLint,void *):GLint | <GL/glu.h>"
		alias
			"gluBuild2DMipmapLevels"
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

	frozen gluUnProject4(a_winX: REAL_64; a_winY: REAL_64; a_winZ: REAL_64; a_clipW: REAL_64; a_model: POINTER; a_proj: POINTER; a_view: POINTER; a_nearVal: REAL_64; a_farVal: REAL_64; a_objX: POINTER; a_objY: POINTER; a_objZ: POINTER; a_objW: POINTER):INTEGER
		external
			"C(GLdouble,GLdouble,GLdouble,GLdouble,GLdouble *,GLdouble *,GLint *,GLdouble,GLdouble,GLdouble *,GLdouble *,GLdouble *,GLdouble *):GLint | <GL/glu.h>"
		alias
			"gluUnProject4"
		end

end

