note
	description: "External C feature for Audio Video libraries."
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 03:35:44 +0000"
	revision: "0.2"

class
	AV_EXTERNAL

feature -- libavcodec fonctions


	frozen avcodec_find_decoder(a_id:NATURAL):POINTER
			-- Eiffel alias for the 'avcodec_find_decoder' C feature
		external
			"C (unsigned int) : AVCodec * | <libavcodec/avcodec.h>"
		alias
			"avcodec_find_decoder"
		end

	frozen avcodec_parameters_to_context(a_codec, a_parameter:POINTER):INTEGER
			-- Eiffel alias for the 'avcodec_parameters_to_context' C feature
		external
			"C (AVCodecContext *, const AVCodecParameters *) : int | <libavcodec/avcodec.h>"
		alias
			"avcodec_parameters_to_context"
		end

	frozen avcodec_open2(a_avctx,a_codec,a_options:POINTER):INTEGER
			-- Eiffel alias for the 'avcodec_open2' C feature
		external
			"C (AVCodecContext *, AVCodec *, AVDictionary **) : int | <libavcodec/avcodec.h>"
		alias
			"avcodec_open2"
		end

	frozen avcodec_send_packet(a_avctx,a_avpkt:POINTER):INTEGER
			-- Eiffel alias for the 'avcodec_send_packet' C feature
		external
			"C (AVCodecContext *, AVPacket *) : int | <libavcodec/avcodec.h>"
		alias
			"avcodec_send_packet"
		end

	frozen avcodec_receive_frame(a_avctx,a_frame:POINTER):INTEGER
			-- Eiffel alias for the 'avcodec_receive_frame' C feature
		external
			"C (AVCodecContext *, AVFrame *) : int | <libavcodec/avcodec.h>"
		alias
			"avcodec_receive_frame"
		end

	frozen avcodec_alloc_context3(a_codec:POINTER):POINTER
			-- Eiffel alias for the 'avcodec_alloc_context3' C feature
		external
			"C (const AVCodec *) : AVCodecContext* | <libavcodec/avcodec.h>"
		alias
			"avcodec_alloc_context3"
		end

	frozen av_frame_alloc:POINTER
			-- Eiffel alias for the 'av_frame_alloc' C feature
		external
			"C : AVFrame * | <libavutil/frame.h>"
		alias
			"av_frame_alloc"
		end

	frozen av_frame_free(a_frame:POINTER)
			-- Eiffel alias for the 'av_frame_free' C feature
		external
			"C (AVFrame **) | <libavutil/frame.h>"
		alias
			"av_frame_free"
		end



	frozen av_frame_unref(a_pic:POINTER)
			-- Eiffel alias for the 'av_frame_unref' C feature
		external
			"C (AVFrame *) | <libavcodec/avcodec.h>"
		alias
			"av_frame_unref"
		end

	frozen av_free(a_ptr:POINTER)
			-- Eiffel alias for the 'av_free' C feature
		external
			"C (void *) | <libavcodec/avcodec.h>"
		alias
			"av_free"
		end

	frozen avcodec_close(a_codec_context:POINTER):INTEGER
			-- Eiffel alias for the 'avcodec_close' C feature
		external
			"C (AVCodecContext *) :int | <libavcodec/avcodec.h>"
		alias
			"avcodec_close"
		end

	frozen av_samples_get_buffer_size(a_linesize:POINTER;a_nb_channels,a_nb_samples:INTEGER;a_sample_fmt:NATURAL;a_align:INTEGER):INTEGER
			-- Eiffel alias for the 'av_samples_get_buffer_size' C feature
		external
			"C (int *,int,int,unsigned int, int) :int | <libavcodec/avcodec.h>"
		alias
			"av_samples_get_buffer_size"
		end

	frozen av_get_bytes_per_sample(a_sample_fmt:NATURAL):INTEGER
			-- Eiffel alias for the 'av_get_bytes_per_sample' C feature
		external
			"C (enum AVSampleFormat) :int | <libavcodec/avcodec.h>"
		alias
			"av_get_bytes_per_sample"
		end

	frozen av_samples_alloc_array_and_samples(a_destBuffer, a_destBufferLinesize:POINTER;a_nb_channels,a_nb_samples:INTEGER;a_sample_fmt:NATURAL;a_align:INTEGER):INTEGER
			-- Eiffel alias for the 'av_samples_alloc_array_and_samples' C feature
		external
			"C (uint8_t***,int*,int, int,enum AVSampleFormat, int) :int | <libavcodec/avcodec.h>"
		alias
			"av_samples_alloc_array_and_samples"
		end


	frozen av_strerror(a_errnum:INTEGER;a_buffer:POINTER;a_buffer_size:INTEGER):INTEGER
			-- Eiffel alias for the 'av_strerror' C feature
		external
			"C (int,char *,size_t) :int | <libavcodec/avcodec.h>"
		alias
			"av_strerror"
		end


	frozen av_malloc(a_size:INTEGER):POINTER
			-- Eiffel alias for the 'av_malloc' C feature
		external
			"C (size_t) : void* | <libavformat/avformat.h>"
		alias
			"av_malloc"
		end

	frozen av_packet_unref(a_ptk:POINTER)
			-- Eiffel alias for the 'av_packet_unref' C feature
		external
			"C (AVPacket *) | <libavcodec/avcodec.h>"
		alias
			"av_packet_unref"
		end

	frozen av_new_packet(a_ptk:POINTER;a_size:INTEGER)
			-- Eiffel alias for the 'av_new_packet' C feature
		external
			"C (AVPacket *,int) | <libavcodec/avcodec.h>"
		alias
			"av_new_packet"
		end

