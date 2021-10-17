note
	description: "A visual reprensentation of a {GAME_JOYSTICK}."
	author: "Louis Marchand"
	date: "Sun, 17 Oct 2021 02:39:33 +0000"
	revision: "0.1"

class
	JOYSTICK_DRAWABLE

create
	make

feature {NONE} -- Initialisation

	make(a_joystick:GAME_JOYSTICK; a_joystick_image, a_highlight_image:GAME_TEXTURE;
				a_x, a_y:INTEGER)
			-- Create a drawable to draw `a_joystick_image' at (`a_x',`a_y') using `a_joystick' as
			-- Joystick input, and `a_highlight_image' to show inputs.
		do
			x := a_x
			y := a_y
			joystick_image := a_joystick_image
			highlight_image := a_highlight_image
			joystick := a_joystick
			create {LINKED_LIST[INTEGER]}buttons_pressed.make
			create {LINKED_LIST[INTEGER]}hat_buttons_pressed.make
			create {ARRAYED_LIST[INTEGER]}axis_values.make_filled (Axis_positions.count)

			joystick.open		-- Don't forget to open the Joystick to use it
					-- Those events are used to get the modification of the Joystick state
			joystick.button_pressed_actions.extend (agent on_button_pressed)
			joystick.button_released_actions.extend (agent on_button_released)
			joystick.hat_motion_actions.extend (agent on_hat_motion)
			joystick.axis_motion_actions.extend (agent on_axis_motion)
		end

