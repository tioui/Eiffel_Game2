note
	description: "Boolean attributes and setters for every Eiffel Game2 libraries"
	author: "Louis Marchand"
	date: "Sat, 07 Jan 2017 22:18:47 +0000"
	revision: "1.0"

deferred class
	LIBRARY_MANAGER

feature -- Access

	has_core_library:BOOLEAN assign set_has_core_library
			-- The project must used the game2 core library

	set_has_core_library(a_has_core_library:BOOLEAN)
			-- Assign `has_core_library' with the value of `a_has_core_library'.
		do
			has_core_library := a_has_core_library
		ensure
			Is_Assign: has_core_library ~ a_has_core_library
		end

	enable_core_library
			-- put `has_core_library' to `True'
		do
			set_has_core_library(True)
		ensure
			Is_Enabled: has_core_library
		end

	disable_core_library
			-- put `has_core_library' to `False'
		do
			set_has_core_library(False)
		ensure
			Is_Enabled: not has_core_library
		end

	has_image_file_library:BOOLEAN assign set_has_image_file_library
			-- The project must used the image file library

	set_has_image_file_library(a_has_image_file_library:BOOLEAN)
			-- Assign `has_image_file_library' with the value of `a_has_image_file_library'.
		do
			has_image_file_library := a_has_image_file_library
		ensure
			Is_Assign: has_image_file_library ~ a_has_image_file_library
		end

	enable_image_file_library
			-- put `has_image_file_library' to `True'
		do
			set_has_image_file_library(True)
		ensure
			Is_Enabled: has_image_file_library
		end

	disable_image_file_library
			-- put `has_image_file_library' to `False'
		do
			set_has_image_file_library(False)
		ensure
			Is_Enabled: not has_image_file_library
		end

	has_text_library:BOOLEAN assign set_has_text_library
			-- The project must used the text library

	set_has_text_library(a_has_text_library:BOOLEAN)
			-- Assign `has_text_library' with the value of `a_has_text_library'.
		do
			has_text_library := a_has_text_library
		ensure
			Is_Assign: has_text_library ~ a_has_text_library
		end

	enable_text_library
			-- put `has_text_library' to `True'
		do
			set_has_text_library(True)
		ensure
			Is_Enabled: has_text_library
		end

	disable_text_library
			-- put `has_text_library' to `False'
		do
			set_has_text_library(False)
		ensure
			Is_Enabled: not has_text_library
		end

	has_effects_library:BOOLEAN assign set_has_effects_library
			-- The project must used the effects library

	set_has_effects_library(a_has_effects_library:BOOLEAN)
			-- Assign `has_effects_library' with the value of `a_has_effects_library'.
		do
			has_effects_library := a_has_effects_library
		ensure
			Is_Assign: has_effects_library ~ a_has_effects_library
		end

	enable_effects_library
			-- put `has_effects_library' to `True'
		do
			set_has_effects_library(True)
		ensure
			Is_Enabled: has_effects_library
		end

	disable_effects_library
			-- put `has_effects_library' to `False'
		do
			set_has_effects_library(False)
		ensure
			Is_Enabled: not has_effects_library
		end

	has_audio_library:BOOLEAN assign set_has_audio_library
			-- The project must used the audio library

	set_has_audio_library(a_has_audio_library:BOOLEAN)
			-- Assign `has_audio_library' with the value of `a_has_audio_library'.
		do
			has_audio_library := a_has_audio_library
		ensure
			Is_Assign: has_audio_library ~ a_has_audio_library
		end

	enable_audio_library
			-- put `has_audio_library' to `True'
		do
			set_has_audio_library(True)
		ensure
			Is_Enabled: has_audio_library
		end

	disable_audio_library
			-- put `has_audio_library' to `False'
		do
			set_has_audio_library(False)
		ensure
			Is_Enabled: not has_audio_library
		end

	has_sound_file_library:BOOLEAN assign set_has_sound_file_library
			-- The project must used the sound file library

	set_has_sound_file_library(a_has_sound_file_library:BOOLEAN)
			-- Assign `has_sound_file_library' with the value of `a_has_sound_file_library'.
		do
			has_sound_file_library := a_has_sound_file_library
		ensure
			Is_Assign: has_sound_file_library ~ a_has_sound_file_library
		end

	enable_sound_file_library
			-- put `has_sound_file_library' to `True'
		do
			set_has_sound_file_library(True)
		ensure
			Is_Enabled: has_sound_file_library
		end

	disable_sound_file_library
			-- put `has_sound_file_library' to `False'
		do
			set_has_sound_file_library(False)
		ensure
			Is_Enabled: not has_sound_file_library
		end

	has_mpg_file_library:BOOLEAN assign set_has_mpg_file_library
			-- The project must used the mpg file library

	set_has_mpg_file_library(a_has_mpg_file_library:BOOLEAN)
			-- Assign `has_mpg_file_library' with the value of `a_has_mpg_file_library'.
		do
			has_mpg_file_library := a_has_mpg_file_library
		ensure
			Is_Assign: has_mpg_file_library ~ a_has_mpg_file_library
		end

	enable_mpg_file_library
			-- put `has_mpg_file_library' to `True'
		do
			set_has_mpg_file_library(True)
		ensure
			Is_Enabled: has_mpg_file_library
		end

	disable_mpg_file_library
			-- put `has_mpg_file_library' to `False'
		do
			set_has_mpg_file_library(False)
		ensure
			Is_Enabled: not has_mpg_file_library
		end

	has_opengl_library:BOOLEAN assign set_has_opengl_library
			-- The project must used the opengl library

	set_has_opengl_library(a_has_opengl_library:BOOLEAN)
			-- Assign `has_opengl_library' with the value of `a_has_opengl_library'.
		do
			has_opengl_library := a_has_opengl_library
		ensure
			Is_Assign: has_opengl_library ~ a_has_opengl_library
		end

	enable_opengl_library
			-- put `has_opengl_library' to `True'
		do
			set_has_opengl_library(True)
		ensure
			Is_Enabled: has_opengl_library
		end

	disable_opengl_library
			-- put `has_opengl_library' to `False'
		do
			set_has_opengl_library(False)
		ensure
			Is_Enabled: not has_opengl_library
		end
end