feature -- libavformat fonctions

	frozen avformat_open_input(a_ps,a_filename,a_fmt,a_options:POINTER):INTEGER
			-- Eiffel alias for the 'avformat_open_input' C feature
		external
			"C (AVFormatContext **, char *, AVInputFormat *, AVDictionary **) : int | <libavformat/avformat.h>"
		alias
			"avformat_open_input"
		end

	frozen avformat_alloc_context:POINTER
			-- Eiffel alias for the 'avformat_alloc_context' C feature
		external
			"C : AVFormatContext* | <libavformat/avformat.h>"
		alias
			"avformat_alloc_context"
		end

	frozen avformat_free_context(a_format_ctx:POINTER)
			-- Eiffel alias for the 'avformat_free_context' C feature
		external
			"C (AVFormatContext*) | <libavformat/avformat.h>"
		alias
			"avformat_free_context"
		end

	frozen avformat_close_input(a_s:POINTER)
			-- Eiffel alias for the 'avformat_close_input' C feature
		external
			"C (AVFormatContext **) | <libavformat/avformat.h>"
		alias
			"avformat_close_input"
		end

	frozen avformat_find_stream_info(a_ic,a_options:POINTER):INTEGER
			-- Eiffel alias for the 'avformat_find_stream_info' C feature
		external
			"C (AVFormatContext *, AVDictionary **) : int | <libavformat/avformat.h>"
		alias
			"avformat_find_stream_info"
		end

	frozen av_read_frame(a_s,a_ptk:POINTER):INTEGER
			-- Eiffel alias for the 'av_read_frame' C feature
		external
			"C (AVFormatContext *, AVPacket *) : int | <libavformat/avformat.h>"
		alias
			"av_read_frame"
		end

	frozen av_dump_format(a_ic:POINTER;a_index:INTEGER;a_url:POINTER;a_is_output:INTEGER)
			-- Eiffel alias for the 'av_dump_format' C feature
		external
			"C (AVFormatContext *,int, char *, int) | <libavformat/avformat.h>"
		alias
			"av_dump_format"
		end

	frozen av_seek_frame(a_s:POINTER;a_stream_index:INTEGER;a_timestamp:INTEGER_64;a_flags:INTEGER):INTEGER
			-- Eiffel alias for the 'av_seek_frame' C feature
		external
			"C (AVFormatContext *,int, int64_t, int) :int | <libavformat/avformat.h>"
		alias
			"av_seek_frame"
		end

	frozen avio_alloc_context(a_buffer:POINTER;a_buffer_size,a_write_flag:INTEGER;a_opaque,a_read_packet,a_write_packet,a_seek:POINTER):POINTER
			-- Eiffel alias for the 'avio_alloc_context' C feature
		external
			"C (unsigned char *, int , int , void *, void *, void *, void *) :AVIOContext * | <libavformat/avformat.h>"
		alias
			"avio_alloc_context"
		end

