note
	description: "Summary description for {GAME_IMAGE_SOURCE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_IMAGE_SOURCE

inherit
	GAME_RESSOURCE
		rename
			make as make_ressource
		end
	DISPOSABLE

create {GAME_WINDOW}
	make_from_pointer

create
	own_from_pointer

feature {NONE} -- Initialisation

	make_from_pointer(a_internal_pointer:POINTER)
			-- Make the `Current' from an already open `a_internal_pointer' image.
		do
			internal_pointer:=a_internal_pointer
			must_free:=False
		end

	own_from_pointer(a_internal_pointer:POINTER)
			-- Make the `Current' from an already open `a_internal_pointer' image.
		do
			internal_pointer:=a_internal_pointer
			must_free:=True
		end

feature -- Access

	is_openable:BOOLEAN
			-- <Precursor>
		do
			Result:=not internal_pointer.is_default_pointer
		end

	open
			-- <Precursor>
		do
			is_open:=True
		end

feature {GAME_SURFACE}

	internal_pointer:POINTER

feature {NONE} -- Implementation

	must_free:BOOLEAN

	dispose
		do
			if must_free and not internal_pointer.is_default_pointer then
				{GAME_SDL_EXTERNAL}.SDL_FreeSurface(internal_pointer)
				is_open := False
				internal_pointer:=create {POINTER}
			end
		end



end
