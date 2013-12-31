note
	description: "Summary description for {AUDIO_SND_FILES_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	AUDIO_SND_FILES_CONSTANTS

feature {NONE} -- Constants

	Sfm_read:INTEGER
			 --Open in read only mode.
		once
			Result:={AUDIO_SND_FILES_EXTERNAL}.SFM_READ
		end

	Sfm_write:INTEGER
			 -- Open in write only mode.
		once
			Result:={AUDIO_SND_FILES_EXTERNAL}.SFM_WRITE
		end

	Sfm_rdwr:INTEGER
			 -- Open in read/write mode.
		once
			Result:={AUDIO_SND_FILES_EXTERNAL}.SFM_RDWR
		end

	Seek_set:INTEGER
			 -- Seek from begening of the file.
		once
			Result:={AUDIO_SND_FILES_EXTERNAL}.SEEK_SET
		end

	Seek_cur:INTEGER
			 -- Seek from the current position in the file.
		once
			Result:={AUDIO_SND_FILES_EXTERNAL}.SEEK_CUR
		end

	Seek_end:INTEGER
			 --	Seek from the end of the file.
		once
			Result:={AUDIO_SND_FILES_EXTERNAL}.SEEK_END
		end

	Sfc_get_log_info:INTEGER
			 -- Retrieve the internal per-file operation log.
		once
			Result:={AUDIO_SND_FILES_EXTERNAL}.SFC_GET_LOG_INFO
		end

end