feature -- Libavformat AVFormatContext structure

	frozen get_av_format_context_struct_nb_streams (a_format_context:POINTER):NATURAL
			-- Eiffel alias for the 'nb_streams' C feature of struct 'AVFormatContext'
		external
			"C [struct <libavformat/avformat.h>] (AVFormatContext):unsigned int"
		alias
			"nb_streams"
		end

	frozen get_av_format_context_struct_streams_i (a_format_context:POINTER;a_i:INTEGER):POINTER
			-- Eiffel alias to get the `a_i` th 'stream' of a 'AVFormatContext'
		external
			"C inline use <libavformat/avformat.h>"
		alias
			"((AVFormatContext *)$a_format_context)->streams[(int)$a_i]"
		end

	frozen set_av_format_context_struct_pb (a_format_context: POINTER; a_value: POINTER)
			-- Eiffel alias for the 'pb' C feature of struct 'AVFormatContext'
		external
			"C [struct <libavformat/avformat.h>] (AVFormatContext, AVIOContext *)"
		alias
			"pb"
		end


feature -- Libavcodec AVCodecContext structure

	frozen get_av_codec_context_struct_codec_type (a_codec_context:POINTER):NATURAL
			-- Eiffel alias for the 'codec_type' C feature of struct 'AVCodecContext'
		external
		"C [struct <libavcodec/avcodec.h>] (AVCodecContext):unsigned int"
		alias
			"codec_type"
		end

	frozen get_av_codec_context_struct_sample_rate (a_codec_context:POINTER):INTEGER
			-- Eiffel alias for the 'sample_rate' C feature of struct 'AVCodecContext'
		external
			"C [struct <libavcodec/avcodec.h>] (AVCodecContext):int"
		alias
			"sample_rate"
		end

	frozen get_av_codec_context_struct_sample_fmt (a_codec_context:POINTER):NATURAL
			-- Eiffel alias for the 'sample_fmt' C feature of struct 'AVCodecContext'
		external
			"C [struct <libavcodec/avcodec.h>] (AVCodecContext):unsigned int"
		alias
			"sample_fmt"
		end

	frozen get_av_codec_context_struct_pix_fmt (a_codec_context:POINTER):INTEGER
			-- Eiffel alias for the 'pix_fmt' C feature of struct 'AVCodecContext'
		external
			"C [struct <libavcodec/avcodec.h>] (AVCodecContext):int"
		alias
			"pix_fmt"
		end

	frozen get_av_codec_context_struct_channels (a_codec_context:POINTER):INTEGER
			-- Eiffel alias for the 'channels' C feature of struct 'AVCodecContext'
		external
			"C [struct <libavcodec/avcodec.h>] (AVCodecContext):int"
		alias
			"channels"
		end

	frozen get_av_codec_context_struct_codec_id (a_codec_context:POINTER):NATURAL
			-- Eiffel alias for the 'codec_id' C feature of struct 'AVCodecContext'
		external
			"C [struct <libavcodec/avcodec.h>] (AVCodecContext):unsigned int"
		alias
			"codec_id"
		end

	frozen get_av_codec_context_struct_width (a_codec_context:POINTER):INTEGER
			-- Eiffel alias for the 'width' C feature of struct 'AVCodecContext'
		external
			"C [struct <libavcodec/avcodec.h>] (AVCodecContext):int"
		alias
			"width"
		end

	frozen get_av_codec_context_struct_height (a_codec_context:POINTER):INTEGER
			-- Eiffel alias for the 'height' C feature of struct 'AVCodecContext'
		external
			"C [struct <libavcodec/avcodec.h>] (AVCodecContext):int"
		alias
			"height"
		end

	frozen get_av_codec_context_struct_time_base (a_codec_context:POINTER):POINTER
			-- Eiffel alias to get the 'time_base' of a 'AVFormatContext'
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"&(((AVCodecContext *)$a_codec_context)->time_base)"
		end

