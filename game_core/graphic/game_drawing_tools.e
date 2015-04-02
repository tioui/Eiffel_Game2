note
	description: "Some tools that can be used to drawers."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

class
	GAME_DRAWING_TOOLS

feature {NONE} -- Implementation

	normalize_rectangle(a_x, a_y, a_width, a_height:INTEGER):TUPLE[x, y, width, height:INTEGER]
			-- Adjust the rectangle delimited started at (`a_x',`a_y') and having
			-- dimensions `a_width'x`a_height' so that the resulting rectangle
			-- never have a negative `width' or `height'
		local
			l_x, l_y:INTEGER
		do
			if a_width < 0 then
				l_x := a_x + a_width
			else
				l_x := a_x
			end
			if a_height < 0 then
				l_y := a_y + a_height
			else
				l_y := a_y
			end
			Result := [l_x, l_y, a_width.abs, a_height.abs]
		end
end
