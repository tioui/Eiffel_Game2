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
	make_from_constraint,
	make_from_driver

feature {NONE} -- Initialization

	make_from_constraint(a_title:READABLE_STRING_GENERAL;a_display:detachable GAME_DISPLAY;
				a_is_x_centered, a_is_y_centered, a_is_x_undefined, a_is_y_undefined:BOOLEAN;
				a_x, a_y, a_width, a_height: INTEGER; a_flags:NATURAL_32;
				a_must_renderer_support_target_texture, a_must_renderer_sync_update,
				a_must_renderer_be_software_rendering, a_must_be_hardware_accelerated:BOOLEAN)
			-- Initialization of a `a_width'x`height' `Current' at position
			-- (`a_x',`a_y') using `a_title' as window caption, and
			-- using `a_flags' as internal attributes flags. If `a_is_x_centered'
			-- or `a_is_y_centered' are set, the position will be centered on
			-- `a_display'. If `a_is_x_undefined' or `a_is_y_undefined' are
			-- set, the position does not matter, but will be place on `a_display'
			-- If `a_display' is Void, the first found display will be used.
			-- `Current' will initially use `a_renderer' to draw image.
			-- If `a_must_support_target_texture' is True, the rendering context
			-- must permit to target to a texture instead of `Current'.
			-- If `a_must_sync_update' is True, the `update' will wait for vsync before finishing.
			-- If `a_must_be_software_rendering' is True, the renderer will always
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
			Centered_Or_Undefine_X: a_is_x_centered implies not a_is_x_undefined
			Centered_Or_Undefine_Y: a_is_y_centered implies not a_is_y_undefined
			Width_Valid: a_width > 0
			Height_Valid: a_height > 0
		do
			make (
					a_title, a_display, a_is_x_centered, a_is_y_centered, a_is_x_undefined,
					a_is_y_undefined, a_x, a_y, a_width, a_height, a_flags
				)
			if exists then
				create_renderer(
						a_must_renderer_support_target_texture, a_must_renderer_sync_update,
						a_must_renderer_be_software_rendering, a_must_be_hardware_accelerated
					)
				if attached internal_renderer as la_renderer then
					has_error := la_renderer.has_error
				end
			end
		ensure
			Make_Window_Is_Open: exists
		end

	make_from_driver(a_title:READABLE_STRING_GENERAL;a_display:detachable GAME_DISPLAY;
				a_is_x_centered, a_is_y_centered, a_is_x_undefined, a_is_y_undefined:BOOLEAN;
				a_x, a_y, a_width, a_height: INTEGER; a_flags:NATURAL_32;
				a_renderer_driver:GAME_RENDERER_DRIVER)
			-- Initialization of a `a_width'x`height' `Current' at position
			-- (`a_x',`a_y') using `a_title' as window caption, and
			-- using `a_flags' as internal attributes flags. If `a_is_x_centered'
			-- or `a_is_y_centered' are set, the position will be centered on
			-- `a_display'. If `a_is_x_undefined' or `a_is_y_undefined' are
			-- set, the position does not matter, but will be place on `a_display'
			-- If `a_display' is Void, the first found display will be used.
			-- `Current' will initially use `a_renderer' to draw image.
		require
			Game_Screen_Video_Enabled: game_library.is_video_enable
			Centered_Or_Undefine_X: a_is_x_centered implies not a_is_x_undefined
			Centered_Or_Undefine_Y: a_is_y_centered implies not a_is_y_undefined
			Width_Valid: a_width > 0
			Height_Valid: a_height > 0
		do
			make (
					a_title, a_display, a_is_x_centered, a_is_y_centered, a_is_x_undefined,
					a_is_y_undefined, a_x, a_y, a_width, a_height, a_flags
				)
			if exists then
				create_renderer_from_driver(a_renderer_driver)
				if attached internal_renderer as la_renderer then
					has_error := la_renderer.has_error
				end
			end
		ensure
			Make_Window_Is_Open: exists
		end

feature -- Access

	renderer: GAME_RENDERER assign set_renderer
			-- The rendering context of `Current'
		require
			exists
		do
			if attached internal_renderer as la_renderer then
				Result := la_renderer
			else
				create_default_renderer
				Result := renderer
			end
		end

	set_renderer(a_renderer:GAME_RENDERER)
			-- Assign `a_renderer' to `renderer'
		require
			is_Current_Valid: a_renderer.original_target = Current
		do
			internal_renderer := a_renderer
		ensure
			Is_Assign: renderer = a_renderer
		end

	create_default_renderer
			-- Assign `renderer' with the first found {GAME_RENDERER_DRIVER}
		do
			if attached internal_renderer as la_renderer then
				la_renderer.dispose
			end
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
