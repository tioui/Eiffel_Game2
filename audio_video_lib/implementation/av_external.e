note
	description: "External C feature for AV  libraries."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	AV_EXTERNAL

feature -- libavcodec fonctions


	frozen avcodec_find_decoder(id:NATURAL):POINTER
		external
			"C (unsigned int) : AVCodec * | <avcodec.h>"
		alias
			"avcodec_find_decoder"
		end

	frozen avcodec_open2(avctx,codec,options:POINTER):INTEGER
		external
			"C (AVCodecContext *, AVCodec *, AVDictionary **) : int | <avcodec.h>"
		alias
			"avcodec_open2"
		end

	frozen avcodec_decode_audio4(avctx,frame,got_frame_ptr,avpkt:POINTER):INTEGER
		external
			"C (AVCodecContext *, AVFrame *,int *, AVPacket *) : int | <avcodec.h>"
		alias
			"avcodec_decode_audio4"
		end

	frozen avcodec_decode_video2(avctx,frame,got_frame_ptr,avpkt:POINTER):INTEGER
		external
			"C (AVCodecContext *, AVFrame *,int *, AVPacket *) : int | <avcodec.h>"
		alias
			"avcodec_decode_video2"
		end

	frozen avcodec_alloc_frame:POINTER
		external
			"C : AVFrame * | <avcodec.h>"
		alias
			"avcodec_alloc_frame"
		end

	frozen avcodec_get_frame_defaults(pic:POINTER)
		external
			"C (AVFrame *) | <avcodec.h>"
		alias
			"avcodec_get_frame_defaults"
		end

	frozen av_free(ptr:POINTER)
		external
			"C (void *) | <avcodec.h>"
		alias
			"av_free"
		end

	frozen avcodec_close(av_codec_context:POINTER):INTEGER
		external
			"C (AVCodecContext *) :int | <avcodec.h>"
		alias
			"avcodec_close"
		end

	frozen av_samples_get_buffer_size(linesize:POINTER;nb_channels,nb_samples:INTEGER;sample_fmt:NATURAL;align:INTEGER):INTEGER
		external
			"C (int *,int,int,unsigned int, int) :int | <avcodec.h>"
		alias
			"av_samples_get_buffer_size"
		end

	frozen av_strerror(errnum:INTEGER;buffer:POINTER;buffer_size:INTEGER):INTEGER
		external
			"C (int,char *,size_t) :int | <avcodec.h>"
		alias
			"av_strerror"
		end

	frozen av_audio_resample_init(output_channels,input_channels,output_rate,input_rate:INTEGER;sample_fmt_out,sample_fmt_in:NATURAL;filter_length,log2_phase_count,linear:INTEGER;cutoff:REAL_64):POINTER
		external
			"C (int,int,int,int,unsigned int, unsigned int, int, int, int, double) : ReSampleContext* | <avcodec.h>"
		alias
			"av_audio_resample_init"
		end

	frozen audio_resample_close(s:POINTER)
		external
			"C (ReSampleContext*) | <avcodec.h>"
		alias
			"audio_resample_close"
		end

	frozen audio_resample(s,output,input:POINTER;nb_samples:INTEGER):INTEGER
		external
			"C (ReSampleContext*,short *,short *,int) : int | <avcodec.h>"
		alias
			"audio_resample"
		end

	frozen av_malloc(size:INTEGER):POINTER
		external
			"C (size_t) : void* | <avformat.h>"
		alias
			"av_malloc"
		end

	frozen av_free_packet(ptk:POINTER)
		external
			"C (AVPacket *) | <avcodec.h>"
		alias
			"av_free_packet"
		end

	frozen av_new_packet(ptk:POINTER;size:INTEGER)
		external
			"C (AVPacket *,int) | <avcodec.h>"
		alias
			"av_new_packet"
		end

	frozen avpicture_get_size(pix_fmt,width,height:INTEGER):INTEGER
		external
			"C (int, int, int) : int | <avcodec.h>"
		alias
			"avpicture_get_size"
		end

	frozen avpicture_fill(picture,ptr:POINTER;pix_fmt,width,height:INTEGER):INTEGER
		external
			"C (AVPicture *, uint8_t *, int, int, int) : int | <avcodec.h>"
		alias
			"avpicture_fill"
		end

