note
	description : "[
					Background_Move {APPLICATION}.
					In this exemple, when the player is moving, only the {BACKGROUND} is moving.
					The sprite ({CAR}) representing the player is fixe in the center of the screen.
			]"
	author		: "Louis Marchand"
	date        : "May 18, 2013"
	revision    : "0.1.1.1"

class
	APPLICATION

inherit
	MEMORY

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_engine:ENGINE
			l_lib_controller:GAME_LIB_CONTROLLER
			l_img_controller:GAME_IMG_CONTROLLER
		do
			-- Initialisation of the library
			create l_lib_controller.make
			create l_img_controller.make
			l_lib_controller.enable_video
			l_img_controller.enable_image (true, false, false)

			-- Launching the game engine
			create l_engine.make (l_lib_controller)
			l_engine.main_loop

			-- Clearing the memory
			l_engine:=Void
			full_collect

			-- Closing the library
			l_img_controller.quit_library
			l_lib_controller.quit_library
		end

end
