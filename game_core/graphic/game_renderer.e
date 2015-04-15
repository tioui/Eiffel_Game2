note
	description: "An object that do all image rendering on a {GAME_WINDOW}"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_RENDERER

inherit
	MEMORY_STRUCTURE
		rename
			make as make_structure
		export
			{NONE} shared, make_structure, make_by_pointer
			{GAME_SDL_ANY} item
		redefine
			exists
		end
	GAME_DRAWING_TOOLS
	GAME_BLENDABLE
		rename
			is_valid as exists
		end
	DISPOSABLE

create {GAME_WINDOW_RENDERED}
	make,
	make_with_flags,
	make_with_renderer_driver

feature {NONE} -- Initialization

	make_with_flags(a_window:GAME_WINDOW_RENDERED;a_must_support_target_texture,
					a_must_sync_update, a_must_be_software_rendering,
					a_must_be_hardware_accelerated:BOOLEAN)
			-- Initialization for `Current'. If `a_must_support_target_texture' is True,
			-- the rendering context must permit to target to a texture instead of `Current'.
			-- If `a_must_sync_update' is True, the `present' will wait for vsync before finishing.
			-- If `a_must_be_software_rendering' is True, the renderer will always
		local
			l_flags:NATURAL_32
		do
			l_flags := 0
			if a_must_be_software_rendering then
				l_flags := l_flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RENDERER_SOFTWARE)
			end
			if a_must_be_hardware_accelerated then
				l_flags := l_flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RENDERER_ACCELERATED)
			end
			if a_must_support_target_texture then
				l_flags := l_flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RENDERER_TARGETTEXTURE)
			end
			if a_must_sync_update then
				l_flags := l_flags.bit_or ({GAME_SDL_EXTERNAL}.SDL_RENDERER_PRESENTVSYNC)
			end
			make_with_renderer_driver_and_flags(a_window, -1, l_flags)
		ensure
			Is_Created: has_error or exists
		end

	make(a_window:GAME_WINDOW_RENDERED)
			-- Initialization for `Current' targeting `a_window' and
			-- using the first {RENDERER_DRIVER} found
		do
			make_with_renderer_driver_and_flags(a_window, -1, 0)
		ensure
			Is_Created: has_error or exists
		end

	make_with_renderer_driver(a_window:GAME_WINDOW_RENDERED; a_renderer_driver:GAME_RENDERER_DRIVER)
			-- Initialization for `Current' targeting `a_window' using a specific `a_renderer_driver'
		do
			make_with_renderer_driver_and_flags(a_window, a_renderer_driver.index, 0)
		ensure
			Is_Created: has_error or exists
		end

	make_with_renderer_driver_and_flags(a_window:GAME_WINDOW_RENDERED; a_renderer_driver_index:INTEGER; a_flags:NATURAL_32)
			-- Initialization for `Current' targeting `a_window', using a specific `a_renderer_driver_index' if not -1
			-- and using internal C `a_flags' if some provided.
		do
			original_target := a_window
			target := a_window
			clear_error
			make_by_pointer({GAME_SDL_EXTERNAL}.SDL_CreateRenderer(a_window.item,a_renderer_driver_index,a_flags))
			manage_error_pointer (item, "Error while creating rendering context.")
			is_dispose := False
		ensure
			Is_Created: has_error or exists
		end

feature -- Access

	present
			-- Show the last drawed modification
		require
			Renderer_exists: exists
		do
			{GAME_SDL_EXTERNAL}.SDL_RenderPresent(item)
		end

	target:GAME_RENDER_TARGET assign set_target
			-- What {GAME_RENDER_TARGET} to use when using the `present'

	original_target:GAME_WINDOW_RENDERED
			-- The window that will be targetted
			-- (if no `set_target' has been called)
			-- command

	set_target(a_target:GAME_RENDER_TARGET)
			-- Assing what {GAME_RENDER_TARGET} to use when using the `present'
			-- command
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
		do
			clear_error
			if attached {GAME_TEXTURE} a_target as la_target then
				l_error := {GAME_SDL_EXTERNAL}.SDL_SetRenderTarget(item, la_target.item)
				if l_error /= 0 then
					manage_error_code(l_error, "An error occured while setting the Renderer's target to texture.")
				else
					target := la_target
				end
			else
				if a_target = original_target then
					l_error := {GAME_SDL_EXTERNAL}.SDL_SetRenderTarget(item, create {POINTER})
					if l_error /= 0 then
						manage_error_code(l_error, "An error occured while setting the Renderer's target to window.")
					else
						target := original_target
					end
				else
					put_manual_error ("Render target error", "Cannot set another screen as render target.")
				end
			end
		ensure
			Is_Set: not has_error implies target = a_target
		end

	set_original_target
			-- Put back the `original_target' as
			-- the `target'
		require
			Renderer_exists: exists
		do
			set_target(original_target)
		end

	clear
			-- Fill the `target' with
			-- the `drawing_color'
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderClear(item)
			manage_error_code(l_error, "An error occured while clearing the renderer.")
		end

	draw_texture(a_texture:GAME_TEXTURE;a_x,a_y:INTEGER)
			-- Draw the whole `a_texture' on `Current' at (`a_x',`a_y')
		require
			Renderer_exists: exists
		do
			draw_sub_texture(a_texture,0,0,a_texture.width,a_texture.height,a_x,a_y)
		end

	draw_sub_texture(a_texture:GAME_TEXTURE; a_x_source,a_y_source,a_width,a_height,
					a_x_destination,a_y_destination:INTEGER
				)
			-- Draw the part of `a_texture' from (`a_x_source',`a_y_source')
			-- of size `a_width'x`a_height' on `Current' at (`a_x_destination',`a_y_destination')
		require
			Renderer_Exists: exists
		do
			draw_sub_texture_with_scale(
						a_texture, a_x_source, a_y_source, a_width, a_height,
						a_x_destination, a_y_destination, a_width, a_height
					)
		end

	draw_sub_texture_with_scale(a_texture:GAME_TEXTURE; a_x_source,a_y_source,a_width_source,
								a_height_source,a_x_destination,a_y_destination, a_width_destination,
								a_height_destination:INTEGER
				)
			-- Draw the part of `a_texture' from (`a_x_source',`a_y_source')
			-- of size `a_width_source'x`a_height_source' on the part of `Current'
			-- at (`a_x_destination',`a_y_destination') of size
			-- `a_width_destination'x`a_height_destination'
		require
			Renderer_exists: exists
		local
			l_rect_src, l_rect_dst:POINTER
			l_error:INTEGER
			l_normalized_rectangle_source, l_normalized_rectangle_destination:TUPLE[x, y, width, height:INTEGER]
		do
			l_normalized_rectangle_source := normalize_rectangle (a_x_source, a_y_source, a_width_source, a_height_source)
			l_normalized_rectangle_destination := normalize_rectangle (a_x_destination, a_y_destination, a_width_destination, a_height_destination)
			l_rect_src:=l_rect_src.memory_calloc (1, {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect)
			l_rect_dst:=l_rect_dst.memory_calloc (1, {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_src,l_normalized_rectangle_source.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_src,l_normalized_rectangle_source.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_src,l_normalized_rectangle_source.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_src,l_normalized_rectangle_source.height)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_dst,l_normalized_rectangle_destination.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_dst,l_normalized_rectangle_destination.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_dst,l_normalized_rectangle_destination.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_dst,l_normalized_rectangle_destination.height)
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_RenderCopy(item, a_texture.item, l_rect_src, l_rect_dst)
			manage_error_code(l_error, "An error occured while drawing texture to the renderer.")
			l_rect_dst.memory_free
			l_rect_src.memory_free
		end

	draw_sub_texture_with_scale_rotation_and_mirror(a_texture:GAME_TEXTURE; a_x_source,a_y_source,
													a_width_source,a_height_source,a_x_destination,
													a_y_destination, a_width_destination,
													a_height_destination, a_x_rotation_center,
													a_y_rotation_center:INTEGER; a_rotation_angle:REAL_64;
													a_vertical_mirror, a_horizontal_mirror:BOOLEAN
				)
			-- Draw the part of `a_texture' from (`a_x_source',`a_y_source')
			-- of size `a_width_source'x`a_height_source' on the part of `Current'
			-- at (`a_x_destination',`a_y_destination') of size
			-- `a_width_destination'x`a_height_destination'.
			-- Also, rotate the draw of `a_rotation_angle' degree using the rotation center
			-- (`a_x_rotation_center',`a_y_rotation_center'). Finally, use a vertical mirror on
			-- the drawed image if `a_vertical_mirror' is True and an horizontal one if
			-- `a_horizontal_mirror' is True.
		require
			Renderer_exists: exists
		local
			l_rect_src, l_rect_dst, l_center_point:POINTER
			l_error, l_flip:INTEGER
			l_normalized_rectangle_source, l_normalized_rectangle_destination:TUPLE[x, y, width, height:INTEGER]
		do
			l_normalized_rectangle_source := normalize_rectangle (a_x_source, a_y_source, a_width_source, a_height_source)
			l_normalized_rectangle_destination := normalize_rectangle (a_x_destination, a_y_destination, a_width_destination, a_height_destination)
			l_rect_src:=l_rect_src.memory_calloc (1, {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect)
			l_rect_dst:=l_rect_dst.memory_calloc (1, {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_src,l_normalized_rectangle_source.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_src,l_normalized_rectangle_source.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_src,l_normalized_rectangle_source.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_src,l_normalized_rectangle_source.height)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect_dst,l_normalized_rectangle_destination.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect_dst,l_normalized_rectangle_destination.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect_dst,l_normalized_rectangle_destination.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect_dst,l_normalized_rectangle_destination.height)
			l_center_point := l_center_point.memory_calloc (1, {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_point)
			{GAME_SDL_EXTERNAL}.set_point_struct_x(l_center_point,a_x_rotation_center)
			{GAME_SDL_EXTERNAL}.set_point_struct_y(l_center_point,a_y_rotation_center)
			if a_vertical_mirror or a_horizontal_mirror then
				l_flip := 0
				if a_vertical_mirror then
					l_flip := l_flip.bit_or ({GAME_SDL_EXTERNAL}.SDL_FLIP_VERTICAL)
				end
				if a_horizontal_mirror then
					l_flip := l_flip.bit_or ({GAME_SDL_EXTERNAL}.SDL_FLIP_HORIZONTAL)
				end
			else
				l_flip := {GAME_SDL_EXTERNAL}.SDL_FLIP_NONE
			end
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_RenderCopyEx(item, a_texture.item, l_rect_src, l_rect_dst, a_rotation_angle, l_center_point, l_flip)
			manage_error_code(l_error, "An error occured while drawing texture to the renderer.")
			l_center_point.memory_free
			l_rect_dst.memory_free
			l_rect_src.memory_free
		end


	drawing_color:GAME_COLOR assign set_drawing_color
			-- All performed drawing on `Current' is done
			-- using this color (including `clear')
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
			l_red, l_green, l_blue, l_alpha:NATURAL_8
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_GetRenderDrawColor(item, $l_red, $l_green, $l_blue, $l_alpha)
			if l_error<0 then
				manage_error_code(l_error, "An error occured while retreiving the drawing color of the renderer.")
				create Result.make_rgb (0, 0, 0)
			else
				create Result.make (l_red, l_green, l_blue, l_alpha)
			end
		end

	set_drawing_color(a_drawing_color:GAME_COLOR)
			-- Assign the value of the `drawing_color'
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_SetRenderDrawColor(
													item,
													a_drawing_color.red,
													a_drawing_color.green,
													a_drawing_color.blue,
													a_drawing_color.alpha
												)
			manage_error_code(l_error, "An error occured while setting the drawing color of the renderer.")
		end

	draw_point(a_x, a_y:INTEGER)
			-- Draw a point at (`a_x', `a_y')
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderDrawPoint(item, a_x, a_y)
			manage_error_code(l_error, "An error occured while drawing on the renderer.")
		end

	draw_points(a_points:CHAIN[TUPLE[x,y:INTEGER]])
			-- Draw points using all (x, y) in `a_points'
		require
			Renderer_exists: exists
		local
			l_array_points, l_point:POINTER
			l_point_size, l_error:INTEGER
		do
			l_point_size := {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_point
			l_array_points := l_array_points.memory_alloc (l_point_size * a_points.count)
			l_point := l_array_points
			across a_points as la_points loop
				{GAME_SDL_EXTERNAL}.set_point_struct_x(l_point,la_points.item.x)
				{GAME_SDL_EXTERNAL}.set_point_struct_y(l_point,la_points.item.y)
				l_point := l_point.plus (l_point_size)
			end
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderDrawPoints(item, l_array_points, a_points.count)
			manage_error_code (l_error, "An error occured while drawing on the renderer.")
			l_array_points.memory_free
		end

	draw_line(a_x1, a_y1, a_x2, a_y2:INTEGER)
			-- Draw a line from (a_x1, a_y1) to (a_x2, a_y2)
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderDrawLine(item, a_x1, a_y1, a_x2, a_y2)
			manage_error_code(l_error, "An error occured while drawing on the renderer.")
		end

	draw_connected_lines(a_points:CHAIN[TUPLE[x,y:INTEGER]])
			-- Draw connected lines using all (x, y) in `a_points'
		require
			Renderer_exists: exists
		local
			l_array_points, l_point:POINTER
			l_point_size, l_error:INTEGER
		do
			l_point_size := {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_point
			l_array_points := l_array_points.memory_alloc (l_point_size * a_points.count)
			l_point := l_array_points
			across a_points as la_points loop
				{GAME_SDL_EXTERNAL}.set_point_struct_x(l_point,la_points.item.x)
				{GAME_SDL_EXTERNAL}.set_point_struct_y(l_point,la_points.item.y)
				l_point := l_point.plus (l_point_size)
			end
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderDrawLines(item, l_array_points, a_points.count)
			manage_error_code (l_error, "An error occured while drawing on the renderer.")
			l_array_points.memory_free
		end

	draw_rectangle(a_x, a_y, a_width, a_height:INTEGER)
			-- Drawing a wire rectangle of dimension
			-- `a_width'x`a_height' that has it's left frontier at
			-- `a_x', it's top frontier at `a_y'.
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
			l_rect:POINTER
			l_normalized_rectangle:TUPLE[x, y, width, height:INTEGER]
		do
			l_normalized_rectangle := normalize_rectangle (a_x, a_y, a_width, a_height)
			l_rect := l_rect.memory_alloc ({GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect,l_normalized_rectangle.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect,l_normalized_rectangle.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect,l_normalized_rectangle.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect,l_normalized_rectangle.height)
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderDrawRect(item, l_rect)
			manage_error_code(l_error, "An error occured while drawing on the renderer.")
			l_rect.memory_free
		end

	draw_rectangles(a_rectangles:CHAIN[TUPLE[x, y, width, height:INTEGER]])
			-- Drawing every wire rectangle in `a_rectangles'
			-- that has it's left frontier at
			-- `x', it's top frontier at `y', with
			-- dimension `width'x`height'
		require
			Renderer_exists: exists
		local
			l_array_rectangles, l_rectangle:POINTER
			l_rectangle_size, l_error:INTEGER
			l_normalized_rectangle:TUPLE[x, y, width, height:INTEGER]
		do
			l_rectangle_size := {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect
			l_array_rectangles := l_array_rectangles.memory_alloc (l_rectangle_size * a_rectangles.count)
			l_rectangle := l_array_rectangles
			across a_rectangles as la_rectangles loop
				l_normalized_rectangle := normalize_rectangle (la_rectangles.item.x, la_rectangles.item.y, la_rectangles.item.width, la_rectangles.item.height)
				{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rectangle,l_normalized_rectangle.x)
				{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rectangle,l_normalized_rectangle.y)
				{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rectangle,l_normalized_rectangle.width)
				{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rectangle,l_normalized_rectangle.height)
				l_rectangle := l_rectangle.plus (l_rectangle_size)
			end
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderDrawRects(item, l_array_rectangles, a_rectangles.count)
			manage_error_code (l_error, "An error occured while drawing on the renderer.")
			l_array_rectangles.memory_free
		end

	draw_filled_rectangle(a_x, a_y, a_width, a_height:INTEGER)
			-- Drawing a filled rectangle of dimension
			-- `a_width'x`a_height' that has it's left frontier at
			-- `a_x', it's top frontier at `a_y'.
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
			l_rect:POINTER
			l_normalized_rectangle:TUPLE[x, y, width, height:INTEGER]
		do
			l_normalized_rectangle := normalize_rectangle (a_x, a_y, a_width, a_height)
			l_rect := l_rect.memory_alloc ({GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect,l_normalized_rectangle.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect,l_normalized_rectangle.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect,l_normalized_rectangle.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect,l_normalized_rectangle.height)
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderFillRect(item, l_rect)
			manage_error_code(l_error, "An error occured while drawing on the renderer.")
			l_rect.memory_free
		end

	draw_filled_rectangles(a_rectangles:CHAIN[TUPLE[x, y, width, height:INTEGER]])
			-- Drawing every wire rectangle in `a_rectangles'
			-- that has it's left frontier at
			-- `x', it's top frontier at `y', with
			-- dimension `width'x`height'
		require
			Renderer_exists: exists
		local
			l_array_rectangles, l_rectangle:POINTER
			l_rectangle_size, l_error:INTEGER
			l_normalized_rectangle:TUPLE[x, y, width, height:INTEGER]
		do
			l_rectangle_size := {GAME_SDL_EXTERNAL}.c_Sizeof_sdl_rect
			l_array_rectangles := l_array_rectangles.memory_alloc (l_rectangle_size * a_rectangles.count)
			l_rectangle := l_array_rectangles
			across a_rectangles as la_rectangles loop
				l_normalized_rectangle := normalize_rectangle (la_rectangles.item.x, la_rectangles.item.y, la_rectangles.item.width, la_rectangles.item.height)
				{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rectangle,l_normalized_rectangle.x)
				{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rectangle,l_normalized_rectangle.y)
				{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rectangle,l_normalized_rectangle.width)
				{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rectangle,l_normalized_rectangle.height)
				l_rectangle := l_rectangle.plus (l_rectangle_size)
			end
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderFillRects(item, l_array_rectangles, a_rectangles.count)
			manage_error_code (l_error, "An error occured while drawing on the renderer.")
			l_array_rectangles.memory_free
		end


	output_size:TUPLE[width, height:INTEGER]
			-- Get the size of the output of `Current'
		require
			Renderer_exists: exists
		local
			l_error, l_width, l_height:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_GetRendererOutputSize(item, $l_width, $l_height)
			manage_error_code(l_error, "Cannot retreive the output of the renderer.")
			Result := [l_width, l_height]
		end

	clip_rectangle:TUPLE[x, y, width, height:INTEGER]
			-- Indicate what rectangle must be drawed when a draw is
			-- use. Every drawing outside of the rectangle will be
			-- ignored
		require
			Renderer_exists: exists
		local
			l_rect:POINTER
		do

			l_rect := l_rect.memory_calloc(1, {GAME_SDL_EXTERNAL}.c_sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.SDL_RenderGetClipRect(item, l_rect)
			Result := [
						{GAME_SDL_EXTERNAL}.get_rect_struct_x(l_rect),
						{GAME_SDL_EXTERNAL}.get_rect_struct_y(l_rect),
						{GAME_SDL_EXTERNAL}.get_rect_struct_w(l_rect),
						{GAME_SDL_EXTERNAL}.get_rect_struct_h(l_rect)
					]
			l_rect.memory_free
		end

	set_clip_rectangle(a_x, a_y, a_width, a_height:INTEGER)
			-- Assign `clip_rectangle' with the values of `a_x', `a_y',
			-- `a_width' and `a_height'
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
			l_rect:POINTER
			l_normalized_rectangle:TUPLE[x, y, width, height:INTEGER]
		do
			l_normalized_rectangle := normalize_rectangle (a_x, a_y, a_width, a_height)
			clear_error
			l_rect := l_rect.memory_calloc(1, {GAME_SDL_EXTERNAL}.c_sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect, l_normalized_rectangle.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect, l_normalized_rectangle.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect, l_normalized_rectangle.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect, l_normalized_rectangle.height)
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderSetClipRect(item, l_rect)
			l_rect.memory_free
			manage_error_code(l_error, "Cannot set renderer clip rectangle")
		ensure
			Is_Set: (
						attached clip_rectangle as la_clip_rectangle and
						attached normalize_rectangle (a_x, a_y, a_width, a_height) as la_normalized_rectangle
					) implies (
						la_clip_rectangle.x = la_normalized_rectangle.x and
						la_clip_rectangle.y = la_normalized_rectangle.y and
						la_clip_rectangle.width = la_normalized_rectangle.width and
						la_clip_rectangle.height = la_normalized_rectangle.height
					)
		end

	disable_clip_rectangle
			-- Remove every clip rectangle from `Current'
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderSetClipRect(item, create {POINTER})
			manage_error_code(l_error, "Cannot disable renderer clip rectangle")
		end

	logical_size:TUPLE[width, height:INTEGER]
			-- Get the device independant logical size of the output of `Current'
			-- [0,0] if never set..
			-- Modifying this value may change the `scale' and `viewport' values.
		require
			Renderer_exists: exists
		local
			l_width, l_height:INTEGER
		do
			{GAME_SDL_EXTERNAL}.SDL_RenderGetLogicalSize(item, $l_width, $l_height)
			Result := [l_width, l_height]
		end

	set_logical_size(a_width, a_height:INTEGER)
			-- Assign `logical_size' using values in `a_width' and `a_height'.
			-- Using this feature may change the `scale' and `viewport' values.
		require
			Renderer_exists: exists
			Width_Valid: a_width > 0
			Height_Valid: a_height > 0
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderSetLogicalSize(item, a_width, a_height)
			manage_error_code(l_error, "Cannot set the output logical size of the renderer.")
		ensure
			Is_Set: attached logical_size as la_logical_size implies (
							la_logical_size.width = a_width and
							la_logical_size.height = a_height
						)
		end

	scale:TUPLE[x, y:REAL_32]
			-- Get the scale `x' and `y' that `Current' have to do when drawing.
			-- Note: For better performance, use integer scaling factor
		require
			Renderer_exists: exists
		local
			l_x, l_y:REAL_32
		do
			{GAME_SDL_EXTERNAL}.SDL_RenderGetScale(item, $l_x, $l_y)
			Result := [l_x, l_y]
		end

	set_scale(a_x, a_y:REAL_32)
			-- Assign `scale' using values in `a_x' and `a_y'
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderSetScale(item, a_x, a_y)
			manage_error_code(l_error, "Cannot set the scaling of the renderer.")
		ensure
			Is_Set: attached scale as la_scale implies (
							la_scale.x = a_x and
							la_scale.y = a_y
						)
		end

	viewport:TUPLE[x, y, width, height:INTEGER]
			-- The position and size of the drawing area in `Current'
		require
			Renderer_exists: exists
		local
			l_rect:POINTER
		do
			l_rect := l_rect.memory_calloc(1, {GAME_SDL_EXTERNAL}.c_sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.SDL_RenderGetViewport(item, l_rect)
			Result := [
						{GAME_SDL_EXTERNAL}.get_rect_struct_x(l_rect),
						{GAME_SDL_EXTERNAL}.get_rect_struct_y(l_rect),
						{GAME_SDL_EXTERNAL}.get_rect_struct_w(l_rect),
						{GAME_SDL_EXTERNAL}.get_rect_struct_h(l_rect)
					]
			l_rect.memory_free
		end

	set_viewport(a_x, a_y, a_width, a_height:INTEGER)
			-- Assign `viewport' using values in `a_x', `a_y', `a_width'
			-- and `a_height'. Note that depending on the `scale' values,
			-- the `viewport' may be round to another close value.
		require
			Renderer_exists: exists
		local
			l_error:INTEGER
			l_rect:POINTER
			l_normalized_rectangle:TUPLE[x, y, width, height:INTEGER]
		do
			l_normalized_rectangle := normalize_rectangle (a_x, a_y, a_width, a_height)
			clear_error
			l_rect := l_rect.memory_calloc(1, {GAME_SDL_EXTERNAL}.c_sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x(l_rect, l_normalized_rectangle.x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y(l_rect, l_normalized_rectangle.y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w(l_rect, l_normalized_rectangle.width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h(l_rect, l_normalized_rectangle.height)
			l_error := {GAME_SDL_EXTERNAL}.SDL_RenderSetViewport(item, l_rect)
			l_rect.memory_free
			manage_error_code(l_error, "Cannot set the viewport of the renderer.")
		ensure
			Is_Set: (
						attached viewport as la_viewport and
						attached scale as la_scale and
						attached normalize_rectangle (a_x, a_y, a_width, a_height) as la_normalized_rectangle
					) implies (
							la_viewport.x >= la_normalized_rectangle.x - (1.0 / la_scale.x) and
							la_viewport.x <= la_normalized_rectangle.x + (1.0 / la_scale.x) and
							la_viewport.y >= la_normalized_rectangle.y - (1.0 / la_scale.y) and
							la_viewport.y <= la_normalized_rectangle.y + (1.0 / la_scale.y) and
							la_viewport.width >= la_normalized_rectangle.width - (1.0 / la_scale.x) and
							la_viewport.width <= la_normalized_rectangle.width + (1.0 / la_scale.x) and
							la_viewport.height >= la_normalized_rectangle.height - (1.0 / la_scale.y) and
							la_viewport.height <= la_normalized_rectangle.height + (1.0 / la_scale.y)
						)
		end

	exists: BOOLEAN
			-- <Precursor>
		do
			Result := Precursor {MEMORY_STRUCTURE} and not is_dispose
		end

	driver: GAME_RENDERER_DRIVER
			-- The driver used to render `Current'
		do
			create Result.make_from_renderer (Current)
		end

feature {GAME_WINDOW_RENDERED}

	dispose
			-- <Precursor>
		do
			if exists then
				{GAME_SDL_EXTERNAL}.SDL_DestroyRenderer(item)
				is_dispose := True
			end
		end

	is_dispose:BOOLEAN
			-- As `Current' has been dispose

feature {NONE} -- Implementation



	structure_size: INTEGER_32
			-- <Precursor>
		do
			Result := 0
		end

feature {NONE} -- External

	c_get_blend_mode(a_item, a_blend_mode:POINTER):INTEGER
			-- <Precursor>
		do
			Result:={GAME_SDL_EXTERNAL}.SDL_GetRenderDrawBlendMode(a_item, a_blend_mode)
		end

	c_set_blend_mode(a_item:POINTER; a_blend_mode:INTEGER):INTEGER
			-- <Precursor>
		do
			Result := {GAME_SDL_EXTERNAL}.SDL_SetRenderDrawBlendMode(a_item, a_blend_mode)
		end
end
