note
	description: "Summary description for {GAME_BLENDABLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GAME_BLENDABLE

inherit
	GAME_SDL_ANY

feature -- Access

	is_valid:BOOLEAN
			-- Is item a valid pointer to be used as blenderable
		deferred
		end

	disable_blending
			-- Disable every blending mode to use for drawing operations.
			-- No blending mode:	dstRGBA = srcRGBA
		require
			Blendable_Is_Valid: is_valid
		do
			set_blend_mode({GAME_SDL_EXTERNAL}.Sdl_blendmode_none)
		end

	is_blending_disabled:BOOLEAN
			-- True if no blending mode is used for drawing operations.
			-- No blending mode:	dstRGBA = srcRGBA
		require
			Blendable_Is_Valid: is_valid
		local
			l_blending_mode:INTEGER
		do
			l_blending_mode := blend_mode
			if not has_error then
				Result := l_blending_mode={GAME_SDL_EXTERNAL}.Sdl_blendmode_none
			else
				Result := False
			end
		end

	enable_alpha_blending
			-- Set the alpha blending mode to use for drawing operations.
			-- Alpha blending:	dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA))
			--					dstA = srcA + (dstA * (1-srcA))
		require
			Blendable_Is_Valid: is_valid
		do
			set_blend_mode({GAME_SDL_EXTERNAL}.Sdl_blendmode_blend)
		end

	is_alpha_blending_enabled:BOOLEAN
			-- True if the blending mode for drawing operation is alpha blending.
			-- Alpha blending:	dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA))
			--					dstA = srcA + (dstA * (1-srcA))
		require
			Blendable_Is_Valid: is_valid
		local
			l_blending_mode:INTEGER
		do
			l_blending_mode := blend_mode
			if not has_error then
				Result := l_blending_mode={GAME_SDL_EXTERNAL}.Sdl_blendmode_blend
			else
				Result := False
			end
		end

	enable_additive_blending
			-- Set the additive blending mode to use for drawing operations.
			-- Additive blending:	dstRGB = (srcRGB * srcA) + dstRGB
			--						dstA = dstA
		require
			Blendable_Is_Valid: is_valid
		do
			set_blend_mode({GAME_SDL_EXTERNAL}.Sdl_blendmode_add)
		end

	is_additive_blending_enabled:BOOLEAN
			-- True if the blending mode for drawing operation is additive blending.
			-- Additive blending:	dstRGB = (srcRGB * srcA) + dstRGB
			--						dstA = dstA
		require
			Blendable_Is_Valid: is_valid
		local
			l_blending_mode:INTEGER
		do
			l_blending_mode := blend_mode
			if not has_error then
				Result := l_blending_mode={GAME_SDL_EXTERNAL}.Sdl_blendmode_add
			else
				Result := False
			end
		end

	enable_modulate_blending
			-- Set the color modulate blending mode to use for drawing operations.
			-- Color modulate:	dstRGB = srcRGB * dstRGB
			--					dstA = dstA
		require
			Blendable_Is_Valid: is_valid
		do
			set_blend_mode({GAME_SDL_EXTERNAL}.Sdl_blendmode_mod)
		end

	is_modulate_blending_enabled:BOOLEAN
			-- True if the blending mode for drawing operation is color modulate blending.
			-- Color modulate:	dstRGB = srcRGB * dstRGB
			--					dstA = dstA
		require
			Blendable_Is_Valid: is_valid
		local
			l_blending_mode:INTEGER
		do
			l_blending_mode := blend_mode
			if not has_error then
				Result := l_blending_mode={GAME_SDL_EXTERNAL}.Sdl_blendmode_mod
			else
				Result := False
			end
		end


feature {NONE} -- Implementation

	item:POINTER
			-- Internal pointer of `Current'
		deferred
		end

	blend_mode:INTEGER assign set_blend_mode
		local
			l_error, l_blending_mode:INTEGER
		do
			clear_error
			l_error := c_get_blend_mode(item, $l_blending_mode)
			--l_error:={GAME_SDL_EXTERNAL}.SDL_GetRenderDrawBlendMode(item, $l_blending_mode)
			if l_error<0 then
				manage_error_code(l_error, "An error occured while retrieving the blending mode.")
				Result:=0
			end
			Result:=l_blending_mode
		end

	set_blend_mode(a_blend_mode:INTEGER)
		local
			l_error:INTEGER
		do
			clear_error
			l_error := c_set_blend_mode(item, a_blend_mode)
		--	l_error:={GAME_SDL_EXTERNAL}.SDL_SetRenderDrawBlendMode(item, a_blend_mode)
			manage_error_code(l_error, "An error occured while enabling color modulate blending on the renderer.")
		end

feature {NONE} -- External

	c_get_blend_mode(a_item, a_blend_mode:POINTER):INTEGER
		deferred
		end

	c_set_blend_mode(a_item:POINTER; a_blend_mode:INTEGER):INTEGER
		deferred
		end
end
