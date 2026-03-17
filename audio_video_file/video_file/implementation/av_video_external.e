note
	description: "External C feature for AV video libraries."
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 03:35:44 +0000"
	revision: "0.2"

class
	AV_VIDEO_EXTERNAL


feature -- libswscale fonctions

	frozen sws_getContext(a_srcW,a_srcH,a_srcFormat,a_dstW,a_dstH,a_dstFormat,a_flags:INTEGER;a_srcFilter,a_dstFilter,a_param:POINTER):POINTER
			-- Eiffel alias for the 'sws_getContext' C feature
		external
			"C (int, int , int , int, int, int, int,SwsFilter *,SwsFilter *,double *) : struct SwsContext*  | <libswscale/swscale.h>"
		alias
			"sws_getContext"
		end

	frozen sws_scale(a_c,a_srcSlice,a_srcStride:POINTER;a_srcSliceY,a_srcSliceH:INTEGER;a_dst,a_dstStride:POINTER):INTEGER
			-- Eiffel alias for the 'sws_scale' C feature of structure 'SwsContext'
		external
			"C (struct SwsContext *, const uint8_t * const* , int * , int, int, uint8_t * const*, int*) : int  | <libswscale/swscale.h>"
		alias
			"sws_scale"
		end

	frozen av_image_get_buffer_size(a_pix_fmt,a_width,a_height, a_align:INTEGER):INTEGER
			-- Eiffel alias for the 'av_image_get_buffer_size' C feature
		external
			"C (enum AVPixelFormat, int, int, int) : int  | <libavutil/imgutils.h>"
		alias
			"av_image_get_buffer_size"
		end

	frozen av_image_fill_arrays(a_dst_data, a_dst_linesize, a_src:POINTER; a_pix_fmt,a_width,a_height, a_align:INTEGER):INTEGER
			-- Eiffel alias for the 'av_image_fill_arrays' C feature
		external
			"C (uint8_t **, int*, const uint8_t *, enum AVPixelFormat, int, int, int) : int  | <libavutil/imgutils.h>"
		alias
			"av_image_fill_arrays"
		end


feature -- libswscale Constants

	frozen SWS_BICUBIC :INTEGER
			-- Eiffel alias for the 'SWS_BICUBIC' C feature
		external
			"C inline use <libswscale/swscale.h>"
		alias
			"SWS_BICUBIC"
		end

end
