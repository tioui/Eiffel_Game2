Eiffel Game 2
=============

A Game library for ISE Eiffel.
This is a library for game development with the Eiffel Language. The library is compatible with the IDE EiffelStudio 16.05 and newer from ISE.

This branch has every thing you need to make it work on Windows. It should work using the Microsoft C compiler and the MinGW compiler for 32 and 64 bits.

The library is under Eiffel Forum License v2.

The project use those libraries: SDL2, SDL2_image, SDL2_gfx, SDL2_ttf, OpenGL, GLU, GLEW, OpenAL and Libsndfile.

[<img src="http://api.flattr.com/button/flattr-badge-large.png">](http://flattr.com/thing/971297/Eiffel-Game-Library)
[<img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif">](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=louis%40tioui%2ecom&lc=CA&item_name=Louis%20Marchand&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted)
[<img src="https://www.coinbase.com/assets/buttons/donation_small-5dab7534cbb87a4ff2b44e469351ec86.png">](https://www.coinbase.com/tioui)

Installation on Windows (prebuild)
----------------------------------

* You must have EiffelStudio. If you don't have it already, install it.
* Download the file [Eiffel_Game2.zip](https://github.com/tioui/Eiffel_Game2/raw/windows_build/Eiffel_Game2.zip)
* Unzip the file Eiffel_Game2.zip
* Move the directory "game2" in the "contrib/library" folder of EiffelStudio. Normally, this folder is in "c:\Program Files\Eiffel Software\EiffelStudio xx.yy GPL\".
* Create a project and add the libraries you need (".ecf" file) in the project.(You can use the EIFFEL_LIBRARY environment variable to add those libraries. For example: $EIFFEL_LIBRARY/contrib/library/game2/game_core/game_core-safe.ecf .
* If using a 32 bits compiler, put all ".dll" files of the C_lib_win\DLL32 directory in the new project directory or in the C:\Windows\System32\ (or in SysWOW64 if you use a 64bits Windows).
* If using a 64 bits compiler, put all ".dll" files of the C_lib_win\DLL64 directory in the new project directory or in the C:\Windows\System32\ (On a Windows 64 bits system of course).
