note
	description: "Wrapper for the MPG123 internal library"
	author: "Louis Marchand"
	date: "Fri, 04 Nov 2016 17:31:01 +0000"
	revision: "0.1"

class
	MPG_EXTERNAL


feature -- Externals

	frozen mpg123_close(mh:POINTER):INTEGER
			-- Closes the source `mh', if libmpg123 opened it.
		external
			"C (mpg123_handle *) : int | <mpg123.h>"
		alias
			"mpg123_close"
		end

	frozen mpg123_delete(mh:POINTER)
			-- Delete handle `mh'. `mh' is either a valid mpg123 handle or NULL.
		external
			"C (mpg123_handle *) | <mpg123.h>"
		alias
			"mpg123_delete"
		end

	frozen mpg123_exit
			-- Function to close down the mpg123 library.
			-- This function is not thread-safe. Call it exactly once per process.
		external
			"C | <mpg123.h>"
		alias
			"mpg123_exit"
		end

	frozen mpg123_init:INTEGER
			-- Function to initialise the mpg123 library.
			-- This function is not thread-safe. Call it exactly once per process, before any other (possibly threaded) work with the library.
		external
			"C : int | <mpg123.h>"
		alias
			"mpg123_init"
		end

	frozen mpg123_plain_strerror(errcode:INTEGER):POINTER
			-- Look up error strings given `errcode'.
		external
			"C (int) : const char* | <mpg123.h>"
		alias
			"mpg123_plain_strerror"
		end

	frozen mpg123_open(mh, path:POINTER):INTEGER
			-- Open in the handler `mh' and prepare to decode the specified file by filesystem `path'.
		external
			"C (mpg123_handle *, const char *) : int | <mpg123.h>"
		alias
			"mpg123_open"
		end

	frozen mpg123_new(decoder, error:POINTER):POINTER
			-- Create a handle with optional choice of `decoder' and optional retrieval of an `error' code.
			-- Any of or both the parameters may be NULL.
		external
			"C (const char *, int *) : mpg123_handle* | <mpg123.h>"
		alias
			"mpg123_new"
		end

	frozen mpg123_getformat(mh, rate, channels, encoding:POINTER):INTEGER
			-- Get the current output format written to the addresses given.
		external
			"C (mpg123_handle *, long *, int *, int *) : int | <mpg123.h>"
		alias
			"mpg123_getformat"
		end

	frozen mpg123_format_none(mh:POINTER):INTEGER
			-- Configure a mpg123 handle `mh' to accept no output format at all.
			-- Use before specifying supported formats with mpg123_format
		external
			"C (mpg123_handle *) : int | <mpg123.h>"
		alias
			"mpg123_format_none"
		end

	frozen mpg123_format(mh:POINTER; rate, channels, encoding:INTEGER):INTEGER
			-- Set the audio format support (`rate', `channels' and `encoding') of a mpg123_handle `mh'
		external
			"C (mpg123_handle *, long, int, int) : int | <mpg123.h>"
		alias
			"mpg123_format"
		end

	frozen mpg123_seek(mh:POINTER; sampleoff, whence:INTEGER):INTEGER
			-- Seek to a desired sample offset. Usage is modelled afer the standard lseek().
		external
			"C (mpg123_handle *, off_t, int) : off_t | <mpg123.h>"
		alias
			"mpg123_seek"
		end

	frozen mpg123_read(mh, outmemory:POINTER; outmemsize:INTEGER; done:POINTER):INTEGER
			-- Read from stream and decode up to outmemsize bytes.
		external
			"C (mpg123_handle *, unsigned char *, size_t, size_t *) : int | <mpg123.h>"
		alias
			"mpg123_read"
		end

feature -- Constants

	frozen  mpg123_ok :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"MPG123_OK"
		end

	frozen  mpg123_enc_signed_16 :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"MPG123_ENC_SIGNED_16"
		end

	frozen  mpg123_enc_ulaw_8 :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"MPG123_ENC_ULAW_8"
		end

	frozen  seek_set :INTEGER
		external
			"C inline use <stdio.h>"
		alias
			"SEEK_SET"
		end



end
