note
	description: "Summary description for {VIDEO_MEDIA}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	VIDEO_MEDIA

inherit
	AV_MEDIA

feature -- Access


	width:INTEGER
		deferred
		end

	height:INTEGER
		deferred
		end

feature {VIDEO_READER}

	decode_frame
		deferred
		end

	end_of_file:BOOLEAN
		deferred
		end

	last_decoded_frame:POINTER
		deferred
		end

	pix_fmt:INTEGER
		deferred
		end

	time_base_num:INTEGER
	time_base_denum:INTEGER
end
