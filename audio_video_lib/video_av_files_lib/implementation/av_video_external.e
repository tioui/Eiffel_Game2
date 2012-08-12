note
	description: "External C feature for AV  libraries."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	AV_VIDEO_EXTERNAL


feature -- libswscale fonctions

	frozen sws_getContext(srcW,srcH,srcFormat,dstW,dstH,dstFormat,flags:INTEGER;srcFilter,dstFilter,param:POINTER):POINTER
		external
			"C (int, int , int , int, int, int, int,SwsFilter *,SwsFilter *,double *) : struct SwsContext*  | <swscale.h>"
		alias
			"sws_getContext"
		end

	frozen sws_scale(c,srcSlice,srcStride:POINTER;srcSliceY,srcSliceH:INTEGER;dst,dstStride:POINTER):INTEGER
		external
			"C (struct SwsContext *, const uint8_t * const* , int * , int, int, uint8_t * const*, int*) : int  | <swscale.h>"
		alias
			"sws_scale"
		end

feature -- libswscale Constants

	frozen SWS_BICUBIC :INTEGER
		external
			"C inline use <swscale.h>"
		alias
			"SWS_BICUBIC"
		end

end