feature -- Access

	x:INTEGER assign set_x
			-- Vertical position of `Current'

	y:INTEGER assign set_y
			-- Horizontal position of `Current'

	set_x(a_x:INTEGER)
			-- Assing `x' with the value of `a_x'
		do
			x := a_x
		end

	set_y(a_y:INTEGER)
			-- Assing `y' with the value of `a_y'
		do
			y := a_y
		end

	joystick:GAME_JOYSTICK
			-- The Joystick that serve as input

	buttons_pressed:LIST[INTEGER]
			-- Every buttons that has been pressed

	hat_buttons_pressed:LIST[INTEGER]
			-- Every hat buttons that has been pressed

	axis_values:LIST[INTEGER]
			-- The values of the axis

	draw(a_renderer:GAME_RENDERER)
			-- Draw `Current' on `a_renderer'
		do
			a_renderer.draw_texture (joystick_image, x, y)
			across buttons_pressed as la_buttons loop
				if Button_positions.valid_index (la_buttons.item) then
					a_renderer.draw_texture (
							highlight_image,
							x + Button_positions[la_buttons.item].x - (highlight_image.width // 2),
							y + Button_positions[la_buttons.item].y - (highlight_image.height // 2)
						)
				end
			end
			across hat_buttons_pressed as la_buttons loop
				if Hat_button_positions.valid_index (la_buttons.item) then
					a_renderer.draw_texture (
							highlight_image,
							x + Hat_button_positions[la_buttons.item].x - (highlight_image.width // 2),
							y + Hat_button_positions[la_buttons.item].y - (highlight_image.height // 2)
						)
				end
			end
			across 1 |..| 6 as la_index loop
				if
					(Axis_positions[la_index.item].x_delta * axis_values[la_index.item]).rounded /= Axis_positions[la_index.item].x_minimum or
					(Axis_positions[la_index.item].y_delta * axis_values[la_index.item]).rounded /= Axis_positions[la_index.item].y_minimum
				then
					a_renderer.draw_texture (
							highlight_image,
							x + Axis_positions[la_index.item].x - (highlight_image.width // 2) + (Axis_positions[la_index.item].x_delta * axis_values[la_index.item]).rounded,
							y + Axis_positions[la_index.item].y - (highlight_image.height // 2) + (Axis_positions[la_index.item].y_delta * axis_values[la_index.item]).rounded
						)
				end

			end
		end

feature {NONE} -- Implementation

	joystick_image:GAME_TEXTURE
			-- The image of the Joystick

	highlight_image:GAME_TEXTURE
			-- The highlighting image

	on_button_pressed(a_timestamp:NATURAL_32; a_button_id:NATURAL_8)
			-- Launched when the button identifid by `a_button_id' is pressed
			-- Note that `a_button_id' is 0 base (the first button is the button 0.
		do
			if not buttons_pressed.has(a_button_id + 1) then
				buttons_pressed.extend(a_button_id + 1)
			end
		end

	on_button_released(a_timestamp:NATURAL_32; a_button_id:NATURAL_8)
			-- Launched when the button identifid by `a_button_id' is released
			-- Note that `a_button_id' is 0 base (the first button is the button 0).
		do
			buttons_pressed.prune_all (a_button_id + 1)
		end

	on_hat_motion(a_timestamp: NATURAL_32; a_hat_id:NATURAL_8; a_state: GAME_JOYSTICK_HAT_STATE)
			-- When the hat (the directionnal pad) is move.
			-- Note that the `a_hat_id' value is 0 base (the first button is the button 0).
		do
			if a_hat_id = 0 then
				hat_buttons_pressed.wipe_out
				if a_state.is_up then
					hat_buttons_pressed.extend (1)
				elseif a_state.is_down then
					hat_buttons_pressed.extend (2)
				elseif a_state.is_left then
					hat_buttons_pressed.extend (3)
				elseif a_state.is_right then
					hat_buttons_pressed.extend (4)
				elseif a_state.is_left_up then
					hat_buttons_pressed.extend (1)
					hat_buttons_pressed.extend (3)
				elseif a_state.is_left_down then
					hat_buttons_pressed.extend (2)
					hat_buttons_pressed.extend (3)
				elseif a_state.is_right_up then
					hat_buttons_pressed.extend (1)
					hat_buttons_pressed.extend (4)
				elseif a_state.is_right_down then
					hat_buttons_pressed.extend (2)
					hat_buttons_pressed.extend (4)
				end
			end
		end

	on_axis_motion(a_timestamp: NATURAL_32; a_axis_id:NATURAL_8; a_value:INTEGER_16)
			-- When the user move an axis
		do
			print(a_value.out + "%N")
			if axis_values.valid_index (a_axis_id + 1) then
				axis_values.at (a_axis_id + 1) := a_value
			end
		end


feature {NONE} -- Constants

	Button_positions:LIST[TUPLE[x,y:INTEGER]]
			-- The position of the center of the buttons in the `joystick_image'.
			-- Modify if you modify the image of the Joystick used.
		once
			create {ARRAYED_LIST[TUPLE[x,y:INTEGER]]}Result.make (12)
			Result.extend([230,105]) -- A
			Result.extend([248,88]) -- B
			Result.extend([213,88]) -- X
			Result.extend([230,70]) -- Y
			Result.extend([86,12]) -- L1
			Result.extend([215,12]) -- R1
			Result.extend([117,88]) -- Select
			Result.extend([178,88]) -- Start
			Result.extend([148,88]) -- Center (Main) button
			Result.extend([67,79]) -- L3
			Result.extend([193,132]) -- R3
			Result.extend([107,121]) -- Up
			Result.extend([107,149]) -- Down
			Result.extend([92,135]) -- Left
			Result.extend([121,135]) -- Right
		end

	Hat_button_positions:LIST[TUPLE[x,y:INTEGER]]
			-- The position of the center of the hat button in the `joystick_image'.
			-- Modify if you modify the image of the Joystick used.
		once
			create {ARRAYED_LIST[TUPLE[x,y:INTEGER]]}Result.make (4)
			Result.extend([107,121]) -- Up
			Result.extend([107,149]) -- Down
			Result.extend([92,135]) -- Left
			Result.extend([121,135]) -- Right
		end

	Axis_positions:LIST[TUPLE[x,y, x_minimum, y_minimum:INTEGER;x_delta, y_delta:REAL_64]]
			-- The position of the axis in the `joystick_image'.
			-- Also store delta to translate the original values of the axis (-32768 to 32767)
			-- to the position of the graphical representation.
			-- Finally store the minimal value (after applying the delta) so that an highlight is
			-- not shown when the user does not move the axis.
			-- Modify if you modify the image of the Joystick used.
		once
			create {ARRAYED_LIST[TUPLE[x,y, x_minimum, y_minimum:INTEGER;x_delta, y_delta:REAL_64]]}Result.make (4)
			Result.extend([67,79, 0, 0, .0005, 0.0]) -- Left axis
			Result.extend([67,79, 0, 0, 0.0, .0005]) -- Left axis
			Result.extend([48,13, -16, 0, .0005, 0.0]) -- L2
			Result.extend([193,132, 0, 0, .0005, 0.0]) -- Right axis
			Result.extend([193,132, 0, 0, 0.0, .0005]) -- Right axis
			Result.extend([257,13, 16, 0, -.0005, 0.0]) -- L2
		end
end
