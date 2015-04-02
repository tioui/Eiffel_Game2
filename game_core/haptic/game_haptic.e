note
	description: "Information and control of force feedback devices"
	author: "Louis Marchand"
	date: "Sat, 28 Feb 2015 19:20:47 +0000"
	revision: "2.0"

deferred class
	GAME_HAPTIC

inherit
	GAME_SDL_ANY
		redefine
			default_create
		end
	GAME_LIBRARY_SHARED
		redefine
			default_create
		end
	DISPOSABLE
		redefine
			default_create
		end

feature {NONE} -- Initialization

	default_create
			-- <Precursor>
		do
			create {LINKED_LIST[GAME_HAPTIC_EFFECT_COMPILED]}internal_compiled_effect.make
		end

feature -- Query

	is_open:BOOLEAN
			-- Is `Current' currently usable
		do
			Result := not item.is_default_pointer
		end

	is_constant_effect_supported:BOOLEAN
			-- Is `Current' supported constant effect
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_CONSTANT) /= 0
		end

	is_periodic_sine_effect_supported:BOOLEAN
			-- Is `Current' supported periodic sine effect
			--   __      __      __      __
			--  /  \    /  \    /  \    /
			-- /    \__/    \__/    \__/
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_SINE) /= 0
		end

	is_periodic_triangle_effect_supported:BOOLEAN
			-- Is `Current' supported periodic triangle effect
			--   /\    /\    /\    /\    /\
			--  /  \  /  \  /  \  /  \  /
			-- /    \/    \/    \/    \/
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_TRIANGLE) /= 0
		end

	is_periodic_saw_tooth_up_effect_supported:BOOLEAN
			-- Is `Current' supported periodic effect of the type
			-- sawtooth with the openning at the bottom.
			--   /|  /|  /|  /|  /|  /|  /|
			--  / | / | / | / | / | / | / |
			-- /  |/  |/  |/  |/  |/  |/  |
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_SAWTOOTHUP) /= 0
		end

	is_periodic_saw_tooth_down_effect_supported:BOOLEAN
			-- Is `Current' supported periodic effect of the type
			-- sawtooth with the openning at the top.
			-- \  |\  |\  |\  |\  |\  |\  |
			--  \ | \ | \ | \ | \ | \ | \ |
			--   \|  \|  \|  \|  \|  \|  \|
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_SAWTOOTHDOWN) /= 0
		end

	is_linear_ramp_effect_supported:BOOLEAN
			-- Is `Current' supported linear ramp effect
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_RAMP) /= 0
		end

	is_conditionnal_spring_effect_supported:BOOLEAN
			-- Is `Current' supported conditionnal effect base on axis position
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_SPRING) /= 0
		end

	is_conditionnal_damper_effect_supported:BOOLEAN
			-- Is `Current' supported conditionnal effect base on axis velocities
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_DAMPER) /= 0
		end

	is_conditionnal_inertia_effect_supported:BOOLEAN
			-- Is `Current' supported conditionnal effect base on axis acceleration
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_INERTIA) /= 0
		end

	is_conditionnal_friction_effect_supported:BOOLEAN
			-- Is `Current' supported conditionnal effect base on axis movement
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_FRICTION) /= 0
		end

	is_left_right_effect_supported:BOOLEAN
			-- Is `Current' supported left/right effect
			-- Used in lots of recent console controller
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_LEFTRIGHT) /= 0
		end

	is_custom_effect_supported:BOOLEAN
			-- Is `Current' supported custom effect
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_CUSTOM) /= 0
		end

	is_gain_control_supported:BOOLEAN
			-- Is `Current' supported gain control
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_GAIN) /= 0
		end

	is_auto_center_supported:BOOLEAN
			-- Is `Current' supported the auto center feature
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_AUTOCENTER) /= 0
		end

	is_status_query_supported:BOOLEAN
			-- Is `Current' supported the query of effect status
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_STATUS) /= 0
		end

	is_pause_supported:BOOLEAN
			-- Is `Current' supported the pause of an effect
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticQuery(item).bit_and({GAME_SDL_EXTERNAL}.SDL_HAPTIC_PAUSE) /= 0
		end

	is_rumble_supported:BOOLEAN
			-- Can `Current' be used as a simple rumble playback
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticRumbleSupported(item)
		end

	is_paused:BOOLEAN
			-- Has `Current' presently stop with a `pause'.

	is_rumble:BOOLEAN
			-- Is `Current' initialized as a rumble playback

	axes_count:INTEGER
			-- The number of axes of `Current'
		require
			Is_Open: is_open
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticNumAxes(item)
		end

	maximum_effect_compiled:INTEGER
			-- The maximum number of effect that `Current' can compiled and store
			-- Note that on some system, tis information is not given, so this
			-- may be a simple approximation
		require
			Is_Open: is_open
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticNumEffects(item)
			if l_error < 0 then
				manage_error_code(l_error, "Cannot get the maximum number of effect that an haptic can compile.")
				Result := 0
			else
				Result := l_error
			end
		end

	maximum_effect_playing:INTEGER
			-- The maximum number of effect that `Current' can play at the same time
			-- Note that on some system, tis information is not given, so this
			-- may be a simple approximation
		require
			Is_Open: is_open
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticNumEffectsPlaying(item)
			if l_error < 0 then
				manage_error_code(l_error, "Cannot get the maximum number of effect that an haptic can play.")
				Result := 0
			else
				Result := l_error
			end
		end

	is_effect_supported(a_effect: GAME_HAPTIC_EFFECT):BOOLEAN
			-- Is `a_effect' can be compiled by `Current'
		require
			Is_Open
		local
			l_value:INTEGER
		do
			clear_error
			l_value := {GAME_SDL_EXTERNAL}.SDL_HapticEffectSupported(item, a_effect.item)
			Result := False
			if l_value < 0 then
				manage_error_code(l_value, "Cannot validate if an effect is supported by an haptic")
			else
				Result := l_value > 0
			end
		end

