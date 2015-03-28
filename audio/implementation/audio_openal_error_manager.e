note
	description: "[
		Error manager for the audio library. 
		All OpenAL Class inherit from it to access error in the C library.
		
		TODO: get individual error by name.
			]"
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

deferred class
	AUDIO_OPENAL_ERROR_MANAGER

inherit
	AUDIO_CONSTANTS


feature {NONE}

	read_error
		do
			last_error:={AUDIO_EXTERNAL}.AL_get_error
		end

	is_error_managable :BOOLEAN
		do
			Result := last_error=Al_out_of_memory or last_error=Al_no_error
		end

feature -- Access

	last_error_description:STRING_8
			-- Information on the `last_error'.
		do
			if last_error = Al_invalid_value then
				Result:="An invalid value was passed to an OpenAL function."
			elseif last_error = Al_invalid_enum then
				Result:="An invalid enum value was passed to an OpenAL function."
			elseif last_error = Al_invalid_operation then
				Result:="The requested operation is not valid."
			elseif last_error = Al_invalid_name then
				Result:="A bad name (ID) was passed to an OpenAL function."
			elseif last_error = Al_out_of_memory then
				Result:="The requested operation resulted in OpenAL running out of memory."
			elseif last_error = Al_invalid_device then
				Result:="The device is not valid."
			elseif last_error = Al_invalid_context then
				Result:="The context is not valid."
			elseif last_error = Al_no_error then
				Result:="There is not currently an error."
			else
				Result:=""
			end
		end

	is_error:BOOLEAN
			-- Is there an error in the OpenAL library.
		do
			Result:=last_error/=Al_no_error
		end

	last_error:INTEGER -- The last error index return by the OpenAL library.
end
