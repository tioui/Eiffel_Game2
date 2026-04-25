note
	description: "Controller manager"
	author: "Malyk Vigneault"
	date: "March 6, 2026"
	revision: "1.0"

class
	GAME_GAMEPAD
inherit
	GAME_DEVICE_COMMON
		redefine
			make
		end

create
	make

feature {NONE}  -- Initialization

	make(a_joystick_id:INTEGER_32)
			-- Initialization for `Current' using `a_open_index' when `open'.
		do
			create axis.make
			create buttons.make
			joystick_id := a_joystick_id
			precursor (a_joystick_id)

		end
feature -- Access

	index:INTEGER
			-- Internal unique identifier of `Current'
		do
			if is_open then
				Result:=cached_instance_id
			else
				Result := -1
			end

		end

	axis:GAME_GAMEPAD_AXIS
		-- axis of the controller

	buttons:GAME_GAMEPAD_BUTTONS
		-- buttons of the controller


	name:STRING
		-- return the gamepad name
			local
				l_text_return:C_STRING
			do
				if is_open then
					create l_text_return.make_by_pointer ({GAME_SDL_EXTERNAL}.sdl_gamecontrollername(item))
				else
					create l_text_return.make_by_pointer ({GAME_SDL_EXTERNAL}.sdl_gamecontrollernameforindex(open_index))
				end
				Result:=l_text_return.string
			end

	open
			-- Open `Current' (Allocate internal structure).
		do
			clear_error
			item := {GAME_SDL_EXTERNAL}.sdl_gamecontrolleropen(open_index)
			manage_error_pointer(item, "Error while opening the Gamepad.")
			if is_open then
                cached_instance_id := {GAME_SDL_EXTERNAL}.SDL_JoystickInstanceID(joystick)
            end
		end

	remap(a_button_layout:STRING)
		-- remap the controller button layout
		-- the mapping string is the guid, the name, and the new button layout
		-- mapping string example: "341a3608000000000000504944564944,Afterglow PS3 Controller,a:b1,b:b2,y:b3,x:b0,start:b9,guide:b12,back:b8,dpup:h0.1,dpleft:h0.8,dpdown:h0.4,dpright:h0.2,leftshoulder:b4,rightshoulder:b5,leftstick:b10,rightstick:b11,leftx:a0,lefty:a1,rightx:a2,righty:a3,lefttrigger:b6,righttrigger:b7"
		local
			l_mapping_string:C_STRING
		do
			create l_mapping_string.make (guid+","+name+","+a_button_layout)
			mapping_success:={GAME_SDL_EXTERNAL}.sdl_gamecontrolleraddmapping (l_mapping_string.item)
		ensure
			remapping_success: not (mapping_success = -1)
		end

	mapping_success:INTEGER
		-- Returns 1 if a new mapping is added, 0 if an existing mapping is updated, -1 on error
	joystick:POINTER
		-- The pointer of the joystick ID of the controller
		do
			Result := {GAME_SDL_EXTERNAL}.sdl_gamecontrollergetjoystick (item)
		end

	is_open:BOOLEAN
			-- True if the controller is open
		do
			Result := (not item.is_default_pointer) and then {GAME_SDL_EXTERNAL}.sdl_gamecontrollergetattached (item)
		end

	is_button_pressed(a_button_id:INTEGER_32):BOOLEAN
			-- True if the button identified by 'a_button_id' is pressed, False otherwise
			-- Note that 'a_button_id' index start at 0
		do
			Result := {GAME_SDL_EXTERNAL}.sdl_gamecontrollergetbutton (item, a_button_id)
		end

	get_axis(axis_id:INTEGER):INTEGER_16
			-- get the axis for a given 'axis_id'
		do
			Result:={GAME_SDL_EXTERNAL}.sdl_gamecontrollergetaxis (item, axis_id)
		end

	cached_instance_id: INTEGER_32
        -- Instance ID mis en cache lors du open, reste valide après déconnexion

	joystick_id: INTEGER_32
				-- joystick identifier of the gamepad

feature {GAME_LIBRARY_CONTROLLER}  -- Implementation

	internal_close
			-- Close `Current' (Free internal structure).
		do

			{GAME_SDL_EXTERNAL}.sdl_gamecontrollerclose(item)
			create item
		end
end
