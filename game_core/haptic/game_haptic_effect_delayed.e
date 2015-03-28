note
	description: "A {GAME_HAPTIC_EFFECT} that have a starting delay and a restarting interval.."
	author: "Louis Marchand"
	date: "$Date$"
	revision: "0.1"

deferred class
	GAME_HAPTIC_EFFECT_DELAYED

inherit
	GAME_HAPTIC_EFFECT

feature -- Access


	delay:NATURAL_16 assign set_delay
			-- delay before starting `Current' (in millisecond)
		require
			Exists: exists
		deferred
		end

	set_delay(a_delay:NATURAL_16)
			-- Assign `delay' with the value of `a_delay'
		require
			Exists: exists
			Delay_Valid: a_delay <= 32767
		deferred
		ensure
			Is_Assign: delay = a_delay
		end

	interval:NATURAL_16 assign set_interval
			-- how soon before effect can be triggered again (in millisecond)
		require
			Exists: exists
		deferred
		end

	set_interval(a_interval:NATURAL_16)
			-- Assign `interval' with the value of `a_interval'
		require
			Exists: exists
			Interval_Valid: a_interval <= 32767
		deferred
		ensure
			Is_Assign: interval = a_interval
		end
end
