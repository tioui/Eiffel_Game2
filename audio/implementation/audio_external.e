note
	description: "External C feature for Audio libraries."
	author: "Louis Marchand"
	date: "Tue, 07 Apr 2015 01:15:20 +0000"
	revision: "2.0"

class
	AUDIO_EXTERNAL


feature -- OpenAL Functions


	frozen AL_get_error:INTEGER
		external
			"C : ALenum | <al.h>"
		alias
			"alGetError"
		end

	frozen ALC_get_error(device:POINTER):INTEGER
		external
			"C (ALCdevice *) : ALCenum | <alc.h>"
		alias
			"alcGetError"
		end

	frozen ALC_get_string(deviceHandle:POINTER; token:INTEGER):POINTER
		external
			"C (ALCdevice *, ALCenum) : const ALCchar * | <alc.h>"
		alias
			"alcGetString"
		end

	frozen ALC_create_context(device:POINTER;flags:POINTER):POINTER
		external
			"C (ALCdevice *,ALCint *) : ALCcontext * | <alc.h>"
		alias
			"alcCreateContext"
		end

	frozen ALC_make_context_current(context:POINTER) : BOOLEAN
		external
			"C (ALCcontext *) : ALCboolean | <alc.h>"
		alias
			"alcMakeContextCurrent"
		end

	frozen ALC_get_current_context:POINTER
		external
			"C : ALCcontext * | <alc.h>"
		alias
			"alcGetCurrentContext"
		end

	frozen ALC_destroy_context(context:POINTER)
		external
			"C (ALCcontext *) | <alc.h>"
		alias
			"alcDestroyContext"
		end


	frozen ALC_suspend_context(context:POINTER)
		external
			"C (ALCcontext *) | <alc.h>"
		alias
			"alcSuspendContext"
		end

	frozen ALC_open_device(device_name:POINTER):POINTER
		external
			"C (const ALCchar *) : ALCdevice * | <alc.h>"
		alias
			"alcOpenDevice"
		end


	frozen ALC_close_device(device:POINTER):BOOLEAN
		external
			"C (ALCdevice *) : ALCboolean | <alc.h>"
		alias
			"alcCloseDevice"
		end


	frozen AL_get_listener_fv(param:INTEGER;les_params:POINTER)
		external
			"C (ALenum, ALfloat *) | <al.h>"
		alias
			"alGetListenerfv"
		end


	frozen AL_set_listener_fv(param:INTEGER;les_params:POINTER)
		external
			"C (ALenum, ALfloat *) | <al.h>"
		alias
			"alListenerfv"
		end

	frozen AL_get_source_fv(source_id:NATURAL;param:INTEGER;les_params:POINTER)
		external
			"C (ALuint, ALenum, ALfloat *) | <al.h>"
		alias
			"alGetSourcefv"
		end

	frozen AL_get_source_i(source_id:NATURAL;param:INTEGER;les_params:POINTER)
		external
			"C (ALuint, ALenum, ALint *) | <al.h>"
		alias
			"alGetSourcei"
		end

	frozen AL_get_source_f(source_id:NATURAL;param:INTEGER;les_params:POINTER)
		external
			"C (ALuint, ALenum, ALfloat *) | <al.h>"
		alias
			"alGetSourcef"
		end

	frozen AL_is_source(source_id:NATURAL) : BOOLEAN
		external
			"C (ALuint) : ALboolean | <al.h>"
		alias
			"alIsSource"
		end

	frozen AL_set_source_fv(source_id:NATURAL;param:INTEGER;les_params:POINTER)
		external
			"C (ALuint, ALenum, ALfloat *) | <al.h>"
		alias
			"alSourcefv"
		end

	frozen AL_set_source_f(source_id:NATURAL;param:INTEGER;les_params:REAL_32)
		external
			"C (ALuint, ALenum, ALfloat) | <al.h>"
		alias
			"alSourcef"
		end


	frozen AL_gen_sources(nb:INTEGER;sources:POINTER)
		external
			"C (ALsizei, ALuint *) | <al.h>"
		alias
			"alGenSources"
		end


	frozen AL_delete_sources(nb:INTEGER;sources:POINTER)
		external
			"C (ALsizei, ALuint *) | <al.h>"
		alias
			"alDeleteSources"
		end

	frozen AL_Gen_Buffers(nb:INTEGER;buffers:POINTER)
		external
			"C (ALsizei, ALuint *) | <al.h>"
		alias
			"alGenBuffers"
		end

	frozen AL_is_Buffer(buffer: NATURAL) :BOOLEAN
		external
			"C (ALuint) : ALboolean | <al.h>"
		alias
			"alIsBuffer"
		end

	frozen AL_source_queue_buffers(source:NATURAL;nb:INTEGER;buffers:POINTER)
		external
			"C (ALuint, ALsizei, ALuint *) | <al.h>"
		alias
			"alSourceQueueBuffers"
		end

	frozen AL_source_unqueue_buffers(source:NATURAL;nb:INTEGER;buffers:POINTER)
		external
			"C (ALuint, ALsizei, ALuint *) | <al.h>"
		alias
			"alSourceUnqueueBuffers"
		end

	frozen AL_delete_buffers(nb:INTEGER;buffers:POINTER)
		external
			"C (ALsizei, ALuint *) | <al.h>"
		alias
			"alDeleteBuffers"
		end

	frozen AL_buffer_data(buffer_id:NATURAL;format:INTEGER;buffers:POINTER;size,freq:INTEGER)
		external
			"C (ALuint, ALenum, ALvoid *, ALsizei, ALsizei) | <al.h>"
		alias
			"alBufferData"
		end

	frozen AL_source_play(source:NATURAL)
		external
			"C (ALuint) | <al.h>"
		alias
			"alSourcePlay"
		end

	frozen AL_source_pause(source:NATURAL)
		external
			"C (ALuint) | <al.h>"
		alias
			"alSourcePause"
		end

	frozen AL_source_stop(source:NATURAL)
		external
			"C (ALuint) | <al.h>"
		alias
			"alSourceStop"
		end

	frozen AL_source_rewind(source:NATURAL)
		external
			"C (ALuint) | <al.h>"
		alias
			"alSourceRewind"
		end

