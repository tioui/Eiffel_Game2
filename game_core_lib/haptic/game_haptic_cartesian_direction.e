note
	description: "[
					Represent the direction that an effect come from (an not where
					it goes, be carefull). Direction is encoded by three position
					(X axis, Y axix and Z axis). Cardinal directions
					of the haptic device are relative to the positioning of the device. 
					North is considered to be away from the user, south is toward the user, 
					east is right, and west is left of the user:

					               .--.
					               |__| .-------.
					               |=.| |.-----.|
					               |--| ||     ||
					               |  | |'-----'|
					               |__|~')_____('
					                [ COMPUTER ]
					
					
					                 North (0,-1,0)
					                      ^
					                      |
					                      |
					(-1,0,0) West <----[ HAPTIC ]----> East (1,0,0)
					                      |
					                      |
					                      v
					                 South (0,1,0)
					
					
					                 [ USER ]
					                   \|||/
					                   (o o)
					             ---ooO-(_)-Ooo---
				]"
	author: "Louis Marchand"
	date: "Tue, 03 Mar 2015 15:22:37 +0000"
	revision: "0.1"

class
	GAME_HAPTIC_CARTESIAN_DIRECTION

inherit
	GAME_HAPTIC_DIRECTION
		redefine
			make, is_values_equal
		end

create {GAME_HAPTIC_EFFECT}
	make_from_other

create
	make,
	make_with_2_axis,
	make_with_axis

feature {NONE} -- Initialization

	make_from_other(a_other:GAME_HAPTIC_DIRECTION)
			-- Initalization of `Current' using `a_other' as source
		require
			Other_Exists: a_other.exists
			Other_Cartesian: a_other.is_cartesian
		do
			make
			copy(a_other)
		ensure
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_CARTESIAN
			Is_Equal_Other: is_values_equal(a_other)
		end

	make
			-- Initialization of `Current'
		do
			Precursor
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_CARTESIAN)
		ensure then
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_CARTESIAN
			X_Axis_Valid: x = 0
			Y_Axis_Valid: y = 0
			Z_Axis_Valid: z = 0
		end

	make_with_2_axis(a_x, a_y:INTEGER_32)
			-- Initialization of `Current' using `a_x' as `x' axis and `a_y' as `y' axis
		do
			make_with_axis(a_x, a_y, 0)
		ensure
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_CARTESIAN
			X_Axis_Valid: x = a_x
			Y_Axis_Valid: y = a_y
			Z_Axis_Valid: z = 0
		end

	make_with_axis(a_x, a_y, a_z:INTEGER_32)
			-- Initialization of `Current' using `a_' as `x' axis, `a_y' as
			-- `y' axis and `a_z' as `z' axis.
		do
			make
			set_position(a_x, a_y, a_z)
		ensure
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_CARTESIAN
			X_Axis_Valid: x = a_x
			Y_Axis_Valid: y = a_y
			Z_Axis_Valid: z = a_z
		end

feature -- Access

	position:TUPLE[x,y,z:INTEGER_32]
			-- The coordinate of the origin of `Current'
		require
			Exists: exists
		do
			Result := [x,y,z]
		end

	set_position(a_x, a_y, a_z:INTEGER_32)
			-- Assign `position' with the value of `a_x', `a_y' and `a_z'
		require
			Exists: exists
		do
			set_x(a_x)
			set_y(a_y)
			set_z(a_z)
		ensure
			X_Axis_Valid: x = a_x
			Y_Axis_Valid: y = a_y
			Z_Axis_Valid: z = a_z
		end

	x:INTEGER_32 assign set_x
			-- The horizontal coordinate of the origin of `Current'
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_dir_i(item, 0)
		end

	set_x(a_x:INTEGER_32)
			-- Assign `x' with the value of `a_x'
		require
			Exists:exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_direction_struct_dir_i (item, 0, a_x)
		ensure
			Is_Assign: x = a_x
		end

	y:INTEGER_32 assign set_y
			-- The vertical coordinate of the origin of `Current'
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_dir_i(item, 1)
		end

	set_y(a_y:INTEGER_32)
			-- Assign `y' with the value of `a_y'
		require
			Exists:exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_direction_struct_dir_i (item, 2, a_y)
		ensure
			Is_Assign: y = a_y
		end

	z:INTEGER_32 assign set_z
			-- The depth coordinate of the origin of `Current'.
			-- To use this coordinate, you need a 3 axis haptic
			-- (See: {GAME_HAPTIC}.`axes_count')
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_dir_i(item, 2)
		end

	set_z(a_z:INTEGER_32)
			-- Assign `z' with the value of `a_z'
		require
			Exists:exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_direction_struct_dir_i (item, 2, a_z)
		ensure
			Is_Assign: z = a_z
		end

	is_values_equal(a_other:GAME_HAPTIC_DIRECTION):BOOLEAN
			-- <Precursor>
		do
			if exists then
				if a_other.exists then
					Result :=
						attached {GAME_HAPTIC_CARTESIAN_DIRECTION} a_other as la_other and then
						(type = la_other.type and x = la_other.x and y = la_other.y and
						z = la_other.z)
				else
					Result := False
				end
			else
				Result := not a_other.exists
			end
		end

invariant
	Type_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_CARTESIAN
	Position_Valid: attached position as la_position and then
					(la_position.x = x and la_position.y = y and la_position.z = z)
end
