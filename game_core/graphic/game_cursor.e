note
	description: "A cursor representing the mouse in a window"
	author: "Louis Marchand"
	date: "Mon, 04 May 2015 20:37:11 +0000"
	revision: "0.1"

class
	GAME_CURSOR

inherit
	GAME_SDL_ANY
		redefine
			is_equal
		end
	DISPOSABLE
		redefine
			is_equal
		end

create
	make_from_image,
	make_from_surface,
	make_arrow,
	make_i_beam,
	make_wait,
	make_crosshair,
	make_wait_arrow,
	make_resize_north_west_south_east,
	make_resize_north_east_south_west,
	make_resize_north_south,
	make_resize_west_east,
	make_resize_all,
	make_unavailable,
	make_hand

create {GAME_LIBRARY_CONTROLLER}
	make_by_pointer

feature {NONE} -- Initialization

	make_by_pointer(a_pointer:POINTER)
			-- Initialization of `Current' using `a_pointer' as `item'
		require
			Pointer_Exists: not a_pointer.is_default_pointer
		do
			item := a_pointer
			shared := True
		ensure
			Exists: exists and shared
		end

	make_from_image(a_image:GAME_IMAGE; hot_point_x, hot_point_y:INTEGER)
			-- Initialization for `Current'.
		require
			Image_Open: a_image.is_open
			Hot_Point_Valid: attached (create {GAME_SURFACE}.make_from_image (a_image)) as la_surface and then
								(hot_point_x >= 0 and hot_point_x < la_surface.width and
								hot_point_y >= 0 and hot_point_y < la_surface.height)
		local
			l_item:POINTER
		do
			clear_error
			l_item := {GAME_SDL_EXTERNAL}.SDL_CreateColorCursor(a_image.item, hot_point_x, hot_point_y)
			if l_item.is_default_pointer then
				manage_error_pointer (l_item, "Cannot create cursor")
			else
				make_by_pointer (l_item)
				shared := False
			end
		ensure
			Is_Created: not has_error implies (exists and not shared)
		end

	make_from_surface(a_surface:GAME_SURFACE; hot_point_x, hot_point_y:INTEGER)
		require
			Surface_Valid: a_surface.is_open
			Hot_Point_x_Valid: hot_point_x >= 0 and hot_point_x < a_surface.width
			Hot_Point_y_Valid: hot_point_y >= 0 and hot_point_y < a_surface.height
		do
			make_from_image(a_surface.image, hot_point_x, hot_point_y)
		ensure
			Is_Created: not has_error implies (exists and not shared)
		end

	make_arrow
			-- Initialization of `Current' using a standard Arrow image.
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_ARROW)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_i_beam
			-- Initialization of `Current' using a I-beam image (the edit text cursor).
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_IBEAM)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_wait
			-- Initialization of `Current' using a waiting image (sometime use to indicate that the application is buzy).
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_WAIT)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_crosshair
			-- Initialization of `Current' using a crosshair image (generally shown as a +).
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_CROSSHAIR)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_wait_arrow
			-- Initialization of `Current' using an arrow with a wait image.
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_WAITARROW )
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_resize_north_west_south_east
			-- Initialization of `Current' using a diagonal resize image oriented north-west to south-east.
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_SIZENWSE)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_resize_north_east_south_west
			-- Initialization of `Current' using a diagonal resize image oriented north-east to south-west.
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_SIZENESW)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_resize_north_south
			-- Initialization of `Current' using a vertical resize image.
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_SIZENS)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_resize_west_east
			-- Initialization of `Current' using a horizontal resize image.
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_SIZEWE)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_resize_all
			-- Initialization of `Current' using a vertical and horizontal resize image.
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_SIZEWE)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_unavailable
			-- Initialization of `Current' using an image that implies an unavailable feature.
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_NO)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_hand
			-- Initialization of `Current' using a hand image.
		do
			make_system({GAME_SDL_EXTERNAL}.SDL_SYSTEM_CURSOR_HAND)
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

	make_system(a_system_cursor_id:INTEGER)
			-- Initialize a system cursor using `a_system_cursor_id' as internal system cursor index
		local
			l_item:POINTER
		do
			clear_error
			l_item := {GAME_SDL_EXTERNAL}.SDL_CreateSystemCursor(a_system_cursor_id)
			if l_item.is_default_pointer then
				manage_error_pointer (l_item, "Cannot create cursor")
			else
				make_by_pointer (l_item)
			end
		ensure
			Is_Created: not has_error implies (exists and shared)
		end

feature -- Access

	exists:BOOLEAN
			-- Is `item' reprensenting valid memory structure
		do
			Result := not item.is_default_pointer
		end

	is_equal(a_other:like Current):BOOLEAN
			-- <Precursor>
		do
			Result := item = a_other.item
		end

feature {GAME_LIBRARY_CONTROLLER, GAME_CURSOR} -- Access

	item:POINTER
			-- Internal {POINTER} of `Current'

	shared:BOOLEAN
			-- Must not free `item' when `Current' is collected

feature {NONE} -- Implementation

	dispose
			-- <Precursor>
		do
			if exists and not shared then
				{GAME_SDL_EXTERNAL}.SDL_FreeCursor(item)
			end
		end

end
