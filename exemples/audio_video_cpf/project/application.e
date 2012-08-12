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
			lib_ctrl:GAME_LIB_CONTROLLER
			audio_ctrl:AUDIO_CONTROLLER
			-- Run application.
		do
			create lib_ctrl.make
			create audio_ctrl.make
			lib_ctrl.enable_video
			audio_ctrl.enable_sound
			run_standard(lib_ctrl,audio_ctrl)
			lib_ctrl.quit_library
			audio_ctrl.quit_library
		end

	run_standard(lib_ctrl:GAME_LIB_CONTROLLER;audio_ctrl:AUDIO_CONTROLLER)
		local
			video:AUDIO_VIDEO_AV_CPF
			ressources:CPF_PACKAGE_FILE
			reader:AUDIO_VIDEO_READER
		do
			create ressources.make ("ressources.cpf")
			lib_ctrl.create_screen_surface_with_icon_cpf (ressources, 1, create {GAME_COLOR}.make_rgb(255,0,255), 320, 176, 32, true, true, true, true, false)
			lib_ctrl.set_window_caption ("You can resize the window!", "Audio Video CPF")
			create reader.make(lib_ctrl,audio_ctrl.sound_buffer_size)
			reader.auto_resize:=false
			lib_ctrl.event_controller.on_tick.extend (agent reader.update_playing)
			lib_ctrl.event_controller.on_tick.extend (agent check_ending(lib_ctrl,reader))
			lib_ctrl.event_controller.on_quit_signal.extend (agent on_quit(lib_ctrl))
			lib_ctrl.event_controller.on_resize_window.extend (agent on_resize(lib_ctrl,reader,?,?))
			create video.make (ressources,2)
			reader.queue_media (video)
			reader.play
			lib_ctrl.launch
			reader.stop
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
