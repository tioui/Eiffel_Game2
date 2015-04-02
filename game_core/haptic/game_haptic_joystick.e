note
	description: "An haptic included inside a Joystick"
	author: "Louis Marchand"
	date: "Mon, 02 Mar 2015 01:38:23 +0000"
	revision: "2.0"

class
	GAME_HAPTIC_JOYSTICK

inherit
	GAME_HAPTIC

create {GAME_JOYSTICK}
	make

feature {NONE} -- Initialization

	make(a_joystick:GAME_JOYSTICK)
			-- Initialization of `Current' using `a_joystick' as associated joystick.
		require
			Is_Haptic_Enabled: game_library.is_haptic_enable
			Is_Joystick_Opened: a_joystick.is_open
			Is_Joystick_Haptic: a_joystick.is_haptic_capable
		do
			default_create
			joystick := a_joystick
		end

feature -- Access

	joystick:GAME_JOYSTICK
			-- The {GAME_JOYSTICK} associated to `Current'

feature {NONE} -- Implementation

	internal_open:POINTER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticOpenFromJoystick(joystick.item)
		end

end
