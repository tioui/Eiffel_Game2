note
	description: "[
					A font contained inside a custom package file
					that can be use to draw text with a {TEXT_IMAGE}.
				]"
	author: "Louis Marchand"
	date: "Mon, 30 Mar 2015 01:06:37 +0000"
	revision: "2.0"

class
	TEXT_FONT_CPF

inherit
	CPF_RESSOURCE_MANAGER
		rename
			make as make_cpf_ressource
		end
	TEXT_FONT
	rename
		make as make_from_file,
		make_with_index as make_with_index_from_file
	redefine
		open, disable_style_modifier, is_underline, enable_underline,
		disable_underline, is_bold, enable_bold, disable_bold,
		is_italic, enable_italic, disable_italic, is_strike_through,
		enable_strike_through, disable_strike_through, has_outline,
		outline_size, set_outline_size, disable_outline, has_hinting,
		disable_hinting, has_normal_hinting, enable_normal_hinting,
		has_light_hinting, has_monochrome_hinting, enable_light_hinting,
		enable_monochrome_hinting, is_kerning_enabled, enable_kerning,
		disable_kerning, maximum_height, ascent, descent, line_skip_height,
		is_monospace, face_family_name, face_style_name, is_glyph_provided,
		glyph_metrics, text_dimension, item
	end

create
	make,
	make_with_index

feature -- Initialisation

	make (a_cpf:CPF_PACKAGE_FILE;a_cpf_index:INTEGER; a_size: INTEGER_32)
			-- Initialization for `Current' contained in `a_cpf' at index
			-- `a_cpf_index' and using `a_size' as `Current's size.
		require
			font_text_enabled: text_library.is_text_enable
			cpf_index_valid: a_cpf.is_readable and then a_cpf_index > 0 and then a_cpf_index <= a_cpf.sub_files_count
		do
			make_with_index(a_cpf, a_cpf_index, a_size, 0)
		end

	make_with_index (a_cpf:CPF_PACKAGE_FILE;a_cpf_index:INTEGER; a_size: INTEGER_32; a_index: INTEGER_32)
			-- Initialization for `Current' contained in `a_cpf' at index
			-- `a_cpf_index' and using `a_size' as `Current's size.
			-- The `a_index' is use if there is more than one font in a ttf file.
		require
			font_text_enabled: text_library.is_text_enable
			cpf_index_valid: a_cpf.is_readable and then a_cpf_index > 0 and then a_cpf_index <= a_cpf.sub_files_count
		do
			make_ressource
			make_cpf_ressource(a_cpf, a_cpf_index)
			rwop:={GAME_SDL_EXTERNAL}.SDL_AllocRW
			cpf.lock_mutex
			cpf.select_sub_file (cpf_index)
			{GAME_SDL_EXTERNAL}.setSDLRWops(rwop,cpf.internal_pointer)
			last_position:=cpf.position
			cpf.unlock_mutex
		end

feature -- Access

	open
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	disable_style_modifier
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_underline:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result:=Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	enable_underline
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	disable_underline
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_bold:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	enable_bold
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	disable_bold
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_italic:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	enable_italic
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	disable_italic
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_strike_through:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	enable_strike_through
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	disable_strike_through
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	has_outline:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	outline_size:INTEGER assign set_outline_size
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	set_outline_size(a_outline_size:INTEGER)
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT} (a_outline_size)
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	disable_outline
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	has_hinting:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	disable_hinting
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	has_normal_hinting:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	enable_normal_hinting
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	has_light_hinting:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	enable_light_hinting
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	has_monochrome_hinting:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	enable_monochrome_hinting
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_kerning_enabled:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	enable_kerning
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	disable_kerning
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	maximum_height:INTEGER
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	ascent:INTEGER
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	descent:INTEGER
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	line_skip_height:INTEGER
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_monospace:BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	face_family_name:READABLE_STRING_GENERAL
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	face_style_name:READABLE_STRING_GENERAL
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT}
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	is_glyph_provided(a_character:CHARACTER_32):BOOLEAN
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT} (a_character)
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	glyph_metrics(a_character:CHARACTER_32):TUPLE[minimal_x, maximal_x, minimal_y, maximal_y, advance:INTEGER]
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT} (a_character)
			last_position:=cpf.position
			cpf.unlock_mutex
		end

	text_dimension(a_text:READABLE_STRING_GENERAL):TUPLE[width, height:INTEGER]
			-- <Precursor>
		do
			cpf.lock_mutex
			cpf.go (last_position)
			Result := Precursor {TEXT_FONT} (a_text)
			last_position:=cpf.position
			cpf.unlock_mutex
		end


feature {GAME_SDL_ANY} -- Implementation

	lock_cpf_mutex
		do
			cpf.lock_mutex
		end

	unlock_cpf_mutex
		do
			cpf.unlock_mutex
		end

	item:POINTER
			-- <Precursor>
			-- Note that you must call `lock_cpf_mutex' before using
			-- this routine and using `unlock_cpf_mutex' after
		do
			cpf.select_sub_file (cpf_index)
			cpf.go (last_position)
			Result:=Precursor {TEXT_FONT}
			last_position:=cpf.position
		end

feature {NONE} -- Implementation - Variables

	last_position:INTEGER

end
