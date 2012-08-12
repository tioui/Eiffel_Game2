eiffel_game_lib
===============
 
A Game library for ISE Eiffel.
This is a library for game developping with the Eiffel Language. The library is made for the IDE EiffelStudio.

The library is compatible with Linux, MAC OS X, Windows, GP2X Wiz and Caanoo.

The library is under Eiffel Forum License v2.

The project use those libraries: SDL, SDL_image, SDL_gfx, SDL_ttf, OpenAL and Libsndfile.


Installation on Linux (Ubuntu)
------------------------------

	- I assume that you already have a fonctionnal EiffelStudio on your system. If not, install it.
	- You need to set the environment variable EIF_GAME_LIB to the root directory of the Eiffel Game Lib repository directory. You can do it with the /etc/environment file:
		# sudo -s
		# echo "EIF_GAME_LIB='/home/user/projects/eiffel_game_dir'" >> /etc/environment
		# exit
	- You need to install the C libraries SDL, SDL_image, SDL_gfx, SDL_ttf, OpenAL, libsndfile and all their development tools kit and dependancies:
		# sudo apt-get install libsdl-dev libsdl-image1.2-dev libsdl-gfx1.2-dev libsdl-ttf2.0-dev libopenal-dev libsndfile1-dev
	- Create a project and add the Eiffel_game_lib library (".ecf") file in the project (You can use the EIF_GAME_LIB environment variable).


Installation on Windows
-----------------------

	- You must use an EiffelStudio that use the MinGW compiler to work. If you don't have it already, install it.
	- You need to set the environment variable EIF_GAME_LIB to the root directory of the Eiffel Game Lib repository directory.
	- You need to add the Msys and MinGW bin directory in the system PATH variable (Both are in the EiffelStudio program sub directory)
	- You need to install the C libraries dependancies. To get them, download the file https://github.com/downloads/tioui/eiffel_game_lib/C_lib_win.zip . When you extract the file, you should have a C_lib_win directory. Put the C_lib_win directory in the root directory of the Eiffel Game Lib repository directory.
	- Create a project and add the Eiffel_game_lib library (".ecf") file in the project (You can use the EIF_GAME_LIB environment variable).
	- Put all ".dll" files of the %EIF_GAME_LIB%\C_lib_win\DLL directory in the new project directory.
	- Please note that the library does not work with the Microsoft C compiler for now.
	- Please note that the library does not work on an 64 bits compiler. It should not be too dificult to make it work on such compiler, but I don't have a 64 bits Windows licence to do it.

Installation on GP2X Wiz
------------------------

	- Do the "Installation on Linux" first and test a project to valid it work correctly before trying to comile it on Wiz.
	- Install the linux-wiz spec as specified in this project: https://github.com/tioui/Eiffel_Spec .
	- You need to install the C libraries dependancies. To get them, download the file https://github.com/downloads/tioui/eiffel_game_lib/C_lib_wiz.tar.bz2 . When you extract the file, you should have a C_lib_wiz directory. Put the C_lib_wiz directory in the root directory of the Eiffel Game Lib repository directory.
	- In the project that use the Eiffel Game Lib, create another target that extend the first one and add a variable "toolchain" in the target (in EiffelStudio or directly in the ".ecf" file). This variable "toolchain" must be set to "wiz".
	- You must finalize you project to use in on the wiz.
	- Note that you cannot debug on the Wiz.

Installation on GPH Caanoo
--------------------------

	- Do the "Installation on Linux" first and test a project to valid it work correctly before trying to comile it on Caanoo.
	- Install the linux-caanoo spec as specified in this project: https://github.com/tioui/Eiffel_Spec .
	- You need to install the C libraries dependancies. To get them, download the file https://github.com/downloads/tioui/eiffel_game_lib/C_lib_caanoo.tar.bz2 . When you extract the file, you should have a C_lib_caanoo directory. Put the C_lib_caanoo directory in the root directory of the Eiffel Game Lib repository directory.
	- In the project that use the Eiffel Game Lib, create another target that extend the first one and add a variable "toolchain" in the target (in EiffelStudio or directly in the ".ecf" file). This variable "toolchain" must be set to "caanoo".
	- You must finalize you project to use in on the caanoo.
	- Note that you cannot debug on the caanoo.