feature -- Access

	open
			-- Make `Current' usable
		require
			Not_Open: not is_open
		do
			clear_error
			item := internal_open
			manage_error_pointer (item, "Cannot open the haptic device")
			if is_open and then is_gain_control_supported then
				set_gain(100)
			end
		ensure
			Is_Open: not has_error implies is_open
		end

	close
			-- Make `Current' not usable
		require
			Is_Open: is_open
		do
			{GAME_SDL_EXTERNAL}.SDL_HapticClose(item)
			item := create {POINTER}
		ensure
			Is_Close: not is_open
		end

	pause
			-- Mommentaly stop the playing effect. Use `resume' to restart it
			-- where it was when paused.
		require
			Is_Open: is_open
			Pause_Supported: is_pause_supported
			Not_Paused: not is_paused
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticPause(item)
			if l_error < 0 then
				manage_error_code(l_error, "Cannot pause the haptic effect.")
			else
				is_paused := True
			end
		ensure
			Is_Paused: not has_error implies is_paused
		end

	resume
			-- Restart an effect that has been `pause' before.
		require
			Is_Open: is_open
			Pause_Supported: is_pause_supported
			Is_Paused: is_paused
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticUnpause(item)
			if l_error < 0 then
				manage_error_code(l_error, "Cannot resume the effect.")
			else
				is_paused := False
			end
		ensure
			In_UnPaused: not has_error implies not is_paused
		end

	initialize_rumble
			-- Initialized a rumble playback into `Current'
		require
			Is_Open: is_open
			Rumble_Supported: is_rumble_supported
			Not_Already_Rumble: not is_rumble
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticRumbleInit(item)
			if l_error < 0 then
				manage_error_code(l_error, "Cannot initialize a rumble playback.")
			else
				is_rumble := True
			end
		ensure
			Is_Rumble_Activated: not has_error implies is_rumble
		end

	rumble_play(a_strength:REAL_32; a_length:NATURAL_32)
			-- Start a rumble playback with a magnitude of `a_strength'
			-- and a duration `a_length' in millisecond
		require
			Is_Open: is_open
			Rumble_Supported: is_rumble_supported
			Is_Rumble_Device: is_rumble
			Strength_Is_Valid: a_strength >= 0 and a_strength <= 1
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticRumblePlay(item, a_strength, a_length)
			manage_error_code(l_error, "Cannot playback a rumble.")
		end

	rumble_play_infinite_length(a_strength:REAL_32)
			-- Start a rumble playbacki with a magnitude of `a_strength'
			-- and never stop (use `rumble_stop' to stop)
		require
			Is_Open: is_open
			Rumble_Supported: is_rumble_supported
			Is_Rumble_Device: is_rumble
			Strength_Is_Valid: a_strength >= 0 and a_strength <= 1
		do
			rumble_play(a_strength, {GAME_SDL_EXTERNAL}.SDL_HAPTIC_INFINITY)
		end

	rumble_stop
			-- Stop a rumble playback
		require
			Is_Open: is_open
			Rumble_Supported: is_rumble_supported
			Is_Rumble_Device: is_rumble
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticRumbleStop(item)
			manage_error_code(l_error, "Cannot stop a rumble.")
		end

	gain:INTEGER assign set_gain
			-- The intensity of `Current'
		require
			Gain_Control_Supported: is_gain_control_supported
		do
			Result := i_gain
		end

	set_gain(a_gain:INTEGER)
			-- Assign to `gain' the value of `a_gain'
		require
			Is_Open: is_open
			Gain_Control_Supported: is_gain_control_supported
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticSetGain(item, a_gain)
			if l_error < 0 then
				manage_error_code(l_error, "Cannot set the haptic gain")
			else
				i_gain := a_gain
			end
		ensure
			Is_Assign: not has_error implies gain = a_gain
		end

	stop_all_effects
			-- Stop every effect on `Current'
		require
			Is_Open: is_open
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_HapticStopAll(item)
			manage_error_code(l_error, "Could not stop all effect on haptic.")
		end

	compiled_effect_count:INTEGER
			-- Number of `compiled_effects' in `Current'
		do
			Result := internal_compiled_effect.count
		end

	compiled_effects:CHAIN_INDEXABLE_ITERATOR[GAME_HAPTIC_EFFECT_COMPILED]
			-- Every compiled effect into `Current'
		do
			create Result.make(internal_compiled_effect)
		end

	compile(a_effect:GAME_HAPTIC_EFFECT)
			-- Create a new compiled effect and store it in the `compiled_effects'
			-- list. You can get ot quicker by using `last_compiled_effect'
		require
			Current_Valid: is_open
			Effect_Valid: a_effect.exists
			Effect_Supported: is_effect_supported(a_effect)
		local
			l_effect:GAME_HAPTIC_EFFECT_COMPILED
		do
			clear_error
			create l_effect.make(Current, a_effect)
			if l_effect.is_open then
				internal_compiled_effect.extend(l_effect)
			else
				has_error := True
			end
		ensure
			Is_Count_valid: not has_error implies (compiled_effect_count = compiled_effect_count + 1)
			Is_Count_Not_Null: not has_error implies (compiled_effect_count > 0)
			Last_Compiled_Valid: not has_error implies
									(last_compiled_effect.is_open and
									last_compiled_effect.haptic = Current and
									last_compiled_effect.effect = a_effect)
		end

	last_compiled_effect:GAME_HAPTIC_EFFECT_COMPILED
			-- Last compiled effect that has been compiled with `compile'
		require
			Element_Exist: compiled_effect_count > 0
		do
			Result := internal_compiled_effect.last
		end

feature {GAME_HAPTIC_EFFECT_COMPILED} -- Implementation

	remove_compiled_effect(a_compiled_effect:GAME_HAPTIC_EFFECT_COMPILED)
			-- Remove `a_compiled_effect' from the `compiled_effects'
			-- Warning, this will not close the effect. You have to close
			-- it first.
		do
			internal_compiled_effect.prune_all(a_compiled_effect)
		ensure
			Removed: not compiled_effects.has(a_compiled_effect)
		end

	item:POINTER
			-- Internal pointer of `Current'

feature {NONE} -- Implementation

	internal_compiled_effect:LIST[GAME_HAPTIC_EFFECT_COMPILED]
			-- Every compiled effect into `Current'


	internal_open:POINTER
			-- The internal C function to open the haptic
		deferred
		end

	i_gain:INTEGER
			-- Internal value of the gain

	dispose
			-- <Precursor>
		do
			if is_open then
				close
			end
		end

invariant
	Is_Haptic_Enabled: Game_library.is_haptic_enable

end
