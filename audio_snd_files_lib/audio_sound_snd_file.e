note
	description: "Load a fie indo a GAME_AL_SOUND object."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	AUDIO_SOUND_SND_FILE

inherit
	AUDIO_SOUND
	DISPOSABLE

create
	make

feature {NONE} -- Initialization

	make(filename:STRING)
			-- Initialization for `Current'.
			-- Will use 16 bits signed frames in the buffer.
		do
			bit_res:=16
			media_signed:=true
			c_filename:=filename
			open_from_file(filename)
		end

feature {GAME_AUDIO_SOURCE}

	fill_buffer(buffer:POINTER;max_length:INTEGER)
		do
			last_buffer_size:={AUDIO_SND_FILES_EXTERNAL}.sf_read_short(snd_file_ptr,buffer,max_length//byte_per_buffer_sample).to_integer
		end

	byte_per_buffer_sample:INTEGER
		once
			Result:=2
		end

feature --Access

	file_exist(filename:STRING):BOOLEAN
			-- Valid if the file `filename' exist and is readable.
		local
			the_file:RAW_FILE
		do
			create the_file.make (filename)
			Result:= the_file.access_exists and the_file.is_access_readable
		end

	get_channels:INTEGER
			-- Get the channel number of the sound (1=mono, 2=stereo, etc.).
		do
			Result:={AUDIO_SND_FILES_EXTERNAL}.get_sf_info_struct_channels(file_info)
		end

	get_frequency:INTEGER
			-- Get the frequency (sample rate) of the sound.
		do
			Result:={AUDIO_SND_FILES_EXTERNAL}.get_sf_info_struct_samplerate(file_info)
		end

	get_bit_resolution:INTEGER
			-- Get the bit resolution of one frame of the sound.
		do
			Result:=bit_res
		end

	is_signed:BOOLEAN
			-- Return true if the frames in the buffer are signed.
		do
			Result:=media_signed
		end

	is_seekable:BOOLEAN
			-- Return true if the sound support the seek functionnality.
		do
			Result:=({AUDIO_SND_FILES_EXTERNAL}.get_sf_info_struct_seekable(file_info)/=0)
		end

	restart
			-- Restart the sound to the beginning.
		local
			error:INTEGER_64
		do
			if is_seekable then
				error:={AUDIO_SND_FILES_EXTERNAL}.SF_seek(snd_file_ptr,0,{AUDIO_SND_FILES_EXTERNAL}.SEEK_SET)
				check error/=-1 end
			else
				dispose
				open_from_file(c_filename)
			end

		end

feature {NONE} -- Implementation - Methodes

	open_from_file(filename:STRING)
		local
			filename_c,error_c:C_STRING
		do
			file_info:={AUDIO_SND_FILES_EXTERNAL}.c_sf_info_struct_allocate
			create filename_c.make(filename)
			snd_file_ptr:={AUDIO_SND_FILES_EXTERNAL}.SF_open(filename_c.item,{AUDIO_SND_FILES_EXTERNAL}.SFM_READ,file_info)
			if snd_file_ptr.is_default_pointer then
				create error_c.make_by_pointer ({AUDIO_SND_FILES_EXTERNAL}.sf_strerror(snd_file_ptr))
				io.error.put_string (error_c.string+"%N")
				check false end
			end
		end

	dispose
		local
			error:INTEGER
		do
			{AUDIO_SND_FILES_EXTERNAL}.c_sf_info_struct_free(file_info)
			error:={AUDIO_SND_FILES_EXTERNAL}.sf_close(snd_file_ptr)
			check error=0 end
		end

feature {NONE} -- Implementation - Variables

	snd_file_ptr:POINTER
	file_info:POINTER

	bit_res:INTEGER
	media_signed:BOOLEAN

	c_filename:STRING


end
