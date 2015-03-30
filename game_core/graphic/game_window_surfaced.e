note
	description: "[
						A {GAME_WINDOW} that directly use {GAME_SURFACE} to render.
						Note that {GAME_WINDOW_SURFACED} don't use hardware acceleration and is very slow.
						It should be use for slow application only. To use hardware acceleration,
						use the {GAME_WINDOW_RENDERED} type.
					]"
	author: "Louis Marchand"
	date: "January 14, 2014"
	revision: "2.0.0.1"

class
	GAME_WINDOW_SURFACED

inherit
	GAME_WINDOW


create
	make,
	make_default,
	make_on_display,
	make_with_position,
	make_centered,
	make_fullscreen,
	make_with_extra_flags

feature -- Access

	surface:GAME_SURFACE
		local
			l_surface_pointer:POINTER
			l_source:GAME_IMAGE
		do
			if attached internal_surface as la_surface then
				Result:=la_surface
			else
				l_surface_pointer:={GAME_SDL_EXTERNAL}.SDL_GetWindowSurface(item)
				create l_source.share_from_pointer (l_surface_pointer)
				if l_source.is_openable then
					l_source.open
					if l_source.is_open then
						create internal_surface.share_from_image (l_source)
						Result:=surface
					else
						io.error.put_string ("An error occured while creating the surfaced window.%N")
						has_error:=True
						create Result.make_for_window (Current, 0, 0)
					end
				else
					io.error.put_string ("An error occured while creating the surfaced window.%N")
					has_error:=True
					create Result.make_for_window (Current, 0, 0)
				end
				check not has_error end
			end
		end

	update
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_UpdateWindowSurface(item)
			manage_error_code(l_error, "An error occured while updating the window surface.")
		end

feature {NONE} -- Implementation

	internal_surface:detachable GAME_SURFACE

-- Todo:
		-- http://wiki.libsdl.org/SDL_UpdateWindowSurfaceRects

end
