note
	description: "Load a fie indo a GAME_AL_SOUND object."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_AUDIO_SOUND_FILE

inherit
	GAME_AUDIO_SOUND
	GAME_MEDIA_FILE
	redefine make end
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
			last_buffer_size:={GAME_AUDIO_EXTERNAL}.sf_read_short(snd_file_ptr,buffer,max_length//2).to_integer
		end

	byte_per_buffer_sample:INTEGER
		do
			Result:=2
		end

feature --Access
	get_channels:INTEGER
			-- Get the channel number of the sound (1=mono, 2=stereo, etc.).
		do
			Result:={GAME_AUDIO_EXTERNAL}.get_sf_info_struct_channels(file_info)
		end

	get_frequency:INTEGER
			-- Get the frequency (sample rate) of the sound.
		do
			Result:={GAME_AUDIO_EXTERNAL}.get_sf_info_struct_samplerate(file_info)
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
			Result:=({GAME_AUDIO_EXTERNAL}.get_sf_info_struct_seekable(file_info)/=0)
		end

	restart
			-- Restart the sound to the beginning.
		local
			error:INTEGER_64
		do
			if is_seekable then
				error:={GAME_AUDIO_EXTERNAL}.SF_seek(snd_file_ptr,0,{GAME_AUDIO_EXTERNAL}.SEEK_SET)
				check error/=-1 end
			else
				dispose
				open_from_file(c_filename)
			end

		end

feature {NONE} -- Implementation - Methodes

	open_from_file(filename:STRING)
		local
			filename_c:C_STRING
		do
			file_info:={GAME_AUDIO_EXTERNAL}.c_sf_info_struct_allocate
			create filename_c.make(filename)
			snd_file_ptr:={GAME_AUDIO_EXTERNAL}.SF_open(filename_c.item,{GAME_AUDIO_EXTERNAL}.SFM_READ,file_info)
			check not snd_file_ptr.is_default_pointer end
		end

	dispose
		local
			error:INTEGER
		do
			{GAME_AUDIO_EXTERNAL}.c_sf_info_struct_free(file_info)
			error:={GAME_AUDIO_EXTERNAL}.sf_close(snd_file_ptr)
			check error=0 end
		end

feature {NONE} -- Implementation - Variables

	snd_file_ptr:POINTER
	file_info:POINTER

	bit_res:INTEGER
	media_signed:BOOLEAN

	c_filename:STRING


end
