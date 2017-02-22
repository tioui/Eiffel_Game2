note
	description: "An {AUDIO_SOUND} file format that can contain metadatas"
	author: "Louis Marchand"
	date: "Wed, 22 Feb 2017 03:42:57 +0000"
	revision: "0.1"

deferred class
	METADATA_AUDIO_SOUND

inherit
	AUDIO_SOUND

feature -- Access

	title:detachable READABLE_STRING_GENERAL
			-- The readable identifier of `Current'
			-- Void if no 'title' available in `Current'
		deferred
		end

	artist:detachable READABLE_STRING_GENERAL
			-- The name of the creator of `Current'
			-- Void if no 'artist' available in `Current'
		deferred
		end

	album:detachable READABLE_STRING_GENERAL
			-- The media that `Current' is from
			-- Void if no 'album' available in `Current'
		deferred
		end

	date:detachable READABLE_STRING_GENERAL
			-- The creation's date of `Current'
			-- Void if no 'date' available in `Current'
		deferred
		end

	genre:detachable READABLE_STRING_GENERAL
			-- The conventional category of `Current'
			-- Void if no 'genre' available in `Current'
		deferred
		end

	comment:detachable READABLE_STRING_GENERAL
			-- Anything that can be add to the definition of `Current'
			-- Void if no 'comment' available in `Current'
		deferred
		end

	track_number:INTEGER
			-- The number of `Current' in the `album'
			-- 0 if no 'track_number' available in `Current'
		deferred
		end


end
