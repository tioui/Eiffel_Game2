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
			l_video:AUDIO_VIDEO_AV_FILE
			l_reader:AUDIO_VIDEO_READER
		do
			a_lib_ctrl.create_screen_surface (320, 176, 32, true, true, false, true, false)
			create l_reader.make(a_lib_ctrl,a_audio_ctrl.sound_buffer_size)
			a_lib_ctrl.event_controller.on_iteration.extend (agent l_reader.update_playing)
			a_lib_ctrl.event_controller.on_iteration.extend (agent check_ending(a_lib_ctrl,l_reader))
			a_lib_ctrl.event_controller.on_quit_signal.extend (agent on_quit(a_lib_ctrl))
			create l_video.make ("sita.ogg")
			l_reader.queue_media (l_video)
			l_reader.play
			a_lib_ctrl.launch
			l_reader.stop
		end

	check_ending(a_lib_ctrl:GAME_LIB_CONTROLLER;a_reader:AUDIO_VIDEO_READER)
		do
			if a_reader.is_stop then
				a_lib_ctrl.stop
			end
		end

	on_quit(a_lib_ctrl:GAME_LIB_CONTROLLER)
		do
			a_lib_ctrl.stop
		end

end
