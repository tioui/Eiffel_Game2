note
	description: "[
					Any {IMAGE} that can be shown in the game must inherit from this class.
				]"
	author		: "Louis Marchand"
	date        : "May 18, 2013"
	revision    : "0.1.1.1"

deferred class
	IMAGE


feature {NONE} -- Initialisation

	make
			-- Initialisation of `Current'.
		do
			create {GAME_SURFACE_IMG_FILE} surface.make_with_alpha (image_file)
			set_x (0)
			set_y (0)
			depth:=0
		end

	image_file:STRING
			-- The image file path.
		deferred
		end

feature -- Access

	depth:INTEGER assign set_depth
			-- The order of superposition of images. An {IMAGE} with upper `depth' will appear over the others.

	set_depth(a_depth:INTEGER)
			-- Change the order of superposition of image by modifying the value of `depth' to `a_depth'.
		do
			depth:=a_depth
		end

	x:INTEGER assign set_x
			-- The `x' coordinate of th top-left corner of the {IMAGE} on the screen.
	y:INTEGER assign set_y
			-- The `y' coordinate of th top-left corner of the {IMAGE} on the screen.

	width:INTEGER
			-- The `width' of `Current'
		do
			Result:=surface.width
		end

	height:INTEGER
			-- The `height' of `Current'
		do
			Result:=surface.height
		end

	set_x(a_x:INTEGER)
			-- Modify the `x' coordinate of th top-left corner of the {IMAGE} by modifying `x' to `a_x'.
		do
			x:=a_x
		end

	set_y(a_y:INTEGER)
			-- Modify the `y' coordinate of th top-left corner of the {IMAGE} by modifying `y' to `a_y'.
		do
			y:=a_y
		end

feature {ENGINE}

	surface:GAME_SURFACE
			-- Internal {IMAGE} `surface'.

end
