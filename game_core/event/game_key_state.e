note
	description: "Keyboard Events. To retreive the state of the keyboard. Must be return by an object of GAME_EVENT_CONTROLLER type."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_KEY_STATE

inherit
	GAME_KEY

	GAME_MODIFIER_HOLDER
		undefine
			out
		end

create {GAME_SDL_ANY}
	make

feature {NONE} -- Initialization

	make(a_physical_code, a_virtual_code:INTEGER_32; a_modifier: NATURAL_16; a_repeat: NATURAL_8)
			-- Initialization for `Current'.
		do
			physical_code := a_physical_code
			virtual_code := a_virtual_code
			repeat := a_repeat
			modifier := a_modifier
		end

feature -- Access

	is_repeat:BOOLEAN
			-- The key is a repetition
		do
			Result := repeat /= 0
		end

feature -- Implementation

	repeat:NATURAL_8
			-- Not 0 when the key event is an automatic repeted event

	modifier: NATURAL_16
			-- The internal identificator of the modifiers pressed


end
