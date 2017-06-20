note
	description: "Represent an audio device"
	author: "Louis Marchand"
	date: "Wed, 14 Jun 2017 20:19:24 +0000"
	revision: "0.1"

class
	AUDIO_DEVICE

inherit
	AUDIO_ANY
		redefine
			is_equal
		end

create
	make

feature {NONE} -- Initialization

	make(a_pointer:POINTER; a_is_capture:BOOLEAN)
			-- Initialization of `Current' using `a_pointer' as `name'
		require
			Name_Not_Void: not a_pointer.is_default_pointer
		local
			l_c_string:C_STRING
		do
			is_capture := a_is_capture
			name_pointer := a_pointer
			create l_c_string.make_by_pointer (name_pointer)
			name := l_c_string.string
		end

feature -- Access

	name:READABLE_STRING_GENERAL
			-- The text identifier of `Current'

	is_capture:BOOLEAN
			-- `Current' is a capturing device

	is_playback:BOOLEAN
			-- `Current' is a playback device
		do
			Result := not is_capture
		end

feature -- Comparison

	is_equal (a_other: like Current): BOOLEAN
			-- <Precursor>
		do
			Result := a_other.name_pointer ~ name_pointer
		end

feature {AUDIO_ANY} -- Implementation

	name_pointer:POINTER
			-- Internal representation of `Current'




end
