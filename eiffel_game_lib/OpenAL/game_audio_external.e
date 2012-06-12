note
	description: "External C feature for Audio libraries."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_AUDIO_EXTERNAL


feature -- OpenAL functions

	frozen c_sizeof_sf_count_t:INTEGER
		external
			"C inline use <stdint.h>"
		alias
			"sizeof(sf_count_t)"
		end

	frozen AL_get_error:INTEGER
		external
			"C : ALenum | <al.h>"
		alias
			"alGetError"
		end

	frozen AL_Create_context(device:POINTER;flags:POINTER):POINTER
		external
			"C (ALCdevice *,ALCint *) : ALCcontext * | <al.h>"
		alias
			"alcCreateContext"
		end

	frozen AL_make_context_current(context:POINTER)
		external
			"C (ALCcontext *) | <al.h>"
		alias
			"alcMakeContextCurrent"
		end

	frozen AL_get_current_context:POINTER
		external
			"C : ALCcontext * | <al.h>"
		alias
			"alcGetCurrentContext"
		end

	frozen AL_destroy_context(context:POINTER)
		external
			"C (ALCcontext *) | <al.h>"
		alias
			"alcDestroyContext"
		end


	frozen AL_suspend_context(context:POINTER)
		external
			"C (ALCcontext *) | <al.h>"
		alias
			"alcSuspendContext"
		end

	frozen AL_open_device(device_name:POINTER):POINTER
		external
			"C (ALCchar *) : ALCdevice * | <al.h>"
		alias
			"alcOpenDevice"
		end


	frozen AL_close_device(device:POINTER):INTEGER
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

--feature -- OggVorbis Functions

--	frozen OV_file_open(filename,oggvorbis_file:POINTER):INTEGER
--		external
--			"C (char *,OggVorbis_File *) : int | <vorbisfile.h>"
--		alias
--			"ov_fopen"
--		end

--	frozen OV_oggvorbis_info(oggvorbis_file:POINTER;link:INTEGER):POINTER
--		external
--			"C (OggVorbis_File *,int) : vorbis_info * | <vorbisfile.h>"
--		alias
--			"ov_info"
--		end

--	frozen OV_clear_file(oggvorbis_file:POINTER):INTEGER
--		external
--			"C (OggVorbis_File *) : int | <vorbisfile.h>"
--		alias
--			"ov_clear"
--		end

--	frozen OV_read_stream(oggvorbis_file,buffer:POINTER;length,bigendian,word,signed:INTEGER;bitstream:POINTER):INTEGER_32
--		external
--			"C (OggVorbis_File *, char *, int, int, int, int, int *) : long | <vorbisfile.h>"
--		alias
--			"ov_read"
--		end

--	frozen OV_seekable(oggvorbis_file:POINTER):INTEGER_32
--		external
--			"C (OggVorbis_File *) : long | <vorbisfile.h>"
--		alias
--			"ov_seekable"
--		end

--	frozen OV_pcm_seek_page(oggvorbis_file:POINTER;pos:INTEGER_64):INTEGER
--		external
--			"C (OggVorbis_File *,ogg_int64_t) : int | <vorbisfile.h>"
--		alias
--			"ov_pcm_seek_page"
--		end

--feature -- OggVorbis - OggVorbis_File Structure

--	frozen c_oggvorbis_file_struct_allocate: POINTER is
--		external
--			"C inline use <vorbisfile.h>"
--		alias
--			"calloc (sizeof(OggVorbis_File), 1)"
--		end

--	frozen c_oggvorbis_file_struct_free(oggvorbis:POINTER) is
--		external
--			"C inline use <vorbisfile.h>"
--		alias
--			"free((OggVorbis_File *)$oggvorbis)"
--		end

--feature -- OggVorbis - vorbis_info

--	frozen get_vorbis_info_struct_channels (vorbis_info:POINTER):INTEGER
--		external
--			"C [struct <vorbisfile.h>] (vorbis_info):int"
--		alias
--			"channels"
--		end

--	frozen get_vorbis_info_struct_rate (vorbis_info:POINTER):INTEGER_32
--		external
--			"C [struct <vorbisfile.h>] (vorbis_info):long"
--		alias
--			"rate"
--		end

