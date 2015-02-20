note
	description: "Summary description for {GAME_WINDOW_SOFTWARE_RENDERED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_WINDOW_SOFTWARE_RENDERED

inherit
	GAME_WINDOW_RENDERED
		redefine
			create_renderer,
			create_renderer_from_driver
		end

create
	make,
	make_default,
	make_on_display,
	make_with_position,
	make_centered,
	make_fullscreen,
	make_with_extra_flags

feature -- Access

	create_renderer(a_can_target_texture, a_update_at_vsync:BOOLEAN)
		do
			renderer.dispose
			create internal_renderer.make_software(Current, a_can_target_texture, a_update_at_vsync)
		end

	create_renderer_from_driver(a_driver:GAME_RENDERER_DRIVER; a_can_target_texture, a_update_at_vsync:BOOLEAN)
		do
			renderer.dispose
			create internal_renderer.make_with_rendering_driver (Current, a_driver.index, True, a_can_target_texture, a_update_at_vsync)
		end

end
