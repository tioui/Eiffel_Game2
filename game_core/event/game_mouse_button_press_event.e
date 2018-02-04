note
	description: "[
		Encapsulates the press of a mouse button
	]"
	author: "Louis Marchand and obnosim"
	date: "Sun Feb 04, 2018"
	revision: "2.0"
	todo: "Drop GAME_MOUSE_BUTTON_RELEASED_STATE entirely and inherit GAME_MOUSE_BUTTON_EVENT directly"

class
	GAME_MOUSE_BUTTON_PRESS_EVENT

inherit

	GAME_MOUSE_BUTTON_PRESSED_STATE

create
	make

end
