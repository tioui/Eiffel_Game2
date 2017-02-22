note
	description: "Wrapper for the MPG123 internal library"
	author: "Louis Marchand"
	date: "Tue, 21 Feb 2017 01:08:21 +0000"
	revision: "0.2"

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

	frozen mpg123_tell(mh:POINTER):INTEGER
			-- Returns the current position in samples. On the next successful read, you'd get that sample.
		external
			"C (mpg123_handle *) : int | <mpg123.h>"
		alias
			"mpg123_tell"
		end

	frozen mpg123_length(mh:POINTER):INTEGER
			-- Return, if possible, the full (expected) length of current track in samples.
		external
			"C (mpg123_handle *) : int | <mpg123.h>"
		alias
			"mpg123_length"
		end

	frozen mpg123_scan(mh:POINTER):INTEGER
			-- Make a full parsing scan of each frame in the file.
		external
			"C (mpg123_handle *) : int | <mpg123.h>"
		alias
			"mpg123_scan"
		end

	frozen mpg123_meta_check(mh:POINTER):INTEGER
			-- Query if there is (new) meta info, be it ID3 or ICY (or something new in future).
		external
			"C (mpg123_handle *) : int | <mpg123.h>"
		alias
			"mpg123_meta_check"
		end

	frozen mpg123_id3(mh, v1, v2:POINTER):INTEGER
			-- Point v1 and v2 to existing data structures wich may change
			-- on any next read/decode function call. v1 and/or v2 can be
			-- set to NULL when there is no corresponding data.
		external
			"C (mpg123_handle *, mpg123_id3v1 **, mpg123_id3v2 **) : int | <mpg123.h>"
		alias
			"mpg123_id3"
		end

feature -- Structures

	frozen get_mpg123_id3v1_struct_title(a_mpg123_id3v1:POINTER):POINTER
			-- Title string of the ID3 V1 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"&(((mpg123_id3v1*)$a_mpg123_id3v1)->title[0])"
		end

	frozen get_mpg123_id3v1_struct_artist(a_mpg123_id3v1:POINTER):POINTER
			-- Artist string of the ID3 V1 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"&(((mpg123_id3v1*)$a_mpg123_id3v1)->artist[0])"
		end

	frozen get_mpg123_id3v1_struct_album(a_mpg123_id3v1:POINTER):POINTER
			-- Album string of the ID3 V1 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"&(((mpg123_id3v1*)$a_mpg123_id3v1)->album[0])"
		end

	frozen get_mpg123_id3v1_struct_year(a_mpg123_id3v1:POINTER):POINTER
			-- Year string of the ID3 V1 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"&(((mpg123_id3v1*)$a_mpg123_id3v1)->year[0])"
		end

	frozen get_mpg123_id3v1_struct_comment(a_mpg123_id3v1:POINTER):POINTER
			-- Comment string of the ID3 V1 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"&(((mpg123_id3v1*)$a_mpg123_id3v1)->comment[0])"
		end

	frozen get_mpg123_id3v1_struct_genre(a_mpg123_id3v1:POINTER):NATURAL_8
			-- Genre index of the ID3 V1 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"((mpg123_id3v1*)$a_mpg123_id3v1)->genre"
		end

	frozen get_mpg123_id3v2_struct_title(a_mpg123_id3v1:POINTER):POINTER
			-- Title string of the ID3 V2 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"((mpg123_id3v2*)$a_mpg123_id3v1)->title"
		end

	frozen get_mpg123_id3v2_struct_artist(a_mpg123_id3v1:POINTER):POINTER
			-- Artist string of the ID3 V2 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"((mpg123_id3v2*)$a_mpg123_id3v1)->artist"
		end

	frozen get_mpg123_id3v2_struct_album(a_mpg123_id3v1:POINTER):POINTER
			-- Album string of the ID3 V2 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"((mpg123_id3v2*)$a_mpg123_id3v1)->album"
		end

	frozen get_mpg123_id3v2_struct_year(a_mpg123_id3v1:POINTER):POINTER
			-- Year string of the ID3 V2 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"((mpg123_id3v2*)$a_mpg123_id3v1)->year"
		end

	frozen get_mpg123_id3v2_struct_genre(a_mpg123_id3v1:POINTER):POINTER
			-- Genre string of the ID3 V2 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"((mpg123_id3v2*)$a_mpg123_id3v1)->genre"
		end

	frozen get_mpg123_id3v2_struct_comment(a_mpg123_id3v1:POINTER):POINTER
			-- Comment string of the ID3 V2 metadata
		external
			"C inline use <mpg123.h>"
		alias
			"((mpg123_id3v2*)$a_mpg123_id3v1)->comment"
		end

	frozen get_mpg123_string_struct_p(a_mpg123_string:POINTER):POINTER
			-- Get the data pointer from a mpg123_string
		external
			"C inline use <mpg123.h>"
		alias
			"((mpg123_string*)$a_mpg123_string)->p"
		end

	frozen get_mpg123_string_struct_fill(a_mpg123_string:POINTER):INTEGER
			-- Get the data size from a mpg123_string
		external
			"C inline use <mpg123.h>"
		alias
			"((mpg123_string*)$a_mpg123_string)->fill"
		end


feature -- Constants

	frozen sizeof_mpg123_id3v1_title :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"sizeof(((mpg123_id3v1*)0)->title)"
		end

	frozen sizeof_mpg123_id3v1_artist :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"sizeof(((mpg123_id3v1*)0)->artist)"
		end

	frozen sizeof_mpg123_id3v1_album :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"sizeof(((mpg123_id3v1*)0)->album)"
		end

	frozen sizeof_mpg123_id3v1_year :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"sizeof(((mpg123_id3v1*)0)->year)"
		end

	frozen sizeof_mpg123_id3v1_comment :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"sizeof(((mpg123_id3v1*)0)->comment)"
		end

	frozen mpg123_ok :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"MPG123_OK"
		end

	frozen mpg123_err :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"MPG123_ERR"
		end

	frozen mpg123_enc_signed_16 :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"MPG123_ENC_SIGNED_16"
		end

	frozen mpg123_enc_ulaw_8 :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"MPG123_ENC_ULAW_8"
		end

	frozen mpg123_id3_constant :INTEGER
		external
			"C inline use <mpg123.h>"
		alias
			"MPG123_ID3"
		end

	frozen seek_set :INTEGER
		external
			"C inline use <stdio.h>"
		alias
			"SEEK_SET"
		end



end
