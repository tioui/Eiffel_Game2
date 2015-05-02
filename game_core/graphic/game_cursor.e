note
	description: "Summary description for {GAME_CURSOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"
	Todo: "This Class"

class
	GAME_CURSOR

inherit
	MEMORY_STRUCTURE
		export
			{NONE} all
			{ANY} exists
		end
	GAME_SDL_ANY
	DISPOSABLE

create
	make_from_image,
	make_from_surface

feature {NONE} -- Initialization

	make_from_image(a_image:GAME_IMAGE; hot_point_x, hot_point_y:INTEGER)
			-- Initialization for `Current'.
		require
			Image_Open: a_image.is_open
			Hot_Point_Valid: attached (create {GAME_SURFACE}.make_from_image (a_image)) as la_surface and then
								(hot_point_x >= 0 and hot_point_x < la_surface.width and
								hot_point_y >= 0 and hot_point_y < la_surface.height)
		local
			l_error:POINTER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_CreateColorCursor(a_image.item, hot_point_x, hot_point_y)
			if l_error.is_default_pointer then
				manage_error_pointer (l_error, "Cannot create cursor")
			else
				make_by_pointer (l_error)
			end
		ensure
			Is_Created: not has_error implies exists
		end

	make_from_surface(a_surface:GAME_SURFACE; hot_point_x, hot_point_y:INTEGER)
		require
			Surface_Valid: a_surface.is_open
			Hot_Point_x_Valid: hot_point_x >= 0 and hot_point_x < a_surface.width
			Hot_Point_y_Valid: hot_point_y >= 0 and hot_point_y < a_surface.height
		do
			make_from_image(a_surface.image, hot_point_x, hot_point_y)
		ensure
			Is_Created: not has_error implies exists
		end

feature {NONE} -- Implementation

	structure_size:INTEGER
			-- <Precursor>
			-- Should never be used
		do
			Result := 0
		end

	dispose
			-- <Precursor>
		do
			if exists then
				{GAME_SDL_EXTERNAL}.SDL_FreeCursor(item)
			end
		end

end
