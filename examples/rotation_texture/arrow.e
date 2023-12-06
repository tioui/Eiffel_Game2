note
	description: "An image that can rotate"
	author: "Louis Marchand"
	date: "Wed, 06 Dec 2023 02:47:50 +0000"
	revision: "0.1"

class
	ARROW

create
	make

feature {NONE} -- Initialisation

	make(a_renderer:GAME_RENDERER)
			-- Initialisation of `Current' that must be drawable on `a_renderer'
		local
			l_image:IMG_IMAGE_FILE
			l_pixel_format:GAME_PIXEL_FORMAT
		do
			create l_pixel_format
			l_pixel_format.set_abgr8888
			create l_image.make ("arrow.png")
			if l_image.is_openable then
				l_image.open
				if l_image.is_open then
					create texture.make_from_image (a_renderer, l_image)
					has_error := texture.has_error
				else
					has_error := True
					create texture.make (a_renderer, l_pixel_format, 1, 1)
				end
			else
				has_error := True
				create texture.make (a_renderer, l_pixel_format, 1, 1)
			end
			x := 0
			y := 0
			angle := 0
		end

feature -- Access

	texture:GAME_TEXTURE
			-- The internal image to draw.

	has_error:BOOLEAN
			-- An error occured at creation.

	x:INTEGER assign set_x
			-- Horizontal position of `Current'

	set_x(a_x:INTEGER)
			-- Assign `x' with the value of `a_x'
		do
			x := a_x
		ensure
			Is_Assign: x = a_x
		end

	y:INTEGER assign set_y
			-- Vertical position of `Current'

	set_y(a_y:INTEGER)
			-- Assign `y' with the value of `a_y'
		do
			y := a_y
		ensure
			Is_Assign: y = a_y
		end

	half_width:INTEGER
			-- Half the size of the horizontal dimension
		do
			Result := texture.width // 2
		end

	half_height:INTEGER
			-- Half the size of the vertical dimension
		do
			Result := texture.height // 2
		end

	middle_x:INTEGER
			-- The middle horizontal position
		do
			Result := x - half_width
		end

	middle_y:INTEGER
			-- The middle vertical position
		do
			Result := y - half_height
		end

	angle:INTEGER
			-- The number of degree to rotate

	target(a_x, a_y:INTEGER)
			-- Calculate `angle' from point (`x',`y') to point (`a_x',`a_y')
			-- Base on tangent(angle)=oposite/adjacent
		local
			l_oposite:REAL_32
			l_adjacent:REAL_32
			l_radiant:REAL_32
		do
			l_oposite := a_y - y
			l_adjacent := a_x - x
			l_radiant := {SINGLE_MATH}.arc_tangent (l_oposite/l_adjacent)
			angle := (l_radiant*180/{SINGLE_MATH}.Pi).rounded
			if x > a_x then
				angle := angle + 180
			end

		end

end
