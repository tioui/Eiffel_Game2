note
	description: "External C feature for AV audio libraries."
	author: "Louis Marchand"
	date: "Fri, 06 Jan 2023 03:35:44 +0000"
	revision: "0.2"

class
	AV_AUDIO_EXTERNAL


feature -- libswscale fonctions

	frozen swr_init(a_struct:POINTER): INTEGER
			-- Eiffel alias for the 'swr_init' C feature
		external
			"C  (struct SwrContext *) : int | <libswresample/swresample.h>"
		alias
			"swr_init"
		end

	frozen swr_alloc_set_opts(a_struct:POINTER; a_out_ch_layout:INTEGER_64;
				a_out_sample_fmt:NATURAL_32; a_out_sample_rate:INTEGER; a_in_ch_layout:INTEGER_64;
				a_in_sample_fmt:NATURAL_32; a_in_sample_rate, a_log_offset:INTEGER; a_log_ctx:POINTER): POINTER
			-- Eiffel alias for the 'swr_alloc_set_opts' C feature
		external
			"C (struct SwrContext *, int64_t, enum AVSampleFormat, int, int64_t, enum AVSampleFormat, int, int, void*) : struct SwrContext * | <libswresample/swresample.h>"
		alias
			"swr_alloc_set_opts"
		end

	frozen swr_free(a_valu:POINTER)
			-- Eiffel alias for the 'swr_free' C feature
		external
			"C (struct SwrContext **) | <libswresample/swresample.h>"
		alias
			"swr_free"
		end

	frozen swr_convert(a_struct, a_out:POINTER; a_out_count:INTEGER; a_in:POINTER; a_in_count:INTEGER):INTEGER
			-- Eiffel alias for the 'swr_convert' C feature
		external
			"C (struct SwrContext *, uint8_t **, int, const uint8_t **,int) : int | <libswresample/swresample.h>"
		alias
			"swr_convert"
		end

	frozen swr_get_out_samples(a_struct:POINTER; a_in_count:INTEGER):INTEGER
			-- Eiffel alias for the 'swr_get_out_samples' C feature
		external
			"C (struct SwrContext *, int) : int | <libswresample/swresample.h>"
		alias
			"swr_get_out_samples"
		end

	frozen c_fltp_to_s16(a_frame, a_buffer:POINTER)
			-- Eiffel alias for the 'fltp_to_s16' C mecanics
		external
			"C inline use <libavcodec/avcodec.h>"
		alias
			"[
			    // Convert from AV_SAMPLE_FMT_FLTP to AV_SAMPLE_FMT_S16
			    int16_t* outputBuffer= (int16_t*) $a_buffer;
			    AVFrame* audioFrame = (AVFrame *)$a_frame;
			    int in_samples = audioFrame->nb_samples;
			    int in_linesize = audioFrame->linesize[0];
			    int i=0;
			    float* inputChannel0 = (float*)audioFrame->extended_data[0];
			    // Mono
			    if (audioFrame->channels==1) {
			        for (i=0 ; i<in_samples ; i++) {
			            float sample = *inputChannel0++;
			            if (sample<-1.0f) sample=-1.0f; else if (sample>1.0f) sample=1.0f;
			            outputBuffer[i] = (int16_t) (sample * 32767.0f);
			        }
			    }
			    // Stereo
			    else {
			        float* inputChannel1 = (float*)audioFrame->extended_data[1];
			        for (i=0 ; i<in_samples ; i++) {
			             outputBuffer[i*2] = (int16_t) ((*inputChannel0++) * 32767.0f);
			             outputBuffer[i*2+1] = (int16_t) ((*inputChannel1++) * 32767.0f);
			        }
			    }
			    // outputBuffer now contains 16-bit PCM!
			]"
		end

end
