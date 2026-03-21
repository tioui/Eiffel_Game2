note
	description: "The axis of a controller"
	author: "Malyk Vigneault"
	date: "March 3, 2026"
	revision: "1.0"

class
	CONTROLLER_AXIS
create
	make
feature -- Access

	make
		-- Initialization of 'Current'
		do
			invalide:=-1
			left_x:=0
			left_y:=1
			right_x:=2
			right_y:=3
			trigger_left:=4
			trigger_right:=5
			max:=6
		end

	invalide: INTEGER_16
		-- bouton invalide

	left_x: INTEGER_16
		-- valeur de l'axe des x du joystick gauche

	left_y: INTEGER_16
	-- valeur de l'axe des y du joystick gauche

	right_x: INTEGER_16
	-- valeur de l'axe des z du joystick droit

	right_y: INTEGER_16
	-- valeur de l'axe des y du joystick droit

	trigger_left: INTEGER_16
	-- valeur de l'axe de la gachette gauche

	trigger_right: INTEGER_16
	-- valeur de l'axe de la gachette droite

	max: INTEGER_16
		-- la valeur maximum d'un axe

end
