note
	description: "A builder to create {GAME_WINDOW_RENDERED}."
	author: "Louis Marchand"
	date: "Sat, 04 Apr 2015 00:24:50 +0000"
	revision: "2.0"

expanded class
	GAME_WINDOW_RENDERED_BUILDER

inherit
	GAME_WINDOW_BUILDER

feature -- Access

	no_default_renderer:BOOLEAN assign set_no_default_renderer
			-- The `generate_window' won't have any {GAME_RENDERER} initialized
			-- at creation. If False, `renderer_driver',
			-- `must_renderer_support_texture_target',
			-- `must_renderer_synchronize_update',
			-- `must_renderer_be_software_rendering' and
			-- `must_renderer_be_hardware_accelerated' will be
			-- ignored

	set_no_default_renderer(a_value:BOOLEAN)
			-- Assign to `no_default_renderer' the value of `a_value'
		do
			if a_value then
				enable_no_default_renderer
			else
				disable_no_default_renderer
			end
		ensure
			Is_Assign: no_default_renderer ~ a_value
		end

	enable_no_default_renderer
			-- The initial `renderer' of the `generate_window' will
			-- support texture as rendering target or trigger an error.
			-- Note: Will unset `renderer_driver' and will disable
			-- `must_renderer_support_texture_target',
			-- `must_renderer_synchronize_update',
			-- `must_renderer_be_software_rendering' and
			-- `must_renderer_be_hardware_accelerated'
		do
			no_default_renderer := True
			unset_renderer_driver
			disable_must_renderer_support_texture_target
			disable_must_renderer_synchronize_update
			disable_must_renderer_be_software_rendering
			disable_must_renderer_be_hardware_accelerated
		ensure
			Is_Set: no_default_renderer
			Is_Renderer_Driver_Void: not attached renderer_driver
			Is_Must_Renderer_Support_Texture_Target_Disabled: not must_renderer_support_texture_target
			Is_Must_Renderer_Synchronize_Update_Disabled: not must_renderer_synchronize_update
			Is_Must_Renderer_Be_Software_Rendering_Disabled: not must_renderer_be_software_rendering
			Is_Must_Renderer_Be_Hardware_Accelerated_Disabled: not must_renderer_be_hardware_accelerated
		end

	disable_no_default_renderer
			-- The initial `renderer' of the `generate_window' does not
			-- have to support texture as rendering target or trigger an error.
		do
			no_default_renderer := False
		ensure
			Is_Unset: not no_default_renderer
		end

	must_renderer_support_texture_target:BOOLEAN assign set_must_renderer_support_texture_target
			-- The initial `renderer' of the `generate_window'
			-- must support texture as rendering target.

	set_must_renderer_support_texture_target(a_value:BOOLEAN)
			-- Assign to `must_renderer_support_texture_target' the value of `a_value'
		do
			if a_value then
				enable_must_renderer_support_texture_target
			else
				disable_must_renderer_support_texture_target
			end
		ensure
			Is_Assign: must_renderer_support_texture_target ~ a_value
		end

	enable_must_renderer_support_texture_target
			-- The initial `renderer' of the `generate_window' will
			-- support texture as rendering target or trigger an error.
			-- Note: Will unset `renderer_driver'
		do
			must_renderer_support_texture_target := True
			disable_no_default_renderer
			unset_renderer_driver
		ensure
			Is_Set: must_renderer_support_texture_target
			Is_Renderer_Driver_Void: not attached renderer_driver
			Is_Default_Renderer_Disabled: not no_default_renderer
		end

	disable_must_renderer_support_texture_target
			-- The initial `renderer' of the `generate_window' does not
			-- have to support texture as rendering target or trigger an error.
		do
			must_renderer_support_texture_target := False
		ensure
			Is_Unset: not must_renderer_support_texture_target
		end

	must_renderer_synchronize_update:BOOLEAN assign set_must_renderer_support_texture_target
			-- The initial `renderer' of the `generate_window'
			-- must support synchronization of the window update
			-- and the refresh rate.

	set_must_renderer_synchronize_update(a_value:BOOLEAN)
			-- Assign to `must_renderer_synchronize_update' the value of `a_value'
		do
			if a_value then
				enable_must_renderer_synchronize_update
			else
				disable_must_renderer_synchronize_update
			end
		ensure
			Is_Assign: must_renderer_synchronize_update ~ a_value
		end

	enable_must_renderer_synchronize_update
			-- The initial `renderer' of the `generate_window' will
			-- support synchronization of the window update and the
			-- refresh rate.
			-- Note: Will unset `renderer_driver'
		do
			must_renderer_synchronize_update := True
			disable_no_default_renderer
			unset_renderer_driver
		ensure
			Is_Set: must_renderer_synchronize_update
			Is_Renderer_Driver_Void: not attached renderer_driver
			Is_Default_Renderer_Disabled: not no_default_renderer
		end

	disable_must_renderer_synchronize_update
			-- The initial `renderer' of the `generate_window' does not
			-- have to support synchronization of the window update and the
			-- refresh rate.
		do
			must_renderer_synchronize_update := False
		ensure
			Is_Unset: not must_renderer_synchronize_update
		end

	must_renderer_be_software_rendering:BOOLEAN assign set_must_renderer_support_texture_target
			-- The initial `renderer' of the `generate_window'
			-- must be a software renderer

	set_must_renderer_be_software_rendering(a_value:BOOLEAN)
			-- Assign to `must_renderer_be_software_rendering' the value of `a_value'
		do
			if a_value then
				enable_must_renderer_be_software_rendering
			else
				disable_must_renderer_be_software_rendering
			end
		ensure
			Is_Assign: must_renderer_be_software_rendering ~ a_value
		end

	enable_must_renderer_be_software_rendering
			-- The initial `renderer' of the `generate_window' will
			-- be a software renderer
			-- Note: Will unset `renderer_driver'
		do
			must_renderer_be_software_rendering := True
			disable_no_default_renderer
			unset_renderer_driver
		ensure
			Is_Set: must_renderer_be_software_rendering
			Is_Renderer_Driver_Void: not attached renderer_driver
			Is_Default_Renderer_Disabled: not no_default_renderer
		end

	disable_must_renderer_be_software_rendering
			-- The initial `renderer' of the `generate_window' does not
			-- have to be a software renderer
		do
			must_renderer_be_software_rendering := False
		ensure
			Is_Unset: not must_renderer_be_software_rendering
		end

	must_renderer_be_hardware_accelerated:BOOLEAN assign set_must_renderer_support_texture_target
			-- The initial `renderer' of the `generate_window'
			-- must be hardware accelerated

	set_must_renderer_be_hardware_accelerated(a_value:BOOLEAN)
			-- Assign to `must_renderer_be_hardware_accelerated' the value of `a_value'
		do
			if a_value then
				enable_must_renderer_be_hardware_accelerated
			else
				disable_must_renderer_be_hardware_accelerated
			end
		ensure
			Is_Assign: must_renderer_be_hardware_accelerated ~ a_value
		end

	enable_must_renderer_be_hardware_accelerated
			-- The initial `renderer' of the `generate_window' will
			-- be hardware accelerated
			-- Note: Will unset `renderer_driver'
		do
			must_renderer_be_hardware_accelerated := True
			disable_no_default_renderer
			unset_renderer_driver
		ensure
			Is_Set: must_renderer_be_hardware_accelerated
			Is_Renderer_Driver_Void: not attached renderer_driver
			Is_Default_Renderer_Disabled: not no_default_renderer
		end

	disable_must_renderer_be_hardware_accelerated
			-- The initial `renderer' of the `generate_window' does not
			-- have to be hardware accelerated
		do
			must_renderer_be_hardware_accelerated := False
		ensure
			Is_Unset: not must_renderer_be_hardware_accelerated
		end

	renderer_driver:detachable GAME_RENDERER_DRIVER
			-- The initial `renderer' of the `generate_window'
			-- Note: if this is not Void, `Current' will ignore
			-- `must_renderer_support_texture_target',
			-- `must_renderer_synchronize_update' and
			-- `must_renderer_be_hardware_accelerated'

	set_renderer_driver(a_renderer_driver: detachable GAME_RENDERER_DRIVER)
			-- Assign to `renderer_driver' the value of `a_renderer_driver'
		do
			renderer_driver := a_renderer_driver
		ensure
			Is_Set: renderer_driver ~ a_renderer_driver
		end

	unset_renderer_driver
			-- Assign to `renderer_driver' the `Void' value
		do
			set_renderer_driver(Void)
		ensure
			Is_Unset: not attached renderer_driver
		end
	
	generate_window:GAME_WINDOW_RENDERED
			-- The {GAME_WINDOW_RENDERED} that fit all
			-- attributes of `Current'
		do
			if no_default_renderer then
				create Result.make(
							title, display, is_position_x_centered,
							is_position_y_centered, is_position_x_undefined,
							is_position_y_undefined, position_x, position_y,
							width, height, flags
						)
			elseif attached renderer_driver as la_driver then
				create Result.make_from_driver (
							title, display, is_position_x_centered,
							is_position_y_centered, is_position_x_undefined,
							is_position_y_undefined, position_x, position_y,
							width, height, flags, la_driver
						)
			else
				create Result.make_from_constraint (
							title, display, is_position_x_centered,
							is_position_y_centered, is_position_x_undefined,
							is_position_y_undefined, position_x, position_y,
							width, height, flags, must_renderer_support_texture_target,
							must_renderer_synchronize_update, must_renderer_be_software_rendering,
							must_renderer_be_hardware_accelerated
						)
			end

		end

end
