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
			l_text_ctrl:GAME_TEXT_CONTROLLER
			-- Run application.
		do
			create l_lib_ctrl.make
			create l_text_ctrl.make
			l_text_ctrl.enable_text
			l_lib_ctrl.enable_video	-- This is to enable the graphical functionnalities of the library (not the video (movie) functionnality)
			run_standard(l_lib_ctrl)
			l_lib_ctrl.clear_event_controller	-- Clear the event to be sure that a surface (or font, or ...) is not stuck in an event agent
			l_text_ctrl.quit_library
			l_lib_ctrl.quit_library
		end

	run_standard(a_lib_ctrl:GAME_LIB_CONTROLLER)
		local
			l_ressources:CPF_PACKAGE_FILE
			l_video1,l_video2:VIDEO_AV_CPF
			l_text1,l_text2:GAME_SURFACE_TEXT
			l_reader:VIDEO_READER
			l_font:GAME_FONT_CPF
		do
			create l_ressources.make ("ressources.cpf")
			a_lib_ctrl.create_screen_surface (450, 450, 32, true, true, false, true, false)
			a_lib_ctrl.set_window_caption ("You can move or resize the video with the mouse!", "Video Exemple")
			create l_reader.make(a_lib_ctrl)
			a_lib_ctrl.event_controller.on_quit_signal.extend (agent on_quit(a_lib_ctrl))
			a_lib_ctrl.event_controller.on_iteration.extend (agent l_reader.update_video_to_screen)
			create l_video1.make (l_ressources,1)			-- Open the Blue Bubble video file
			create l_video2.make (l_ressources,2)			-- Open the Red Curtain video file
			create l_font.make (l_ressources, 3, 20)
			create l_text1.make_blended ("Blue Bubbles", l_font, create {GAME_COLOR}.make_rgb(255,255,255))
			create l_text2.make_blended ("Red Curtain", l_font, create {GAME_COLOR}.make_rgb(255,255,255))
			a_lib_ctrl.event_controller.on_mouse_button_down.extend (agent on_mouse_down(a_lib_ctrl,l_text1,l_text2,l_reader,l_video1,l_video2,?,?,?,?,?))
			update_screen(a_lib_ctrl,l_text1,l_text2)
			l_reader.queue_video_infinite_loop (l_video2)	-- Queue the video to do an infinite loop
			l_reader.play			-- Play the video
			a_lib_ctrl.launch		-- Launch the application (the reader will auto update beacause we add reader.update_video_to_screen on an on_tick event)
		end

	on_quit(a_lib_ctrl:GAME_LIB_CONTROLLER)	-- When the user close the application, stop the controller
		do
			a_lib_ctrl.stop
		end

	on_mouse_down(a_lib_ctrl:GAME_LIB_CONTROLLER;a_text1,a_text2:GAME_SURFACE_TEXT;a_reader:VIDEO_READER;a_video1,a_video2:VIDEO_AV_FILE;
					a_is_left_button, a_is_right_button, a_is_middle_button: BOOLEAN; a_mouse_x, a_mouse_y: NATURAL_16)
		do
			if a_is_left_button then

				if a_mouse_x>80 and a_mouse_x<80+a_text1.width and a_mouse_y>360 and a_mouse_y<360+a_text1.height then
					a_reader.stop
					a_video1.restart
					a_reader.queue_video_infinite_loop (a_video1)
					a_reader.x:=25
					a_reader.play
					update_screen(a_lib_ctrl,a_text1,a_text2)
				end

				if a_mouse_x>270 and a_mouse_x<270+a_text2.width and a_mouse_y>360 and a_mouse_y<360+a_text2.height then
					a_reader.stop
					a_video2.restart
					a_reader.queue_video_infinite_loop (a_video2)
					a_reader.x:=0
					a_reader.play
					update_screen(a_lib_ctrl,a_text1,a_text2)
				end

			end

		end

	update_screen(a_lib_ctrl:GAME_LIB_CONTROLLER;a_text1,a_text2:GAME_SURFACE_TEXT)
		do
			a_lib_ctrl.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(0,0,0), 0, 0, a_lib_ctrl.screen_surface.width, a_lib_ctrl.screen_surface.height)
			a_lib_ctrl.screen_surface.draw_surface (a_text1, 80, 360)
			a_lib_ctrl.screen_surface.draw_surface (a_text2, 270, 360)
			a_lib_ctrl.flip_screen
		end

end
