note
	description: "A simple random generator"
	author: "Louis Marchand inspire by Martin Seiler (http://community.eiffel.com/room/article/random_numbers)"
	date: "Sat, 28 Mar 2015 03:24:57 +0000"
	revision: "2.0"

class
	GAME_RANDOM

inherit
	ANY
		redefine
			default_create
		end

create
	default_create,
	make_with_seed

feature {NONE} -- Initialization

	default_create
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
			make_with_seed(l_seed)
		end

	make_with_seed(a_seed:INTEGER)
			-- Initialization for `Current' using directly `a_seed' as random seed.
		do
			create random_sequence.set_seed (a_seed)
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

	last_random_integer_between(a_min,a_max:INTEGER):INTEGER
			-- Return an integer representation of the last random number generate by the
			-- `generate_new_random' routine. The return value will be between `min' and `max'
			-- (including `a_min' and `a_max').
		require
			Get_Random_Between_Max_and_Min_Valid: a_max>=a_min
		do
			Result:= (last_random_integer\\(a_max-a_min+1))+a_min
		ensure
			Random_Value_valid: Result>=a_min and Result<=a_max
		end

	last_random_real:REAL
			-- Return an real representation of the last random number generate by the
			-- `generate_new_random' routine.
		do
			Result:=random_sequence.real_item
		end

	last_random_real_between(a_min,a_max:REAL):REAL
			-- Return an real representation of the last random number generate by the
			-- `generate_new_random' routine. The return value will be between `min' and `max'
			-- (including `a_min' and `a_max').
		require
			Get_Random_Between_Max_and_Min_Valid: a_max>=a_min
		do
			Result:= (last_random_real*(a_max-a_min))+a_min
		ensure
			Random_Value_valid: Result>=a_min and Result<=a_max
		end

feature {NONE}  -- Implementation variables

	random_sequence:RANDOM
			-- The random generator

end