feature -- OpenAL Constants



	frozen ALC_all_device_specifier :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_ALL_DEVICES_SPECIFIER"
		end

	frozen ALC_device_specifier :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_DEVICE_SPECIFIER"
		end

	frozen ALC_invalid_value :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_INVALID_VALUE"
		end

	frozen AL_invalid_value :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_INVALID_VALUE"
		end

	frozen AL_invalid_enum :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_INVALID_ENUM"
		end

	frozen ALC_invalid_enum :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_INVALID_ENUM"
		end

	frozen AL_INVALID_OPERATION :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_INVALID_OPERATION"
		end

	frozen AL_INVALID_NAME :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_INVALID_NAME"
		end

	frozen AL_OUT_OF_MEMORY :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_OUT_OF_MEMORY"
		end

	frozen ALC_OUT_OF_MEMORY :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_OUT_OF_MEMORY"
		end

	frozen ALC_invalid_device :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_INVALID_DEVICE"
		end


	frozen ALC_invalid_context :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_INVALID_CONTEXT"
		end

	frozen AL_NO_ERROR :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_NO_ERROR"
		end

	frozen ALC_NO_ERROR :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_NO_ERROR"
		end

	frozen AL_POSITION :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_POSITION"
		end

	frozen AL_VELOCITY :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_VELOCITY"
		end

	frozen AL_ORIENTATION :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_ORIENTATION"
		end

	frozen AL_DIRECTION :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_DIRECTION"
		end


	frozen AL_BUFFERS_PROCESSED :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_BUFFERS_PROCESSED"
		end


	frozen AL_BUFFERS_QUEUED :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_BUFFERS_QUEUED"
		end

	frozen AL_FORMAT_MONO8 :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_FORMAT_MONO8"
		end

	frozen AL_FORMAT_STEREO8 :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_FORMAT_STEREO8"
		end

	frozen AL_FORMAT_MONO16 :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_FORMAT_MONO16"
		end

	frozen AL_FORMAT_STEREO16 :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_FORMAT_STEREO16"
		end


	frozen AL_SOURCE_STATE :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_SOURCE_STATE"
		end

	frozen AL_INITIAL :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_INITIAL"
		end

	frozen AL_PLAYING :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_PLAYING"
		end

	frozen AL_PAUSED :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_PAUSED"
		end

	frozen AL_STOPPED :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_STOPPED"
		end


	frozen AL_GAIN :INTEGER
		external
			"C inline use <al.h>"
		alias
			"AL_GAIN"
		end

end