feature -- Libavcodec AVPacket structure	

	frozen c_sizeof_av_packet:INTEGER
			-- Eiffel alias to get the size of an 'AVPacket'
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"sizeof(AVPacket)"
		end

	frozen get_av_packet_struct_stream_index (a_packet:POINTER):INTEGER
			-- Eiffel alias for the 'stream_index' C feature of struct 'AVPacket'
		external
			"C [struct <libavcodec/avcodec.h>] (AVPacket):int"
		alias
			"stream_index"
		end

feature -- Libavcodec AVFrame structure	


	frozen get_av_frame_struct_nb_samples (a_frame:POINTER):INTEGER
			-- Eiffel alias for the 'nb_samples' C feature of struct 'AVFrame'
		external
		"C [struct <libavcodec/avcodec.h>] (AVFrame):int"
		alias
			"nb_samples"
		end

	frozen get_av_frame_struct_data (a_frame:POINTER):POINTER
			-- Eiffel alias for the 'data' C feature of struct 'AVFrame'
		external
			"C [struct <libavcodec/avcodec.h>] (AVFrame):uint8_t **"
		alias
			"data"
		end

	frozen get_av_frame_struct_extended_data (a_frame:POINTER):POINTER
			-- Eiffel alias for the 'extended_data' C feature of struct 'AVFrame'
		external
			"C [struct <libavcodec/avcodec.h>] (AVFrame):uint8_t **"
		alias
			"extended_data"
		end

	frozen get_av_frame_struct_data_i (a_frame:POINTER; a_index:INTEGER):POINTER
			-- Eiffel alias to get the `a_index' th data of an 'AVFrame'
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"((AVFrame *)$a_frame)->data[$a_index]"
		end

	frozen get_av_frame_struct_linesize (a_frame:POINTER):POINTER
			-- Eiffel alias for the 'linesize' C feature of struct 'AVFrame'
		external
			"C [struct <libavcodec/avcodec.h>] (AVFrame):int *"
		alias
			"linesize"
		end

	frozen get_av_frame_struct_repeat_pict (a_frame:POINTER):INTEGER
			-- Eiffel alias for the 'repeat_pict' C feature of struct 'AVFrame'
		external
			"C [struct <libavcodec/avcodec.h>] (AVFrame):int"
		alias
			"repeat_pict"
		end

	frozen get_av_frame_struct_extended_data_i(a_frame:POINTER;a_i:INTEGER):POINTER
			-- Eiffel alias to get the `a_i' th 'extended_data' of an 'AVFrame'
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"(char*)(((AVFrame *)$a_frame)->extended_data[(int)$a_i])"
		end
	frozen get_av_frame_struct_linesize_i(a_frame:POINTER;a_i:INTEGER):INTEGER
			-- Eiffel alias to get the `a_i' th 'linesize' of an 'AVFrame'
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"(int)(((AVFrame *)$a_frame)->linesize[(int)$a_i])"
		end

	frozen set_av_frame_struct_data_i(a_frame:POINTER;a_i:INTEGER;a_value:POINTER)
			-- Eiffel alias to set the `a_i' th 'data' of an 'AVFrame' to `a_value'
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"((AVFrame *)$a_frame)->data[(int)$a_i]=(uint8_t *)$a_value"
		end

	frozen set_av_frame_struct_linesize_i(a_frame:POINTER;a_i:INTEGER;a_value:INTEGER)
			-- Eiffel alias to set the `a_i' th 'linesize' of an 'AVFrame' to `a_value'
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"((AVFrame *)$a_frame)->linesize[(int)$a_i]=(int)$a_value"
		end

