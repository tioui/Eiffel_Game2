note
	description : "[
						An example application to stream audio via network
						not very performant. Will need an encoding system.
						Work in localhost, but it take time for the network to adapt.
					]"
	author      : "Louis Marchand"
	generator   : "Eiffel Game2 Project Wizard"
	date        : "2017-06-19 03:18:40.394 +0000"
	revision    : "0.1"

class
	APPLICATION

inherit
	EXCEPTIONS
create
	make

feature {NONE} -- Initialization

	make
			-- Running the application
		do
			io.standard_default.put_string ("Type of execution:%N")
			io.standard_default.put_string ("	1 - Emitter%N")
			io.standard_default.put_string ("	2 - Receiver%N")
			io.standard_default.put_string ("Choice:")
			io.read_integer
			if io.last_integer = 1 then
				launch_engine(create {EMITTER_ENGINE}.make)
			elseif io.last_integer = 2 then
				launch_engine(create {RECEIVER_ENGINE}.make)
			else
				io.error.put_string ("the selected choice is not valid.%N")
				die(1)
			end
		end


	launch_engine(a_engine:ENGINE)
			-- Launch `a_engine'
		do
			if not a_engine.has_error then
				a_engine.run
			else
				io.error.put_string ("A error occured while initializing the engine.%N")
				die(2)
			end
		end

end
