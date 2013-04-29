note
	description : "Mouse-text application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

create
	make

feature {NONE} -- Initialization

	make
		local
			controller:GAME_LIB_CONTROLLER
			text_ctrl:GAME_TEXT_CONTROLLER
			image_ctrl:GAME_IMG_CONTROLLER
			audio_ctrl:AUDIO_CONTROLLER
		do
			create controller.make
			create text_ctrl.make
			create image_ctrl.make
			create audio_ctrl.make
			controller.enable_video
			text_ctrl.enable_text
			image_ctrl.enable_image (true, false, false)
			audio_ctrl.enable_sound
			run_game(controller,audio_ctrl)
			audio_ctrl.quit_library
			image_ctrl.quit_library
			text_ctrl.quit_library
			controller.quit_library
		end

	run_game(controller:GAME_LIB_CONTROLLER;audio_ctrl:AUDIO_CONTROLLER)
		local
			custom_file:CPF_PACKAGE_FILE	-- The custom package file that will be use for all ressources files (images and sounds)
		do
			create custom_file.make_thread_safe ("ressources.cpf")		-- Create (open) the custom package file "ressources.cpf
																		-- Use the make_thread_safe contructor if you use the ressource file in multiple thread or if you use the
																		-- launch_in_thread feature in the audio controller. Your application must be multithread enabled to use this constructor
																		-- (with mt precompile library if you use one).
			check custom_file.sub_files_count=8 end		-- Valid that the package has the 7 files in it. (you can valid other information with custom_file.sub_files_infos)

			set_system(controller,custom_file)	-- Set the screen and the events handeler

			show_images(controller,custom_file)	-- Show a background an 2 sprites.

			set_sound (controller,audio_ctrl,custom_file)	-- Set the sound system to play the music and the sound on space key press

			controller.launch
		end

	set_system(controller:GAME_LIB_CONTROLLER;custom_file:CPF_PACKAGE_FILE)
		local
			icon_trans_color:GAME_COLOR
		do

			controller.event_controller.on_quit_signal.extend (agent on_quit(controller))

			create icon_trans_color.make_rgb(255,0,255)  -- Change the pink for transparent in the window icon (the same as with a file)

			controller.create_screen_surface_with_icon_cpf (custom_file,1, icon_trans_color, 324, 240, 16, true, true, false, true, false) -- Create the window. Dimension: 320x240,
										-- 16 bits per pixel, Use video memory, use hardware double buffer, the windows will be unresisable, the window will have the window frame, not in fullscreen mode.
										-- Use the first index of the package file for window icon (must be a bmp file and must be 32x32 on Windows)

			controller.set_window_caption ("Exemple Custom Package File", "Ex. CPF")
			controller.hide_mouse_cursor	-- Hide the mouse cursor
			controller.enable_grab_input	-- Force the mouse and focus in the window
			controller.event_controller.on_key_down.extend (agent on_key_down_quit(controller,?))
			controller.event_controller.on_mouse_motion_relative_position.extend (agent on_mouse_move(controller,?,?)) -- Force the mouse in the middle of the window
			on_mouse_move(controller,0,0)
		end

	show_images(controller:GAME_LIB_CONTROLLER;custom_file:CPF_PACKAGE_FILE)
		local
			bk,sprite1,sprite2:GAME_SURFACE_IMG_CPF	-- Use GAME_SURFACE_IMG_CPF instead of GAME_SURFACE_IMG_FILE to use package file
			font:GAME_FONT_CPF
			text:GAME_SURFACE_TEXT
			sprite1_trans_color,text_color:GAME_COLOR
		do
			create bk.make (custom_file, 2)						-- The background has been place at index 2 of the custom package file
			create sprite1.make (custom_file, 3)				-- The first sprite (without transparency) is store at index 3 of the package file
			create sprite2.make_with_alpha (custom_file, 4)		-- The second sprite (with transparency) has been place at index 4 of the custom package file

			-- Once the GAME_SURFACE_IMG_CPF object is created, it is use the same way as any GAME_SURFACE object
			create sprite1_trans_color.make_rgb (255, 0, 255)
			sprite1.set_transparent_color (sprite1_trans_color)

			-- Print a "Hello World!" on the screen.
			create text_color.make_rgb (255, 255, 255)
			create font.make (custom_file, 8, 12)		-- The font.ttf file is in the ressources.cpf file at index 8
			create text.make_solid ("Esc to quit!", font, text_color)

			controller.screen_surface.draw_surface (bk, 0, 0)
			controller.screen_surface.draw_surface (text, 135, 25)
			controller.screen_surface.draw_surface (sprite1, 100, 100)
			controller.screen_surface.draw_surface (sprite2, 200, 100)
			controller.flip_screen
		end

	set_sound(controller:GAME_LIB_CONTROLLER;audio_ctrl:AUDIO_CONTROLLER;custom_file:CPF_PACKAGE_FILE)
		local

			l_music_intro:AUDIO_SOUND_SND_CPF	-- Use AUDIO_SOUND_SND_CPF instead of AUDIO_SOUND_SND_FILE to use package file
			l_music_loop:AUDIO_SOUND_AV_CPF		-- Use AUDIO_SOUND_AV_CPF instead of AUDIO_SOUND_AV_FILE to use package file
			l_sound:AUDIO_SOUND_WAV_CPF			-- Use AUDIO_SOUND_WAV_CPF instead of AUDIO_SOUND_WAV_FILE to use package file
												-- AUDIO_SOUND_SND_CPF use the libsndfile C library
												-- AUDIO_SOUND_AV_CPF use the libav C library (libavcodec and libavformat)
												-- AUDIO_SOUND_WAV_CPF don't use any third party library.
												-- Other than the class name, all AUDIO_SOUND_*_FILE and AUDIO_SOUND_*_CPF are used identicaly.

			sound_source,music_source:AUDIO_SOURCE
		do
			audio_ctrl.launch_in_thread			-- A little optimisation. The library will handle the sound in a different thread.
												-- If you want precompile library with this functionnality, you have to use a multi-thread precompile library.

			create l_music_intro.make (custom_file, 5)		-- he music intro is place in the index 5 of the package file.
			create l_music_loop.make (custom_file, 6)	-- The music loop.flac is at index 6 in the custom package file "test.cpf"
			create l_sound.make (custom_file, 7)			-- This sound that will be played when the user press the space bar is at index 7.

			-- Once the AUDIO_SOUND_*_CPF object is created, it is use the same way as any AUDIO_SOUND object
			audio_ctrl.source_add
			music_source:=audio_ctrl.source_get_last_add
			audio_ctrl.source_add
			sound_source:=audio_ctrl.source_get_last_add
			music_source.queue_sound (l_music_intro)
			music_source.queue_sound_infinite_loop (l_music_loop)
			controller.event_controller.on_key_down.extend (agent on_key_down_sound(l_sound,sound_source,?))
			music_source.play
		end



	on_key_down_quit(controller:GAME_LIB_CONTROLLER;kb_event:GAME_KEYBOARD_EVENT)
		do
			if kb_event.is_escape_key then
				controller.stop
			end
		end

	on_key_down_sound(l_sound:AUDIO_SOUND;sound_source:AUDIO_SOURCE;kb_event:GAME_KEYBOARD_EVENT)
		do
			if kb_event.is_space_key then
				sound_source.stop
				l_sound.restart
				sound_source.queue_sound (l_sound)
				sound_source.play
			end
		end

	on_quit(controller:GAME_LIB_CONTROLLER)
			-- This method is called when the quit signal is send to the application (ex: window X button pressed).
		do
			controller.stop
		end

	on_mouse_move(controller:GAME_LIB_CONTROLLER;rel_x,rel_y:INTEGER_16)
		do
			controller.wrap_mouse ((controller.screen_surface.width//2).to_natural_16, (controller.screen_surface.height//2).to_natural_16)
		end


end
