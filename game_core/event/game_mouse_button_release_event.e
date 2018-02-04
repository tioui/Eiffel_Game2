note
	description: "[
		Encapsulates the release of a mouse button
	]"
	author: "Louis Marchand and obnosim"
	date: "Sun Feb 04, 2018"
	revision: "2.0"
	todo: "Drop GAME_MOUSE_BUTTON_RELEASED_STATE entirely and inherit GAME_MOUSE_BUTTON_EVENT directly"

class
	GAME_MOUSE_BUTTON_RELEASE_EVENT

inherit

	GAME_MOUSE_BUTTON_RELEASED_STATE

create
	make

end
