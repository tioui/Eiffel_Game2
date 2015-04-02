note
	description: "{GAME_HAPTIC_EFFECT} that play at a custom strength."
	author: "Louis Marchand"
	date: "Tue, 03 Mar 2015 14:16:22 +0000"
	revision: "2.0"

class
	GAME_HAPTIC_CUSTOM_EFFECT

inherit
	GAME_HAPTIC_EFFECT_INFINITE_LENGTH
		redefine
			make
		end
	GAME_HAPTIC_EFFECT_ENVELOPE
		redefine
			make
		end
	PLATFORM
	POINTER_REF
		rename
			item as null
		undefine
			out, is_equal
		end
	DISPOSABLE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization of `Current'
		do
			Precursor
			set_type({GAME_SDL_EXTERNAL}.SDL_HAPTIC_CUSTOM.as_natural_16)
			set_axes_number(1)
		ensure then
			Axes_Number_Valid: axes_number >= 1
			Type_Valid: type = {GAME_SDL_EXTERNAL}.SDL_HAPTIC_CUSTOM
		end

feature -- Access

	direction:GAME_HAPTIC_DIRECTION assign set_direction
			-- The orientation that the force of `Current' come from
		require
			Exists: exists
		do
			create Result.make_by_pointer({GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_direction(specific_item))
		end

	set_direction(a_direction:GAME_HAPTIC_DIRECTION)
			-- assign `direction' with the values of `a_direction'
		require
			Exists: exists
		do
			direction.copy(a_direction)
		ensure
			Is_Assign: direction ~ a_direction
		end

	length:NATURAL_32 assign set_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_length(specific_item)
		end

	set_length(a_length:NATURAL_32)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_length(specific_item, a_length)
		end

	delay:NATURAL_16 assign set_delay
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_delay(specific_item)
		end

	set_delay(a_delay:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_delay(specific_item, a_delay)
		end

	interval:NATURAL_16 assign set_interval
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_interval(specific_item)
		end

	set_interval(a_interval:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_interval(specific_item, a_interval)
		end

	axes_number:NATURAL_8 assign set_axes_number
			-- The number of axes to use
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_channels(specific_item)
		end

	set_axes_number(a_number:NATURAL_8)
			-- Assign `axes' with the value of `a_axes'
			-- Note: Callig this routine will clear the `samples' (to satisfied invariant)
		require
			Exists: exists
			Number_Valid: a_number >= 1
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_channels(specific_item, a_number)
			set_samples(create {ARRAYED_LIST[NATURAL_16]}.make(0))
		ensure
			Is_Assign: axes_number = a_number
			Samples_Valid_For_Every_Axes: samples.count.divisible (axes_number)
		end

	period:NATURAL_16 assign set_period
			-- Time (in millisecond) between two samples.
		require
			Exists: exists
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_period(specific_item)
		end

	set_period(a_period:NATURAL_16)
			-- Assign `period' with the value of `a_period'
		require
			Exists: exists
			Period_Valid: a_period <= 32767
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_period (specific_item, a_period)
		ensure
			Is_Assign: period = a_period
		end

	samples:ARRAYED_LIST[NATURAL_16] assign set_samples
			-- Value sequence to play `Current'
		require
			Exists: exists
		local
			l_managed_pointer:MANAGED_POINTER
			l_samples_ptr:POINTER
			l_count, l_byte_count, i:INTEGER
		do
			l_samples_ptr := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_data (specific_item)
			l_count := axes_number * {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_samples (specific_item)
			l_byte_count := l_count * natural_16_bytes
			create Result.make (l_count)
			create l_managed_pointer.make_from_pointer (l_samples_ptr, l_byte_count)
			from i := 0
			until i >= l_byte_count
			loop
				Result.extend(l_managed_pointer.read_natural_16 (i))
				i := i + natural_16_bytes
			end
		end

	set_samples(a_samples:ARRAYED_LIST[NATURAL_16])
			-- Assign `samples' with the values in `a_samples'
		require
			Exists: exists
			Samples_For_All_Axes: a_samples.count.divisible (axes_number)
		local
			l_pointer:POINTER
			l_array:ARRAY[NATURAL_16]
			l_count, l_byte_count:INTEGER
		do
			l_count := axes_number * {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_samples (specific_item)
			l_byte_count := l_count * natural_16_bytes
			l_array := a_samples.to_array
			l_pointer := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_data (specific_item)
			if not l_pointer.is_default_pointer then
				l_pointer.memory_free
			end
			l_pointer := l_pointer.memory_alloc (l_byte_count)
			c_memcpy($l_array, l_pointer, l_byte_count)
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_data (specific_item, l_pointer)
		ensure
			Is_Assign: samples ~ a_samples
			Samples_Valid_For_Every_Axes: samples.count.divisible (axes_number)
		end

	fade_in_level:NATURAL_16 assign set_fade_in_level
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_attack_level(specific_item)
		end

	set_fade_in_level(a_fade_in_level:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_attack_level(specific_item, a_fade_in_level)
		end

	fade_in_length:NATURAL_16 assign set_fade_in_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_attack_length(specific_item)
		end

	set_fade_in_length(a_fade_in_length:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_attack_length(specific_item, a_fade_in_length)
		end

	fade_out_level:NATURAL_16 assign set_fade_out_level
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_fade_level(specific_item)
		end

	set_fade_out_level(a_fade_out_level:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_fade_level(specific_item, a_fade_out_level)
		end

	fade_out_length:NATURAL_16 assign set_fade_out_length
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_fade_length(specific_item)
		end

	set_fade_out_length(a_fade_out_length:NATURAL_16)
			-- <Precursor>
		do
			{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_fade_length(specific_item, a_fade_out_length)
		end

feature {NONE} -- Implementation

	specific_item:POINTER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.get_sdl_haptic_effect_custom(item)
		end

	dispose
			-- <Precursor>
		local
			l_samples_pointer:POINTER
		do
			l_samples_pointer := {GAME_SDL_EXTERNAL}.get_sdl_haptic_custom_data (specific_item)
			if not l_samples_pointer.is_default_pointer then
				l_samples_pointer.memory_free
				{GAME_SDL_EXTERNAL}.set_sdl_haptic_custom_data (specific_item, null)
			end
		end

invariant
	Axes_Number_Valid: axes_number >= 1
	Samples_Valid_For_Every_Axes: samples.count.divisible (axes_number)
end
