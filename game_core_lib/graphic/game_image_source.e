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
			internal_pointer:=a_internal_pointer
			must_free:=False
		end

	own_from_pointer(a_internal_pointer:POINTER)
			-- Initialization for `Current' from an already open `a_internal_pointer' image.
			-- The image in memory is not copied.
			-- Note that `a_internal_pointer' will be free by `Current'
		require
			Image_Source_Video_Is_Enable:game_library.is_video_enable
		do
			internal_pointer:=a_internal_pointer
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
			if l_image_pointer.is_default_pointer then
				io.error.put_string ("An error occured while copying the image source.%N")
				io.error.put_string (get_error.to_string_8+"%N")
				has_error:=True
			end
			own_from_pointer (l_image_pointer)
		end

	make_from_other(a_other: GAME_IMAGE_SOURCE)
			-- Initialization for `Current' by copying the memory value of `a_other'.
		require
			Image_Source_Video_Is_Enable:game_library.is_video_enable
		do
			make_from_pointer(a_other.internal_pointer)
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

feature {GAME_IMAGE_SOURCE,GAME_SURFACE}

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

invariant
	Image_Source_Valid: is_open implies not internal_pointer.is_default_pointer

end
