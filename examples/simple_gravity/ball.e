note
	description: "A simple object."
	author: "Louis Marchand"
	date: "Sat, 20 Nov 2021 15:20:27 +0000"
	revision: "0.1"

class
	BALL

create
	make

feature -- Constants

	Width:INTEGER = 20
			-- The horizontal dimension of `Current'

	Height:INTEGER = 20
			-- The vertical dimension of `Current'

	Gravity_ratio:REAL_64 = 0.1

	Delta_time:NATURAL = 10

feature {NONE} -- Initialisation

	make(a_renderer:GAME_RENDERER; a_x, a_y, a_angle, a_force:REAL_64; a_timestamp:NATURAL_32)
			-- Intitialisation of `Current' using `a_renderer' to render `texture'
			-- and using (`a_x',`a_y') as position.
		local
			l_target:GAME_TEXTURE_TARGET
			l_format:GAME_PIXEL_FORMAT
		do
			create l_format
			l_format.set_rgb888
			create l_target.make (a_renderer, l_format, Width, Height)
			a_renderer.set_target (l_target)
			a_renderer.set_drawing_color (create {GAME_COLOR}.make_rgb (255, 255, 255))
			a_renderer.draw_filled_rectangle (0, 0, Width, Height)
			a_renderer.set_original_target
			texture := l_target
			set_x(a_x)
			set_y(a_y)
			norme_x := ({DOUBLE_MATH}.sine (a_angle) * a_force)
			iteration_y := ({DOUBLE_MATH}.cosine (a_angle) * a_force)
			old_timestamp := a_timestamp
		end

feature -- Access

	update(a_timestamp:NATURAL)
			-- Update the position of `Current'
		do

			from
			until
				old_timestamp + Delta_time > a_timestamp
			loop
				x := x + norme_x
				y := y - iteration_y
				iteration_y := iteration_y - Gravity_ratio
				old_timestamp := old_timestamp + Delta_time
				if old_timestamp > a_timestamp then
					old_timestamp := a_timestamp
				end
			end

		end

	texture:GAME_TEXTURE
			-- The image of `Current'

	x:REAL_64
			-- The horizontal position of `Current'

	y:REAL_64
			-- The vertical position of `Current'

	set_x(a_x:REAL_64)
			-- Assing `x' with the value of `a_x'
		do
			x := a_x
		ensure
			Is_Assign: x ~ a_x
		end

	set_y(a_y:REAL_64)
			-- Assing `y' with the value of `a_y'
		do
			y := a_y
		ensure
			Is_Assign: y ~ a_y
		end

feature {NONE} -- Implementation

	norme_x:REAL_64

	iteration_y:REAL_64

	old_timestamp:NATURAL_32

end
