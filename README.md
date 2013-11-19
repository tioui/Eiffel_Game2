eiffel_game_lib
===============

A Game library for ISE Eiffel.
This is a library for game developping with the Eiffel Language. The library is compatible with the IDE EiffelStudio 7.3 from ISE.

The library is compatible with Linux, MAC OS X, Windows, GP2X Wiz and Caanoo.

The library is under Eiffel Forum License v2.

The project use those libraries: SDL, SDL_image, SDL_gfx, SDL_ttf, OpenAL, Libsndfile and FFMPEG LibAV.


Installation on Linux (Ubuntu)
------------------------------

* I assume that you already have a fonctionnal EiffelStudio on your system. If not, install it.
* Rename the "eiffel_game_lib" folder to "game".
* You need to add the game library in the "contrib/library" folder of EiffelStudio. Normaly, this folder is in "/usr/lib/EiffelStudio73" or in "/usr/local/Eiffel73".

* You need to install the C libraries SDL, SDL_image, SDL_gfx, SDL_ttf, OpenAL, libsndfile and all their development tools kit and dependancies:  

***

	sudo apt-get install libsdl-dev libsdl-image1.2-dev libsdl-gfx1.2-dev libsdl-ttf2.0-dev libopenal-dev libsndfile1-dev libavcodec-dev libavformat-dev libswscale-dev  

***

* Create a project and add the libraries you need (".ecf" file) in the project.(You can use the EIFFEL_LIBRARY environment variable to add those libraries. For example: $EIFFEL_LIBRARY/contrib/library/game/game_core_lib/game_core_lib.ecf .


Installation on Windows
-----------------------

* You must use an EiffelStudio 32 bits that use the MinGW compiler to work. If you don't have it already, install it.
* Rename the "eiffel_game_lib" folder to "game".
* You need to add the "game" library folder in the "contrib/library" folder of EiffelStudio. Normaly, this folder is in "c:\Program Files\Eiffel Software\".
* You need to add the Msys and MinGW bin directory in the system PATH variable (Both are in the EiffelStudio program sub directory)
* You need to install the C libraries dependancies. To get them, download the file [https://github.com/downloads/tioui/eiffel_game_lib/C_lib_win.zip](https://github.com/downloads/tioui/eiffel_game_lib/C_lib_win.zip) . When you extract the file, you should have a C_lib_win directory. Put the C_lib_win directory in the root directory of the Eiffel Game Lib repository directory.
* Create a project and add the libraries you need (".ecf" file) in the project.(You can use the EIFFEL_LIBRARY environment variable to add those libraries. For example: $EIFFEL_LIBRARY/contrib/library/game/game_core_lib/game_core_lib.ecf .
* Put all ".dll" files of the C_lib_win\DLL directory in the new project directory or in the C:\Windows\System32\ (or in SysWOW64 if you use a 64bits Windows).
* Please note that the library does not work with the Microsoft C compiler for now.
* Please note that the library does not work on an 64 bits compiler.

Installation on Mac OS X
------------------------

* Install EiffelStudio 7.3.
* You need to add the "game" library folder in the "contrib/library" folder of EiffelStudio. Normaly, this folder is in "/Applications/MacPorts/Eiffel73/".
* You need to get some files to adjust SDL on Mac OS X. To get them, download the file [https://github.com/downloads/tioui/eiffel_game_lib/C_lib_mac.tar.gz](https://github.com/downloads/tioui/eiffel_game_lib/C_lib_mac.tar.gz) . When you extract the file, you should have a C_lib_mac directory. Put the C_lib_mac directory in the root directory of the Eiffel Game Lib repository directory.
* You need to install the C libraries SDL, SDL_image, SDL_gfx, SDL_ttf, OpenAL, libsndfile, ffmpeg library and all their development tools kit and dependancies. You can install them with MacPort by installing the port libsdl-framework, libsdl_gfx-framework, libsdl_image-framework, libsdl_ttf-framework, libsndfile and ffmpeg-devel.
* OpenAL must be install another way. For that, install cmake using MacPort. Extract the file "openal-soft-1.14.tar.bz2" found in the C_lib_mac.tar.gz archive downloaded in before. Once extract, open a terminal a go into the directory build of the created directory of the archive extraction. Compile the library and install it


***

    cd /path/to/openal-soft-1.14/build
    cmake ..
    make
    sudo make install

***

* Now copy all SDL installed library from the /opt/local/Library/ to the /Library directory.

***

    sudo cp -rp /opt/local/Library/Frameworks/SDL*.framework /Library/Frameworks/

***

* Now, ready for the hard part? The SDL library need a specific Main in the C program and also need to have an "#include <SDL.h>" in the same C file that the on that contain the main. It is evident that EiffelStudio don't respect these necessities from SDL. We will have to do a little hack to allow EiffelStudio to use SDL. We will make the hack in a new EiffelStudio application (a copy), so don't worry, your EiffelStudio should not be harm by this hack.
* Open a terminal a go to the directory Eiffel?? (most likely Eiffel73).
* Copy the macosx-x86-64 specs to macosx-x86-64-SDL:

***

    sudo cp -rp studio/spec/macosx-x86-64 studio/spec/macosx-x86-64-SDL
    sudo cp -rp studio/config/macosx-x86-64 studio/config/macosx-x86-64-SDL

***

* Modify the C file template to fit the SDL necessities. Use your favorite text editor (I use vim):

***

    sudo vim studio/config/macosx-x86-64-SDL/templates/emain.template

***

* Change the line 11:

***

    Before: (EMPTY)

***

***

    After: #include "SDL.h"

***

* Change the line 13:

***

    Before: extern int main(int, char **, char **);

***

***

    After: extern int main(int, char **);

***

* Change the line 18:

***

    Before: (EMPTY)

***

***

    After: extern char **environ;

***

* Change the line 19:

***

    Before: int main (int argc, char ** argv, char ** envp)

***

***

    After: int main (int argc, char ** argv)

***

* Change the line 21:

***

    Before: (EMPTY)

***

***

    After: char **envp = environ;

***

* Save and quit the text editor.
* Now, when you launch estudio, change the ISE_PLATFORM environment variable from macosx-x86-64 to macosx-x86-64-SDL.
* Create a project and add the libraries you need (".ecf" file) in the project.(You can use the EIFFEL_LIBRARY environment variable to add those libraries. For example: $EIFFEL_LIBRARY/contrib/library/game/game_core_lib/game_core_lib.ecf .
* Note that the spec that we create has no precompile library. It will be necessary to remove the default Precompile library in the project.

