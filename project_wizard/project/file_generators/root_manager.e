note
	description: "Attributes and setters for root class and feature"
	author: "Louis Marchand"
	date: "Sat, 07 Jan 2017 22:18:47 +0000"
	revision: "1.0"

deferred class
	ROOT_MANAGER

inherit
	ANY
		redefine
			default_create
		end

feature {NONE}  -- Initialization

	default_create
			-- Initialization of `Current'
		do
			set_root_class("APPLICATION")
			set_root_feature("make")
		ensure then
			Is_Root_Class_Valid: not root_class.is_empty and not root_class.has ({CHARACTER_32}' ') and root_class.is_equal (root_class.as_upper)
			Is_Root_Feature_Valid: not root_feature.is_empty and not root_feature.has ({CHARACTER_32}' ') and root_feature.is_equal (root_feature.as_lower)
		end
feature -- Access

	root_class:READABLE_STRING_GENERAL assign set_root_class
			-- The name of the class that will be use as root

	set_root_class(a_root_class:READABLE_STRING_GENERAL)
			-- Assign `root_class' with the value of `a_root_class'.
			-- If `a_root_class' contain lowercase character, it will be change as uppercase
		require
			Root_Class_Not_Empty: not a_root_class.is_empty
			Root_Class_Single_Word: not a_root_class.has ({CHARACTER_32}' ')
		do
			root_class := a_root_class.as_upper
		ensure
			Is_Assign: root_class.is_equal(a_root_class.as_upper)
		end

	root_feature:READABLE_STRING_GENERAL assign set_root_feature
			-- The name of the constructor of the `root_class' that will be use as root

	set_root_feature(a_root_feature:READABLE_STRING_GENERAL)
			-- Assign `root_feature' with the value of `a_root_feature'.
			-- If `a_root_feature' contain uppercase character, it will be change as uppercase
		require
			Root_Feature_Not_Empty: not a_root_feature.is_empty
			Root_Feature_Single_Word: not a_root_feature.has ({CHARACTER_32}' ')
		do
			root_feature := a_root_feature.as_lower
		ensure
			Is_Assign: root_feature.is_equal(a_root_feature.as_lower)
		end

invariant
	Is_Root_Class_Upper_Case: root_class.is_equal(root_class.as_upper)
	Is_Root_Feature_Lower_Case: root_class.is_equal(root_class.as_lower)
end