feature -- Libavcodec AVRational structure

	frozen get_av_rational_struct_num (a_rational:POINTER):INTEGER
			-- Eiffel alias for the 'num' C feature of struct 'AVRational'
		external
		"C [struct <libavcodec/avcodec.h>] (AVRational):int"
		alias
			"num"
		end

	frozen get_av_rational_struct_den (a_rational:POINTER):INTEGER
			-- Eiffel alias for the 'den' C feature of struct 'AVRational'
		external
			"C [struct <libavcodec/avcodec.h>] (AVRational):int"
		alias
			"den"
		end

feature -- Libavformat AVStream structure

	frozen get_av_stream_struct_codecpar (a_stream:POINTER):POINTER
			-- Eiffel alias for the 'codecpar' C feature of struct 'AVStream'
		external
			"C [struct <libavformat/avformat.h>] (AVStream):AVCodecParameters *"
		alias
			"codecpar"
		end

	frozen get_av_stream_struct_avg_frame_rate_num (a_stream:POINTER):INTEGER
			-- Eiffel alias to get the 'avg_frame_rate' numerator of an 'AVStream' `a_stream'
		external
			"C inline use <libavformat/avformat.h>"
		alias
			"((AVStream *)$a_stream)->avg_frame_rate.num"
		end

	frozen get_av_stream_struct_avg_frame_rate_den (a_stream:POINTER):INTEGER
			-- Eiffel alias to get the 'avg_frame_rate' denominator of an 'AVStream' `a_stream'
		external
			"C inline use <libavformat/avformat.h>"
		alias
			"((AVStream *)$a_stream)->avg_frame_rate.den"
		end



feature -- Libavformat AVCodecParameters structure

	frozen get_av_codec_parameters_struct_codec_id (a_stream:POINTER):NATURAL
			-- Eiffel alias for the 'codec_id' C feature of struct 'AVCodecParameters'
		external
			"C [struct <libavformat/avformat.h>] (AVCodecParameters):enum AVCodecID"
		alias
			"codec_id"
		end

	frozen get_av_codec_parameters_struct_sample_rate (a_stream:POINTER):INTEGER
			-- Eiffel alias for the 'sample_rate' C feature of struct 'AVCodecParameters'
		external
			"C [struct <libavformat/avformat.h>] (AVCodecParameters):int"
		alias
			"sample_rate"
		end

	frozen get_av_codec_parameters_struct_channels (a_stream:POINTER):INTEGER
			-- Eiffel alias for the 'channels' C feature of struct 'AVCodecParameters'
		external
			"C [struct <libavformat/avformat.h>] (AVCodecParameters):int"
		alias
			"channels"
		end

	frozen get_av_codec_parameters_struct_format (a_stream:POINTER):INTEGER
			-- Eiffel alias for the 'format' C feature of struct 'AVCodecParameters'
		external
			"C [struct <libavformat/avformat.h>] (AVCodecParameters):int"
		alias
			"format"
		end

feature -- libavformat Constants

	frozen AVSEEK_FLAG_BACKWARD :INTEGER
			-- Eiffel alias for the 'AVSEEK_FLAG_BACKWARD' C feature
		external
			"C inline use <libavformat/avformat.h>"
		alias
			"AVSEEK_FLAG_BACKWARD"
		end

	frozen AVSEEK_FLAG_ANY :INTEGER
			-- Eiffel alias for the 'AVSEEK_FLAG_ANY' C feature
		external
			"C inline use <libavformat/avformat.h>"
		alias
			"AVSEEK_FLAG_ANY"
		end

