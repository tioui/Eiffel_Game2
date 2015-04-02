note
	description: "The state of a Joystick hat"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_JOYSTICK_HAT_STATE

create {GAME_SDL_ANY}
	make

feature {NONE} -- Initialization

	make(a_state:NATURAL_8)
			-- Initialization for `Current'.
		do
			state :=a_state
		end

feature -- Access

	is_centered:BOOLEAN
			-- True if the position of `Current' is in the center
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_HAT_CENTERED
		end

	is_up:BOOLEAN
			-- True if the position of `Current' is to the top
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_HAT_UP
		end

	is_right:BOOLEAN
			-- True if the position of `Current' is to the right
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_HAT_RIGHT
		end

	is_down:BOOLEAN
			-- True if the position of `Current' is to the bottom
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_HAT_DOWN
		end

	is_left:BOOLEAN
			-- True if the position of `Current' is to the left
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_HAT_LEFT
		end

	is_right_up:BOOLEAN
			-- True if the position of `Current' is to the right/up
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_HAT_RIGHTUP
		end

	is_right_down:BOOLEAN
			-- True if the position of `Current' is to the right/down
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_HAT_RIGHTDOWN
		end

	is_left_up:BOOLEAN
			-- True if the position of `Current' is to the left/up
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_HAT_LEFTUP
		end

	is_left_down:BOOLEAN
			-- True if the position of `Current' is to the left/down
		do
			Result := state = {GAME_SDL_EXTERNAL}.SDL_HAT_LEFTDOWN
		end

feature {NONE} -- Implementation

	state:NATURAL_8
			-- Internal identifier representing the state of a Joystick Hat.

end
