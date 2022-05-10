note
	description: "An object that can be cliked."
	author: "Louis Marchand"
	date: "Wed, 22 Dec 2021 19:48:09 +0000"
	revision: "0.1"

deferred class
	CLICKABLE

feature {NONE} -- Initialisation

	make
			-- Initialisation of `Current'
		do
			create on_click
		end

feature -- Access

	x:INTEGER
			-- The top-left horizontal position of `Current'
		deferred
		end

	y:INTEGER
			-- The top-left vertical position of `Current'
		deferred
		end

	width:INTEGER
			-- The horizontal dimension of `Current'
		deferred
		end

	height:INTEGER
			-- The horizontal dimension of `Current'
		deferred
		end

	manage_click(a_mouse_x, a_mouse_y:INTEGER)
			-- Launch `on_click' when the position `a_mouse_x',`a_mouse_y' is in `Current'
		do
			if
				a_mouse_x >= x and a_mouse_x <= x + width
			and
				a_mouse_y >= y and a_mouse_y <= y + height
			then
				on_click.call ([])
			end
		end

	on_click:ACTION_SEQUENCE[TUPLE]
			-- Launched when `manage_click' detect a click in `Current'

end
