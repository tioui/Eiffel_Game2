note
	description: "A hardware accelerated picture in memory that can be used as target of a {GAME_RENDERER}"
	author: "Louis Marchand"
	date: "Wed, 27 Jan 2016 02:18:41 +0000"
	revision: "2.0"

class
	GAME_TEXTURE_TARGET

inherit
	GAME_TEXTURE
		rename
			make as make_texture
		end
	GAME_RENDER_TARGET

create
	make

feature {NONE} -- Initialization

	make(a_renderer:GAME_RENDERER; a_pixel_format:GAME_PIXEL_FORMAT_READABLE;
				a_width, a_height:INTEGER)
			-- Initialization for `Current' of dimension (`a_width' , `a_height)
			-- for use on `a_renderer', having `a_pixel_format'. `Current'
			-- can be used as rendering target (see: {GAME_RENDERER}.`render_target')
		do
			make_with_flags(a_renderer, a_pixel_format,
				{GAME_SDL_EXTERNAL}.SDL_TEXTUREACCESS_TARGET,
				a_width, a_height)
		ensure
			Error_Or_Exist: not has_error implies exists
			Is_Not_Shared: not shared
			Is_Targetable: is_targetable
		end

invariant
	Always_targetable: is_targetable

end
