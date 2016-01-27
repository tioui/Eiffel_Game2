note
	description: "Read and write access to an internal array of pixels."
	author: "Louis Marchand"
	date: "Tue, 26 Jan 2016 19:34:13 +0000"
	revision: "2.1"

class
	GAME_PIXEL_READER_WRITER

inherit
	GAME_PIXEL_READER
		redefine
			pixel
		end

	GAME_PIXEL_WRITER

create
	make

feature -- Access

	pixel(a_line, a_column:INTEGER):GAME_COLOR_READABLE assign set_pixel
			-- <Precursor>
		do
			Result := Precursor(a_line, a_column)
		end
end
