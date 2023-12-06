Eiffel Game 2
=============

A Game library for ISE Eiffel.

This is a library for game development with the Eiffel Language. The library is compatible with the IDE EiffelStudio 16.05 and newer from ISE.

The library is compatible with Linux, MAC OS X, Windows. It should work with other operating system (FreeBSD, Android, IOS, etc.) but it is not supported.

The Audio and Audio_Sound_File sub-libraries are under the LGPL license. Every other sub-libraries are under the zlib license. Every examples are under the GPL license.

The project uses those libraries: SDL2, SDL2_image, SDL2_gfx, SDL2_ttf, OpenAL, Libsndfile, libmpg123, GLEW.

[<img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif">](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=louis%40tioui%2ecom&lc=CA&item_name=Louis%20Marchand&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted)

Community
---------

Join our community on Matrix at [#eiffel_game2:libreti.net](https://matrix.to/#/#eiffel_game2:libreti.net)

Installation on Linux (Ubuntu)
------------------------------

* I assume that you already have a fonctionnal EiffelStudio on your system. If not, install it.
* If you obtained library sources by cloning the git repository, fetch submodules (run `git submodule init` and `git submodule update` in the library folder)
* Rename the library folder (containing this README.md) to "game2".
* You need to add the game2 folder library in the "contrib/library" folder of EiffelStudio. Normaly, this folder is in "/usr/lib/EiffelStudio_XX.XX" or in "/usr/local/Eiffel_XX.XX".

* You need to install the C libraries SDL2, SDL2_image, SDL2_gfx, SDL2_ttf, OpenAL, libsndfile, libmpg123, OpenGL, GLU, libepoxy and all their development tools kit and dependancies:  

***

	sudo apt-get install libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-ttf-dev libopenal-dev libsndfile1-dev libmpg123-dev libepoxy-dev libgl1-mesa-dev libglu1-mesa-dev libglew-dev libavcodec-dev libavformat-dev libavresample-dev libavutil-dev libswresample-dev libswscale-dev

***

* Execute the "compile_c_library.sh" script (from the "game2" directory).
* Create a project and add the sub-libraries you need (".ecf" file) in the project.(You can use the EIFFEL_LIBRARY environment variable to add those libraries. For example: $EIFFEL_LIBRARY/contrib/library/game2/game_core/game_core.ecf .

Note: If you have an error in the apt-get command telling libsdl2-dev depending of libgles2-mesa-dev. Just install the latest and retry like this:

***

	sudo apt-get install libgles2-mesa-dev
	sudo apt-get install libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev libsdl2-ttf-dev libopenal-dev libsndfile1-dev libmpg123-dev libepoxy-dev libgl1-mesa-dev libglu1-mesa-dev libglew-dev libavcodec-dev libavformat-dev libavresample-dev libavutil-dev libswresample-dev libswscale-dev

***


Installation on Windows
-----------------------

* Note: For an easy installation, see: https://github.com/tioui/Eiffel_Game2/tree/windows_build.
* You must already have a working EiffelStudio. If you don't have it already, install it.
* Rename the library folder (containing this README.md) to "game2".
* You need to add the "game2" library folder in the "contrib/library" folder of EiffelStudio. Normaly, this folder is in "c:\Program Files\Eiffel Software\".
* You need to install the C libraries dependancies. To get them, download the file https://github.com/tioui/Eiffel_Game2/raw/windows_build/C_libraries.zip. When you extract the file, you should have a C_lib_win directory. Put the C_lib_win directory in the root directory of the Eiffel_Game2 repository directory.
* Using the "EiffelStudio command prompt" (look in the Windows "Start" menu), execute the "compile_c_library.bat" script of the "game2" directory.
* Create a project and add the libraries you need (".ecf" file) in the project.(You can use the EIFFEL_LIBRARY environment variable to add those libraries. For example: $EIFFEL_LIBRARY/contrib/library/game2/game_core/game_core.ecf .
* Put all ".dll" files of the C_lib_win\DLLXX directory in the new project directory or in the C:\Windows\System32\.


Installation on Mac OS X
------------------------

To be created...
