note
	description: "Summary description for {GAME_RANDOM_CONTROLLER}."
	author: "Louis Marchand inspire by Martin Seiler (http://community.eiffel.com/room/article/random_numbers)"
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_RANDOM_CONTROLLER

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		local
			l_time: TIME
			l_seed: INTEGER
		do
			create l_time.make_now
			l_seed := l_time.hour
			l_seed := l_seed * 60 + l_time.minute
			l_seed := l_seed * 60 + l_time.second
			l_seed := l_seed * 1000 + l_time.milli_second
			create random_sequence.set_seed (l_seed)
		end

feature -- Access

	generate_new_random
			-- Generate a new random number. Use this feature before one of the `last_random_*' feature.
		do
			random_sequence.forth
		end

	last_random_integer:INTEGER_32
			-- Return an integer representation of the last random number generate by the
			-- `generate_new_random' routine.
		do
			Result:=random_sequence.item
		end

	last_random_integer_between(min,max:INTEGER):INTEGER
			-- Return an integer representation of the last random number generate by the
			-- `generate_new_random' routine. The return value will be between `min' and `max'
			-- (including `min' and `max').
		require
			Get_Random_Between_Max_and_Min_Valid: max>min
		do
			Result:= (last_random_integer\\(max-min+1))+min
		end

	last_random_real:REAL
			-- Return an real representation of the last random number generate by the
			-- `generate_new_random' routine.
		do
			Result:=random_sequence.real_item
		end

	last_random_real_between(min,max:REAL):REAL
			-- Return an real representation of the last random number generate by the
			-- `generate_new_random' routine. The return value will be between `min' and `max'
			-- (including `min' and `max').
		require
			Get_Random_Between_Max_and_Min_Valid: max>min
		do
			Result:= (last_random_real*(max-min))+min
		end

feature {NONE}  -- Implementation variables

	random_sequence:RANDOM

end
