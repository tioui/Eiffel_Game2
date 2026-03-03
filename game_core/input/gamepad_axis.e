note
	description: "Summary description for {GAMEPAD_AXIS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAMEPAD_AXIS
create
	make
feature -- Access

	make
		-- Initilisation de l'objeet
		do
			invalide:=-1
			left_x:=0
			left_y:=1
			right_x:=2
			right_y:=3
			trigger_left:=4
			trigger_right:=5
			max:=6
		end

	invalide: INTEGER_16

	left_x: INTEGER_16

	left_y: INTEGER_16

	right_x: INTEGER_16

	right_y: INTEGER_16

	trigger_left: INTEGER_16

	trigger_right: INTEGER_16

	max: INTEGER_16

end
