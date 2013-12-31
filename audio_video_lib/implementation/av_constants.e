note
	description: "Summary description for {AV_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	AV_CONSTANTS

feature {NONE} -- Constants avformat

	Avseek_flag_backward:INTEGER
			 -- Seek backward.
		once
			Result:={AV_EXTERNAL}.AVSEEK_FLAG_BACKWARD
		end

	Avseek_flag_any:INTEGER
			 -- Seek to any frame, even non-keyframes.
		once
			Result:={AV_EXTERNAL}.AVSEEK_FLAG_ANY
		end

feature {NONE} -- Constants avcodec

	Avmedia_type_audio:NATURAL
			 -- Audio media type.
		once
			Result:={AV_EXTERNAL}.AVMEDIA_TYPE_AUDIO
		end

	Avmedia_type_video:NATURAL
			 -- Video media type.
		once
			Result:={AV_EXTERNAL}.AVMEDIA_TYPE_VIDEO
		end

	Avcodec_max_audio_frame_size:INTEGER
			 --
		once
			Result:=192000
		end

	Averror_eof:INTEGER
			 -- The End of the file.
		once
			Result:={AV_EXTERNAL}.AVERROR_EOF
		end

	Av_sample_fmt_u8:NATURAL
			 -- Unsigned 8 bits, planar sample format.
		once
			Result:={AV_EXTERNAL}.AV_SAMPLE_FMT_U8
		end

	Av_sample_fmt_s16:NATURAL
			 -- Signed 16 bits sample format.
		once
			Result:={AV_EXTERNAL}.AV_SAMPLE_FMT_S16
		end

	Ff_input_buffer_padding_size:INTEGER
			 -- Required number of additionally allocated bytes at the end of the input bitstream for decoding.
		once
			Result:={AV_EXTERNAL}.FF_INPUT_BUFFER_PADDING_SIZE
		end

	Pix_fmt_yuv420p:INTEGER
			 -- planar YUV 4:2:0, 12bpp, (1 Cr & Cb sample per 2x2 Y samples) pixel format.
		once
			Result:={AV_EXTERNAL}.PIX_FMT_YUV420P
		end

end
