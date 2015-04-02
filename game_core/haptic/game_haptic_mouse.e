note
	description: "An haptic device inside a mouse"
	author: "Louis Marchand"
	date: "Mon, 02 Mar 2015 01:51:33 +0000"
	revision: "2.0"

class
	GAME_HAPTIC_MOUSE

inherit
	GAME_HAPTIC

create {GAME_LIBRARY_CONTROLLER}
	make

feature {NONE} -- Initialization

	make
			-- Initialization of `Current'
		require
			Is_Haptic_Enabled: Game_library.is_haptic_enable
			Mouse_Has_Haptic: Game_library.mouse_has_haptic
		do
			default_create
		end

feature {NONE} -- Implementation

	internal_open:POINTER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_HapticOpenFromMouse
		end

end
