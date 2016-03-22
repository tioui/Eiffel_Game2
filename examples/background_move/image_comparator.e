note
	description	: "[
						Used to compare two images by there depth.
						Note: Must used the 'base_extension' library
					]"
	author		: "Louis Marchand"
	date        : "Tue, 22 Mar 2016 13:41:42 +0000"
	revision    : "0.2"

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
