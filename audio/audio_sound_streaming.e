note
	description: "An {AUDIO_SOUND} used to stream audio buffers"
	author: "Louis Marchand"
	date: "Fri, 16 Jun 2017 16:13:44 +0000"
	revision: "0.1"

class
	AUDIO_SOUND_STREAMING

inherit
	AUDIO_SOUND

create
	make

feature {NONE} -- Initialization

	make(a_channel_count, a_frequency, a_bits_per_sample:INTEGER)
			-- Initialization of `Current' using `a_channel_count' as `channel_count',
			-- `a_frequency' as `frequency' and `a_bits_per_sample' as `bits_per_sample'
		require
			Channel_Valid: a_channel_count >= 1 and a_channel_count <= 2
			Bits_Per_Sample_Valid: a_bits_per_sample ~ 8 or a_bits_per_sample ~ 16
			Frequency_Valid:a_frequency > 0
		do
			sample_position := 0
			channel_count := a_channel_count
			frequency := a_frequency
			bits_per_sample := a_bits_per_sample
			is_signed := bits_per_sample ~ 16
			byte_per_buffer_sample := a_channel_count * (a_bits_per_sample // 2)
			create {LINKED_QUEUE[MANAGED_POINTER]}playing_queue.make
			is_open := True
			is_finished := False
		end

feature {AUDIO_SOURCE}

	fill_buffer(a_buffer:POINTER;a_max_length:INTEGER)
			-- <Precursor>
		local
			l_space_left:INTEGER
		do
			l_space_left := a_max_length
			if already_used_buffer > 0 then
				if playing_queue.item.count - already_used_buffer > l_space_left then
					a_buffer.memory_copy (playing_queue.item.item + already_used_buffer, l_space_left)
					already_used_buffer := already_used_buffer + l_space_left
					l_space_left := 0
				else
					a_buffer.memory_copy (playing_queue.item.item + already_used_buffer, playing_queue.item.count - already_used_buffer)
					l_space_left := l_space_left - (playing_queue.item.count - already_used_buffer)
					playing_queue.remove
					already_used_buffer := 0
				end
			end
			from
			until
				l_space_left <= 0 or playing_queue.is_empty
			loop
				if playing_queue.item.count > l_space_left then
					a_buffer.memory_copy (playing_queue.item.item, l_space_left)
					already_used_buffer := l_space_left
					l_space_left := 0
				else
					a_buffer.memory_copy (playing_queue.item.item, playing_queue.item.count)
					l_space_left := l_space_left - playing_queue.item.count
					playing_queue.remove
				end
			end
			last_buffer_size := a_max_length - l_space_left
			if must_finish and last_buffer_size <= 0 then
				is_finished := True
			end
		end


	byte_per_buffer_sample:INTEGER
			-- <Precursor>

feature --Access

	playing_queue:QUEUE[MANAGED_POINTER]
			-- Every buffer to play.

	finish
			-- Terminate the streaming (after emptying `playing_queue')
		do
			must_finish := True
		end


	queue_buffer(a_buffer:MANAGED_POINTER)
			-- Add `a_buffer' os size `a_size' in the playing queue
		do
			playing_queue.extend (a_buffer)
		end

	is_openable: BOOLEAN = True
			-- <Precursor>

	open
			-- Do nothing
		do
			is_open := True
		end

	close
			-- Do nothing
		do
			is_open := False
		end

	channel_count:INTEGER
			-- <Precursor>

	frequency:INTEGER
			-- <Precursor>

	bits_per_sample:INTEGER
			-- <Precursor>

	is_signed:BOOLEAN
			-- <Precursor>

	is_seekable:BOOLEAN = False
			-- <Precursor>

	sample_position:INTEGER_64
			-- <Precursor>

	restart
			-- Can be use to unfinished `Current'
		do
			is_finished := False
		end

	sample_seek(a_frame_number:INTEGER_64)
			-- <Precursor>
		do
			is_finished := False
		end

	sample_count:INTEGER_64	=	0
			-- Impossible to calculate

feature -- Implementation

	already_used_buffer:INTEGER
			-- The number of byte already used in the top item of `playing_queue'

	must_finish:BOOLEAN
			-- The `finish' has been called

invariant
	Already_Used_Buffer_Valid: already_used_buffer > 0 implies playing_queue.count > 0

end
