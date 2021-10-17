note
	description: "A game engine to show Joystick functionnality."
	author: "Louis Marchand"
	date: "Sun, 17 Oct 2021 02:39:33 +0000"
	revision: "0.1"

class
	ENGINE

inherit
	GAME_LIBRARY_SHARED

create
	make

feature {NONE} -- Initialisation

	make
			-- Initialisation of `Current'
		local
			l_builder:GAME_WINDOW_RENDERED_BUILDER
		do
			create l_builder
			l_builder.set_dimension (800, 600)
			window := l_builder.generate_window
			has_error := window.has_error
			highlight_image := create_texure (window.renderer, "highlight.png")
			joystick_image := create_texure (window.renderer, "joystick.png")
			create {LINKED_LIST[JOYSTICK_DRAWABLE]}joystick_drawables.make
		end


	create_texure(a_renderer:GAME_RENDERER; a_filename:STRING):GAME_TEXTURE
			-- Generate a {GAME_TEXTURE} for `a_renderer' using `a_filename' as image source.
		local
			l_image:IMG_IMAGE_FILE
		do
			create l_image.make (a_filename)
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					create Result.make_from_image (a_renderer, l_image)
					has_error := has_error or Result.has_error
				else
					create Result.make (a_renderer, pixel_format, 1, 1)
					has_error := True
				end
			else
				create Result.make (a_renderer, pixel_format, 1, 1)
				has_error := True
			end
		end

feature -- Access

	run
			-- Execute `Current'
		require
			No_Error: not has_error
		do
			game_library.iteration_actions.extend (agent on_iteration)
			game_library.quit_signal_actions.extend (agent on_quit)
			game_library.joystick_found_actions.extend (agent on_joystick_found)
			game_library.joystick_remove_actions.extend (agent on_joystick_remove)
			window.renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (191, 201, 213))
			game_library.launch
		end

	has_error:BOOLEAN
			-- An error occured while initialising `Current`

	window:GAME_WINDOW_RENDERED
			-- Where to draw the scene

	joystick_image:GAME_TEXTURE
			-- A game joystick image

	highlight_image:GAME_TEXTURE
			-- An image used to highlight part of the joysticks.

	joystick_drawables:LIST[JOYSTICK_DRAWABLE]
			-- Created from every joysticks detected


feature {NONE} -- Implementation

	on_iteration(a_timestamp:NATURAL_32)
			-- Launched at each game loop iteration
		local
			l_renderer:GAME_RENDERER
		do
			l_renderer := window.renderer
			l_renderer.clear
			joystick_drawables.do_all (agent {JOYSTICK_DRAWABLE}.draw(l_renderer))
			l_renderer.present
		end

	on_joystick_found(a_timestamp:NATURAL_32; a_joystick:GAME_JOYSTICK)
			-- Launched when a Joystick has been found in the system.
		local
			l_x, l_y:INTEGER
		do
			l_x := (joystick_drawables.count // 2) * (joystick_image.width + 50) + 25
			l_y := (joystick_drawables.count \\ 2) * (joystick_image.height + 50) + 25
			joystick_drawables.extend (create {JOYSTICK_DRAWABLE}.make (a_joystick,
						joystick_image, highlight_image, l_x, l_y))
		end

	on_joystick_remove(a_timestamp:NATURAL_32; a_joystick:GAME_JOYSTICK)
			-- Launched when a Joystick has been found in the system.
		do
			from
				joystick_drawables.start
			until
				joystick_drawables.exhausted
			loop
				if joystick_drawables.item.joystick = a_joystick then
					joystick_drawables.remove
				else
					joystick_drawables.forth
				end
			end
		end

	on_quit(a_timestamp:NATURAL_32)
			-- Launched when the user close the window
		do
			game_library.stop
		end


feature {NONE} -- Implementation

	pixel_format:GAME_PIXEL_FORMAT
			-- A default pixel format to use on error
		once
			create Result
			Result.set_argb8888
		end
end
