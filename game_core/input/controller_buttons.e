note
	description: "The buttons of a controller."
	author: "Malyk Vigneault"
	date: "March 3, 2026"
	revision: "1.0"

class
	CONTROLLER_BUTTONS
create
	make

feature -- Access

	make
	-- Initalization of 'Current'
		do
			south:=0

			east:=1

			west:=2

			north:=3

			back:=4

			guide:=5

			start:=6

			left_stick:=7

			right_stick:=8

			left_shoulder:=9

			right_shoulder:=10

			dpad_up:=11

			dpad_down:=12

			dpad_left:=13

			dpad_right:=14
--les boutons suivants n'ont pas été testés, car ils ne sont pas sur ma manette
			misc1:=15

			paddle1:=16

			paddle2:=17

			paddle3:=18

			paddle4:=19

			touchepad:=20
		end

	south:NATURAL_8
	--ID of the south button(A on Xbox, X on Playstation, B on Nintendo)

	east:NATURAL_8
	--ID of the east button(B on Xbox, O on Playstation, A on Nintendo)

	west:NATURAL_8
	--ID of the west button(X on Xbox, Square on Playstation, Y on Nintendo)

	north:NATURAL_8
	--ID of the north button(Y on Xbox, Triangle on Playstation, X on Nintendo)

	back:NATURAL_8
	--ID of the back button(back on Xbox, share on Playstation, - on Nintendo)

	guide:NATURAL_8
	--ID of the guide button(guide on Xbox, ps on Playstation, ? on Nintendo)

	start:NATURAL_8
	--ID of the start button(start on Xbox, options on Playstation, ? on Nintendo)

	left_stick:NATURAL_8
	--ID of the left joystick button

	right_stick:NATURAL_8
	--ID of the right joystick button

	left_shoulder:NATURAL_8
	--ID of the left shoulder button

	right_shoulder:NATURAL_8
	--ID of the right shoulder button

	dpad_up:NATURAL_8
	--ID of the up arrow button

	dpad_down:NATURAL_8
	--ID of the down arrow button

	dpad_left:NATURAL_8
	--ID of the left arrow button

	dpad_right:NATURAL_8
	--ID of the right arrow button

	misc1:NATURAL_8
	--ID of Xbox Series X share button, PS5 microphone button, Nintendo Switch Pro capture button, Amazon Luna microphone button

	paddle1:NATURAL_8
	--ID of Xbox Elite paddle P1 (upper left, facing the back)

	paddle2:NATURAL_8
	--ID of Xbox Elite paddle P2 (upper right, facing the back) */

	paddle3:NATURAL_8
	--ID of Xbox Elite paddle P3 (upper right, facing the back) */

	paddle4:NATURAL_8
	--ID of Xbox Elite paddle P4 (upper right, facing the back) */

	touchepad:NATURAL_8
	--ID of PS4/PS5 touchpad button


end
