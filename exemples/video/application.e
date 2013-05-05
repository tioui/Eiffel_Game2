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
			-- Run application.
		do
			create lib_ctrl.make
			lib_ctrl.enable_video	-- This is to enable the graphical functionnalities of the library (not the video (movie) functionnality)
			run_standard(lib_ctrl)
			lib_ctrl.quit_library
		end

	run_standard(lib_ctrl:GAME_LIB_CONTROLLER)
		local
			video:VIDEO_AV_FILE
			reader:VIDEO_READER
		do
			lib_ctrl.create_screen_surface (800, 600, 32, true, true, true, true, false)
			lib_ctrl.set_window_caption ("You can move or resize the video with the mouse!", "Video Exemple")
			create reader.make(lib_ctrl)
			lib_ctrl.event_controller.on_quit_signal.extend (agent on_quit(lib_ctrl))
			lib_ctrl.event_controller.on_iteration.extend (agent reader.update_video_to_screen)
			lib_ctrl.event_controller.on_resize_window.extend (agent on_resize(lib_ctrl,?,?))
			lib_ctrl.event_controller.on_mouse_button_down.extend (agent on_mouse_down(reader,?,?,?,?,?))
			lib_ctrl.event_controller.on_mouse_button_up.extend (agent on_mouse_up)
			lib_ctrl.event_controller.on_mouse_motion_position.extend (agent on_mouse_move(lib_ctrl,reader,?,?))
			reader.enable_auto_resize	-- When the movie will loop or change, by default, the video surface will change depending of the width and height of the movie in the file
										-- Here, I don't want the video surface to auto resize.
			reader.x:=100			-- You can move the video surface by clicking on it and moving it
			reader.y:=100
			reader.width:=450			-- You can change the dimension of the video surface by clicking on the edge of the movie and move.
			reader.height:=300
			create video.make ("curtain.ogv")			-- Open the video file
			reader.queue_video_infinite_loop (video)	-- Queue the video to do an infinite loop
			reader.play			-- Play the video
			lib_ctrl.launch		-- Launch the application (the reader will auto update beacause we add reader.update_video_to_screen on an on_tick event)
		end

	on_quit(lib_ctrl:GAME_LIB_CONTROLLER)	-- When the user close the application, stop the controller
		do
			lib_ctrl.stop
		end

	on_resize(lib_ctrl:GAME_LIB_CONTROLLER;width,height:INTEGER)	-- When the user resize the window, resize the screen surface
		do
			lib_ctrl.create_screen_surface (width, height, 32, true, true, true, true, false)
		end

	on_mouse_down(reader:VIDEO_READER;is_left_button, is_right_button, is_middle_button: BOOLEAN; mouse_x, mouse_y: NATURAL_16)
		do
			if is_left_button then
				if mouse_x>reader.x+10 and mouse_x<reader.x+reader.width-10 and
						mouse_y>reader.y+10 and mouse_y<reader.y+reader.height-10 then
								-- If the user drag the video, move the video reader
					move_video:=true
					mouse_pressed_x:=mouse_x
					mouse_pressed_y:=mouse_y
				end
				if mouse_x>=reader.x-10 and mouse_x<=reader.x+10 then
						-- If the user click on the edge of the video, resize it.
					change_video_width_left:=true
					mouse_pressed_x:=mouse_x
				end
				if mouse_x>=reader.x+reader.width-10 and mouse_x<=reader.x+reader.width+10 then
					-- If the user click on the edge of the video, resize it.
					change_video_width_right:=true
					mouse_pressed_x:=mouse_x
				end
				if mouse_y>=reader.y-10 and mouse_y<=reader.y+10 then
					-- If the user click on the edge of the video, resize it.
					change_video_height_top:=true
					mouse_pressed_y:=mouse_y
				end
				if mouse_y>=reader.y+reader.height-10 and mouse_y<=reader.y+reader.height+10 then
					-- If the user click on the edge of the video, resize it.
					change_video_height_bottom:=true
					mouse_pressed_y:=mouse_y
				end
			end
		end

	on_mouse_up(is_left_button, is_right_button, is_middle_button: BOOLEAN; mouse_x, mouse_y: NATURAL_16)
		do
			if is_left_button then	-- When the user stop a drag and drop (to resize or move the video reader), stop the resize and the move.
				move_video:=false
				change_video_width_left:=false
				change_video_width_right:=false
				change_video_height_top:=false
				change_video_height_bottom:=false
			end
		end

	on_mouse_move(lib_ctrl:GAME_LIB_CONTROLLER;reader:VIDEO_READER;x, y: NATURAL_16)
		do
			if move_video then
					-- If the user drag the video, move the video reader
				reader.x:=reader.x+(x.to_integer_32-mouse_pressed_x.to_integer_32)
				reader.y:=reader.y+(y.to_integer_32-mouse_pressed_y.to_integer_32)
				mouse_pressed_x:=x
				mouse_pressed_y:=y
				lib_ctrl.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(0,0,0), 0, 0, lib_ctrl.screen_surface.width, lib_ctrl.screen_surface.height)
				lib_ctrl.flip_screen
			end
			if change_video_width_left then
					-- If the user click on the edge of the video, resize it.
				reader.width:=reader.width-(x.to_integer_32-mouse_pressed_x.to_integer_32)
				reader.x:=reader.x+(x.to_integer_32-mouse_pressed_x.to_integer_32)
				mouse_pressed_x:=x
				lib_ctrl.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(0,0,0), 0, 0, lib_ctrl.screen_surface.width, lib_ctrl.screen_surface.height)
				lib_ctrl.flip_screen
			end
			if change_video_width_right then
					-- If the user click on the edge of the video, resize it.
				reader.width:=reader.width+(x.to_integer_32-mouse_pressed_x.to_integer_32)
				mouse_pressed_x:=x
				lib_ctrl.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(0,0,0), 0, 0, lib_ctrl.screen_surface.width, lib_ctrl.screen_surface.height)
				lib_ctrl.flip_screen
			end
			if change_video_height_top then
					-- If the user click on the edge of the video, resize it.
				reader.height:=reader.height-(y.to_integer_32-mouse_pressed_y.to_integer_32)
				reader.y:=reader.y+(y.to_integer_32-mouse_pressed_y.to_integer_32)
				mouse_pressed_y:=y
				lib_ctrl.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(0,0,0), 0, 0, lib_ctrl.screen_surface.width, lib_ctrl.screen_surface.height)
				lib_ctrl.flip_screen
			end
			if change_video_height_bottom then
					-- If the user click on the edge of the video, resize it.
				reader.height:=reader.height+(y.to_integer_32-mouse_pressed_y.to_integer_32)
				mouse_pressed_y:=y
				lib_ctrl.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(0,0,0), 0, 0, lib_ctrl.screen_surface.width, lib_ctrl.screen_surface.height)
				lib_ctrl.flip_screen
			end
		end

	move_video:BOOLEAN
	change_video_width_left,change_video_width_right:BOOLEAN
	change_video_height_top,change_video_height_bottom:BOOLEAN

	mouse_pressed_x,mouse_pressed_y:NATURAL_16

end
