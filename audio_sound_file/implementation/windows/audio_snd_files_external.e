note
	description: "External C feature for Audio snd files libraries."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	AUDIO_SND_FILES_EXTERNAL

inherit
	AUDIO_SND_FILES_EXTERNAL_IMP

feature -- libsndfile fonctions

	frozen sf_wchar_open(path:POINTER;mode:INTEGER;sf_info:POINTER):POINTER
		external
			"C (LPCWSTR, int , SF_INFO *) : SNDFILE* | <sndfile.h>"
		alias
			"sf_wchar_open"
		end
end
