GLEW Eiffel Wrapper
=====================

Contain functionnalities of OpenGL up to 4.4 and GLU up to 1.2 and GLEW.
Even if the video card of the system does not support a functionnality, the program will
still compile but the call to the functionnality will fail. You can use glew_is_supported
to see if a functionnality is supported by the video card at runtime. glewInit must be used
after the creation of a {GAME_WINDOW_GL}.

Note: You cannot use GL or GLU libraries in the same project than the GLEW library.

On Debian/Ubuntu, don't use the libglew-dev package. You can easily comple GLEW like this:

```bash
sudo apt-get install build-essential libxmu-dev libxi-dev libgl-dev
wget https://sourceforge.net/projects/glew/files/glew/2.1.0/glew-2.1.0.tgz/download -O glew-2.1.0.tgz
tar xvfz glew-2.1.0.tgz
cd glew-2.1.0
make LIBDIR=/usr/lib/x86_64-linux-gnu/
sudo make install LIBDIR=/usr/lib/x86_64-linux-gnu/

```
