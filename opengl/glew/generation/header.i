%module glew_external
%{
note
    description: "External methods for the GLEW library"
    author: "Louis Marchand"
    date: "Thu, 21 May 2020 13:43:03 +0000"
    revision: "2.0"

class
    GLEW_EXTERNAL

feature -- C external

%}

%feature("h_file", "<glew_order.h>");

%feature("numeric_define_type", "unsigned int");


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


// Your code here.


%{
end
%}
