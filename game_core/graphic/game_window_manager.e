note
	description: "Represent the Window manager used by the operating system"
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_WINDOW_MANAGER

inherit
	DISPOSABLE

create {GAME_WINDOW}
	own_from_pointer

feature {NONE} -- Initialization

	own_from_pointer(a_internal_pointer:POINTER)
			-- Initialization for `Current'.
		do
			item:=a_internal_pointer
		end

feature -- Access

	is_unknown:BOOLEAN
			-- Cannot identified `Current'
		do
			Result := {GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(item) = {GAME_SDL_EXTERNAL}.sdl_syswm_unknown
		end

	is_windows:BOOLEAN
			-- `Current' represent the Windows Operating system window manager
		do
			Result := {GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(item) = {GAME_SDL_EXTERNAL}.Sdl_syswm_windows
		end

	is_X11:BOOLEAN
			-- `Current' represent the X11 manager
		do
			Result := {GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(item) = {GAME_SDL_EXTERNAL}.sdl_syswm_x11
		end

	is_directfb:BOOLEAN
			-- `Current' represent the DirectFB manager
		do
			Result := {GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(item) = {GAME_SDL_EXTERNAL}.sdl_syswm_directfb
		end

	is_cocoa:BOOLEAN
			-- `Current' represent the Apple Cocoa manager
		do
			Result := {GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(item) = {GAME_SDL_EXTERNAL}.sdl_syswm_cocoa
		end

	is_UIKit:BOOLEAN
			-- `Current' represent the Web UIKit manager
		do
			Result := {GAME_SDL_EXTERNAL}.get_sys_wm_struct_subsystem(item) = {GAME_SDL_EXTERNAL}.sdl_syswm_uikit
		end

feature {NONE} -- Implementation

	item:POINTER
			-- Internal pointer to the memory structure representing `Current'

	dispose
			-- <Precursor>
		do
			item.memory_free
		end

end
