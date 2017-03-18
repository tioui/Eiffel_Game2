note
	description: "A keyboard key."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_KEY

inherit
	GAME_SDL_ANY
		redefine
			out
		end

	GAME_VIRTUAL_KEY_HOLDER
		undefine
			out
		end

	GAME_PHYSICAL_KEY_HOLDER
		undefine
			out
		end

create
	make_from_physical_code,
	make_from_virtual_code,
	make_from_name

feature {NONE} -- Initialization

	make_from_physical_code(a_physical_code:INTEGER_32)
			-- Initialize `Current' using hardware
			-- dependant `a_physical_code' value (scancode).
		do
			physical_code := a_physical_code
			virtual_code := {GAME_SDL_EXTERNAL}.SDL_GetKeyFromScancode(physical_code)
		end

	make_from_virtual_code(a_virtual_code:INTEGER_32)
			-- Initialize `Current' using layout aware
			-- `a_virtual_code' value (keycode).
		do
			virtual_code := a_virtual_code
			physical_code := {GAME_SDL_EXTERNAL}.SDL_GetScancodeFromKey(virtual_code)
		end

	make_from_name(a_name:READABLE_STRING_GENERAL)
			-- Initialize `Current' using a text representation.
		local
			l_code:INTEGER_32
			l_utf_converter:UTF_CONVERTER
			l_text_c:C_STRING
		do
			create l_utf_converter
			create l_text_c.make(l_utf_converter.string_32_to_utf_8_string_8 (a_name.to_string_32))
			l_code := {GAME_SDL_EXTERNAL}.SDL_GetScancodeFromName(l_text_c.item)
			if l_code /= {GAME_SDL_EXTERNAL}.SDL_SCANCODE_UNKNOWN  then
				make_from_physical_code(l_code)
			else
				l_code := {GAME_SDL_EXTERNAL}.SDL_GetKeyFromName(l_text_c.item)
				make_from_virtual_code(l_code)
			end
		end


feature -- Access

	virtual_code:INTEGER_32
			-- Code of the key using the virtual layout keyboard
			-- (should be compatible between systems)

	physical_code:INTEGER_32
			-- Hardware code of the key
			-- (not compatible between systems)

	unicode_out:READABLE_STRING_GENERAL
			-- The unicode text representation of `Current'
		do
			Result := (create {UTF_CONVERTER}).utf_8_string_8_to_escaped_string_32 (out)
		end

	out:STRING
			-- <Precursor>
			-- Note that this value is in UTF-8.
			-- Use `unicode_out' to get the UTF-8 representatin
		local
			l_result_ptr:POINTER
			l_result_c:C_STRING
		do
			l_result_ptr:={GAME_SDL_EXTERNAL}.SDL_GetKeyName(virtual_code)
			if not l_result_ptr.is_default_pointer then
				create l_result_c.make_by_pointer (l_result_ptr)
				Result:=l_result_c.string
			else
				Result:=""
			end
	 	end

end
