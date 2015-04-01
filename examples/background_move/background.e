note
	description: "[
					The {BACKGROUND} of the game.
					Only a part of the {BACKGROUND} is show on the screen.
			]"
	author		: "Louis Marchand"
	date        : "May 18, 2013"
	revision    : "0.1.1.1"

class
	BACKGROUND

inherit
	IMAGE
	redefine
		width, height
	end

create
	make_with_dimension

feature {NONE} -- Initialisation

	make_with_dimension(a_width,a_height:INTEGER)
			-- Creation of `Current'.
			-- `Current' will always draw a `a_width' x `a_height' image on the screen.
		require
			Width_positive: a_width>0
			Height_positive: a_height>0
		do
			make
			surface_imp:=surface
			width_imp:=a_width
			height_imp:=a_height
			position_x:=surface_imp.width//2 - a_width//2
			position_y:=surface_imp.height//2 - a_height//2
			change_surface
			set_velocity(10)
		end

	image_file:STRING
			-- The image file path.
		do
			Result:="bk.png"
		end

feature -- Access

	width:INTEGER
			-- Width of the image in pixel.
		do
			Result:=width_imp
		end

	height:INTEGER
			-- Height of the image in pixel.
		do
			Result:=height_imp
		end

	move_left
			-- Change the image to draw by moving the drawing area to the left.
		do
			position_x:=position_x+velocity
			change_surface
		end

	move_right
			-- Change the image to draw by moving the drawing area to the riht.
		do
			position_x:=position_x-velocity
			change_surface
		end

	move_up
			-- Change the image to draw by moving up the drawing area.
		do
			position_y:=position_y+velocity
			change_surface
		end

	move_down
			-- Change the image to draw by moving down the drawing area.
		do
			position_y:=position_y-velocity
			change_surface
		end

	velocity:INTEGER
			-- The speed of the {BACKGROUND} movement.

	set_velocity(a_velocity:INTEGER)
			-- Change the speed of the {BACKGROUND} movement `velocity' to `a_velocity'.
		require
			Velocity_Is_Positive: a_velocity>0
		do
			velocity:=a_velocity
		end

feature {NONE} -- Implementation

	change_surface
			-- Change the erea to draw.
		do
			if position_x<0 then
				position_x:=0
			elseif position_x+width > surface_imp.width then
				position_x:=surface_imp.width-width
			end
			if position_y<0 then
				position_y:=0
			elseif position_y+height > surface_imp.height then
				position_y:=surface_imp.height-height
			end
			surface:=surface_imp.sub_surface (position_x, position_y, width, height)
		end

	position_x:INTEGER
			-- The `x' coordinate of starting position of the area to draw in the original surface.

	position_y:INTEGER
			-- The `y' coordinate of starting position of the area to draw in the original surface.

	width_imp:INTEGER
			-- Keeping the `width' of the area to draw.

	height_imp:INTEGER
			-- Keeping the `height' of the area to draw.

	surface_imp:GAME_SURFACE
			-- The image surface with all the {BACKGROUND}, not just the area to draw.

end
