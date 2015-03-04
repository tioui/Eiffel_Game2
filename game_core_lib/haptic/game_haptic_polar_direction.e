note
	description: "[
					Represent the direction that an effect come from (an not where
					it goes, be carefull). Direction is encoded by hundredths of a
					degree starting north and turning clockwise. Cardinal directions
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
					
					
					                 North (0)
					                      ^
					                      |
					                      |
					(9000) West <----[ HAPTIC ]----> East (27000)
					                      |
					                      |
					                      v
					                 South (18000)
					
					
					                 [ USER ]
					                   \|||/
					                   (o o)
					             ---ooO-(_)-Ooo---
				]"
	author: "Louis Marchand"
	date: "Tue, 03 Mar 2015 15:22:37 +0000"
	revision: "0.1"

class
	GAME_HAPTIC_POLAR_DIRECTION

inherit
	GAME_HAPTIC_DIRECTION
		redefine
			make, is_values_equal
		end

create {GAME_HAPTIC_EFFECT}
	make_from_other

create
	make,
	make_with_angle

feature {NONE} -- Initialization

	make_from_other(a_other:GAME_HAPTIC_DIRECTION)
			-- Initalization of `Current' using `a_other' as source
		require
			Other_Exists: a_other.exists
			Other_Cartesian: a_other.is_polar
		do
			make
			copy(a_other)
		ensure
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_POLAR
			Is_Equal_Other: is_values_equal(a_other)
		end

	make
			-- Initialization of `Current'
		do
			Precursor
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_POLAR)
		ensure then
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_POLAR
			Angle_Valid: angle = 0
		end

	make_with_angle(a_angle:INTEGER_32)
			-- Initialization of `Current' using `a_angle' as `angle'
		do
			make
			set_angle(a_angle)
		ensure
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_POLAR
			Angle_Valid: angle = a_angle
		end

feature -- Access

	angle:INTEGER_32 assign set_angle
			-- The angle in polar coordinate (encoded by hundredths of a degree
			-- starting north and turning clockwise).
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_dir_i(item, 0)
		end

	set_angle(a_angle:INTEGER_32)
			-- Assign `angle' with the value of `a_angle'
		require
			Exists:exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_direction_struct_dir_i (item, 0, a_angle)
		ensure
			Is_Assign: angle = a_angle
		end

	is_values_equal(a_other:GAME_HAPTIC_DIRECTION):BOOLEAN
			-- <Precursor>
		do
			if exists then
				if a_other.exists then
					Result :=
						attached {GAME_HAPTIC_POLAR_DIRECTION} a_other as la_other and then
						(type = la_other.type and angle = la_other.angle)
				else
					Result := False
				end
			else
				Result := not a_other.exists
			end
		end

invariant
	Type_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_POLAR
end
