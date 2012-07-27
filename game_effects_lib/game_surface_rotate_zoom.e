note
	description: "Summary description for {GAME_SURFACE_ROTATE_ZOOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_SURFACE_ROTATE_ZOOM

inherit
	GAME_SURFACE

create
	make_rotate_zoom

feature {NONE} -- Initialization

	make_rotate_zoom(from_surface:GAME_SURFACE;angle,zoomX,zoomY:REAL_64;smooth:BOOLEAN)
			-- Initialization for `Current'.
		do
			make_from_pointer({GAME_EFFECTS_EXTERNAL}.rotozoomSurfaceXY(from_surface.get_surface_pointer,angle,zoomX,zoomY,smooth))
			set_is_alpha_accelerated(from_surface.is_alpha_accelerated)
			set_is_transparent_accelerated(from_surface.is_transparent_accelerated)
			if from_surface.is_alpha_enable then
				enable_alpha
			else
				disable_alpha
			end
			if from_surface.is_alpha_enable then
				set_overall_alpha_value(from_surface.get_overall_alpha_value)
			end
			if from_surface.is_transparent_enable then
				set_color_key (from_surface.trans_color_key)
			end
		end

end
