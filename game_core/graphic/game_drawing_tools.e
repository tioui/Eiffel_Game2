note
	description: "Summary description for {GAME_DRAWING_TOOLS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

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
