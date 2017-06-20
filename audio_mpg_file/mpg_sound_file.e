note
	description: "An {AUDIO_SOUND} that has been loaded from an MPG file"
	author: "Louis Marchand"
	date: "Wed, 22 Feb 2017 03:42:57 +0000"
	revision: "0.3"

class
	MPG_SOUND_FILE

inherit
	METADATA_AUDIO_SOUND
		rename
			date as year
		end
	MPG_LIBRARY_SHARED
		undefine
			default_create
		end
	MPG_ERROR_MANAGER
		undefine
			default_create,
			read_mpg_error
		end
	DISPOSABLE
		undefine
			default_create
		end

create
	make

feature {NONE} -- Initialization

	make(a_filename:READABLE_STRING_GENERAL)
			-- Initialization for `Current' using `a_filename' as `filename'
		require
			Is_MPG_enabled: mpg_library.is_mpg_enabled
		local
			l_pointer:POINTER
		do
			create {LINKED_LIST[READABLE_STRING_GENERAL]}titles.make
			create {LINKED_LIST[READABLE_STRING_GENERAL]}albums.make
			create {LINKED_LIST[READABLE_STRING_GENERAL]}artists.make
			create {LINKED_LIST[READABLE_STRING_GENERAL]}years.make
			create {LINKED_LIST[READABLE_STRING_GENERAL]}comments.make
			create {LINKED_LIST[READABLE_STRING_GENERAL]}genres.make
			file_ptr := {MPG_EXTERNAL}.mpg123_new(l_pointer, l_pointer)
			default_create
			filename:=a_filename
			is_finished := False
		ensure
			Handler_Valid: not file_ptr.is_default_pointer
		end

