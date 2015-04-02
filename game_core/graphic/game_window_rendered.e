note
	description: "A {GAME_WINDOW} that is rendered by a {GAME_RENDERER_DRIVER}."
	author: "Louis Marchand"
	date: "Thu, 26 Mar 2015 19:48:35 +0000"
	revision: "2.0"

class
	GAME_WINDOW_RENDERED

inherit
	GAME_WINDOW
		redefine
			dispose
		end
	GAME_RENDER_TARGET
		undefine
			default_create
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

	renderer: GAME_RENDERER
			-- The rendering context of `Current'
		do
			if attached internal_renderer as la_renderer then
				Result := la_renderer
			else
				create_default_renderer
				Result := renderer
			end
		end

	create_default_renderer
			-- Assign `renderer' with the first found {GAME_RENDERER_DRIVER}
		do
			create internal_renderer.make (Current)
		end

	create_renderer(a_must_support_target_texture, a_must_sync_update, a_must_be_software_rendering,
					a_must_be_hardware_accelerated:BOOLEAN)
			-- Create a new rendering context for `Current'. If `a_must_support_target_texture' is True,
			-- the rendering context must permit to target to a texture instead of `Current'.
			-- If `a_must_sync_update' is True, the `update' will wait for vsync before finishing.
			-- If `a_must_be_software_rendering' is True, the renderer will always
		require
			Software_Not_Hardware: a_must_be_software_rendering implies not a_must_be_hardware_accelerated
		do
			if attached internal_renderer as la_renderer then
				la_renderer.dispose
			end
			create internal_renderer.make_with_flags (Current, a_must_support_target_texture,
							a_must_sync_update, a_must_be_software_rendering, a_must_be_hardware_accelerated)
		end

	create_renderer_from_driver(a_driver:GAME_RENDERER_DRIVER)
			-- Create a new rendering context using `a_driver' as renderer driver.
		do
			if attached internal_renderer as la_renderer then
				la_renderer.dispose
			end
			create internal_renderer.make_with_renderer_driver (Current, a_driver)
		end

	update
			-- <Precursor>
		require else
			Renderer_Exists: renderer.exists
		do
			if renderer.exists then
				renderer.present
			end
		end

feature {NONE} -- Implementation

	internal_renderer:detachable GAME_RENDERER
			-- If it has already been created. Contain the `renderer' of `Current'
			-- Note that `renderer' is lazy assigned

	dispose
			-- <Precursor>
		do
			renderer.dispose
			Precursor {GAME_WINDOW}
		end

invariant
	Renderer_Valid: attached internal_renderer as la_renderer implies
						la_renderer.item = {GAME_SDL_EXTERNAL}.SDL_GetRenderer(item)
end