feature -- libavformat fonctions


	frozen av_register_all
		external
			"C | <avformat.h>"
		alias
			"av_register_all"
		end

	frozen avformat_open_input(ps,filename,fmt,options:POINTER):INTEGER
		external
			"C (AVFormatContext **, char *, AVInputFormat *, AVDictionary **) : int | <avformat.h>"
		alias
			"avformat_open_input"
		end

	frozen avformat_alloc_context:POINTER
		external
			"C : AVFormatContext* | <avformat.h>"
		alias
			"avformat_alloc_context"
		end

	frozen avformat_free_context(format_ctx:POINTER)
		external
			"C (AVFormatContext*) | <avformat.h>"
		alias
			"avformat_free_context"
		end

	frozen avformat_close_input(s:POINTER)
		external
			"C (AVFormatContext **) | <avformat.h>"
		alias
			"avformat_close_input"
		end

	frozen avformat_find_stream_info(ic,options:POINTER):INTEGER
		external
			"C (AVFormatContext *, AVDictionary **) : int | <avformat.h>"
		alias
			"avformat_find_stream_info"
		end

	frozen av_read_frame(s,ptk:POINTER):INTEGER
		external
			"C (AVFormatContext *, AVPacket *) : int | <avformat.h>"
		alias
			"av_read_frame"
		end

	frozen av_dump_format(ic:POINTER;index:INTEGER;url:POINTER;is_output:INTEGER)
		external
			"C (AVFormatContext *,int, char *, int) | <avformat.h>"
		alias
			"av_dump_format"
		end

	frozen av_seek_frame(s:POINTER;stream_index:INTEGER;timestamp:INTEGER_64;flags:INTEGER):INTEGER
		external
			"C (AVFormatContext *,int, int64_t, int) :int | <avformat.h>"
		alias
			"av_seek_frame"
		end

	frozen avio_alloc_context(buffer:POINTER;buffer_size,write_flag:INTEGER;opaque,read_packet,write_packet,seek:POINTER):POINTER
		external
			"C (unsigned char *, int , int , void *, void *, void *, void *) :AVIOContext * | <avformat.h>"
		alias
			"avio_alloc_context"
		end

feature -- Libavformat AVFormatContext structure

	frozen get_av_format_context_struct_nb_streams (av_format_context:POINTER):NATURAL
		external
			"C [struct <avformat.h>] (AVFormatContext):unsigned int"
		alias
			"nb_streams"
		end

	frozen get_av_format_context_struct_streams_i (avformatcontext:POINTER;i:INTEGER):POINTER
		external
			"C inline use <avformat.h>"
		alias
			"((AVFormatContext *)$avformatcontext)->streams[(int)$i]"
		end

	frozen set_av_format_context_struct_pb (av_format_context: POINTER; the_value: POINTER)
		external
			"C [struct <avformat.h>] (AVFormatContext, AVIOContext *)"
		alias
			"pb"
		end


feature -- Libavcodec AVCodecContext structure

	frozen get_av_codec_context_struct_codec_type (av_codec_context:POINTER):NATURAL
		external
			"C [struct <avcodec.h>] (AVCodecContext):unsigned int"
		alias
			"codec_type"
		end

	frozen get_av_codec_context_struct_sample_rate (av_codec_context:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVCodecContext):int"
		alias
			"sample_rate"
		end

	frozen get_av_codec_context_struct_sample_fmt (av_codec_context:POINTER):NATURAL
		external
			"C [struct <avcodec.h>] (AVCodecContext):unsigned int"
		alias
			"sample_fmt"
		end

	frozen get_av_codec_context_struct_pix_fmt (av_codec_context:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVCodecContext):int"
		alias
			"pix_fmt"
		end

	frozen get_av_codec_context_struct_channels (av_codec_context:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVCodecContext):int"
		alias
			"channels"
		end

	frozen get_av_codec_context_struct_codec_id (av_codec_context:POINTER):NATURAL
		external
			"C [struct <avcodec.h>] (AVCodecContext):unsigned int"
		alias
			"codec_id"
		end

	frozen get_av_codec_context_struct_width (av_codec_context:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVCodecContext):int"
		alias
			"width"
		end

	frozen get_av_codec_context_struct_height (av_codec_context:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVCodecContext):int"
		alias
			"height"
		end

	frozen get_av_codec_context_struct_time_base (avcodeccontext:POINTER):POINTER
		external
			"C inline use <avcodec.h>"
		alias
			"&(((AVCodecContext *)$avcodeccontext)->time_base)"
		end

feature -- Libavcodec AVPacket structure	

	frozen c_sizeof_av_packet:INTEGER
		external
			"C inline use <avcodec.h>"
		alias
			"sizeof(AVPacket)"
		end

	frozen get_av_packet_struct_stream_index (av_packet:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVPacket):int"
		alias
			"stream_index"
		end

