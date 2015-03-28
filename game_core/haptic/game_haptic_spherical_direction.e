note
	description: "[
					Represent the direction that an effect come from (an not where
					it goes, be carefull). Direction is encoded by two rotation
					(the azimuth and inclination). Cardinal directions
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
					
					
					                 North (27000)
					                      ^
					                      |
					                      |
					(18000) West <----[ HAPTIC ]----> East (0)
					                      |
					                      |
					                      v
					                 South (9000)
					
					
					                 [ USER ]
					                   \|||/
					                   (o o)
					             ---ooO-(_)-Ooo---
				]"
	author: "Louis Marchand"
	date: "Tue, 03 Mar 2015 15:22:37 +0000"
	revision: "0.1"

class
	GAME_HAPTIC_SPHERICAL_DIRECTION

inherit
	GAME_HAPTIC_DIRECTION
		redefine
			make, is_values_equal
		end

create {GAME_HAPTIC_EFFECT}
	make_from_other

create
	make,
	make_with_azimuth,
	make_with_azimuth_and_inclination

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
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPHERICAL)
		ensure then
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPHERICAL
			Azimuth_Valid: azimuth = 0
			Inclination_Valid: inclination = 0
		end

	make_with_azimuth(a_azimuth:INTEGER_32)
			-- Initialization of `Current' using `a_azimuth' as `azimuth'
		do
			make_with_azimuth_and_inclination(a_azimuth, 0)
		ensure
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPHERICAL
			Azimuth_Valid: azimuth = a_azimuth
			Inclination_Valid: inclination = 0
		end

	make_with_azimuth_and_inclination(a_azimuth, a_inclination:INTEGER_32)
			-- Initialization of `Current' using `a_azimuth' as `azimuth' and
			-- `a_inclination' as `inclination'

		do
			make
			set_azimuth(a_azimuth)
			set_inclination(a_inclination)
		ensure
			Exists: exists
			Type_Is_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPHERICAL
			Azimuth_Valid: azimuth = a_azimuth
			Inclination_Valid: inclination = 0
		end

feature -- Access

	azimuth:INTEGER_32 assign set_azimuth
			-- The azimuth angle in spherical coordinate (encoded by hundredths of a degree
			-- starting east and rotating toward South).
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_dir_i(item, 0)
		end

	set_azimuth(a_azimuth:INTEGER_32)
			-- Assign `azimuth' with the value of `a_azimuth'
		require
			Exists:exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_direction_struct_dir_i (item, 0, a_azimuth)
		ensure
			Is_Assign: azimuth = a_azimuth
		end

	inclination:INTEGER_32 assign set_inclination
			-- The inclination angle in spherical coordinate (encoded by hundredths of a degree
			-- rotating toward the bottom of the haptic).
			-- To use this angle, you need a 3 axis haptic
			-- (See: {GAME_HAPTIC}.`axes_count')
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_dir_i(item, 1)
		end

	set_inclination(a_inclination:INTEGER_32)
			-- Assign `inclination' with the value of `a_inclination'
		require
			Exists:exists
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_direction_struct_dir_i (item, 1, a_inclination)
		ensure
			Is_Assign: inclination = a_inclination
		end

	is_values_equal(a_other:GAME_HAPTIC_DIRECTION):BOOLEAN
			-- <Precursor>
		do
			if exists then
				if a_other.exists then
					Result :=
						attached {GAME_HAPTIC_SPHERICAL_DIRECTION} a_other as la_other and then
						(type = la_other.type and azimuth = la_other.azimuth and
						inclination= la_other.inclination)
				else
					Result := False
				end
			else
				Result := not a_other.exists
			end
		end

invariant
	Type_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPHERICAL
end