Installation on Mac OS X
------------------------

	- Install EiffelStudio (I did this via MacPort).
	- You need to get some files to adjust SDL on Mac OS X. To get them, download the file https://github.com/downloads/tioui/eiffel_game_lib/C_lib_mac.tar.gz . When you extract the file, you should have a C_lib_mac directory. Put the C_lib_mac directory in the root directory of the Eiffel Game Lib repository directory.
	-  You need to install the C libraries SDL, SDL_image, SDL_gfx, SDL_ttf, OpenAL, libsndfile, ffmpeg library and all their development tools kit and dependancies. You can install them with MapPort by installing the port libsdl-framework, libsdl_gfx-framework, libsdl_image-framework, libsdl_ttf-framework, libsndfile and ffmpeg-devel.
		-  OpenAL must be install another way. For that, install cmake using MacPort. Extract the file "openal-soft-1.14.tar.bz2" found in the C_lib_mac.tar.gz archive downloaded in before. Once extract, open a terminal a go into the directory build of the created directory of the archive extraction. Compile the library and install it
			# cd /path/to/openal-soft-1.14/build
			# cmake ..
			# make
			# sudo make install
	- Now copy the installed library from the /opt/local/Library/ to the /Library directory.
		# sudo cp -rp /opt/local/Library/Frameworks/SDL*.framework /Library/Frameworks/
	- Now, ready for the hard part? The SDL library need a specific Main in the C program and also need to have an "#include <SDL.h>" in the same C file that the on that contain the main. It is evident that EiffelStudio don't respect these necessities from SDL. We will have to do a little hack to allow EiffelStudio to use SDL. We will make the hack in a new EiffelStudio application (a copy), so don't worry, your EiffelStudio should not be harm by this hack.
	- Open a terminal a go to the directory Eiffel?? (most likely Eiffel70) in the Application directory tree.
		# cd /Applications/MacPorts/Eiffel??
	- Copy the EiffelStudio.app file to EiffelStudio-SDL.app
		# sudo cp -rp EiffelStudio.app EiffelStudio-SDL.app
	- Modify the launcher to add a new spec for SDL (we will also set the EIF_GAME_LIB environment variable there). Use your favorite text editor (I use vim):
		# sudo vim EiffelStudio-SDL.app/Contents/Resources/EiffelLauncher
	- Change the line 38:
		from:	export ISE_PLATFORM=macosx-x86-64
		to:	export ISE_PLATFORM=macosx-x86-64-SDL
	- Change the line 40:
		from:	export ISE_PLATFORM=macosx-x86
		to:	export ISE_PLATFORM=macosx-x86-SDL
	- Change the line 45 (of course, change the path to your Eiffel Game Lib path):
		from:	(EMPTY)
		to:	export EIF_GAME_LIB=/path/to/root/of/Eiffel_Game_Lib_Dir
	- Save and quit the text editor.
	- Copy the macosx-x86 and the macosx-x86-64 specs to macosx-x86-SDL and the macosx-x86-64-SDL:
		# sudo cp -rp studio/spec/macosx-x86-64 studio/spec/macosx-x86-64-SDL
		# sudo cp -rp studio/config/macosx-x86-64 studio/config/macosx-x86-64-SDL
	- Modify the C file template to fit the SDL necessities. Use your favorite text editor (I use vim):
		# sudo vim studio/config/macosx-x86-64-SDL/templates/emain.template
	- Change the line 11:
		from:	(EMPTY)
		to:	#include "SDL.h"
	- Change the line 13:
		from:	extern int main(int, char **, char **);
		to:	extern int main(int, char **);
	- Change the line 18:
		from:	(EMPTY)
		to:	extern char **environ;
	- Change the line 19:
		from:	int main (int argc, char ** argv, char ** envp)
		to:	int main (int argc, char ** argv)	
	- Change the line 21:
		from:	(EMPTY)
		to:	char **envp = environ;
	- Save and quit the text editor.
	- Create a project and add the Eiffel_game_lib library (".ecf") file in the project (You can use the EIF_GAME_LIB environment variable).
	- Note that the spec that we create has no precompile library. It will be necessary to remove the default Precompile library in the project.

