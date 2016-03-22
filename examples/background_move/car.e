note
	description: "The main character of the game"
	author: "Louis Marchand"
	date: "Tue, 22 Mar 2016 13:41:42 +0000"
	revision: "0.2"

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

	make(a_renderer:GAME_RENDERER)
			-- <Precursor>
		do
			Precursor(a_renderer)
			go_right
			is_moving:=false
			width := texture.width//4
		end


	image_file_name:STRING
			-- The image file path.
		do
			Result:="car.png"
		end
feature -- Access

	is_moving:BOOLEAN
			-- `Current' is in deplacement

	stop
			-- `Current' stop moving
		do
			is_moving:=false
		ensure
			Car_Is_Stop: not is_moving
		end

	go_left
			-- `Current' start going left.
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
			-- `Current' start going right.
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
			-- `Current' start going up.
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
			-- `Current' start going down.
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
			-- Is `Current' going left.
		do
			Result:=direction=1
		end

	going_right:BOOLEAN
			-- Is `Current' going right.
		do
			Result:=direction=2
		end

	going_up:BOOLEAN
			-- Is `Current' going up.
		do
			Result:=direction=3
		end

	going_down:BOOLEAN
			-- Is `Current' going down.
		do
			Result:=direction=4
		end

feature {NONE} -- Implementation

	set_direction(a_direction:INTEGER)
			-- Assign `direction' with the value of `a_direction'.
		require
			Direction_Is_Valid: a_direction>=1 and a_direction<=4
		do
			is_moving:=true
			if direction/=a_direction then
				direction:=a_direction
				sub_texture_x := (texture.width//4)*(a_direction-1)
			end
		ensure
			Direction_Is_Set: direction=a_direction
			Is_Moving: is_moving
		end

	direction:INTEGER
			-- The `direction' that the {CAR} is currently heading.
end
