note
	description: "Class that holds information for a sound and fills a buffer to play it."
	author: "Émilio G!"
	adaptation: "Louis Marchand"
	date: "16-02-23"
	revision: "16w09a"
	legal: "See notice at end of class."

class
	AUDIO_SOUND_CUSTOM

inherit
	AUDIO_SOUND

create
	make,
	make_from_other

feature {NONE}
	make (a_sound_data : CHAIN[INTEGER_16])
			-- Initialization for `Current'.
			-- Sets sound data with `a_sound_data' and initializes features.
		local
			i: INTEGER_32
		do
			buffer_index:= 0
			byte_per_buffer_sample:= channel_count * (bits_per_sample // 8)
			sound_length:= a_sound_data.count
			is_open := True
			create sound_data.make (byte_per_buffer_sample * sound_length)
			from
				i := 1
			until
				i > sound_length - 1
			loop
				sound_data.put_integer_16 (a_sound_data.at (i), (i - 1) * byte_per_buffer_sample)
				i := i + 1
			end
		end

	make_from_other (a_sound: SOUND)
			-- Initialization for `Current' using another sound.
		do
			buffer_index:= 0
			byte_per_buffer_sample:= a_sound.channel_count * (a_sound.bits_per_sample // 8)
			sound_length:= a_sound.sound_length
			is_open := True
			create sound_data.make_from_pointer (a_sound.sound_data.item, a_sound.sound_length * byte_per_buffer_sample)
		end

feature

	buffer_index: INTEGER_32
			--usefull in fill_buffer

	sound_data: MANAGED_POINTER
			--data that is readable by the library

	sound_length: INTEGER_32
			--length in samples

	channel_count:INTEGER_32 = 1
			-- <Precursor>

	frequency: INTEGER_32 = 44100
			-- in samples per second

	bits_per_sample: INTEGER_32 = 16
			-- <Precursor>

	is_signed: BOOLEAN = True
			-- is sound_data signed

	byte_per_buffer_sample: INTEGER_32
			-- equals to number_of_channels * (bits_per_sample // 8)

	is_seekable: BOOLEAN = False
			-- Useless in this class, but needed to inherit from AUDIO_SOUND

	restart
			--sets buffer_index to 0 so the sound plays normally when prompted again
		do
			buffer_index := 0
		end

	is_openable: BOOLEAN = True
			-- <Precursor>

	open
			--nothing. This is actually useless but necessary to inherit from AUDIO_SOUND.
		do

		end

feature {AUDIO_LIBRARY_CONTROLLER}

	fill_buffer(a_buffer: POINTER; a_max_length: INTEGER_32)
			--This method should only be called by AUDIO_LIBRARY_CONTROLLER.
			--Side effect on a_buffer.
		local
			l_buffer_size: INTEGER_32
			l_index_max: INTEGER_32
			l_sound_length_byte: INTEGER_32
		do
			l_index_max:= buffer_index + a_max_length
			l_sound_length_byte:= sound_length * byte_per_buffer_sample
			if(l_index_max >= l_sound_length_byte) then
				l_buffer_size:= l_sound_length_byte - buffer_index
			else
				l_buffer_size:= a_max_length
			end
			if(l_buffer_size <= 0) then
				restart
			else
				a_buffer.memory_copy (sound_data.item.plus (buffer_index), l_buffer_size)
				buffer_index := (buffer_index + l_buffer_size)
			end
			last_buffer_size:= l_buffer_size
		end

invariant
	buffer_index_not_retarded: 0 <= buffer_index and buffer_index <= sound_length * byte_per_buffer_sample
	buffer_index_even: buffer_index \\ 2 = 0
note
	license: "GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 | Copyright (c) 2016 Émilio Gonzalez and Guillaume Jean"
	source: "[url: https://www.gnu.org/licenses/gpl-3.0.html]"
end
