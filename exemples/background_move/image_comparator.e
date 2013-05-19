note
	description: "Permit the comparation of two image by comparing there depth."
	author		: "Louis Marchand"
	date        : "May 18, 2013"
	revision    : "0.1.1.1"

class
	IMAGE_COMPARATOR

inherit
	COMPARATOR [IMAGE]

feature -- Status report

	less_than (u, v: IMAGE): BOOLEAN
			-- The `depth' of `u' is less than the `depth' of `v'?
		do
			Result:=u.depth<v.depth
		end

end
