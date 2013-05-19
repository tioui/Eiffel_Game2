note
	description : "doppler application root class"
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
			-- Run application.
		local
			l_lib_controller:GAME_LIB_CONTROLLER
			l_img_controller:GAME_IMG_CONTROLLER
			l_audio_controller:AUDIO_CONTROLLER
		do
			create l_lib_controller.make
			create l_img_controller.make
			create l_audio_controller.make
			l_lib_controller.enable_video
			l_img_controller.enable_image (true, false, false)
			l_audio_controller.enable_sound
			run_game (l_lib_controller,l_audio_controller)
			l_audio_controller.quit_library
			l_img_controller.quit_library
			l_lib_controller.quit_library
		end

	run_game(a_controller:GAME_LIB_CONTROLLER;a_audio_controller:AUDIO_CONTROLLER)
		local
			l_player:GAME_SURFACE_IMG_FILE
			l_bike:GAME_SURFACE_IMG_FILE
			l_bike_audio_source:AUDIO_SOURCE
			l_motor_sound:AUDIO_SOUND_SND_FILE
		do

			-- Creating the sound source representing the motor of the bike
			a_audio_controller.add_source
			l_bike_audio_source:=a_audio_controller.last_source
			create l_motor_sound.make ("motor.ogg")
			l_bike_audio_source.queue_sound_infinite_loop (l_motor_sound)

			-- Set the position of the player
			a_audio_controller.listener.set_position ((284/600).truncated_to_real, (120/600).truncated_to_real, 0)

			-- Set the position, direction and velocity of the bike sound source (bottom of the bike)
			-- The division by 600 si to adapt to the 3D library that take real value from 0 to 1 to be more realistic.
			l_bike_audio_source.set_position ((50/600).truncated_to_real, (110/600).truncated_to_real, 0)
			l_bike_audio_source.set_direction ((600/600).truncated_to_real, (110/600).truncated_to_real, 0)
			l_bike_audio_source.set_velocity (120, 0, 0)


			create l_player.make_with_alpha ("player.png")
			create l_bike.make_with_alpha ("bike.png")
			a_controller.create_screen_surface (600, 200, 16, true, true, false, true, false)
			a_controller.event_controller.on_quit_signal.extend (agent on_quit(a_controller))
			a_controller.event_controller.on_iteration.extend (agent on_iteration(a_controller,l_player,l_bike,l_bike_audio_source))
			a_controller.event_controller.on_iteration.extend (agent a_audio_controller.update)
			draw_screen(a_controller,l_player,l_bike)
			process_percent:=0
			l_bike_audio_source.play
			a_controller.launch_with_iteration_per_second (30)
			l_bike_audio_source.stop
		end

	on_iteration(a_controller:GAME_LIB_CONTROLLER;a_player,a_bike:GAME_SURFACE;a_bike_audio:AUDIO_3D_OBJECT)
		do
			process_percent:=process_percent+1
			a_bike_audio.set_position (((process_percent*5+50)/600).truncated_to_real, (100/600).truncated_to_real, 0)	-- Move the bike motor sound source
			draw_screen(a_controller,a_player,a_bike)
			if process_percent=100 then
				on_quit (a_controller)
			end
		end

	draw_screen(a_controller:GAME_LIB_CONTROLLER;a_player,a_bike:GAME_SURFACE)
		do
			a_controller.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(200,200,200), 0, 0, a_controller.screen_surface.width, a_controller.screen_surface.height)
			a_controller.screen_surface.draw_surface (a_player, 284, 120)
			a_controller.screen_surface.draw_surface (a_bike, process_percent*5, 70)
			a_controller.flip_screen
		end

	on_quit(a_controller:GAME_LIB_CONTROLLER)
		do
			a_controller.stop
		end

	process_percent:INTEGER

end
