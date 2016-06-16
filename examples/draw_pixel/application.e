note
	description: "Show hot to directly draw pixels on a {GAME_SURFACE}"
	author: "Louis Marchand"
	date: "Sat, 02 Jan 2016 21:31:37 +0000"
	revision: "1.0"

class
	APPLICATION

inherit

	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			game_library.enable_video
			run
			game_library.clear_all_events
			game_library.quit_library
		end

	run
		local
			l_builder:GAME_WINDOW_SURFACED_BUILDER
			l_window:GAME_WINDOW_SURFACED
			l_surface:GAME_SURFACE
		do
			create l_builder
			l_window := l_builder.generate_window
			create l_surface.make_for_window (l_window, 100, 100)
			initialize_surface(l_surface)
			l_window.surface.draw_sub_surface_with_scale (l_surface, 0, 0, l_surface.width, l_surface.height, 0, 0, l_window.width, l_window.height)
			l_window.update
			game_library.delay (5000)
		end

	initialize_surface(a_surface:GAME_SURFACE)
		local
			l_color:GAME_COLOR
		do
			create l_color.make_rgb (0, 0, 200)
			a_surface.lock
			across 1 |..| a_surface.width as la_width loop
				across 1 |..| a_surface.height as la_height loop
					a_surface.pixels.set_pixel (l_color, la_height.item, la_width.item)
					l_color.set_red (((l_color.red + 20) \\ 256).to_natural_8)
					if l_color.red < 15 then
						l_color.set_green (((l_color.green + 20) \\ 256).to_natural_8)
						if l_color.green < 15 then
							l_color.set_blue (((l_color.blue + 20) \\ 256).to_natural_8)
							if l_color.blue < 15 then
							end
						end
					end
				end
			end
			a_surface.unlock
		end

end
