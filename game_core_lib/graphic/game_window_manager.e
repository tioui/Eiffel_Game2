note
	description: "Summary description for {GAME_WINDOW_MANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_WINDOW_MANAGER

inherit
	GAME_SDL_CONSTANTS
	DISPOSABLE

create {GAME_WINDOW}
	own_from_pointer

feature {NONE} -- Initialization

	own_from_pointer(a_internal_pointer:POINTER)
			-- Initialization for `Current'.
		do
			internal_pointer:=a_internal_pointer
		end

feature -- Access

	is_unknown:BOOLEAN
		do
			Result := ({GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(internal_pointer) = sdl_syswm_unknown)
		end

	is_windows:BOOLEAN
		do
			Result := ({GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(internal_pointer) = Sdl_syswm_windows)
		end

	is_X11:BOOLEAN
		do
			Result := ({GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(internal_pointer) = sdl_syswm_x11)
		end

	is_directfb:BOOLEAN
		do
			Result := ({GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(internal_pointer) = sdl_syswm_directfb)
		end

	is_cocoa:BOOLEAN
		do
			Result := ({GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(internal_pointer) = sdl_syswm_cocoa)
		end

	is_UIKit:BOOLEAN
		do
			Result := ({GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(internal_pointer) = sdl_syswm_uikit)
		end

feature {NONE} -- Implementation

	internal_pointer:POINTER

	dispose
		do
			internal_pointer.memory_free
		end

end
