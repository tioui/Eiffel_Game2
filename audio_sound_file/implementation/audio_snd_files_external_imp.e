note
	description: "External C feature for Audio snd files libraries."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	AUDIO_SND_FILES_EXTERNAL_IMP


feature -- libsndfile fonctions

	frozen c_sizeof_sf_count_t:INTEGER
		external
			"C inline use <stdint.h>"
		alias
			"sizeof(sf_count_t)"
		end

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

	frozen sf_strerror(sndfile:POINTER):POINTER
		external
			"C (SNDFILE *) : const char* | <sndfile.h>"
		alias
			"sf_strerror"
		end

	frozen SF_seek(sndfile:POINTER;frames:INTEGER_64;whence:INTEGER):INTEGER_64
		external
			"C (SNDFILE *, sf_count_t, int) : sf_count_t | <sndfile.h>"
		alias
			"sf_seek"
		end

	frozen sf_command(sndfile:POINTER;cmd:INTEGER;data:POINTER;datasize:INTEGER):INTEGER
		external
			"C (SNDFILE *, int, void *, int) : int | <sndfile.h>"
		alias
			"sf_command"
		end

	frozen sf_read_short(sndfile,ptr:POINTER;items:INTEGER_64):INTEGER_64
		external
			"C (SNDFILE *, short *, sf_count_t) : sf_count_t | <sndfile.h>"
		alias
			"sf_read_short"
		end


	frozen c_sizeof_snd_file_virtual_io:INTEGER
		external
			"C inline use <sndfile.h>"
		alias
			"sizeof(SF_VIRTUAL_IO)"
		end

feature -- sndfile_addition functions

	frozen set_snd_file_virtual_io(virtual_io:POINTER)
		external
			"C (SF_VIRTUAL_IO *) | <sndfile_additions.h>"
		alias
			"setSndFileVirtualIo"
		end

feature -- libsndfile SF_INFO structure

	frozen c_sizeof_sf_info:INTEGER
		external
			"C inline use <stdint.h>"
		alias
			"sizeof(SF_INFO)"
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

feature -- libsndfile Constants

	frozen SFM_READ :INTEGER
		external
			"C inline use <sndfile.h>"
		alias
			"SFM_READ"
		end

	frozen SFM_WRITE :INTEGER
		external
			"C inline use <sndfile.h>"
		alias
			"SFM_WRITE"
		end

	frozen SFM_RDWR :INTEGER
		external
			"C inline use <sndfile.h>"
		alias
			"SFM_RDWR"
		end



	frozen SEEK_SET :INTEGER
		external
			"C inline use <sndfile.h>"
		alias
			"SEEK_SET"
		end

	frozen SEEK_CUR :INTEGER
		external
			"C inline use <sndfile.h>"
		alias
			"SEEK_CUR"
		end

	frozen SEEK_END :INTEGER
		external
			"C inline use <sndfile.h>"
		alias
			"SEEK_END"
		end

	frozen SFC_GET_LOG_INFO :INTEGER
		external
			"C inline use <sndfile.h>"
		alias
			"SFC_GET_LOG_INFO"
		end

end