feature -- libavcodec Constants

	frozen AVMEDIA_TYPE_AUDIO :NATURAL
			-- Eiffel alias for the 'AVMEDIA_TYPE_AUDIO' C feature
		external
		"C inline use <libavcodec/avcodec.h>"
		alias
			"AVMEDIA_TYPE_AUDIO"
		end

	frozen AVMEDIA_TYPE_VIDEO :NATURAL
			-- Eiffel alias for the 'AVMEDIA_TYPE_VIDEO' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AVMEDIA_TYPE_VIDEO"
		end

	frozen AVCODEC_MAX_AUDIO_FRAME_SIZE :INTEGER
			-- Eiffel alias for the '192000' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"192000"
		end


	frozen AVERROR_EOF :INTEGER
			-- Eiffel alias for the 'AVERROR_EOF' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AVERROR_EOF"
		end

	frozen AV_SAMPLE_FMT_U8 :NATURAL
			-- Eiffel alias for the 'AV_SAMPLE_FMT_U8' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_SAMPLE_FMT_U8"
		end

	frozen AV_SAMPLE_FMT_S16 :NATURAL
			-- Eiffel alias for the 'AV_SAMPLE_FMT_S16' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_SAMPLE_FMT_S16"
		end

	frozen AV_SAMPLE_FMT_S32 :NATURAL
			-- Eiffel alias for the 'AV_SAMPLE_FMT_S32' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_SAMPLE_FMT_S32"
		end


	frozen AV_SAMPLE_FMT_S32P :NATURAL
			-- Eiffel alias for the 'AV_SAMPLE_FMT_S32P' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_SAMPLE_FMT_S32P"
		end


	frozen AV_SAMPLE_FMT_FLTP :NATURAL
			-- Eiffel alias for the 'AV_SAMPLE_FMT_FLTP' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_SAMPLE_FMT_FLTP"
		end


	frozen AV_SAMPLE_FMT_FLT :NATURAL
			-- Eiffel alias for the 'AV_SAMPLE_FMT_FLT' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_SAMPLE_FMT_FLT"
		end

	frozen av_input_buffer_padding_size :INTEGER
			-- Eiffel alias for the 'AV_INPUT_BUFFER_PADDING_SIZE' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_INPUT_BUFFER_PADDING_SIZE"
		end

	frozen av_pix_fmt_yuv420p :INTEGER
			-- Eiffel alias for the 'AV_PIX_FMT_YUV420P' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_PIX_FMT_YUV420P"
		end

	frozen AV_CH_LAYOUT_STEREO :INTEGER_64
			-- Eiffel alias for the 'AV_CH_LAYOUT_STEREO' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_CH_LAYOUT_STEREO"
		end

	frozen AV_CH_LAYOUT_MONO :INTEGER_64
			-- Eiffel alias for the 'AV_CH_LAYOUT_MONO' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_CH_LAYOUT_MONO"
		end

	frozen AV_CODEC_ID_FLAC :INTEGER_64
			-- Eiffel alias for the 'AV_CODEC_ID_FLAC' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AV_CODEC_ID_FLAC"
		end



	frozen AVERROR_EAGAIN :INTEGER
			-- Eiffel alias for the 'EAGAIN' C feature
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"AVERROR(EAGAIN)"
		end



feature -- av_additions.h

	frozen av_more_read_packet :POINTER
			-- Eiffel alias for the '&av_more_read_packet' C feature
		external
			"C inline use <av_additions.h>"
		alias
			"&av_more_read_packet"
		end

	frozen av_more_seek :POINTER
			-- Eiffel alias for the '&av_more_seek' C feature
		external
			"C inline use <av_additions.h>"
		alias
			"&av_more_seek"
		end

end
