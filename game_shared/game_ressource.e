note
	description: "A ressource manager. Must be herited from."
	author: "Louis Marchand"
	date: "april 30, 2013"
	revision: "1.0.0.0"

deferred class
	GAME_RESSOURCE

feature {NONE} -- Initialisation

	make
		do
			is_open:=False
			has_error:=False
		end

feature -- Access

	is_openable:BOOLEAN
		deferred
		end

	open
		require
			Ressource_Is_Openable: is_openable
			Ressource_Is_Not_Open: not is_open and not has_error
		deferred
		ensure
			Ressource_is_Open: is_open or has_error
		end

	is_open:BOOLEAN

	has_error:BOOLEAN

end
