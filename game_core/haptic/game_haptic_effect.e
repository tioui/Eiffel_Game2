note
	description: "An effect to play on a {GAME_HAPTIC}"
	author: "Louis Marchand"
	date: "Mon, 02 Mar 2015 16:23:11 +0000"
	revision: "2.0"

deferred class
	GAME_HAPTIC_EFFECT

inherit
	MEMORY_STRUCTURE
		export
			{NONE} shared, make_by_pointer, make
			{GAME_SDL_ANY} item
		end

feature -- Access

	length:NATURAL_32 assign set_length
			-- Duration of `Current' (in millisecond)
		require
			Exists: exists
		deferred
		end

	set_length(a_length:NATURAL_32)
			-- Assign `length' with the value of `a_length'
		require
			Exists: exists
			Length_Valid: a_length <= 32767
		deferred
		ensure
			Is_Assign: length = a_length
		end


feature {NONE} -- Implementation

	structure_size: INTEGER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.c_sizeof_sdl_haptic_effect
		end

	type:NATURAL_16 assign set_type
			-- Internal type of `Current'
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_effect_type(item)
		end

	set_type(a_type:NATURAL_16)
			-- Assign `type' with the value of `a_type'
		require
			Exists: exists
		do
			 {GAME_SDL_EXTERNAL}.set_sdl_haptic_effect_type(item, a_type)
		ensure
			Is_Assign: type = a_type
		end

	specific_item:POINTER
			-- Internal pointer that is specific to a certain `type' of `Current'
			-- Note that `item' only point to a C union.
		require
			Exists: exists
		deferred
		ensure
			Result_Not_Null: not Result.is_default_pointer
		end

invariant
	Type_Valid: type > 0
end

