#!/bin/bash

PARAM="$1"

function clibClear () {
	cd $EIF_GAME_LIB/audio_snd_files_lib/implementation/Clib
	make clean
	cd $EIF_GAME_LIB/audio_video_lib/implementation/Clib
	make clean
	cd $EIF_GAME_LIB/cpf_lib/implementation/Clib
	make clean
	cd $EIF_GAME_LIB/game_core_lib/implementation/Clib
	make clean
}

function eifgensLibClear () {
	rm -rf $EIF_GAME_LIB/audio_lib/EIFGENs
	rm -rf $EIF_GAME_LIB/audio_snd_files_lib/EIFGENs
	rm -rf $EIF_GAME_LIB/audio_video_lib/EIFGENs
	rm -rf $EIF_GAME_LIB/cpf_lib/EIFGENs
	rm -rf $EIF_GAME_LIB/custom_package_file_app/EIFGENs
	rm -rf $EIF_GAME_LIB/game_core_lib/EIFGENs
	rm -rf $EIF_GAME_LIB/game_effects_lib/EIFGENs
	rm -rf $EIF_GAME_LIB/game_images_files_lib/EIFGENs
	rm -rf $EIF_GAME_LIB/game_text_lib/EIFGENs
}

function eifgensExClear () {
	rm -rf $EIF_GAME_LIB/exemples/anim1/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/anim2/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/audio-console1/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/audio-console2/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/audio_video/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/audio_wav/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/cpf/project/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/effects/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/mouse-text/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/keyboard-text/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/sound/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/surface1/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/surface2/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/video/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/video_cpf/project/EIFGENs
	rm -rf $EIF_GAME_LIB/exemples/audio_video_cpf/project/EIFGENs
}

function compileSubLib () {
	echo "*************************************************************************"	
	echo "Testing" $1 "..."
	clibClear
	cd $EIF_GAME_LIB/$2
	ec -batch -config $3 -target $4
	if (( $? )) 
	then 
		echo Error while compiling eiffel code of $1.
		exit 1
	fi
	echo "done."
}

function compileEx () {
	echo "*************************************************************************"	
	echo "Testing" $1 "..."
	clibClear
	cd $EIF_GAME_LIB/exemples/$2
	ec -batch -c_compile -config $3 -target $4
	if (( $? )) 
	then 
		echo Error while compiling eiffel code of $1.
		exit 1
	fi
	if [ ! -f "$EIF_GAME_LIB/exemples/$2/EIFGENs/$4/W_code/$5" ];
  	then
   		echo Error while compiling c code of $1.
    		exit 1
  	fi
	echo "done."
}

clibClear
eifgensExClear
eifgensLibClear

if [[ "1$PARAM" != "1clean" ]]
then

    export ISE_PLATFORM=macosx-x86-64
    export ISE_EIFFEL=/Applications/MacPorts/Eiffel71
    export PATH=$PATH:$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin
    
	compileSubLib "Custom Package Files Lib" "cpf_lib" "cpf_lib.ecf" "cpf_lib"
	compileSubLib "Game Core Lib" "game_core_lib" "game_core_lib.ecf" "game_core_lib"
	compileSubLib "Game Effects Lib" "game_effects_lib" "game_effects_lib.ecf" "game_effects_lib"
	compileSubLib "Game Images Files Lib" "game_images_files_lib" "game_images_files_lib.ecf" "game_images_files_lib"
	compileSubLib "Game Text Lib" "game_text_lib" "eiffel_text_lib.ecf" "game_text_lib"
	compileSubLib "Audio Lib" "audio_lib" "audio_lib.ecf" "audio_lib"
	compileSubLib "Audio AV Files Lib" "audio_video_lib" "audio_av_files_lib.ecf" "audio_av_files_lib"
	compileSubLib "Video AV Files Lib" "audio_video_lib" "video_av_files_lib.ecf" "video_av_files_lib"
	compileSubLib "Audio/Video AV Files Lib" "audio_video_lib" "audio_video_av_files_lib.ecf" "audio_video_av_files_lib"
	compileSubLib "Audio Snd Files Lib" "audio_snd_files_lib" "audio_snd_files_lib.ecf" "audio_snd_files_lib"




    compileEx "Audio Console Exemple 1" "audio-console1" "audio-console1.ecf" "audio-console1" "audio-console1"
    compileEx "Audio Console Exemple 2" "audio-console2" "audio-console2.ecf" "audio-console2" "audio-console2"
    compileEx "Audio WAV Exemple" "audio_wav" "audio_wav.ecf" "audio_wav" "audio_wav"



    export ISE_PLATFORM=macosx-x86-64-SDL
    export ISE_EIFFEL=/Applications/MacPorts/Eiffel71
    export PATH=$PATH:$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin


	compileEx "Animation Exemple 1" "anim1" "anim1.ecf" "anim1-mac" "anim1"
	compileEx "Animation Exemple 2" "anim2" "anim2.ecf" "anim2-mac" "anim2"
	compileEx "Audio Video Exemple" "audio_video" "audio_video.ecf" "audio_video-mac"  "audio_video" 
	compileEx "Audio Video (CPF) Exemple" "audio_video_cpf/project" "audio_video_cpf.ecf" "audio_video_cpf-mac" "audio_video_cpf"
	
	compileEx "Custom Package Files Exemple" "cpf/project" "cpf.ecf" "cpf-mac" "cpf"
	compileEx "Visual Effects Exemple" "effects" "effects.ecf" "effects-mac" "effects"
	compileEx "Mouse and Text Exemple" "mouse-text" "mouse-text.ecf" "mouse-text-mac" "mouse-text"
	compileEx "Keyboard and Text Exemple" "keyboard-text" "keyboard-text.ecf" "keyboard-text" "keyboard-text"
	compileEx "Sound Exemple" "sound" "sound.ecf" "sound-mac" "sound"
	compileEx "Surface Exemple 1" "surface1" "surface1.ecf" "surface1-mac" "surface1"
	compileEx "Surface Exemple 2" "surface2" "surface2.ecf" "surface2-mac" "surface2"
	compileEx "Playing Video Exemple" "video" "video.ecf" "video-mac" "video"
	compileEx "Playing Video (CPF) Exemple" "video_cpf/project" "video_cpf.ecf" "video_cpf-mac" "video_cpf"

	if [[ "1$PARAM" != "1keep" ]]
	then
		clibClear
		eifgensExClear
		eifgensLibClear
	fi


fi
