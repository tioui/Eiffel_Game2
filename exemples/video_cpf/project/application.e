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
			text_ctrl:GAME_TEXT_CONTROLLER
			-- Run application.
		do
			create lib_ctrl.make
			create text_ctrl.make
			text_ctrl.enable_text
			lib_ctrl.enable_video	-- This is to enable the graphical functionnalities of the library (not the video (movie) functionnality)
			run_standard(lib_ctrl)
			lib_ctrl.quit_library
			text_ctrl.quit_library
		end

	run_standard(lib_ctrl:GAME_LIB_CONTROLLER)
		local
			ressources:CPF_PACKAGE_FILE
			video1,video2:VIDEO_AV_CPF
			text1,text2:GAME_SURFACE_TEXT
			reader:VIDEO_READER
			font:GAME_FONT_CPF
		do
			create ressources.make ("ressources.cpf")
			lib_ctrl.create_screen_surface (450, 450, 32, true, true, false, true, false)
			lib_ctrl.set_window_caption ("You can move or resize the video with the mouse!", "Video Exemple")
			create reader.make(lib_ctrl)
			lib_ctrl.event_controller.on_quit_signal.extend (agent on_quit(lib_ctrl))
			lib_ctrl.event_controller.on_tick.extend (agent reader.update_video_to_screen)
			create video1.make (ressources,1)			-- Open the Blue Bubble video file
			create video2.make (ressources,2)			-- Open the Red Curtain video file
			create font.make (ressources, 3, 20)
			create text1.make_blended ("Blue Bubbles", font, create {GAME_COLOR}.make_rgb(255,255,255))
			create text2.make_blended ("Red Curtain", font, create {GAME_COLOR}.make_rgb(255,255,255))
			lib_ctrl.event_controller.on_mouse_button_down.extend (agent on_mouse_down(lib_ctrl,text1,text2,reader,video1,video2,?,?,?,?,?))
			update_screen(lib_ctrl,text1,text2)
			reader.queue_video_infinite_loop (video2)	-- Queue the video to do an infinite loop
			reader.play			-- Play the video
			lib_ctrl.launch		-- Launch the application (the reader will auto update beacause we add reader.update_video_to_screen on an on_tick event)
		end

	on_quit(lib_ctrl:GAME_LIB_CONTROLLER)	-- When the user close the application, stop the controller
		do
			lib_ctrl.stop
		end

	on_mouse_down(lib_ctrl:GAME_LIB_CONTROLLER;text1,text2:GAME_SURFACE_TEXT;reader:VIDEO_READER;video1,video2:VIDEO_AV_FILE;is_left_button, is_right_button, is_middle_button: BOOLEAN; mouse_x, mouse_y: NATURAL_16)
		do
			if is_left_button then

				if mouse_x>80 and mouse_x<80+text1.width and mouse_y>360 and mouse_y<360+text1.height then
					reader.stop
					video1.restart
					reader.queue_video_infinite_loop (video1)
					reader.pos_x:=25
					reader.play
					update_screen(lib_ctrl,text1,text2)
				end

				if mouse_x>270 and mouse_x<270+text2.width and mouse_y>360 and mouse_y<360+text2.height then
					reader.stop
					video2.restart
					reader.queue_video_infinite_loop (video2)
					reader.pos_x:=0
					reader.play
					update_screen(lib_ctrl,text1,text2)
				end

			end

		end

	update_screen(lib_ctrl:GAME_LIB_CONTROLLER;text1,text2:GAME_SURFACE_TEXT)
		do
			lib_ctrl.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(0,0,0), 0, 0, lib_ctrl.screen_surface.width, lib_ctrl.screen_surface.height)
			lib_ctrl.screen_surface.draw_surface (text1, 80, 360)
			lib_ctrl.screen_surface.draw_surface (text2, 270, 360)
			lib_ctrl.flip_screen
		end

end
