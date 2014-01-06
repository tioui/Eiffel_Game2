note
	description: "Summary description for {GAME_DISPLAY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_DISPLAY

inherit
	GAME_SDL_ANY
	GAME_LIBRARY_SHARED
	GAME_SDL_CONSTANTS

create
	make

feature {NONE} -- Initialization

	make(a_index:INTEGER)
			-- Initialization for `Current'.
		do
			index:=a_index
		end

feature -- Access

	index:INTEGER

	name:READABLE_STRING_GENERAL
			-- The name of `Current'
		local
			l_name_c:C_STRING
			l_name_pointer:POINTER
		do
			clear_error
			l_name_pointer:={GAME_SDL_EXTERNAL}.sdl_getdisplayname (index)
			if l_name_pointer.is_default_pointer then
				io.error.put_string ("An error occured while retriving the display name.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
				Result:=""
			else
				create l_name_c.make_by_pointer (l_name_pointer)
				Result:=l_name_c.string
			end
		end

	bound_x:INTEGER
			-- Y coordinate of the `bound' of `Current'.
		require
			Displays_Bound_Is_Video_Enabled: game_library.is_video_enable
		do
			Result:=bound.x
		end

	bound_y:INTEGER
			-- Y coordinate of the `bound' of `Current'.
		require
			Displays_Bound_Is_Video_Enabled: game_library.is_video_enable
		do
			Result:=bound.y
		end

	bound_width:INTEGER
			-- Width of the `bound' of `Current'.
		require
			Displays_Bound_Is_Video_Enabled: game_library.is_video_enable
		do
			Result:=bound.width
		end

	bound_height:INTEGER
			-- Height of the `bound' of `Current'.
		require
			Displays_Bound_Is_Video_Enabled: game_library.is_video_enable
		do
			Result:=bound.height
		end

	bound:TUPLE[x,y,width,height:INTEGER]
			-- Desktop area represented by `Current' (with the primary display located at 0,0).
		require
			Displays_Bound_Is_Video_Enabled: game_library.is_video_enable
		local
			l_error:INTEGER
			l_rect:POINTER
		do
			l_rect:=l_rect.memory_calloc (1, Size_of_sdl_rect_structure)
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetDisplayBounds(index,l_rect)
			if l_error<0 then
				io.error.put_string ("An error occured while retriving the display bound informations.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				Result:=[0,0,0,0]
			else
				Result:=[
						{GAME_SDL_EXTERNAL}.get_rect_struct_x(l_rect),
						{GAME_SDL_EXTERNAL}.get_rect_struct_y(l_rect),
						{GAME_SDL_EXTERNAL}.get_rect_struct_w(l_rect),
						{GAME_SDL_EXTERNAL}.get_rect_struct_h(l_rect)
					]
			end

			l_rect.memory_free
		end

	current_mode:GAME_DISPLAY_MODE
			-- The current display mode of `Current'.
		require
			Displays_Bound_Is_Video_Enabled: game_library.is_video_enable
		local
			l_mode:POINTER
			l_error:INTEGER
		do
			l_mode:=l_mode.memory_calloc (1, Size_of_sdl_display_mode_structure)
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetCurrentDisplayMode(index, l_mode)
			if l_error<0 then
				io.error.put_string ("An error occured while retriving the display mode informations.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
			create Result.own_from_pointer (l_mode)
		end

	native_mode:GAME_DISPLAY_MODE
			-- The display mode that `Current' should have if the game is not in full screen
			-- Note that this is equivalent to `current_mode' in non full screen mode.
		require
			Displays_Bound_Is_Video_Enabled: game_library.is_video_enable
		local
			l_mode:POINTER
			l_error:INTEGER
		do
			l_mode:=l_mode.memory_calloc (1, Size_of_sdl_display_mode_structure)
			clear_error
			l_error:={GAME_SDL_EXTERNAL}.SDL_GetDesktopDisplayMode(index, l_mode)
			if l_error<0 then
				io.error.put_string ("An error occured while retriving the display mode informations.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
			create Result.own_from_pointer (l_mode)
		end

	closest_mode(a_mode:GAME_DISPLAY_MODE):GAME_DISPLAY_MODE
			-- The display mode compatible with `Current' that is closest to `a_mode'.
		require
			Displays_Bound_Is_Video_Enabled: game_library.is_video_enable
		local
			l_mode, l_result:POINTER
			l_error:INTEGER
		do
			l_mode:=l_mode.memory_calloc (1, Size_of_sdl_display_mode_structure)
			clear_error
			l_result:={GAME_SDL_EXTERNAL}.SDL_GetClosestDisplayMode(index, a_mode.internal_pointer, l_mode)
			if l_result.is_default_pointer then
				io.error.put_string ("An error occured while retriving the closest display mode.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
			create Result.own_from_pointer (l_mode)
		end

	modes:CHAIN[GAME_DISPLAY_MODE]
			-- All display mode compatible with `Current'
		local
			l_count, l_i, l_error:INTEGER
			l_mode:POINTER
		do
			clear_error
			l_count:={GAME_SDL_EXTERNAL}.SDL_GetNumDisplayModes(index)
			if not (l_count > 0) then
				io.error.put_string ("An error occured while retriving the number of display modes.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
				l_count:=0
			end
			create {ARRAYED_LIST[GAME_DISPLAY_MODE]} Result.make (l_count)
			from
				l_i:=0
			until
				l_i >= l_count or
				has_error
			loop
				l_mode:=l_mode.memory_calloc (1, Size_of_sdl_display_mode_structure)
				l_error:= {GAME_SDL_EXTERNAL}.SDL_GetDisplayMode(index, l_i, l_mode)
				if l_error<0 then
					io.error.put_string ("An error occured while retriving the display mode with the index "+ l_i.out +".%N")
					io.error.put_string (get_error.to_string_8+"%N")
					has_error:=True
					l_mode.memory_free
				else
					Result.extend (create {GAME_DISPLAY_MODE}.own_from_pointer (l_mode))
				end
				l_i:=l_i+1
			end
		end

end
