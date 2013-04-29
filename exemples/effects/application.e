note
	description : "graph application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS
	MEMORY

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			lib_ctrl:GAME_LIB_CONTROLLER
			image_ctrl:GAME_IMG_CONTROLLER
		do
			create lib_ctrl.make
			create image_ctrl.make
			lib_ctrl.enable_video		-- Use the graphics library
			image_ctrl.enable_image (true, false, false)		-- Use png files
			run_standard(lib_ctrl)
			image_ctrl.quit_library
			lib_ctrl.quit_library
		end

	run_standard(lib_ctrl:GAME_LIB_CONTROLLER)
		local
			image:GAME_SURFACE_IMG_FILE
		do
			lib_ctrl.event_controller.on_quit_signal.extend (agent quit(lib_ctrl))		-- When the quit signal is received, close the application
			lib_ctrl.event_controller.on_resize_window.extend (agent on_resize(lib_ctrl,?,?))		-- When the window is resized, the screen surface must be resized as well
			lib_ctrl.create_screen_surface (200, 200, 16, true, true, true, true, false)	-- Create the screen surface, 200x200, 16 bpp, use hardware memory and double buffer, is resizable, have frame and is not fullscreen
			create image.make_with_alpha ("pingus.png")
			lib_ctrl.event_controller.on_tick.extend (agent on_tick(lib_ctrl,image))	-- On tick event, update the screen
			lib_ctrl.launch		-- Launch the event driven application
		end

	quit(lib_ctrl:GAME_LIB_CONTROLLER)
		do
			lib_ctrl.stop	-- Stop the application
		end

	on_tick(lib_ctrl:GAME_LIB_CONTROLLER;image:GAME_SURFACE)
		local
			image_zoom:GAME_SURFACE_ROTATE_ZOOM
			tick:NATURAL_32
		do
			tick:=lib_ctrl.get_ticks//100
			create image_zoom.make_rotate_zoom (image, (tick\\360).to_real_64, ((tick\\10).to_real_64)/5, ((tick\\10).to_real_64)/5, true)		-- Rotate and zoom the original image.
			lib_ctrl.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(0,0,200), 0, 0,lib_ctrl.screen_surface.width, lib_ctrl.screen_surface.height)		-- Put a blue background on the screen
			lib_ctrl.screen_surface.draw_surface (image_zoom, (lib_ctrl.screen_surface.width//2)-(image_zoom.width//2), (lib_ctrl.screen_surface.height//2)-(image_zoom.height//2))		-- Put the result surface at the center of the screen
			lib_ctrl.flip_screen	-- Update the screen
			image_zoom:=Void	-- This is done to make sure the garbage collector will collect the memory surface.
			full_collect		-- Tell the garbage collector to remove unuse object from memory (will remove the created 'image_zoom').
		end

	on_resize(lib_ctrl:GAME_LIB_CONTROLLER;width,height:INTEGER)
		do
			lib_ctrl.create_screen_surface (width, height, 32, true, true, true, true, false)	-- When the window is resize, resize the screen surface
		end

end
