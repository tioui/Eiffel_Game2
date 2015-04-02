note
	description: "[
					Represent the direction that an effect come from (an not where
					it goes, be carefull). Cardinal directions of the haptic device
					are relative to the positioning of the device. 
					North is considered to be away from the user, south is toward the user, 
					east is right, and west is left of the user:

					               .--.
					               |__| .-------.
					               |=.| |.-----.|
					               |--| ||     ||
					               |  | |'-----'|
					               |__|~')_____('
					                [ COMPUTER ]
					
					
					                 North (0,-1)
					                      ^
					                      |
					                      |
					(-1,0) West <----[ HAPTIC ]----> East (1,0)
					                      |
					                      |
					                      v
					                 South (0,1)
					
					
					                 [ USER ]
					                   \|||/
					                   (o o)
					             ---ooO-(_)-Ooo---
				]"
	author: "Louis Marchand"
	date: "Tue, 03 Mar 2015 15:22:37 +0000"
	revision: "2.0"

class
	GAME_HAPTIC_DIRECTION

inherit
	MEMORY_STRUCTURE
		rename
			copy as copy_object
		export
			{NONE} shared, make_by_pointer, make
			{GAME_HAPTIC_DIRECTION,GAME_SDL_ANY} item
		redefine
			is_equal
		end

create {GAME_HAPTIC_EFFECT}
	make_by_pointer

feature -- Access

	is_polar:BOOLEAN
			-- Is `Current' is represented with polar coordinate
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_type(item) = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_POLAR
		end

	is_cartesian:BOOLEAN
			-- Is `Current' is represented with cartesian coordinate
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_type(item) = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_CARTESIAN
		end

	is_spherical:BOOLEAN
			-- Is `Current' is represented with spherical coordinate
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_type(item) = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPHERICAL
		end

	is_equal(a_other:like Current):BOOLEAN
			-- <Precursor>
		do
			Result := is_values_equal(a_other)
		end

	is_values_equal(a_other:GAME_HAPTIC_DIRECTION):BOOLEAN
			-- Are the important values inside `Current' are equvalent
		do
			if exists then
				if a_other.exists then
					Result := item.memory_compare(a_other.item, structure_size)
				else
					Result := False
				end
			else
				Result := not a_other.exists
			end

		end

feature {GAME_HAPTIC_DIRECTION, GAME_HAPTIC_EFFECT} -- Implementation

	type:NATURAL_8 assign set_type
			-- The type of the encoding
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_direction_struct_type(item)
		end

	set_type(a_type:NATURAL_8)
			-- Assign `type' with the value of `a_type'
		require
			Exists:exists
			Type_Valid:
						a_type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_CARTESIAN or
						a_type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_POLAR or
						a_type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPHERICAL
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_direction_struct_type(item, a_type)
		ensure
			Is_Assign: type = a_type
		end

	copy(a_other: GAME_HAPTIC_DIRECTION)
			-- Copy the memory of `a_other' into the one used by `Current'
		require
			Exists: exists
			Other_Exists: a_other.exists
		do
			item.memory_copy(a_other.item, structure_size)
		ensure
			is_values_equal(a_other)
		end

feature {NONE} -- implementation

	structure_size:INTEGER_32
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.c_sizeof_sdl_haptic_direction
		end

invariant
			Type_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_CARTESIAN or
						type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_POLAR or
						type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPHERICAL
end
