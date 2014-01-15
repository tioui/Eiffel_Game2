note
	description: "Summary description for {GAME_WINDOW_SURFACED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

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
			l_source:GAME_IMAGE_SOURCE
		do
			if attached internal_surface as la_surface then
				Result:=la_surface
			else
				l_surface_pointer:={GAME_SDL_EXTERNAL}.SDL_GetWindowSurface(internal_pointer)
				create l_source.make_from_pointer (l_surface_pointer)
				if l_source.is_openable then
					l_source.open
					if l_source.is_open then
						create internal_surface.make_from_image_source (l_source)
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

	update_surface
		local
			l_error:INTEGER
		do
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_UpdateWindowSurface(internal_pointer)
			if l_error<0 then
				io.error.put_string ("An error occured while updating the window surface.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
		end

feature {NONE} -- Implementation

	internal_surface:detachable GAME_SURFACE
	
-- Todo:
		-- http://wiki.libsdl.org/SDL_UpdateWindowSurfaceRects

end