feature -- Libavcodec AVFrame structure	


	frozen get_av_frame_struct_nb_samples (av_frame:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVFrame):int"
		alias
			"nb_samples"
		end

	frozen get_av_frame_struct_data (av_frame:POINTER):POINTER
		external
			"C [struct <avcodec.h>] (AVFrame):uint8_t *"
		alias
			"data"
		end

	frozen get_av_frame_struct_linesize (av_frame:POINTER):POINTER
		external
			"C [struct <avcodec.h>] (AVFrame):int *"
		alias
			"linesize"
		end

	frozen get_av_frame_struct_repeat_pict (av_frame:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVFrame):int"
		alias
			"repeat_pict"
		end

	frozen get_av_frame_struct_extended_data_i(frame:POINTER;i:INTEGER):POINTER
		external
			"C inline use <avcodec.h>"
		alias
			"(char*)(((AVFrame *)$frame)->extended_data[(int)$i])"
		end
	frozen get_av_frame_struct_linesize_i(frame:POINTER;i:INTEGER):INTEGER
		external
			"C inline use <avcodec.h>"
		alias
			"(int)(((AVFrame *)$frame)->linesize[(int)$i])"
		end

	frozen set_av_frame_struct_data_i(frame:POINTER;i:INTEGER;value:POINTER)
		external
			"C inline use <avcodec.h>"
		alias
			"((AVFrame *)$frame)->data[(int)$i]=(uint8_t *)$value"
		end

	frozen set_av_frame_struct_linesize_i(frame:POINTER;i:INTEGER;value:INTEGER)
		external
			"C inline use <avcodec.h>"
		alias
			"((AVFrame *)$frame)->linesize[(int)$i]=(int)$value"
		end

feature -- Libavcodec AVPicture structure	

	frozen c_sizeof_av_picture:INTEGER
		external
			"C inline use <avcodec.h>"
		alias
			"sizeof(AVPicture)"
		end

feature -- Libavcodec AVRational structure

	frozen get_av_rational_struct_num (av_rational:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVRational):int"
		alias
			"num"
		end

	frozen get_av_rational_struct_den (av_rational:POINTER):INTEGER
		external
			"C [struct <avcodec.h>] (AVRational):int"
		alias
			"den"
		end

feature -- Libavformat AVStream structure

	frozen get_av_stream_struct_codec (av_stream:POINTER):POINTER
		external
			"C [struct <avformat.h>] (AVStream):AVCodecContext *"
		alias
			"codec"
		end

feature -- libavformat Constants

	frozen AVSEEK_FLAG_BACKWARD :INTEGER
		external
			"C inline use <avformat.h>"
		alias
			"AVSEEK_FLAG_BACKWARD"
		end

	frozen AVSEEK_FLAG_ANY :INTEGER
		external
			"C inline use <avformat.h>"
		alias
			"AVSEEK_FLAG_ANY"
		end

feature -- libavcodec Constants

	frozen AVMEDIA_TYPE_AUDIO :NATURAL
		external
			"C inline use <avcodec.h>"
		alias
			"AVMEDIA_TYPE_AUDIO"
		end

	frozen AVMEDIA_TYPE_VIDEO :NATURAL
		external
			"C inline use <avcodec.h>"
		alias
			"AVMEDIA_TYPE_VIDEO"
		end

	frozen AVCODEC_MAX_AUDIO_FRAME_SIZE :INTEGER
		external
			"C inline use <avcodec.h>"
		alias
			"AVCODEC_MAX_AUDIO_FRAME_SIZE"
		end


	frozen AVERROR_EOF :INTEGER
		external
			"C inline use <avcodec.h>"
		alias
			"AVERROR_EOF"
		end

	frozen AV_SAMPLE_FMT_U8 :NATURAL
		external
			"C inline use <avcodec.h>"
		alias
			"AV_SAMPLE_FMT_U8"
		end

	frozen AV_SAMPLE_FMT_S16 :NATURAL
		external
			"C inline use <avcodec.h>"
		alias
			"AV_SAMPLE_FMT_S16"
		end

	frozen FF_INPUT_BUFFER_PADDING_SIZE :INTEGER
		external
			"C inline use <avcodec.h>"
		alias
			"FF_INPUT_BUFFER_PADDING_SIZE"
		end

	frozen PIX_FMT_YUV420P :INTEGER
		external
			"C inline use <avcodec.h>"
		alias
			"PIX_FMT_YUV420P"
		end

feature -- av_more.h

	frozen av_more_read_packet :POINTER
		external
			"C inline use <av_more.h>"
		alias
			"&av_more_read_packet"
		end

	frozen av_more_seek :POINTER
		external
			"C inline use <av_more.h>"
		alias
			"&av_more_seek"
		end

end
