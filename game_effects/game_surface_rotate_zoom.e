note
	description: "Create a {GAME_SURFACE} by applying an effect on another object of type {GAME_SURFACE}."
	author: "Louis Marchand"
	date: "April 30, 2013"
	revision: "1.0.0.0"

class
	GAME_SURFACE_ROTATE_ZOOM

inherit
	GAME_SURFACE
		rename
			make as make_surface
		end

create
	make,
	make_rotate,
	make_zoom_x_y,
	make_zoom

feature {NONE} -- Initialization

	make(a_from_surface:GAME_SURFACE;a_angle,a_zoomX,a_zoomY:REAL_64;a_smooth:BOOLEAN)
			-- Initialization for `Current'.
		local
			l_image:GAME_IMAGE
		do
			create l_image.own_from_pointer ({GAME_EFFECTS_EXTERNAL}.rotozoomSurfaceXY(a_from_surface.item,a_angle,a_zoomX,a_zoomY,a_smooth))
			if l_image.is_openable then
				l_image.open
				share_from_image (l_image)
			else
				manage_error_pointer (create {POINTER}, "Cannot create Rotate/Zoom surface")
				image := l_image
			end
		end

	make_rotate(a_from_surface:GAME_SURFACE;a_angle:REAL_64;a_smooth:BOOLEAN)
		do
			make(a_from_surface,a_angle,1.0,1.0,a_smooth)
		end

	make_zoom_x_y(a_from_surface:GAME_SURFACE;a_zoomX,a_zoomY:REAL_64;a_smooth:BOOLEAN)
		do
			make(a_from_surface,0,a_zoomX,a_zoomY,a_smooth)
		end

	make_zoom(a_from_surface:GAME_SURFACE;a_zoom:REAL_64;a_smooth:BOOLEAN)
		do
			make(a_from_surface,0,a_zoom,a_zoom,a_smooth)
		end

end