feature {AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
			-- <Precursor>
		local
			l_size, l_error:INTEGER
		do
			l_error := {MPG_EXTERNAL}.mpg123_read(file_ptr,a_buffer,a_max_length, $l_size)
			read_mpg_error("Cannot read stream", l_error)
			last_buffer_size := l_size
			if last_buffer_size = 0 then
				is_finished := True
			end
		end

	byte_per_buffer_sample:INTEGER
			-- <Precursor>
		do
			if resolution_index = {MPG_EXTERNAL}.mpg123_enc_ulaw_8 then
				Result := 1
			elseif resolution_index = {MPG_EXTERNAL}.mpg123_enc_signed_16 then
				Result := 2
			end
		end

feature --Access

	scan
			-- Full parsing scan of each frame in the file.
			-- Find Metadatas and optimize seek
		require
			Open: is_open
			Seakable: is_seekable
		local
			l_error:INTEGER
		do
			l_error := {MPG_EXTERNAL}.mpg123_scan(file_ptr)
			if l_error /= {MPG_EXTERNAL}.mpg123_ok then
				read_mpg_error ("Cannot scan MPG file", l_error)
			else
				is_scanned := True
				l_error := {MPG_EXTERNAL}.mpg123_meta_check(file_ptr)
				if l_error.bit_and ({MPG_EXTERNAL}.mpg123_id3_constant) /= 0 then
					manage_id3
				end
			end

		end

	is_scanned:BOOLEAN
			-- Is `scan' has been used on `Current'

	title:detachable READABLE_STRING_GENERAL
			-- <Precursor>
		require else
			Is_Scanned:is_scanned
		do
			if Not titles.is_empty then
				Result := titles.first
			end
		end

	titles:LIST[READABLE_STRING_GENERAL]
			-- Every readable identifier of `Current`

	artist:detachable READABLE_STRING_GENERAL
			-- <Precursor>
		require else
			Is_Scanned:is_scanned
		do
			if Not artists.is_empty then
				Result := artists.first
			end
		end

	artists:LIST[READABLE_STRING_GENERAL]
			-- The name of every creators of `Current`

	album:detachable READABLE_STRING_GENERAL
			-- <Precursor>
		require else
			Is_Scanned:is_scanned
		do
			if Not albums.is_empty then
				Result := albums.first
			end
		end

	albums:LIST[READABLE_STRING_GENERAL]
			-- The names of the medias that `Current` is from

	year:detachable READABLE_STRING_GENERAL
			-- <Precursor>
		require else
			Is_Scanned:is_scanned
		do
			if Not years.is_empty then
				Result := years.first
			end
		end

	years:LIST[READABLE_STRING_GENERAL]
			-- The creation's years of `Current`

	genre:detachable READABLE_STRING_GENERAL
			-- <Precursor>
		require else
			Is_Scanned:is_scanned
		do
			if Not genres.is_empty then
				Result := genres.first
			end
		end

	genres:LIST[READABLE_STRING_GENERAL]
			-- Every conventional categories of `Current`

	comment:detachable READABLE_STRING_GENERAL
			-- <Precursor>
		require else
			Is_Scanned:is_scanned
		do
			if Not comments.is_empty then
				Result := comments.first
			end
		end

	comments:LIST[READABLE_STRING_GENERAL]
			-- Everything that can be add to the definition of `Current`

	track_number: INTEGER_32
			-- <Precursor>

	is_openable:BOOLEAN
			-- <Precursor>
		local
			l_file:RAW_FILE
		do
			create l_file.make_with_name (filename)
			Result:= l_file.exists and l_file.is_readable
		end

	open
			-- <Precursor>
		do
			open_from_file(filename)
			is_open:=not has_error
			has_ressource_error := has_error
		end

	close
			-- <Precursor>
		local
			l_error:INTEGER
		do
			l_error:={MPG_EXTERNAL}.mpg123_close(file_ptr)
			is_open := False
		end

	channel_count:INTEGER
			-- <Precursor>
		do
			Result:=channel_count_internal
		end

	frequency:INTEGER
			-- <Precursor>
		do
			Result:=frequency_internal
		end

	bits_per_sample:INTEGER
			-- <Precursor>
		do
			Result := byte_per_buffer_sample * 8
		end

	is_signed:BOOLEAN
			-- <Precursor>
		do
			Result := resolution_index = {MPG_EXTERNAL}.mpg123_enc_signed_16
		end

	is_seekable:BOOLEAN
			-- <Precursor>
		do
			Result:=True
		end

	restart
			-- <Precursor>
		local
			l_error:INTEGER
		do
			l_error := {MPG_EXTERNAL}.mpg123_seek(file_ptr, 0, {MPG_EXTERNAL}.seek_set)
			is_finished := False
			if l_error < 0 then
				read_mpg_error ("Cannot restart playback", l_error)
			end
		end

	sample_seek(a_frame_number:INTEGER_64)
			-- <Precursor>
		local
			l_error:INTEGER
		do
			l_error:={MPG_EXTERNAL}.mpg123_seek(file_ptr, (a_frame_number).to_integer_32 - 1, {MPG_EXTERNAL}.seek_set)
			is_finished := False
			if l_error < 0 then
				read_mpg_error ("Cannot seek in file", l_error)
			end
		end

	sample_position:INTEGER_64
			-- <Precursor>
		local
			l_error:INTEGER
		do
			l_error := {MPG_EXTERNAL}.mpg123_tell(file_ptr)
			if l_error = {MPG_EXTERNAL}.mpg123_err then
				read_mpg_error ("Cannot get the sample position", l_error)
			end
			Result := l_error + 1
		end

	sample_count:INTEGER_64
			-- <Precursor>
		local
			l_error:INTEGER
		do
			l_error:={MPG_EXTERNAL}.mpg123_length(file_ptr)
			if l_error < 0 then
				read_mpg_error ("Cannot seek in file", l_error)
				Result := 0
			else
				Result := l_error
			end
		end

feature {NONE} -- Implementation

	manage_id3
			-- Get every ID3 metadatas from `Current'
		require
			Is_Open: is_open
			Is_Scanned: is_scanned
		local
			l_v1, l_v2:POINTER
			l_error:INTEGER
		do
			l_error:={MPG_EXTERNAL}.mpg123_id3(file_ptr, $l_v1, $l_v2)
			if l_error /= {MPG_EXTERNAL}.mpg123_ok then
				read_mpg_error ("Cannot retreive ID3 metadata.", l_error)
			else
				track_number := -1
				if not l_v2.is_default_pointer then
					manage_id3_v2(l_v2)
				end
				if not l_v1.is_default_pointer then
					manage_id3_v1(l_v1)
				end
				if track_number = -1 then
					track_number := 0
				end
			end
		end

	manage_id3_v1(a_pointer:POINTER)
			-- Get every ID3v1 metadatas from `Current'
		require
			Pointer_Not_Null: not a_pointer.is_default_pointer
		local
			l_pointer:POINTER
		do
			if titles.is_empty then
				l_pointer := {MPG_EXTERNAL}.get_mpg123_id3v1_struct_title(a_pointer)
				if not l_pointer.is_default_pointer then
					titles.extend (get_id3_v1_string(l_pointer, {MPG_EXTERNAL}.sizeof_mpg123_id3v1_title))
				end
			end
			if artists.is_empty then
				l_pointer := {MPG_EXTERNAL}.get_mpg123_id3v1_struct_artist(a_pointer)
				if not l_pointer.is_default_pointer then
					artists.extend (get_id3_v1_string(l_pointer, {MPG_EXTERNAL}.sizeof_mpg123_id3v1_artist))
				end
			end
			if albums.is_empty then
				l_pointer := {MPG_EXTERNAL}.get_mpg123_id3v1_struct_album(a_pointer)
				if not l_pointer.is_default_pointer then
					albums.extend (get_id3_v1_string(l_pointer, {MPG_EXTERNAL}.sizeof_mpg123_id3v1_album))
				end
			end
			if years.is_empty then
				l_pointer := {MPG_EXTERNAL}.get_mpg123_id3v1_struct_year(a_pointer)
				if not l_pointer.is_default_pointer then
					years.extend (get_id3_v1_string(l_pointer, {MPG_EXTERNAL}.sizeof_mpg123_id3v1_year))
				end
			end
			set_comments_from_id3_v1(a_pointer)
			if genres.is_empty and attached id3_v1_genre_string({MPG_EXTERNAL}.get_mpg123_id3v1_struct_genre(a_pointer)) as la_genre then
				genres.extend (la_genre)
			end
		end

	get_id3_v1_string(a_pointer:POINTER; a_size:INTEGER):READABLE_STRING_GENERAL
			-- Extract the (not necessary null terminated) C string pointed by `a_pointer' of lenght `a_size'
		require
			Pointer_Not_Null: not a_pointer.is_default_pointer
		local
			l_managed_pointer:MANAGED_POINTER
			l_c_string:C_STRING
		do
			create l_managed_pointer.make (a_size + 1)
			l_managed_pointer.item.memory_copy (a_pointer, a_size)
			l_managed_pointer.put_natural_8 (0, a_size)
			create l_c_string.make_shared_from_pointer (l_managed_pointer.item)
			Result := l_c_string.string
		end

	set_comments_from_id3_v1(a_pointer:POINTER)
			-- Extract the ID3v1 `comment' (including `track_number') from `Current'
		require
			Pointer_Not_Null: not a_pointer.is_default_pointer
		local
			l_pointer:POINTER
			l_managed_pointer:MANAGED_POINTER
			l_count:INTEGER
		do
			l_count := {MPG_EXTERNAL}.sizeof_mpg123_id3v1_comment
			l_pointer := {MPG_EXTERNAL}.get_mpg123_id3v1_struct_comment(a_pointer)
			if not l_pointer.is_default_pointer then
				create l_managed_pointer.share_from_pointer (l_pointer, l_count)
				if l_managed_pointer.read_natural_8 (l_count - 2) = 0 then
					if track_number = -1 then
						track_number := l_managed_pointer.read_natural_8 (l_count - 1)
					end
					l_count := l_count - 2
				end
				if comments.is_empty then
					comments.extend (get_id3_v1_string(l_managed_pointer.item, l_count))
				end
			end

		end

	manage_id3_v2(a_pointer:POINTER)
			-- Get every ID3v2 metadatas from `Current'
		require
			Pointer_Not_Null: not a_pointer.is_default_pointer
		do
			manage_id3_v2_strings({MPG_EXTERNAL}.get_mpg123_id3v2_struct_title(a_pointer), titles)
			manage_id3_v2_strings({MPG_EXTERNAL}.get_mpg123_id3v2_struct_artist(a_pointer), artists)
			manage_id3_v2_strings({MPG_EXTERNAL}.get_mpg123_id3v2_struct_album(a_pointer), albums)
			manage_id3_v2_strings({MPG_EXTERNAL}.get_mpg123_id3v2_struct_year(a_pointer), years)
			manage_id3_v2_strings({MPG_EXTERNAL}.get_mpg123_id3v2_struct_genre(a_pointer), genres)
			manage_id3_v2_strings({MPG_EXTERNAL}.get_mpg123_id3v2_struct_comment(a_pointer), comments)
		end

	manage_id3_v2_strings(a_pointer:POINTER; a_list:LIST[READABLE_STRING_GENERAL])
			-- Extract every C string pointed by `a_pointer' and put then in `a_list'
		local
			l_string_start:BOOLEAN
			l_managed_pointer:MANAGED_POINTER
			l_count, l_index:INTEGER
			l_utf_converter:UTF_CONVERTER
		do
			if not a_pointer.is_default_pointer then
				create l_utf_converter
				create l_managed_pointer.share_from_pointer (
											{MPG_EXTERNAL}.get_mpg123_string_struct_p(a_pointer),
											{MPG_EXTERNAL}.get_mpg123_string_struct_fill(a_pointer)
										)
				from
					l_index := 0
					l_string_start := False
				until
					l_index >= l_managed_pointer.count
				loop
					if not l_string_start and l_managed_pointer.read_natural_8 (l_index) /= 0 then
						manage_id3_v2_string(
										l_utf_converter.utf_8_0_subpointer_to_escaped_string_32 (
																							l_managed_pointer, l_index,
																							l_managed_pointer.count - 1, True
																						),
										a_list
									)
						l_string_start := True
					end
					if l_managed_pointer.read_natural_8 (l_index) = 0 then
						l_string_start := False
					end
					l_index := l_index + 1
				end
			end

		end

	manage_id3_v2_string(a_string:STRING_32; a_list:LIST[READABLE_STRING_GENERAL])
			-- Put every individual lines of `a_string' in `a_list'
		local
			l_n_split, l_r_split:LIST [STRING_32]
		do
			l_n_split := a_string.split ({CHARACTER_32}'%N')
			across l_n_split as la_n_split loop
				l_r_split := la_n_split.item.split ({CHARACTER_32}'%R')
				across l_r_split as la_r_split loop
					if not la_r_split.item.is_empty then
						a_list.extend (la_r_split.item)
					end
				end
			end
		end

	read_mpg_error(a_message:READABLE_STRING_GENERAL; a_code:INTEGER)
			-- <Precursor>
		do
			Precursor(a_message, a_code)
			has_ressource_error := has_error
		end

	open_from_file(a_filename:READABLE_STRING_GENERAL)
			-- `open' `Current' using `a_filename'
		local
			l_filename_c:C_STRING
			l_error:INTEGER
			l_converter:UTF_CONVERTER
		do
			create l_converter
			create l_filename_c.make (l_converter.string_32_to_utf_8_string_8 (filename.to_string_32))
			l_error := {MPG_EXTERNAL}.mpg123_open(file_ptr, l_filename_c.item)
			if l_error /= {MPG_EXTERNAL}.mpg123_ok then
				read_mpg_error ({STRING_32}"Cannot open file " + a_filename, l_error)
			else
				l_error := {MPG_EXTERNAL}.mpg123_getformat (file_ptr, $frequency_internal, $channel_count_internal, $resolution_index)
				if l_error /= {MPG_EXTERNAL}.mpg123_ok then
					read_mpg_error ({STRING_32}"Cannot get audio format from " + a_filename, l_error)
				else
					l_error := {MPG_EXTERNAL}.mpg123_format_none(file_ptr)
					if l_error /= {MPG_EXTERNAL}.mpg123_ok then
						read_mpg_error ({STRING_32}"Cannot get audio format from " + a_filename, l_error)
					else
						l_error := {MPG_EXTERNAL}.mpg123_format(file_ptr, frequency_internal, channel_count_internal, resolution_index)
						read_mpg_error ({STRING_32}"Cannot get audio format from " + a_filename, l_error)
					end
				end

			end
		end

	dispose
			-- <Precursor>
		local
			error:INTEGER
		do
			if is_open then
				close
			end
			{MPG_EXTERNAL}.mpg123_delete(file_ptr)
		end

	id3_v1_genre_string(a_number:INTEGER):detachable READABLE_STRING_GENERAL
			-- Map the ID3v1 genre ID `a_number' to it's text representation
		do
			if a_number = 0 then
				Result := "Blues"
			elseif a_number = 1 then
				Result := "Classic Rock"
			elseif a_number = 2 then
				Result := "Country"
			elseif a_number = 3 then
				Result := "Dance"
			elseif a_number = 4 then
				Result := "Disco"
			elseif a_number = 5 then
				Result := "Funk"
			elseif a_number = 6 then
				Result := "Grunge"
			elseif a_number = 7 then
				Result := "Hip-Hop"
			elseif a_number = 8 then
				Result := "Jazz"
			elseif a_number = 9 then
				Result := "Metal"
			elseif a_number = 10 then
				Result := "New Age"
			elseif a_number = 11 then
				Result := "Oldies"
			elseif a_number = 12 then
				Result := "Other"
			elseif a_number = 13 then
				Result := "Pop"
			elseif a_number = 14 then
				Result := "R&B"
			elseif a_number = 15 then
				Result := "Rap"
			elseif a_number = 16 then
				Result := "Reggae"
			elseif a_number = 17 then
				Result := "Rock"
			elseif a_number = 18 then
				Result := "Techno"
			elseif a_number = 19 then
				Result := "Industrial"
			elseif a_number = 20 then
				Result := "Alternative"
			elseif a_number = 21 then
				Result := "Ska"
			elseif a_number = 22 then
				Result := "Death Metal"
			elseif a_number = 23 then
				Result := "Pranks"
			elseif a_number = 24 then
				Result := "Soundtrack"
			elseif a_number = 25 then
				Result := "Euro-Techno"
			elseif a_number = 26 then
				Result := "Ambient"
			elseif a_number = 27 then
				Result := "Trip-Hop"
			elseif a_number = 28 then
				Result := "Vocal"
			elseif a_number = 29 then
				Result := "Jazz+Funk"
			elseif a_number = 30 then
				Result := "Fusion"
			elseif a_number = 31 then
				Result := "Trance"
			elseif a_number = 32 then
				Result := "Classical"
			elseif a_number = 33 then
				Result := "Instrumental"
			elseif a_number = 34 then
				Result := "Acid"
			elseif a_number = 35 then
				Result := "House"
			elseif a_number = 36 then
				Result := "Game"
			elseif a_number = 37 then
				Result := "Sound Clip"
			elseif a_number = 38 then
				Result := "Gospel"
			elseif a_number = 39 then
				Result := "Noise"
			elseif a_number = 40 then
				Result := "Alternative Rock"
			elseif a_number = 41 then
				Result := "Bass"
			elseif a_number = 42 then
				Result := "Soul"
			elseif a_number = 43 then
				Result := "Punk"
			elseif a_number = 44 then
				Result := "Space"
			elseif a_number = 45 then
				Result := "Meditative"
			elseif a_number = 46 then
				Result := "Instrumental Pop"
			elseif a_number = 47 then
				Result := "Instrumental Rock"
			elseif a_number = 48 then
				Result := "Ethnic"
			elseif a_number = 49 then
				Result := "Gothic"
			elseif a_number = 50 then
				Result := "Darkwave"
			elseif a_number = 51 then
				Result := "Techno-Industrial"
			elseif a_number = 52 then
				Result := "Electronic"
			elseif a_number = 53 then
				Result := "Pop-Folk"
			elseif a_number = 54 then
				Result := "Eurodance"
			elseif a_number = 55 then
				Result := "Dream"
			elseif a_number = 56 then
				Result := "Southern Rock"
			elseif a_number = 57 then
				Result := "Comedy"
			elseif a_number = 58 then
				Result := "Cult"
			elseif a_number = 59 then
				Result := "Gangsta"
			elseif a_number = 60 then
				Result := "Top 40"
			elseif a_number = 61 then
				Result := "Christian Rap"
			elseif a_number = 62 then
				Result := "Pop/Funk"
			elseif a_number = 63 then
				Result := "Jungle"
			elseif a_number = 64 then
				Result := "Native US"
			elseif a_number = 65 then
				Result := "Cabaret"
			elseif a_number = 66 then
				Result := "New Wave"
			elseif a_number = 67 then
				Result := "Psychadelic"
			elseif a_number = 68 then
				Result := "Rave"
			elseif a_number = 69 then
				Result := "Showtunes"
			elseif a_number = 70 then
				Result := "Trailer"
			elseif a_number = 71 then
				Result := "Lo-Fi"
			elseif a_number = 72 then
				Result := "Tribal"
			elseif a_number = 73 then
				Result := "Acid Punk"
			elseif a_number = 74 then
				Result := "Acid Jazz"
			elseif a_number = 75 then
				Result := "Polka"
			elseif a_number = 76 then
				Result := "Retro"
			elseif a_number = 77 then
				Result := "Musical"
			elseif a_number = 78 then
				Result := "Rock & Roll"
			elseif a_number = 79 then
				Result := "Hard Rock"
			elseif a_number = 80 then
				Result := "Folk"
			elseif a_number = 81 then
				Result := "Folk-Rock"
			elseif a_number = 82 then
				Result := "National Folk"
			elseif a_number = 83 then
				Result := "Swing"
			elseif a_number = 84 then
				Result := "Fast Fusion"
			elseif a_number = 85 then
				Result := "Bebob"
			elseif a_number = 86 then
				Result := "Latin"
			elseif a_number = 87 then
				Result := "Revival"
			elseif a_number = 88 then
				Result := "Celtic"
			elseif a_number = 89 then
				Result := "Bluegrass"
			elseif a_number = 90 then
				Result := "Avantgarde"
			elseif a_number = 91 then
				Result := "Gothic Rock"
			elseif a_number = 92 then
				Result := "Progressive Rock"
			elseif a_number = 93 then
				Result := "Psychedelic Rock"
			elseif a_number = 94 then
				Result := "Symphonic Rock"
			elseif a_number = 95 then
				Result := "Slow Rock"
			elseif a_number = 96 then
				Result := "Big Band"
			elseif a_number = 97 then
				Result := "Chorus"
			elseif a_number = 98 then
				Result := "Easy Listening"
			elseif a_number = 99 then
				Result := "Acoustic"
			elseif a_number = 100 then
				Result := "Humour"
			elseif a_number = 101 then
				Result := "Speech"
			elseif a_number = 102 then
				Result := "Chanson"
			elseif a_number = 103 then
				Result := "Opera"
			elseif a_number = 104 then
				Result := "Chamber Music"
			elseif a_number = 105 then
				Result := "Sonata"
			elseif a_number = 106 then
				Result := "Symphony"
			elseif a_number = 107 then
				Result := "Booty Bass"
			elseif a_number = 108 then
				Result := "Primus"
			elseif a_number = 109 then
				Result := "Porn Groove"
			elseif a_number = 110 then
				Result := "Satire"
			elseif a_number = 111 then
				Result := "Slow Jam"
			elseif a_number = 112 then
				Result := "Club"
			elseif a_number = 113 then
				Result := "Tango"
			elseif a_number = 114 then
				Result := "Samba"
			elseif a_number = 115 then
				Result := "Folklore"
			elseif a_number = 116 then
				Result := "Ballad"
			elseif a_number = 117 then
				Result := "Power Ballad"
			elseif a_number = 118 then
				Result := "Rhytmic Soul"
			elseif a_number = 119 then
				Result := "Freestyle"
			elseif a_number = 120 then
				Result := "Duet"
			elseif a_number = 121 then
				Result := "Punk Rock"
			elseif a_number = 122 then
				Result := "Drum Solo"
			elseif a_number = 123 then
				Result := "Acapella"
			elseif a_number = 124 then
				Result := "Euro-House"
			elseif a_number = 125 then
				Result := "Dance Hall"
			elseif a_number = 126 then
				Result := "Goa"
			elseif a_number = 127 then
				Result := "Drum & Bass"
			elseif a_number = 128 then
				Result := "Club-House"
			elseif a_number = 129 then
				Result := "Hardcore"
			elseif a_number = 130 then
				Result := "Terror"
			elseif a_number = 131 then
				Result := "Indie"
			elseif a_number = 132 then
				Result := "BritPop"
			elseif a_number = 133 then
				Result := "Negerpunk"
			elseif a_number = 134 then
				Result := "Polsk Punk"
			elseif a_number = 135 then
				Result := "Beat"
			elseif a_number = 136 then
				Result := "Christian Gangsta"
			elseif a_number = 137 then
				Result := "Heavy Metal"
			elseif a_number = 138 then
				Result := "Black Metal"
			elseif a_number = 139 then
				Result := "Crossover"
			elseif a_number = 140 then
				Result := "Contemporary C"
			elseif a_number = 141 then
				Result := "Christian Rock"
			elseif a_number = 142 then
				Result := "Merengue"
			elseif a_number = 143 then
				Result := "Salsa"
			elseif a_number = 144 then
				Result := "Thrash Metal"
			elseif a_number = 145 then
				Result := "Anime"
			elseif a_number = 146 then
				Result := "JPop"
			elseif a_number = 147 then
				Result := "SynthPop"
			end
		end

feature {NONE} -- Implementation - Variables

	file_ptr:POINTER
			-- C pointer to the sound file handle

	frequency_internal:INTEGER
			-- The value of the `frequency' attributes

	channel_count_internal:INTEGER
			-- The value of the `channel_count' attributes

	resolution_index:INTEGER
			-- Index to differenciate between signed 16 bits samples and unsigned 8 bits samples.

	filename:READABLE_STRING_GENERAL
			-- The name of the file containing the audio data


end
