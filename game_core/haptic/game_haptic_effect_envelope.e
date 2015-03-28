note
	description: "[
					A {GAME_HAPTIC_EFFECT} that has an envelope.
					An envelope contain a fade in and fade out effects
					that surround the haptic effect. Here is how it work
					(by using a {GAME_HAPTIC_EFFECT_CONSTANT}):

					Strength
					^
					|
					|     effect level -->  _________________
					|                      /                 \
					|                     /                   \
					|                    /                     \
					|                   /                       \ 
					| fade_in_level --> |                        \
					|                   |                        |  <---  fade_out_level
					| 
					+---------------------------------------------------> Time
					
					                    [--]                 [---]
					               fade_in_length        fade_out_length
					 
					 [------------------][-----------------------]
					       delay                 length
				]"
	author: "Louis Marchand"
	date: "Mon, 02 Mar 2015 16:23:11 +0000"
	revision: "0.1"

deferred class
	GAME_HAPTIC_EFFECT_ENVELOPE

inherit
	GAME_HAPTIC_EFFECT_DELAYED

feature -- Access

	fade_in_level:NATURAL_16 assign set_fade_in_level
			-- level at the start of the fade in
		require
			Exists: exists
		deferred
		end

	set_fade_in_level(a_fade_in_level:NATURAL_16)
			-- Assign `fade_in_level' with the value of `a_fade_in_level'
		require
			Exists: exists
			Level_Valid: a_fade_in_level <= 32767
		deferred
		ensure
			Is_Assign: fade_in_level = a_fade_in_level
		end

	fade_in_length:NATURAL_16 assign set_fade_in_length
			-- length of the fade in
		require
			Exists: exists
		deferred
		end

	set_fade_in_length(a_fade_in_length:NATURAL_16)
			-- Assign `fade_in_length' with the value of `a_fade_in_length'
		require
			Exists: exists
			Length_Valid: a_fade_in_length <= 32767
		deferred
		ensure
			Is_Assign: fade_in_length = a_fade_in_length
		end

	fade_out_level:NATURAL_16 assign set_fade_out_level
			-- level at the start of the fade out
		require
			Exists: exists
		deferred
		end

	set_fade_out_level(a_fade_out_level:NATURAL_16)
			-- Assign `fade_out_level' with the value of `a_fade_out_level'
		require
			Exists: exists
			Level_Valid: a_fade_out_level <= 32767
		deferred
		ensure
			Is_Assign: fade_out_level = a_fade_out_level
		end

	fade_out_length:NATURAL_16 assign set_fade_out_length
			-- length of the fade out
		require
			Exists: exists
		deferred
		end

	set_fade_out_length(a_fade_out_length:NATURAL_16)
			-- Assign `fade_out_length' with the value of `a_fade_out_length'
		require
			Exists: exists
			Length_Valid: a_fade_out_length <= 32767
		deferred
		ensure
			Is_Assign: fade_out_length = a_fade_out_length
		end


end
