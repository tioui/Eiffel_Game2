note
	description: "A ressource manager. Must be herited from."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 04:11:03 +0000"
	revision: "2.0"

deferred class
	GAME_RESSOURCE

inherit
	ANY
		redefine
			default_create
		end

feature {NONE} -- Initialisation

	default_create
			-- Initialization of `Current'
		do
			is_open:=False
			has_error:=False
		end

feature -- Access

	is_openable:BOOLEAN
			-- Can `Current' be `open'
		deferred
		end

	open
			-- Open `Current'
		require
			Ressource_Is_Openable: is_openable
			Ressource_Is_Not_Open: not is_open and not has_error
		deferred
		ensure
			Ressource_is_Open: is_open or has_error
		end

	is_open:BOOLEAN
			-- Is `Current' has been properly opened

	has_error:BOOLEAN
			-- Has an error occured while opening `Current'

end
