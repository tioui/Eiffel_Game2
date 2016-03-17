note
	description: "[
						Show how to use a {GAME_WINDOW_SURFACED}.
						Note that with {GAME_WINDOW_SURFACED} you have less control and less
						possible effect. But it is easyer to use. For enabling every feature
						of the game library, you must use the renderer system with a
						{GAME_WINDOW_RENDERED}.
					]"
	author: "Louis Marchand"
	date: "Thu, 17 Mar 2016 13:26:06 +0000"
	revision: "1.0"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
		do
			has_error := False
			create_window
			background:=create_surface("bk.jpg")	-- The background is in a png file
			bird:=create_surface("pingus.png")		-- The bird is in a png file
		end

feature -- Access

	run
			-- Run the application. Every local variable will be collected properly when calling the `quit_library' command in the `make' feature.
		require
			No_Error: not has_error		-- Start this procedure only if the `make' didn't has any error
		local
			l_window:GAME_WINDOW_SURFACED
			l_background, l_bird:GAME_SURFACE
		do
			window.surface.draw_surface (background, 0, 0)		-- Drawing a background
			window.surface.draw_surface (bird, 500, 400)		-- Drawing a bird (over the background)
			window.surface.draw_sub_surface_with_scale (bird, 0, 0, 66, 99, 100, 300, 300, 200)	-- A very fat bird!!!
			window.surface.draw_sub_surface (bird, 12, 0, 28, 30, 600, 300)	-- A bird head
			window.update

			game_library.quit_signal_actions.extend (agent on_quit) -- Tell the library what to do when a quit signal come.
			game_library.launch		-- Launch the game loop (the application block here).
		end

	window:GAME_WINDOW_SURFACED
			-- The window to draw the scene

	has_error:BOOLEAN
			-- `True' if an error occured during the creation of `Current'

	background:GAME_SURFACE
			-- Image of the background

	bird:GAME_SURFACE
			-- An image of a bird

feature {NONE} -- Implementation

	create_window
			-- Create the main `window'.
		local
			l_window_builder:GAME_WINDOW_SURFACED_BUILDER
		do
			create l_window_builder
			l_window_builder.set_dimension (800, 600)
			l_window_builder.set_title ("Hello Bird")
			window := l_window_builder.generate_window
		end

	create_surface(a_filename:STRING):GAME_SURFACE
			-- Create the surface that will be use for background.
		local
			l_image:IMG_IMAGE_FILE
		do
			create l_image.make (a_filename)	-- When created, the image source is not open
			if l_image.is_openable then		-- Look if the file can be open. In the present case, if the file exist and is readable.
				l_image.open		--Try to open the image source
				if l_image.is_open then		-- If the image source is not open, then the file is probably not a valid bmp file
					create Result.share_from_image (l_image)		-- Create a surface containing the image
					if not Result.is_open then	-- If the surface has not open as it should be.
						io.error.put_string ("The surface cannot be created.%N")
						has_error := True
					end
				else
					create Result.make (1, 1)		-- To be sure that Result is set
					io.error.put_string ("The file " + a_filename.as_string_8 + " does not seem to be a valid image file.%N")
					has_error := True
				end
			else
				create Result.make (1, 1)		-- To be sure that Result is set
				io.error.put_string ("Cannot read the image file " + a_filename.as_string_8 + ".%N")
				has_error := True
			end
		end

	on_quit(a_timestamp:NATURAL_32)
			-- Execute when the application get a quit signal.
		do
			game_library.stop		-- Stop the main loop (that was started with the `game_library'.`launch' feature)
		end

end
