note
	description: "[
		Error manager for the audio library. 
		All OpenAL Class inherit from it to access error in the C library.
		
		TODO: get individual error by name.
			]"
	author: "Louis Marchand"
	date: "Tue, 07 Apr 2015 01:15:20 +0000"
	revision: "2.0"

deferred class
	AUDIO_OPENAL_ERROR_MANAGER

inherit
	GAME_ERROR_MANAGER
		rename
			message as manual_error,
			put_error as put_manual_error
		redefine
			clear_error,
			last_error,
			put_manual_error
		end


feature {NONE}

	clear_error
			-- <Precursor>
		do
			last_alc_error_code := {AUDIO_EXTERNAL}.ALC_get_error(create {POINTER})
			last_al_error_code := {AUDIO_EXTERNAL}.AL_get_error
			Precursor{GAME_ERROR_MANAGER}
		end

	clear_alc_error(a_device:POINTER)
		do
			clear_error
			last_alc_error_code := {AUDIO_EXTERNAL}.ALC_get_error(a_device)
		end

	read_al_error(a_message:READABLE_STRING_GENERAL)
			-- Read the next OpenAL error
		do
			last_alc_error_code := {AUDIO_EXTERNAL}.Alc_no_error
			last_al_error_code := {AUDIO_EXTERNAL}.AL_get_error
			has_error := last_al_error_code /= {AUDIO_EXTERNAL}.Al_no_error
			if has_error and print_on_error_internal.item then
				io.error.put_string (a_message.to_string_8+"%N")
				io.error.put_string (last_error.to_string_8+"%N")
			end
		end

	read_alc_error(a_device:POINTER; a_message:READABLE_STRING_GENERAL)
			-- Read the next OpenAL error
		do
			last_al_error_code := {AUDIO_EXTERNAL}.Al_no_error
			last_alc_error_code := {AUDIO_EXTERNAL}.ALC_get_error(a_device)
			has_error := last_alc_error_code /= {AUDIO_EXTERNAL}.Alc_no_error
			if has_error and print_on_error_internal.item then
				io.error.put_string (a_message.to_string_8+"%N")
				io.error.put_string (last_error.to_string_8+"%N")
			end
		end

	put_manual_error(a_general_message, a_specific_error: READABLE_STRING_GENERAL)
			-- Create a manual error using `a_general_error' for the debug information
			-- and `a_specific_error' for the lasting information
		do
			last_al_error_code := {AUDIO_EXTERNAL}.Al_no_error
			is_manual_error := True
			Precursor {GAME_ERROR_MANAGER} (a_general_message, a_specific_error)
		end

	is_error_managable :BOOLEAN
			-- Can the present error can be manage
		do
			Result := last_al_error_code = {AUDIO_EXTERNAL}.Al_out_of_memory or last_al_error_code = {AUDIO_EXTERNAL}.Al_no_error
		end

	is_manual_error:BOOLEAN
			-- Is the present error a manual error

	last_al_error_code:INTEGER
			-- The last error index return by the OpenAL library.

	last_alc_error_code:INTEGER
			-- The last error index return by the OpenAL context library.

feature -- Access

	last_error: READABLE_STRING_GENERAL
			-- <Precursor>
		do
			if is_manual_error then
				Result := Precursor {GAME_ERROR_MANAGER}
			elseif last_al_error_code /= {AUDIO_EXTERNAL}.Al_no_error then
				if last_al_error_code = {AUDIO_EXTERNAL}.AL_invalid_enum then
					Result:="An invalid enum value was passed to an OpenAL function."
				elseif last_al_error_code = {AUDIO_EXTERNAL}.AL_invalid_value then
					Result:="An invalid value was passed to an OpenAL function."
				elseif last_al_error_code = {AUDIO_EXTERNAL}.Al_invalid_operation then
					Result:="The requested operation is not valid."
				elseif last_al_error_code = {AUDIO_EXTERNAL}.Al_invalid_name then
					Result:="A bad name (ID) was passed to an OpenAL function."
				elseif last_al_error_code = {AUDIO_EXTERNAL}.Al_out_of_memory then
					Result:="The requested operation resulted in OpenAL running out of memory."
				else
					Result:="Unmanaged OpenAL error."
				end
			elseif last_alc_error_code /= {AUDIO_EXTERNAL}.Alc_no_error then
				if last_alc_error_code = {AUDIO_EXTERNAL}.ALC_invalid_value then
					Result:="An invalid value was passed to an OpenAL context function."
				elseif last_alc_error_code = {AUDIO_EXTERNAL}.ALC_invalid_device then
					Result:="The device is not valid."
				elseif last_alc_error_code = {AUDIO_EXTERNAL}.ALC_invalid_context then
					Result:="The context is not valid."
				elseif last_alc_error_code = {AUDIO_EXTERNAL}.ALC_INVALID_ENUM then
					Result:="Invalid enum parameter passed to an ALC call."
				elseif last_alc_error_code = {AUDIO_EXTERNAL}.ALC_OUT_OF_MEMORY then
					Result:="Out of memory."
				else
					Result:="Unmanaged OpenAL context error."
				end
			else
				Result := "No error."
			end
		end

end
