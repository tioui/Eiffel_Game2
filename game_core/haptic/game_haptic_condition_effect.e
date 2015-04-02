note
	description: "A {GAME_HAPTIC_EFFECT} that play depending on internal condition."
	author: "Louis Marchand"
	date: "Tue, 03 Mar 2015 20:26:50 +0000"
	revision: "2.0"

class
	GAME_HAPTIC_CONDITION_EFFECT

inherit
	GAME_HAPTIC_EFFECT_INFINITE_LENGTH
	GAME_HAPTIC_EFFECT_DELAYED

create
	make

feature {NONE} -- Initialization

	make_spring
			-- effect based on axis position
		do
			make
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPRING.as_natural_16)
		end

	make_damper
			-- effect based on axis velocity
		do
			make
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_DAMPER.as_natural_16)
		end

	make_inertia
			-- effect based on axis acceleration
		do
			make
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_INERTIA.as_natural_16)
		end

	make_friction
			-- effect based on axis movement
		do
			make
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_FRICTION.as_natural_16)
		end

feature -- Access

	length:NATURAL_32 assign set_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_length(specific_item)
		end

	set_length(a_length:NATURAL_32)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_length(specific_item, a_length)
		end

	delay:NATURAL_16 assign set_delay
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_delay(specific_item)
		end

	set_delay(a_delay:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_delay(specific_item, a_delay)
		end

	interval:NATURAL_16 assign set_interval
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_constant_interval(specific_item)
		end

	set_interval(a_interval:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_constant_interval(specific_item, a_interval)
		end

	x_axis_positive_level:NATURAL_16 assign set_x_axis_positive_level
			-- Level when the x axis is on the positive side
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_right_sat_i(specific_item, 0)
		end

	set_x_axis_positive_level(a_level:NATURAL_16)
			-- Assign `x_axis_positive_level' with the value `a_level'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_right_sat_i (specific_item, 0, a_level)
		ensure
			Is_Assign: x_axis_positive_level = a_level
		end

	y_axis_positive_level:NATURAL_16 assign set_y_axis_positive_level
			-- Level when the y axis is on the positive side
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_right_sat_i(specific_item, 1)
		end

	set_y_axis_positive_level(a_level:NATURAL_16)
			-- Assign `y_axis_positive_level' with the value `a_level'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_right_sat_i (specific_item, 1, a_level)
		ensure
			Is_Assign: y_axis_positive_level = a_level
		end

	z_axis_positive_level:NATURAL_16 assign set_z_axis_positive_level
			-- Level when the z axis is on the positive side
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_right_sat_i(specific_item, 2)
		end

	set_z_axis_positive_level(a_level:NATURAL_16)
			-- Assign `z_axis_positive_level' with the value `a_level'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_right_sat_i (specific_item, 2, a_level)
		ensure
			Is_Assign: z_axis_positive_level = a_level
		end

	x_axis_negative_level:NATURAL_16 assign set_x_axis_negative_level
			-- Level when the x axis is on the negative side
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_left_sat_i(specific_item, 0)
		end

	set_x_axis_negative_level(a_level:NATURAL_16)
			-- Assign `x_axis_negative_level' with the value `a_level'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_left_sat_i (specific_item, 0, a_level)
		ensure
			Is_Assign: x_axis_negative_level = a_level
		end

	y_axis_negative_level:NATURAL_16 assign set_y_axis_negative_level
			-- Level when the y axis is on the negative side
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_left_sat_i(specific_item, 1)
		end

	set_y_axis_negative_level(a_level:NATURAL_16)
			-- Assign `y_axis_negative_level' with the value `a_level'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_left_sat_i (specific_item, 1, a_level)
		ensure
			Is_Assign: y_axis_negative_level = a_level
		end

	z_axis_negative_level:NATURAL_16 assign set_z_axis_negative_level
			-- Level when the z axis is on the negative side
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_left_sat_i(specific_item, 2)
		end

	set_z_axis_negative_level(a_level:NATURAL_16)
			-- Assign `z_axis_negative_level' with the value `a_level'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_left_sat_i (specific_item, 2, a_level)
		ensure
			Is_Assign: z_axis_negative_level = a_level
		end

	x_axis_positive_coefficient:INTEGER_16 assign set_x_axis_positive_coefficient
			-- how fast to increase the force towards the x axis positive side
		require
			Exists: exists
		do
			 Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_right_coeff_i(specific_item, 0)
		end

	set_x_axis_positive_coefficient(a_coefficient:INTEGER_16)
			-- Assign `x_axis_positive_coefficient' with the value of `a_coefficient'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_right_coeff_i(specific_item, 0, a_coefficient)
		ensure
			Is_Assign: x_axis_positive_coefficient = a_coefficient
		end

	y_axis_positive_coefficient:INTEGER_16 assign set_y_axis_positive_coefficient
			-- how fast to increase the force towards the y axis positive side
		require
			Exists: exists
		do
			 Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_right_coeff_i(specific_item, 1)
		end

	set_y_axis_positive_coefficient(a_coefficient:INTEGER_16)
			-- Assign `y_axis_positive_coefficient' with the value of `a_coefficient'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_right_coeff_i(specific_item, 1, a_coefficient)
		ensure
			Is_Assign: y_axis_positive_coefficient = a_coefficient
		end

	z_axis_positive_coefficient:INTEGER_16 assign set_z_axis_positive_coefficient
			-- how fast to increase the force towards the z axis positive side
		require
			Exists: exists
		do
			 Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_right_coeff_i(specific_item, 2)
		end

	set_z_axis_positive_coefficient(a_coefficient:INTEGER_16)
			-- Assign `z_axis_positive_coefficient' with the value of `a_coefficient'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_right_coeff_i(specific_item, 2, a_coefficient)
		ensure
			Is_Assign: z_axis_positive_coefficient = a_coefficient
		end

	x_axis_negative_coefficient:INTEGER_16 assign set_x_axis_negative_coefficient
			-- how fast to increase the force towards the x axis negative side
		require
			Exists: exists
		do
			 Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_left_coeff_i(specific_item, 0)
		end

	set_x_axis_negative_coefficient(a_coefficient:INTEGER_16)
			-- Assign `x_axis_negative_coefficient' with the value of `a_coefficient'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_left_coeff_i(specific_item, 0, a_coefficient)
		ensure
			Is_Assign: x_axis_negative_coefficient = a_coefficient
		end

	y_axis_negative_coefficient:INTEGER_16 assign set_y_axis_negative_coefficient
			-- how fast to increase the force towards the y axis negative side
		require
			Exists: exists
		do
			 Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_left_coeff_i(specific_item, 1)
		end

	set_y_axis_negative_coefficient(a_coefficient:INTEGER_16)
			-- Assign `y_axis_negative_coefficient' with the value of `a_coefficient'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_left_coeff_i(specific_item, 1, a_coefficient)
		ensure
			Is_Assign: y_axis_negative_coefficient = a_coefficient
		end

	z_axis_negative_coefficient:INTEGER_16 assign set_z_axis_negative_coefficient
			-- how fast to increase the force towards the z axis negative side
		require
			Exists: exists
		do
			 Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_left_coeff_i(specific_item, 2)
		end

	set_z_axis_negative_coefficient(a_coefficient:INTEGER_16)
			-- Assign `z_axis_negative_coefficient' with the value of `a_coefficient'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_left_coeff_i(specific_item, 2, a_coefficient)
		ensure
			Is_Assign: z_axis_negative_coefficient = a_coefficient
		end

	x_axis_dead_zone_length:NATURAL_16 assign set_x_axis_dead_zone_length
			-- size of the dead zone on the x axis.
			-- When 0xFFFF: whole axis-range when 0-centered
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_deadband_i(specific_item, 0)
		end

	set_x_axis_dead_zone_length(a_length:NATURAL_16)
			-- Assign `x_axis_dead_zone_length' with the value `a_length'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_deadband_i (specific_item, 0, a_length)
		ensure
			Is_Assign: x_axis_dead_zone_length = a_length
		end

	y_axis_dead_zone_length:NATURAL_16 assign set_y_axis_dead_zone_length
			-- size of the dead zone on the y axis.
			-- When 0xFFFF: whole axis-range when 0-centered
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_deadband_i(specific_item, 1)
		end

	set_y_axis_dead_zone_length(a_length:NATURAL_16)
			-- Assign `y_axis_dead_zone_length' with the value `a_length'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_deadband_i (specific_item, 1, a_length)
		ensure
			Is_Assign: y_axis_dead_zone_length = a_length
		end

	z_axis_dead_zone_length:NATURAL_16 assign set_z_axis_dead_zone_length
			-- size of the dead zone on the z axis.
			-- When 0xFFFF: whole axis-range when 0-centered
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_deadband_i(specific_item, 2)
		end

	set_z_axis_dead_zone_length(a_length:NATURAL_16)
			-- Assign `z_axis_dead_zone_length' with the value `a_length'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_deadband_i (specific_item, 2, a_length)
		ensure
			Is_Assign: z_axis_dead_zone_length = a_length
		end

	x_axis_dead_zone_center:INTEGER_16 assign set_x_axis_dead_zone_center
			-- position of the dead zone of the axis x
		require
			Exists: exists
		do
			 Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_center_i(specific_item, 0)
		end

	set_x_axis_dead_zone_center(a_coefficient:INTEGER_16)
			-- Assign `x_axis_dead_zone_center' with the value of `a_coefficient'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_center_i(specific_item, 0, a_coefficient)
		ensure
			Is_Assign: x_axis_dead_zone_center = a_coefficient
		end

	y_axis_dead_zone_center:INTEGER_16 assign set_y_axis_dead_zone_center
			-- position of the dead zone of the axis y
		require
			Exists: exists
		do
			 Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_center_i(specific_item, 1)
		end

	set_y_axis_dead_zone_center(a_coefficient:INTEGER_16)
			-- Assign `y_axis_dead_zone_center' with the value of `a_coefficient'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_center_i(specific_item, 1, a_coefficient)
		ensure
			Is_Assign: y_axis_dead_zone_center = a_coefficient
		end

	z_axis_dead_zone_center:INTEGER_16 assign set_z_axis_dead_zone_center
			-- position of the dead zone of the axis z
		require
			Exists: exists
		do
			 Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_condition_struct_center_i(specific_item, 2)
		end

	set_z_axis_dead_zone_center(a_coefficient:INTEGER_16)
			-- Assign `z_axis_dead_zone_center' with the value of `a_coefficient'
		require
			Exists: exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_condition_struct_center_i(specific_item, 2, a_coefficient)
		ensure
			Is_Assign: z_axis_dead_zone_center = a_coefficient
		end

feature {NONE} -- Implementation

	specific_item:POINTER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_effect_condition(item)
		end

end
