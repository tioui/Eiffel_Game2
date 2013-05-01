note
	description: "Create a {GAME_SURFACE} by applying an effect on another object of type {GAME_SURFACE}."
	author: "Louis Marchand"
	date: "April 30, 2013"
	revision: "1.0.0.0"

class
	GAME_SURFACE_ROTATE_ZOOM

inherit
	GAME_SURFACE

create
	make_rotate_zoom

feature {NONE} -- Initialization

	make_rotate_zoom(a_from_surface:GAME_SURFACE;a_angle,a_zoomX,a_zoomY:REAL_64;a_smooth:BOOLEAN)
			-- Initialization for `Current'.
		do
			make_from_pointer({GAME_EFFECTS_EXTERNAL}.rotozoomSurfaceXY(a_from_surface.internal_pointer,a_angle,a_zoomX,a_zoomY,a_smooth))
			set_is_alpha_accelerated(a_from_surface.is_alpha_accelerated)
			set_is_transparent_accelerated(a_from_surface.is_transparent_accelerated)
			if a_from_surface.is_alpha_enable then
				enable_alpha
			else
				disable_alpha
			end
			if a_from_surface.is_alpha_enable then
				set_overall_alpha_value(a_from_surface.overall_alpha_value)
			end
			if a_from_surface.is_transparent_enable then
				set_color_key (a_from_surface.transparent_color_key)
			end
		end

	make_rotate(a_from_surface:GAME_SURFACE;a_angle:REAL_64;a_smooth:BOOLEAN)
		do
			make_rotate_zoom(a_from_surface,a_angle,1.0,1.0,a_smooth)
		end

	make_zoom_x_y(a_from_surface:GAME_SURFACE;a_zoomX,a_zoomY:REAL_64;a_smooth:BOOLEAN)
		do
			make_rotate_zoom(a_from_surface,0,a_zoomX,a_zoomY,a_smooth)
		end

	make_zoom(a_from_surface:GAME_SURFACE;a_zoom:REAL_64;a_smooth:BOOLEAN)
		do
			make_rotate_zoom(a_from_surface,0,a_zoom,a_zoom,a_smooth)
		end

end
