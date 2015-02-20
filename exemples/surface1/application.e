note
	description : "[
						Show how to use a {GAME_WINDOW_SURFACED}.
						Note that {GAME_WINDOW_SURFACED} don't use hardware acceleration and is very slow.
						It should be use for slow application only. To use hardware acceleration, 
						use {GAME_WINDOW_RENDERED} type.
					]"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	GAME_LIBRARY_SHARED		-- To use the `game_library' object (very important).

create
	make

feature {NONE} -- Initialization

	make
			-- Setup application.
		do
			game_library.enable_video	-- Enable the video functionnality of the library


			run_standard				-- Run another routine to be able to collect every object of type GAME_*
										-- Those object are all local object.

			game_library.quit_library	-- Must be done before quitting
										-- The garbage colector must be able to collect every object of type GAME_*
		end

	run_standard
			-- Run the application. Every local variable will be collected properly when calling the `quit_library' command in the `make' feature.
		local
			l_window:GAME_WINDOW_SURFACED
			l_background, l_bird:GAME_SURFACE
			l_bk_source, l_bird_source:GAME_IMAGE_SOURCE_BMP_FILE
			l_bird_transparent_color:GAME_COLOR
		do
			create l_window.make_default ("Hello Bird", 800, 600)		-- Create the window

			create l_bk_source.make ("bk.bmp")		-- Make the image background. The image is not loaded yet.
			l_bk_source.open		-- Load the image
			create l_background.share_from_image_source (l_bk_source)	-- Create the background surface using the image source.

			create l_bird_source.make ("pingus.bmp")	-- Make the image bird. The image is not loaded yet.
			l_bird_source.open		-- Load the image
			create l_bird.share_from_image_source (l_bird_source)	-- Create the bird surface using the image source.

			create l_bird_transparent_color.make_rgb (255, 0, 255)
			l_bird.transparent_color:=l_bird_transparent_color		-- Remove the pink color from the image.

			l_window.surface.draw_surface (l_background, 0, 0)		-- Drawing a background on the window surface
			l_window.surface.draw_surface (l_bird, 500, 400)		-- Drawing a bird on the window surface (over the background)
			l_window.update-- Show the modifications of the window surface

			game_library.delay (3000)	-- Wait 3 seconds before closing
		end

end
