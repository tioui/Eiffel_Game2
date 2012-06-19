Create the ressource with the tool custom_package_file (that you can compile from the $GAME_EIF_LIB/custom_package_file/custom_package_file.ecf project)

Command line used:
        custom_package_file create ressources.cpf icon.bmp bk.png pingus.png pingus-trans.png intro.ogg loop.flac sound.aif font.ttf
        ^                 ^ ^    ^ ^            ^ ^      ^ ^    ^ ^        ^ ^              ^ ^       ^ ^       ^ ^       ^ ^      ^
	 \_______________/   \__/   \__________/   \____/   \__/   \______/   \____________/   \_____/   \_____/   \_____/   \____/
             Prog name      Option   Output file    file1   file2   file3         file4         file5     file6     file7     file8
 
Copy the resulting ressources.cpf to the project directory.

Use it as explain in the exemple.
