note
	description: "Summary description for {GAME_IMAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_IMAGE

inherit
	GAME_RESSOURCE
		rename
			make as make_ressource,
			has_error as has_ressource_error
		end
	DISPOSABLE
	GAME_LIBRARY_SHARED
	GAME_SDL_ANY

create {GAME_SDL_ANY}
	share_from_pointer,
	own_from_pointer,
	make_from_pointer

create
	make_from_other

feature {NONE} -- Initialisation

	share_from_pointer(a_internal_pointer:POINTER)
			-- Initialization for `Current' from an already open `a_internal_pointer' image.
			-- The image in memory is not copied.
			-- Note that `a_internal_pointer' will not be free by `Current'
		require
			Image_Source_Video_Is_Enable:game_library.is_video_enable
		do
			item := a_internal_pointer
			must_free:=False
		end

	own_from_pointer(a_internal_pointer:POINTER)
			-- Initialization for `Current' from an already open `a_internal_pointer' image.
			-- The image in memory is not copied.
			-- Note that `a_internal_pointer' will be free by `Current'
		require
			Image_Source_Video_Is_Enable:game_library.is_video_enable
		do
			item := a_internal_pointer
			must_free:=True
		end

	make_from_pointer(a_internal_pointer:POINTER)
			-- Initialization for `Current' by copying the internal memory value pointed by `a_internal_pointer'.
			-- Note that `a_internal_pointer' will not be free by `Current'.
		require
			Image_Source_Video_Is_Enable:game_library.is_video_enable
			Image_Source_Make_From_Pointer_Not_Null: not a_internal_pointer.is_default_pointer
		local
			l_format_pointer, l_image_pointer:POINTER
		do
			l_format_pointer:={GAME_SDL_EXTERNAL}.get_sdl_surface_struct_format(a_internal_pointer)
			clear_error
			l_image_pointer:={GAME_SDL_EXTERNAL}.SDL_ConvertSurface(a_internal_pointer, l_format_pointer, 0)
			manage_error_pointer(l_image_pointer, "An error occured while copying the image source.")
			own_from_pointer (l_image_pointer)
		end

	make_from_other(a_other: GAME_IMAGE)
			-- Initialization for `Current' by copying the memory value of `a_other'.
		require
			Image_Source_Video_Is_Enable:game_library.is_video_enable
		do
			make_from_pointer(a_other.item)
		end

feature -- Access

	is_openable:BOOLEAN
			-- <Precursor>
		do
			Result:=exists
		end

	open
			-- <Precursor>
		do
			is_open:=True
		ensure then
			Exists: not has_error implies exists
			Is_Open: not has_error implies is_open
		end

	exists:BOOLEAN
			-- Is `item' valid memory pointer
		do
			Result := not item.is_default_pointer
		end

feature {GAME_SDL_ANY}

	item:POINTER
			-- Internal pointer of `Current'

feature {NONE} -- Implementation

	must_free:BOOLEAN

	dispose
		do
			if must_free and exists then
				{GAME_SDL_EXTERNAL}.SDL_FreeSurface(item)
				is_open := False
				item := create {POINTER}
			end
		end

invariant
	Image_Source_Valid: is_open implies exists

end
