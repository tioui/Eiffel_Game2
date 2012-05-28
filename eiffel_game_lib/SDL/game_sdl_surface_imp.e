note
	description: "Implementation of a GAME_SURFACE. Must not be use directly."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SDL_SURFACE_IMP

inherit
	ANY
	DISPOSABLE
	export
		{NONE} all
	end

create
	make

feature {NONE} -- Initialization

	make(the_surface:POINTER)
			-- Initialization for `Current'.
		require
			make_pointer_ok: the_surface /= Void and the_surface.to_integer_32 /= 0
		do
			surface_pointer := the_surface
			set_disposable
		ensure
			make_is_disposable_true:is_disposable
		end


feature {GAME_SURFACE} -- Access

	surface_pointer:POINTER

	is_surface_ok:BOOLEAN
		do
			Result:=true
			if surface_pointer = Void or surface_pointer = create {POINTER} then
				Result:=false
			end
		end

feature {GAME_SCREEN} -- Permit dispose free surface

	set_not_disposable
	do
		is_disposable:=false
	end

	set_disposable
	do
		is_disposable:=true
	end

feature{NONE} -- Dispose function

	is_disposable:BOOLEAN

	dispose
		do
			if is_disposable then
				{GAME_SDL_EXTERNAL}.SDL_FreeSurface(surface_pointer)
			end
		end


invariant
	Surface_Pointer_Ok: is_surface_ok

end
