note
	description: "A hardware accelerated picture in memory that can be quickly modified at run-time"
	author: "Louis Marchand"
	date: "Wed, 27 Jan 2016 02:18:41 +0000"
	revision: "2.0"

class
	GAME_TEXTURE_STREAMING

inherit
	GAME_TEXTURE
		rename
			make as make_texture
		end

create
	make,
	share_from_other

feature {NONE} -- Initialization

	make(a_renderer:GAME_RENDERER; a_pixel_format:GAME_PIXEL_FORMAT_READABLE;
							a_width, a_height:INTEGER)
			-- Initialization for `Current' of dimension (`a_width' , `a_height)
			-- for use on `a_renderer', having `a_pixel_format'. `Current'
			-- can be locked to be modified (less speedy but more flexible)
		do
			make_with_flags(a_renderer, a_pixel_format,
				{GAME_SDL_EXTERNAL}.SDL_TEXTUREACCESS_STREAMING,
				a_width, a_height)
		ensure
			Error_Or_Exist: not has_error implies exists
			Is_Not_Shared: not shared
			Is_Streamable: is_streamable
		end

feature -- Access

	lock
			-- Lock `Current' to access `pixels'.
			-- Must used `unlock' after the edition.
			-- You cannot using `Current' as rendering target while locked.
		local
			l_pointer:POINTER
			l_error, l_pitch:INTEGER
		do
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_LockTexture(item, create {POINTER}, $l_pointer, $l_pitch)
			if l_error = 0 then
				create internal_pixels.make (l_pointer, pixel_format, width, height, l_pitch)
				is_locked := True
			else
				manage_error_code (l_error, "Cannot lock texture")
			end
		ensure
			Is_Locked: not has_error implies is_locked and attached internal_pixels
		end

	lock_rectangle(a_x, a_y, a_width, a_height:INTEGER)
			-- Lock `Current' to access `pixels' from position `a_x',`a_y' of dimension `a_width'x`a_height'
			-- Must used `unlock' after the edition.
			-- You cannot using `Current' as rendering target while locked.
		local
			l_pointer, l_rectangle:POINTER
			l_error, l_pitch:INTEGER
		do
			l_rectangle := l_rectangle.memory_calloc (1, {GAME_SDL_EXTERNAL}.c_sizeof_sdl_rect)
			{GAME_SDL_EXTERNAL}.set_rect_struct_x (l_rectangle, a_x)
			{GAME_SDL_EXTERNAL}.set_rect_struct_y (l_rectangle, a_y)
			{GAME_SDL_EXTERNAL}.set_rect_struct_w (l_rectangle, a_width)
			{GAME_SDL_EXTERNAL}.set_rect_struct_h (l_rectangle, a_height)
			clear_error
			l_error := {GAME_SDL_EXTERNAL}.SDL_LockTexture(item, l_rectangle, $l_pointer, $l_pitch)
			if l_error = 0 then
				create internal_pixels.make (l_pointer, pixel_format, a_width, a_height, l_pitch)
				is_locked := True
			else
				manage_error_code (l_error, "Cannot lock texture")
			end
			l_rectangle.memory_free
		ensure
			Is_Locked: not has_error implies is_locked and attached internal_pixels
		end

	pixels:GAME_PIXEL_WRITER
			-- Used to modify pixels color in `Current'
		require
			Is_Locked: is_locked
		do
			check attached internal_pixels as la_pixels then
				Result := la_pixels
			end
		end

	unlock
			-- Unlock `Current' after access `pixels'.
		do
			{GAME_SDL_EXTERNAL}.sdl_unlocktexture (item)
			internal_pixels := Void
			is_locked := False
		ensure
			Is_Locked: not is_locked and not attached internal_pixels
		end

feature {NONE} -- Implementation

	internal_pixels:detachable GAME_PIXEL_WRITER
			-- Internal representation of the `pixels' feature

invariant
	Always_streamable: is_streamable

end
