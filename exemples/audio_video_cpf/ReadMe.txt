Create the ressource with the tool custom_package_file (that you can compile from the $GAME_EIF_LIB/custom_package_file/custom_package_file.ecf project)

Command line used (on UNIX):
        custom_package_file create ressources.cpf icon.bmp $EIF_GAME_LIB/exemples/audio_video/sita.ogg
        ^                 ^ ^    ^ ^            ^ ^      ^ ^                                         ^
	 \_______________/   \__/   \__________/   \____/   \_______________________________________/
             Prog name      Option   Output file    file1                    file2
 
Copy the resulting ressources.cpf to the project directory.

Use it as explain in the exemple.
