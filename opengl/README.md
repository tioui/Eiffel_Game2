# OpenGL Eiffel Wrapper

Low level wrappers for the OpenGL libraries.

Those wrappers are auto-generated with the EiffelStudio SWIG plug-in. They are
not well tested nor documented. Every functionalities have there original
names and you can access the documentations at https://www.opengl.org/sdk/docs/ .

# GL library

Contains functionalities of OpenGL up to 1.1.

# GLU library

Contains functionalities of GLU up to 1.2.

# GLEW library

Contains functionalities of OpenGL up to 4.4, GLU up to 1.2 and GLEW.
Even if the video card of the system does not support a functionality, the program will
still compile but the call to the functionality will fail. You can use glew_is_supported
to see if a functionality is supported by the video card at runtime. glewInit must be used
after the creation of a {GAME_WINDOW_GL}.

Note: You cannot use with GL or GLU libraries along with GLEW in the same project.

On Debian/Ubuntu, don't use the libglew-dev package. You can easily comple GLEW like so:

```bash
sudo apt-get install build-essential libxmu-dev libxi-dev libgl-dev
wget https://sourceforge.net/projects/glew/files/glew/2.1.0/glew-2.1.0.tgz/download -O glew-2.1.0.tgz
tar xvfz glew-2.1.0.tgz
cd glew-2.1.0
make LIBDIR=/usr/lib/x86_64-linux-gnu/
sudo make install LIBDIR=/usr/lib/x86_64-linux-gnu/

```
