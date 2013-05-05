note
	description : "test_video_av application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
		local
			l_lib_ctrl:GAME_LIB_CONTROLLER
			l_audio_ctrl:AUDIO_CONTROLLER
			-- Run application.
		do
			create l_lib_ctrl.make
			create l_audio_ctrl.make
			l_lib_ctrl.enable_video
			l_audio_ctrl.enable_sound
			run_standard(l_lib_ctrl,l_audio_ctrl)
			l_lib_ctrl.quit_library
			l_audio_ctrl.quit_library
		end

	run_standard(a_lib_ctrl:GAME_LIB_CONTROLLER;a_audio_ctrl:AUDIO_CONTROLLER)
		local
			l_video:AUDIO_VIDEO_AV_CPF
			l_ressources:CPF_PACKAGE_FILE
			l_reader:AUDIO_VIDEO_READER
		do
			create l_ressources.make ("ressources.cpf")
			a_lib_ctrl.create_screen_surface_with_icon_cpf (l_ressources, 1, create {GAME_COLOR}.make_rgb(255,0,255), 320, 176, 32, true, true, true, true, false)
			a_lib_ctrl.set_window_caption ("You can resize the window!", "Audio Video CPF")
			create l_reader.make(a_lib_ctrl,a_audio_ctrl.sound_buffer_size)
			l_reader.enable_auto_resize
			a_lib_ctrl.event_controller.on_iteration.extend (agent l_reader.update_playing)
			a_lib_ctrl.event_controller.on_iteration.extend (agent check_ending(a_lib_ctrl,l_reader))
			a_lib_ctrl.event_controller.on_quit_signal.extend (agent on_quit(a_lib_ctrl))
			a_lib_ctrl.event_controller.on_resize_window.extend (agent on_resize(a_lib_ctrl,l_reader,?,?))
			create l_video.make (l_ressources,2)
			l_reader.queue_media (l_video)
			l_reader.play
			a_lib_ctrl.launch
			l_reader.stop
		end

	on_resize(lib_ctrl:GAME_LIB_CONTROLLER;reader:AUDIO_VIDEO_READER;width,height:INTEGER)
		do
			lib_ctrl.create_screen_surface (width, height, 32, true, true, true, true, false)
			reader.width:=width
			reader.height:=height
		end

	check_ending(lib_ctrl:GAME_LIB_CONTROLLER;reader:AUDIO_VIDEO_READER)
		do
			if reader.is_stop then
				lib_ctrl.stop
			end
		end

	on_quit(lib_ctrl:GAME_LIB_CONTROLLER)
		do
			lib_ctrl.stop
		end

end
