note
	description: "[
					The sprite representing the player.
				]"
	author		: "Louis Marchand"
	date        : "May 18, 2013"
	revision    : "0.1.1.1"

class
	CAR

inherit
	IMAGE
	redefine
		make
	end

create
	make

feature {NONE} -- Initialisation

	make
			-- Initialisation of `Current'.
		do
			precursor
			surface_imp := surface
			go_right
			is_moving:=false
		end

	image_file:STRING
			-- The image file path.
		do
			Result:="car.png"
		end

feature -- Access

	is_moving:BOOLEAN
			-- The {CAR} is moving.

	stop
			-- Stop the {CAR}.
		do
			is_moving:=false
		ensure
			Car_Is_Stop: not is_moving
		end

	go_left
			-- Start going left.
		do
			set_direction(1)
		ensure
			Direction_Left_Is_Set: going_left
			Direction_Right_Is_Not_Set: not going_right
			Direction_Up_Is_Not_Set: not going_up
			Direction_Down_Is_Not_Set: not going_down
			Car_Is_Moving: is_moving
		end

	go_right
			-- Start going right.
		do
			set_direction(2)
		ensure
			Direction_Right_Is_Set: going_right
			Direction_Left_Is_Not_Set: not going_left
			Direction_Up_Is_Not_Set: not going_up
			Direction_Down_Is_Not_Set: not going_down
			Car_Is_Moving: is_moving
		end

	go_up
			-- Start going up.
		do
			set_direction(3)
		ensure
			Direction_Up_Is_Set: going_up
			Direction_Left_Is_Not_Set: not going_left
			Direction_Right_Is_Not_Set: not going_right
			Direction_Down_Is_Not_Set: not going_down
			Car_Is_Moving: is_moving
		end

	go_down
			-- Start going down.
		do
			set_direction(4)
		ensure
			Direction_Down_Is_Set: going_down
			Direction_Left_Is_Not_Set: not going_left
			Direction_Right_Is_Not_Set: not going_right
			Direction_Up_Is_Not_Set: not going_up
			Car_Is_Moving: is_moving
		end

	going_left:BOOLEAN
			-- Is the {CAR} going left.
		do
			Result:=direction=1
		end

	going_right:BOOLEAN
			-- Is the {CAR} going right.
		do
			Result:=direction=2
		end

	going_up:BOOLEAN
			-- Is the {CAR} going up.
		do
			Result:=direction=3
		end

	going_down:BOOLEAN
			-- Is the {CAR} going down.
		do
			Result:=direction=4
		end

feature {NONE} -- Implementation

	set_direction(a_direction:INTEGER)
			-- Modify the {CAR} `direction' to `a_direction'.
		require
			Direction_Is_Valid: a_direction>=1 and a_direction<=4
		do
			is_moving:=true
			if direction/=a_direction then
				direction:=a_direction
				surface:=surface_imp.sub_surface ((surface_imp.width//4)*(a_direction-1), 0, surface_imp.width//4, surface_imp.height)
			end
		ensure
			Direction_Is_Set: direction=a_direction
			Car_Is_Moving: is_moving
		end

	surface_imp:GAME_SURFACE
			-- The image surface with all the {CAR}, not just the area representing the current `direction'.

	direction:INTEGER
			-- The `direction' that the {CAR} is currently heading.
end
