note
	description: "A video media that can be played by {AV_VIDEO_READER}"
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 03:35:44 +0000"
	revision: "0.1"

deferred class
	AV_VIDEO_MEDIA


feature -- Access

	restart
			-- Process a new frame into `last_decoded_frame`
		require
			Is_Open: is_open
		deferred
		end

	is_open:BOOLEAN
			-- Is `Current' has been properly opened
		deferred
		end

	width:INTEGER
			-- The horizontal dimension of `Current'
		require
			Is_Open: is_open
		deferred
		end

	height:INTEGER
			-- The vertical dimension of `Current'
		require
			Is_Open: is_open
		deferred
		end

feature {AV_VIDEO_READER}

	decode_frame
			-- Process a new frame into `last_decoded_frame`
		require
			Is_Open: is_open
		deferred
		end

	end_of_file:BOOLEAN
			-- `True' if the stream has ended.
		require
			Is_Open: is_open
		deferred
		end

	last_decoded_frame:POINTER
			-- The last frame that has been decoded by `decode_frame'
		require
			Is_Open: is_open
		deferred
		end

	pixel_format_index:INTEGER
			-- The pixel format of `Current'
		require
			Is_Open: is_open
		deferred
		end

	frequency:REAL_64
			-- The frame rate of `Current'


	time_base_num:INTEGER
			-- Numerator of the media time base

	time_base_denum:INTEGER
			-- Denumerator of the media time base
end
