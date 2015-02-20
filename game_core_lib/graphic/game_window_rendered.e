note
	description: "Summary description for {GAME_WINDOW_RENDERED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_WINDOW_RENDERED

inherit
	GAME_WINDOW
		redefine
			make_with_extra_flags,
			dispose
		end
	GAME_RENDER_TARGET


create
	make,
	make_default,
	make_on_display,
	make_with_position,
	make_centered,
	make_fullscreen,
	make_with_extra_flags

feature {NONE} -- Initialization

	make_with_extra_flags(a_title:READABLE_STRING_GENERAL; a_x, a_y, a_width, a_height: INTEGER; a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input:BOOLEAN; a_flags:NATURAL_32)
			-- <Precursor>
			-- Also initialize the rendering context `renderer' that can target to texture and that
			-- does not update itself automaticaly at vsync.
		do
			Precursor {GAME_WINDOW}(a_title, a_x, a_y, a_width, a_height, a_hide, a_remove_border, a_minimize, a_maximize, a_grab_input, a_flags)
			create_renderer (True, False)
		end

feature -- Access

	renderer: GAME_RENDERER
			-- The rendering context of `Current'
		do
			check attached internal_renderer as la_renderer then
				Result := la_renderer
			end
		end

	create_renderer(a_can_target_texture, a_update_at_vsync:BOOLEAN)
			-- Create a new rendering context for `Current'. If `a_can_target_texture' is True, the rendering context
			-- can target a texture instead of `Current'. If `a_update_at_vsync' is True, the `present' is automaticaly
			-- used when the screnn has it's vsync.
		do
			if attached internal_renderer as la_renderer then
				la_renderer.dispose
			end
			create internal_renderer.make_hardware(Current, a_can_target_texture, a_update_at_vsync)
		end

	create_renderer_from_driver(a_driver:GAME_RENDERER_DRIVER; a_can_target_texture, a_update_at_vsync:BOOLEAN)
			-- Create a new rendering context using `a_driver'. If `a_can_target_texture' is True, the rendering context
			-- can target a texture instead of `Current'. If `a_update_at_vsync' is True, the `present' is automaticaly
			-- used when the screnn has it's vsync.
		require
			Can_Target_Texture_Valid: a_can_target_texture implies a_driver.is_rendering_on_texture_supported
			Update_At_Vsync_Valid: a_update_at_vsync implies a_driver.is_present_synchronized_supported
		do
			if attached internal_renderer as la_renderer then
				la_renderer.dispose
			end
			create internal_renderer.make_with_rendering_driver (Current, a_driver.index, False, a_can_target_texture, a_update_at_vsync)
		end

	update
		do
			renderer.present
		end

feature {NONE} -- Implementation

	internal_renderer:detachable GAME_RENDERER

	dispose
		do
			renderer.dispose
			Precursor {GAME_WINDOW}
		end

invariant
	Renderer_Attached: attached internal_renderer
end
