note
	description: "Summary description for {GAME_JOYSTICK_HAPTIC_CONTROLLER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_JOYSTICK_HAPTIC_CONTROLLER

create {GAME_JOYSTICK}
	make

feature {NONE} -- Initialization

	make(a_joystick:GAME_JOYSTICK)
			-- Initialization for `Current'.
		require
			A_Joystick_Is_Haptic_Capable: a_joystick.is_haptic_capable
		do
			-- ToDo
		end

end
