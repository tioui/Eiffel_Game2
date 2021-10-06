#!/usr/bin/env -S bash -e

######################################################################
# @author      : Louis Marchand (prog@tioui.com)
# @file        : compile_all
# @created     : lundi oct 04, 2021 15:07:19 EDT
#
# @description : Compilation of every ECF files
######################################################################


compile_library() {
	echo $1
	pushd $2
	ecb -config $3 -batch
	result=$?
	popd
	return $result
}

compile_program() {
	echo $1
	pushd $2
	ecb -config $3 -batch -finalize -c_compile
	result=$?
	popd
	return $result
}

compile_program_target() {
	echo $1
	pushd $2
	ecb -config $3 -target $4 -batch -finalize -c_compile
	result=$?
	popd
	return $result
}

./clean_all.sh

compile_library "Audio library" audio audio.ecf
compile_library "Audio library" audio audio_3d.ecf
compile_library "Audio MPG File library" audio_mpg_file audio_mpg_file.ecf

compile_library "Audio sound File library" audio_sound_file audio_sound_file.ecf
compile_library "CPF library" cpf cpf.ecf
compile_library "Game Core library" game_core game_core.ecf
compile_library "Game Effects library" game_effects game_effects.ecf
compile_library "Game Image File library" game_image_file game_image_file.ecf
compile_library "Game Shared library" game_shared game_shared.ecf
compile_library "OpenGL base library" opengl/gl gl.ecf
compile_library "OpenGL GLEW library" opengl/glew/core glew.ecf
compile_program "CPF Application" custom_package_file_app custom_package_file.ecf
compile_program_target "Project Wizard" project_wizard/project game2_wizard.ecf game2_wizard
compile_program "Clipboard text example" examples/clipboard_text/ clipboard_text.ecf
compile_program "Audio Network example" examples/audio_network_stream/ audio_network_stream.ecf
compile_program "Writing Text example" examples/writing_text/ writing_text.ecf
compile_program "Battery example" examples/battery/ battery.ecf
compile_program "Anim Renderer example" examples/anim_rendered/ anim_rendered.ecf
compile_program "Anim Surfaced example" examples/anim_surfaced/ anim_surfaced.ecf
compile_program "Anim Surfaced Optimized example" examples/anim_surfaced_optimized/ anim_surfaced_optimized.ecf
compile_program "Wheel Zoom example" examples/wheel_zoom/ wheel_zoom.ecf
compile_program "Mouse Text example" examples/mouse-text/ mouse-text.ecf
compile_program "OpenGL base example" examples/opengl/base/ opengl_base.ecf
compile_program "OpenGL texture example" examples/opengl/texture/ opengl_texture.ecf
compile_program "Doppler example" examples/doppler/ doppler.ecf
compile_program "Surface 1 example" examples/surface1/ surface1.ecf
compile_program "Surface 2 example" examples/surface2/ surface2.ecf
compile_program "Capture example" examples/capture/ capture.ecf
compile_program "Logical Size example" examples/logical_size/ logical_size.ecf
compile_program "Audio WAV example" examples/audio_wav/ audio_wav.ecf
compile_program "Cursor example" examples/cursor/ cursor.ecf
compile_program "Audio GUI example" examples/audio_gui/ audio_gui.ecf
compile_program "Background Move example" examples/background_move/ background_move.ecf
compile_program "Renderer Driver example" examples/renderer_driver/ renderer_driver.ecf
compile_program "Audio Console 1 example" examples/audio-console1/ audio-console1.ecf
compile_program "Audio Console 2 example" examples/audio-console2/ audio-console2.ecf
compile_program "Echo example" examples/echo/ echo.ecf
compile_program "Sound example" examples/sound/ sound.ecf
compile_program "Draw Pixel example" examples/draw_pixel/ draw_pixel.ecf
compile_program "MP3 example" examples/mp3/ mp3_player.ecf
compile_program "Draw Renderer example" examples/draw_pixel/ draw_pixel.ecf
