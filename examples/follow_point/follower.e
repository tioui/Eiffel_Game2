note
	description: "An positionnable object that follow a point in space."
	author: "Louis Marchand"
	date: "Tue, 17 Oct 2023 18:35:19 +0000"
	revision: "0.1"

class
	FOLLOWER

create
	make


feature {NONE} -- Initialisation

	make(a_timestamp:NATURAL; a_initial_x, a_initial_y, a_speed:REAL)
			-- Initialisation of `Current' using `a_timestamp' as initial
			-- timestamp (used in update for the delta time), `a_initial_x'
			-- and `a_initial_y' as initial position and `a_speed' as moving
			-- `speed'.
		do
			x := a_initial_x
			y := a_initial_y
			speed := a_speed
			old_timestamp := a_timestamp
		ensure
			X_Assign: x ~ a_initial_x
			Y_Assign: y ~ a_initial_y
			Speed_Assign: speed ~ a_speed
			Old_Timestamp_Assign: old_timestamp ~ a_timestamp
		end

feature -- Access

	x:REAL
			-- Horizontal position of `Current'

	y:REAL
			-- Vertical position of `Current'

	speed:REAL
			-- The number of pixel to move by second

	update(a_timestamp:NATURAL; a_destination_x, a_destination_y:REAL)
			-- Update the position of `Current' so that it move in the direction of
			-- (`a_destination_x',`a_destination_y'). `a_timetime' is used to know
			-- how much to advance.
		local
			l_delta_x:REAL
			l_delta_y:REAL
			l_unit_x:REAL
			l_unit_y:REAL
			l_norm:REAL
			l_norm_inverse:REAL
			l_delta_time:REAL
			l_delta_speed:REAL
		do
			-- Initialisation du delta (différence) entre la dernière itération et la courrante
			l_delta_x := a_destination_x - x
			l_delta_y := a_destination_y - y
			l_norm := {DOUBLE_MATH}.sqrt (l_delta_x.power (2)+l_delta_y.power (2)).truncated_to_real
			l_delta_time := (a_timestamp - old_timestamp) / {REAL}1000.0
			l_delta_speed := speed * l_delta_time
			if l_norm < l_delta_speed then
				-- L'objet est assez proche de la destination pour pouvoir se positionner dessus.
				x := a_destination_x
				y := a_destination_y
			else
				-- Déplace l'objet d'un étape en fonction du delta calculé plus haut (un haut delta
				-- signifie un grand déplacement).
				l_norm_inverse := 1/l_norm
				l_unit_x := l_norm_inverse * l_delta_x
				l_unit_y := l_norm_inverse * l_delta_y
				x := x + (l_unit_x * l_delta_speed)
				y := y + (l_unit_y * l_delta_speed)
			end
			-- Garde le timestamp actuel pour préparer la prochaine mise à jour.
			old_timestamp := a_timestamp
		end


feature {NONE} -- Implementation

	old_timestamp:NATURAL
			-- A backup of the last timestamp manage by `update'

end
