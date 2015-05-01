note
	description: "[
					Our main character.
					Using animation with 4 states using 3 sub images
				]"
	author: "Louis Marchand"
	date: "Wed, 01 Apr 2015 18:46:46 +0000"
	revision: "2.0"

class
	MARYO

inherit
	GAME_TEXTURE
		rename
			make as make_texture
		end

create
	make

feature {NONE} -- Initialization

	make(a_renderer:GAME_RENDERER)
			-- Initialization of `Current'
		local
			l_image:IMG_IMAGE_FILE
		do
			has_error := False
			create l_image.make ("maryo.png")
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					make_from_image (a_renderer, l_image)
					if not has_error then
						sub_image_width := width // 3
						sub_image_height := height
					end
				else
					has_error := False
				end
			else
				has_error := False
			end
			initialize_animation_coordinate
		end

	initialize_animation_coordinate
			-- Create the `animation_coordinates'
		do
			create {ARRAYED_LIST[TUPLE[x,y:INTEGER]]} animation_coordinates.make(4)
			animation_coordinates.extend ([width // 3, 0])	-- Be sure to place the image standing still first
			animation_coordinates.extend ([0, 0])
			animation_coordinates.extend ([(width // 3) * 2, 0])
			animation_coordinates.extend ([0, 0])
			sub_image_x := animation_coordinates.first.x	-- Place the image standing still
			sub_image_y := animation_coordinates.first.y	-- Place the image standing still
		end

feature -- Access

	update(a_timestamp:NATURAL_32)
			-- Update the surface depending on the present `a_timestamp'.
			-- Each 100 ms, the image change; each 10ms `Current' is moving
		local
			l_coordinate:TUPLE[x,y:INTEGER]
			l_delta_time:NATURAL_32
		do
			if going_left or going_right then
				l_coordinate := animation_coordinates.at ((((a_timestamp // animation_delta) \\
												animation_coordinates.count.to_natural_32) + 1).to_integer_32)
				sub_image_x := l_coordinate.x
				sub_image_y := l_coordinate.y
				l_delta_time := a_timestamp - old_timestamp
				if l_delta_time // movement_delta > 0 then
					if going_right then
						facing_left := False
						x := x + (l_delta_time // movement_delta).to_integer_32
					else
						facing_left := True
						x := x - (l_delta_time // movement_delta).to_integer_32
					end
					old_timestamp := old_timestamp + (l_delta_time // movement_delta) * movement_delta
				end
			end
		end

	go_left(a_timestamp:NATURAL_32)
			-- Make `Current' starting to move left
		do
			old_timestamp := a_timestamp
			going_left := True
		end

	go_right(a_timestamp:NATURAL_32)
			-- Make `Current' starting to move right
		do
			old_timestamp := a_timestamp
			going_right := True
		end

	stop_left
			-- Make `Current' stop moving to the left
		do
			going_left := False
			if not going_right then
				sub_image_x := animation_coordinates.first.x	-- Place the image standing still
				sub_image_y := animation_coordinates.first.y	-- Place the image standing still
			end
		end

	stop_right
			-- Make `Current' stop moving to the right
		do
			going_right := False
			if not going_left then
				sub_image_x := animation_coordinates.first.x	-- Place the image standing still
				sub_image_y := animation_coordinates.first.y	-- Place the image standing still
			end
		end

	facing_left:BOOLEAN

	going_left:BOOLEAN
			-- Is `Current' moving left

	going_right:BOOLEAN
			-- Is `Current' moving right

	x:INTEGER assign set_x
			-- Vertical position of `Current'

	y:INTEGER assign set_y
			-- Horizontal position of `Current'

	set_x(a_x:INTEGER)
			-- Assign the value of `x' with `a_x'
		do
			x := a_x
		ensure
			Is_Assign: x = a_x
		end

	set_y(a_y:INTEGER)
			-- Assign the value of `y' with `a_y'
		do
			y := a_y
		ensure
			Is_Assign: y = a_y
		end

	sub_image_x, sub_image_y:INTEGER
			-- Position of the portion of image to show inside `surface'

	sub_image_width, sub_image_height:INTEGER
			-- Dimension of the portion of image to show inside `surface'

feature {NONE} -- implementation

	animation_coordinates:LIST[TUPLE[x,y:INTEGER]]
			-- Every coordinate of portion of images in `surface'

	old_timestamp:NATURAL_32
			-- When appen the last movement (considering `movement_delta')

feature {NONE} -- constants

	movement_delta:NATURAL_32 = 10
			-- The delta time between each movement of `Current'

	animation_delta:NATURAL_32 = 100
			-- The delta time between each animation of `Current'


end