feature -- libsndfile fonctions

	frozen SF_open(path:POINTER;mode:INTEGER;sf_info:POINTER):POINTER
		external
			"C (const char *, int , SF_INFO *) : SNDFILE* | <sndfile.h>"
		alias
			"sf_open"
		end

	frozen sf_open_virtual(sf_virtual_io:POINTER;mode:INTEGER;sf_info:POINTER;user_data:POINTER):POINTER
		external
			"C (SF_VIRTUAL_IO *, int , SF_INFO *, void *) : SNDFILE* | <sndfile.h>"
		alias
			"sf_open_virtual"
		end

	frozen SF_close(sndfile:POINTER):INTEGER
		external
			"C (SNDFILE *) : int | <sndfile.h>"
		alias
			"sf_close"
		end

	frozen SF_seek(sndfile:POINTER;frames:INTEGER_64;whence:INTEGER):INTEGER_64
		external
			"C (SNDFILE *, sf_count_t, int) : sf_count_t | <sndfile.h>"
		alias
			"sf_seek"
		end

	frozen sf_read_short(sndfile,ptr:POINTER;items:INTEGER_64):INTEGER_64
		external
			"C (SNDFILE *, short *, sf_count_t) : sf_count_t | <sndfile.h>"
		alias
			"sf_read_short"
		end

	frozen set_snd_file_virtual_io(virtual_io:POINTER)
		external
			"C (SF_VIRTUAL_IO *) | <game_more.h>"
		alias
			"setSndFileVirtualIo"
		end


	frozen c_sizeof_snd_file_virtual_io:INTEGER
		external
			"C inline use <sndfile.h>"
		alias
			"sizeof(SF_VIRTUAL_IO)"
		end

feature -- libsndfile SF_INFO structure

	frozen c_sf_info_struct_allocate: POINTER is
		external
			"C inline use <sndfile.h>"
		alias
			"malloc (sizeof(SF_INFO))"
		end

	frozen c_sf_info_struct_free(info:POINTER) is
		external
			"C inline use <sndfile.h>"
		alias
			"free((SF_INFO *)$info)"
		end

	frozen get_sf_info_struct_channels (sf_info:POINTER):INTEGER
		external
			"C [struct <sndfile.h>] (SF_INFO):int"
		alias
			"channels"
		end

	frozen get_sf_info_struct_frames (sf_info:POINTER):INTEGER_64
		external
			"C [struct <sndfile.h>] (SF_INFO):sf_count_t"
		alias
			"frames"
		end

	frozen get_sf_info_struct_format (sf_info:POINTER):INTEGER
		external
			"C [struct <sndfile.h>] (SF_INFO):int"
		alias
			"format"
		end

	frozen get_sf_info_struct_samplerate (sf_info:POINTER):INTEGER
		external
			"C [struct <sndfile.h>] (SF_INFO):int"
		alias
			"samplerate"
		end

	frozen get_sf_info_struct_seekable (sf_info:POINTER):INTEGER
		external
			"C [struct <sndfile.h>] (SF_INFO):int"
		alias
			"seekable"
		end

feature -- OpenAL Constantes

	frozen AL_INVALID_VALUE :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_INVALID_VALUE"
		end

	frozen AL_INVALID_ENUM :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"AL_INVALID_ENUM"
		end
	frozen AL_INVALID_OPERATION :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"AL_INVALID_OPERATION"
		end

	frozen AL_INVALID_NAME :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"AL_INVALID_NAME"
		end

	frozen AL_OUT_OF_MEMORY :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"AL_OUT_OF_MEMORY"
		end

	frozen AL_INVALID_DEVICE :INTEGER
		external
			"C inline use <alc.h>"
		alias
			"ALC_INVALID_DEVICE"
		end


	frozen AL_INVALID_CONTEXT :INTEGER
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

feature -- libsndfile Constants

	frozen SFM_READ :INTEGER
		external
			"C inline use <al.h>"
		alias
			"SFM_READ"
		end

	frozen SFM_WRITE :INTEGER
		external
			"C inline use <al.h>"
		alias
			"SFM_WRITE"
		end

	frozen SFM_RDWR :INTEGER
		external
			"C inline use <al.h>"
		alias
			"SFM_RDWR"
		end



	frozen SEEK_SET :INTEGER
		external
			"C inline use <al.h>"
		alias
			"SEEK_SET"
		end

	frozen SEEK_CUR :INTEGER
		external
			"C inline use <al.h>"
		alias
			"SEEK_CUR"
		end

	frozen SEEK_END :INTEGER
		external
			"C inline use <al.h>"
		alias
			"SEEK_END"
		end

end
