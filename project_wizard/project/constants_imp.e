note
	description: "[
			Objects that provide access to constants, possibly loaded from a files.
			Each constant is generated into two features: both a query and a storage
			feature. For example, for a STRING constant named `my_string', the following
			features are generated: my_string: STRING and my_string_cell: CELL [STRING].
			`my_string' simply returns the current item of `my_string_cell'. By separating
			the constant access in this way, it is possible to change the constant's value
			by either redefining `my_string' in descendent classes or simply performing
			my_string_cell.put ("new_string") as required.
			If you are loading the constants from a file and you wish to reload a different set
			of constants for your interface (e.g. for multi-language support), you may perform
			this in the following way:
			
			set_file_name ("my_constants_file.text")
			reload_constants_from_file
			
			and then for each generated widget, call `set_all_attributes_using_constants' to reset
			the newly loaded constants into the attribute settings of each widget that relies on constants.
			
			Note that if you wish your constants file to be loaded from a specific location,
			you may redefine `initialize_constants' to handle the loading of the file from
			an alternative location.
			
			Note that if you have selected to load constants from a file, and the file cannot
			be loaded, you will get a precondition violation when attempting to access one
			of the constants that should have been loaded. Therefore, you must ensure that either the
			file is accessible or you do not specify to load from a file.
		]"
	generator: "EiffelBuild"
	date: "$Date: 2014-01-06 17:24:44 -0800 (Mon, 06 Jan 2014) $"
	revision: "$Revision: 93911 $"

deferred class
	CONSTANTS_IMP
	
feature {NONE} -- Initialization

	initialize_constants
			-- Load all constants from file.
		local
			file: PLAIN_TEXT_FILE
		do
			if not constants_initialized then
				create file.make (file_name)
				if file.exists then
					file.open_read
					file.readstream (file.count)
					file.close
					parse_file_contents (file.laststring)
				end
				initialized_cell.put (True)
			end
		ensure
			initialized: constants_initialized
		end

feature -- Access

	reload_constants_from_file
			-- Re-load all constants from file named `file_name'.
			-- When used in conjunction with `set_file_name', it enables
			-- you to load a fresh set of INTEGER and STRING constants
			-- from a constants file. If you then wish these to be applied
			-- to a current generated interface, call `set_all_attributes_using_constants'
			-- on that interface for the changed constants to be reflected in the attributes
			-- of your widgets.
		do
			initialized_cell.put (False)
			initialize_constants
		end

	edit_project_window_title: STRING_32
			-- `Result' is STRING_32 constant named `edit_project_window_title'.
		do
			Result := edit_project_window_title_cell.item
		end

	edit_project_window_title_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `edit_project_window_title'.
		once
			create Result.put ("Eiffel Game2 Wizard")
		end

	file_menu_text: STRING_32
			-- `Result' is STRING_32 constant named `file_menu_text'.
		do
			Result := file_menu_text_cell.item
		end

	file_menu_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `file_menu_text'.
		once
			create Result.put ("&File")
		end

	file_new_menu_item_text: STRING_32
			-- `Result' is STRING_32 constant named `file_new_menu_item_text'.
		do
			Result := file_new_menu_item_text_cell.item
		end

	file_new_menu_item_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `file_new_menu_item_text'.
		once
			create Result.put ("&New Project")
		end

	file_open_menu_item_text: STRING_32
			-- `Result' is STRING_32 constant named `file_open_menu_item_text'.
		do
			Result := file_open_menu_item_text_cell.item
		end

	file_open_menu_item_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `file_open_menu_item_text'.
		once
			create Result.put ("&Open Project")
		end

	file_recent_menu_text: STRING_32
			-- `Result' is STRING_32 constant named `file_recent_menu_text'.
		do
			Result := file_recent_menu_text_cell.item
		end

	file_recent_menu_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `file_recent_menu_text'.
		once
			create Result.put ("&Recent")
		end

	file_save_menu_item_text: STRING_32
			-- `Result' is STRING_32 constant named `file_save_menu_item_text'.
		do
			Result := file_save_menu_item_text_cell.item
		end

	file_save_menu_item_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `file_save_menu_item_text'.
		once
			create Result.put ("&Save Project")
		end

	file_quit_menu_item_text: STRING_32
			-- `Result' is STRING_32 constant named `file_quit_menu_item_text'.
		do
			Result := file_quit_menu_item_text_cell.item
		end

	file_quit_menu_item_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `file_quit_menu_item_text'.
		once
			create Result.put ("&Quit")
		end

	project_menu_text: STRING_32
			-- `Result' is STRING_32 constant named `project_menu_text'.
		do
			Result := project_menu_text_cell.item
		end

	project_menu_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_menu_text'.
		once
			create Result.put ("&Project")
		end

	project_change_folder_menu_item_text: STRING_32
			-- `Result' is STRING_32 constant named `project_change_folder_menu_item_text'.
		do
			Result := project_change_folder_menu_item_text_cell.item
		end

	project_change_folder_menu_item_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_change_folder_menu_item_text'.
		once
			create Result.put ("&Change Project Folder")
		end

	project_generate_menu_item_text: STRING_32
			-- `Result' is STRING_32 constant named `project_generate_menu_item_text'.
		do
			Result := project_generate_menu_item_text_cell.item
		end

	project_generate_menu_item_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_generate_menu_item_text'.
		once
			create Result.put ("&Generate code")
		end

	help_menu_text: STRING_32
			-- `Result' is STRING_32 constant named `help_menu_text'.
		do
			Result := help_menu_text_cell.item
		end

	help_menu_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `help_menu_text'.
		once
			create Result.put ("&Help")
		end

	help_about_menu_item_text: STRING_32
			-- `Result' is STRING_32 constant named `help_about_menu_item_text'.
		do
			Result := help_about_menu_item_text_cell.item
		end

	help_about_menu_item_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `help_about_menu_item_text'.
		once
			create Result.put ("Abou&t")
		end

	new_tool_bar_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `new_tool_bar_button_tooltip'.
		do
			Result := new_tool_bar_button_tooltip_cell.item
		end

	new_tool_bar_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `new_tool_bar_button_tooltip'.
		once
			create Result.put ("New project")
		end

	open_tool_bar_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `open_tool_bar_button_tooltip'.
		do
			Result := open_tool_bar_button_tooltip_cell.item
		end

	open_tool_bar_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `open_tool_bar_button_tooltip'.
		once
			create Result.put ("Open project")
		end

	save_tool_bar_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `save_tool_bar_button_tooltip'.
		do
			Result := save_tool_bar_button_tooltip_cell.item
		end

	save_tool_bar_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `save_tool_bar_button_tooltip'.
		once
			create Result.put ("Save project")
		end

	change_project_folder_tool_bar_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `change_project_folder_tool_bar_button_tooltip'.
		do
			Result := change_project_folder_tool_bar_button_tooltip_cell.item
		end

	change_project_folder_tool_bar_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `change_project_folder_tool_bar_button_tooltip'.
		once
			create Result.put ("Change project folder")
		end

	generate_code_tool_bar_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `generate_code_tool_bar_button_tooltip'.
		do
			Result := generate_code_tool_bar_button_tooltip_cell.item
		end

	generate_code_tool_bar_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `generate_code_tool_bar_button_tooltip'.
		once
			create Result.put ("Generate code")
		end

	regenerate_config_file_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `regenerate_config_file_check_button_tooltip'.
		do
			Result := regenerate_config_file_check_button_tooltip_cell.item
		end

	regenerate_config_file_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `regenerate_config_file_check_button_tooltip'.
		once
			create Result.put ("The config file (.ecf) if the EiffelStudio configuration file. To add or remove libraries, it have to be overrite.")
		end

	regenerate_config_file_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `regenerate_config_file_check_button_text'.
		do
			Result := regenerate_config_file_check_button_text_cell.item
		end

	regenerate_config_file_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `regenerate_config_file_check_button_text'.
		once
			create Result.put ("Regenerate config file")
		end

	generate_code_button_text: STRING_32
			-- `Result' is STRING_32 constant named `generate_code_button_text'.
		do
			Result := generate_code_button_text_cell.item
		end

	generate_code_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `generate_code_button_text'.
		once
			create Result.put ("Generate Code")
		end

	window_border: INTEGER
			-- `Result' is INTEGER constant named `window_border'.
		do
			Result := window_border_cell.item
		end

	window_border_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `window_border'.
		once
			create Result.put (20)
		end

	project_path_label_text: STRING_32
			-- `Result' is STRING_32 constant named `project_path_label_text'.
		do
			Result := project_path_label_text_cell.item
		end

	project_path_label_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_path_label_text'.
		once
			create Result.put ("Project path")
		end

	project_path_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `project_path_tooltip'.
		do
			Result := project_path_tooltip_cell.item
		end

	project_path_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_path_tooltip'.
		once
			create Result.put ("The path that the code will be generated. Can be relative to the project save file.")
		end

	padding_width: INTEGER
			-- `Result' is INTEGER constant named `padding_width'.
		do
			Result := padding_width_cell.item
		end

	padding_width_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `padding_width'.
		once
			create Result.put (5)
		end

	padding_height: INTEGER
			-- `Result' is INTEGER constant named `padding_height'.
		do
			Result := padding_height_cell.item
		end

	padding_height_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `padding_height'.
		once
			create Result.put (5)
		end

	target_name_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `target_name_tooltip'.
		do
			Result := target_name_tooltip_cell.item
		end

	target_name_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `target_name_tooltip'.
		once
			create Result.put ("The name of the project target")
		end

	target_name_label_text: STRING_32
			-- `Result' is STRING_32 constant named `target_name_label_text'.
		do
			Result := target_name_label_text_cell.item
		end

	target_name_label_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `target_name_label_text'.
		once
			create Result.put ("Target name")
		end

	cluster_name_label_text: STRING_32
			-- `Result' is STRING_32 constant named `cluster_name_label_text'.
		do
			Result := cluster_name_label_text_cell.item
		end

	cluster_name_label_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `cluster_name_label_text'.
		once
			create Result.put ("Cluster name")
		end

	cluster_name_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `cluster_name_tooltip'.
		do
			Result := cluster_name_tooltip_cell.item
		end

	cluster_name_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `cluster_name_tooltip'.
		once
			create Result.put ("The name of the main cluster")
		end

	root_class_label_text: STRING_32
			-- `Result' is STRING_32 constant named `root_class_label_text'.
		do
			Result := root_class_label_text_cell.item
		end

	root_class_label_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `root_class_label_text'.
		once
			create Result.put ("Root class")
		end

	root_class_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `root_class_tooltip'.
		do
			Result := root_class_tooltip_cell.item
		end

	root_class_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `root_class_tooltip'.
		once
			create Result.put ("The name of the Root class of your project. Note that it will net be the true root class, but the class that you mes consider as root. The true root class will be auto-generated each time the %"generate code%" button will be use.")
		end

	libraries_frame_text: STRING_32
			-- `Result' is STRING_32 constant named `libraries_frame_text'.
		do
			Result := libraries_frame_text_cell.item
		end

	libraries_frame_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `libraries_frame_text'.
		once
			create Result.put ("Libraries")
		end

	project_name_label_text: STRING_32
			-- `Result' is STRING_32 constant named `project_name_label_text'.
		do
			Result := project_name_label_text_cell.item
		end

	project_name_label_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_name_label_text'.
		once
			create Result.put ("Project name")
		end

	project_name_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `project_name_tooltip'.
		do
			Result := project_name_tooltip_cell.item
		end

	project_name_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_name_tooltip'.
		once
			create Result.put ("The name of the project (will be use to name the config file)")
		end

	core_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `core_library_check_button_text'.
		do
			Result := core_library_check_button_text_cell.item
		end

	core_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `core_library_check_button_text'.
		once
			create Result.put ("Core")
		end

	core_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `core_library_check_button_tooltip'.
		do
			Result := core_library_check_button_tooltip_cell.item
		end

	core_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `core_library_check_button_tooltip'.
		once
			create Result.put ("This library is used to manage the visual and the event system.")
		end

	effects_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `effects_library_check_button_tooltip'.
		do
			Result := effects_library_check_button_tooltip_cell.item
		end

	effects_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `effects_library_check_button_tooltip'.
		once
			create Result.put ("This library is use to make visual effect on surface image. Not very usefull if you use texture image (video memory) instead of surface image (ram).")
		end

	effects_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `effects_library_check_button_text'.
		do
			Result := effects_library_check_button_text_cell.item
		end

	effects_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `effects_library_check_button_text'.
		once
			create Result.put ("Surface effects")
		end

	image_file_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `image_file_library_check_button_text'.
		do
			Result := image_file_library_check_button_text_cell.item
		end

	image_file_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `image_file_library_check_button_text'.
		once
			create Result.put ("Image file")
		end

	image_file_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `image_file_library_check_button_tooltip'.
		do
			Result := image_file_library_check_button_tooltip_cell.item
		end

	image_file_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `image_file_library_check_button_tooltip'.
		once
			create Result.put ("The library is use to load image from file formats like PNG, JPEG, TIFF, etc. It is an easy way of managing image transparency.")
		end

	text_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `text_library_check_button_text'.
		do
			Result := text_library_check_button_text_cell.item
		end

	text_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `text_library_check_button_text'.
		once
			create Result.put ("Text")
		end

	text_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `text_library_check_button_tooltip'.
		do
			Result := text_library_check_button_tooltip_cell.item
		end

	text_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `text_library_check_button_tooltip'.
		once
			create Result.put ("This library is use to load true type font file (.ttf) and generate images from texts.")
		end

	audio_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `audio_library_check_button_text'.
		do
			Result := audio_library_check_button_text_cell.item
		end

	audio_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `audio_library_check_button_text'.
		once
			create Result.put ("Audio")
		end

	audio_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `audio_library_check_button_tooltip'.
		do
			Result := audio_library_check_button_tooltip_cell.item
		end

	audio_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `audio_library_check_button_tooltip'.
		once
			create Result.put ("This library manage the audio mixing functionnality.")
		end

	sound_file_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `sound_file_library_check_button_text'.
		do
			Result := sound_file_library_check_button_text_cell.item
		end

	sound_file_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `sound_file_library_check_button_text'.
		once
			create Result.put ("Sound File")
		end

	sound_file_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `sound_file_library_check_button_tooltip'.
		do
			Result := sound_file_library_check_button_tooltip_cell.item
		end

	sound_file_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `sound_file_library_check_button_tooltip'.
		once
			create Result.put ("This library make it possible to open and read multiple sound file format (ogg, flac, etc.) Note tha this librarie cannot open mp3 files.")
		end

	mpg_file_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `mpg_file_library_check_button_text'.
		do
			Result := mpg_file_library_check_button_text_cell.item
		end

	mpg_file_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `mpg_file_library_check_button_text'.
		once
			create Result.put ("MPG file")
		end

	mpg_file_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `mpg_file_library_check_button_tooltip'.
		do
			Result := mpg_file_library_check_button_tooltip_cell.item
		end

	mpg_file_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `mpg_file_library_check_button_tooltip'.
		once
			create Result.put ("With this library, you can open and read MPEG audio file format (mpg, mp2 and mp3).")
		end

	cpf_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `cpf_library_check_button_text'.
		do
			Result := cpf_library_check_button_text_cell.item
		end

	cpf_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `cpf_library_check_button_text'.
		once
			create Result.put ("Custom package file")
		end

	cpf_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `cpf_library_check_button_tooltip'.
		do
			Result := cpf_library_check_button_tooltip_cell.item
		end

	cpf_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `cpf_library_check_button_tooltip'.
		once
			create Result.put ("This library is use to encapsulate multiple ressources (images, audio, etc.) in a single file.")
		end

	shared_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `shared_library_check_button_text'.
		do
			Result := shared_library_check_button_text_cell.item
		end

	shared_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `shared_library_check_button_text'.
		once
			create Result.put ("Shared library")
		end

	shared_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `shared_library_check_button_tooltip'.
		do
			Result := shared_library_check_button_tooltip_cell.item
		end

	shared_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `shared_library_check_button_tooltip'.
		once
			create Result.put ("This library contain some classes used in multiple of other Eiffel Game2 libraries.")
		end

	opengl_library_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `opengl_library_check_button_text'.
		do
			Result := opengl_library_check_button_text_cell.item
		end

	opengl_library_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `opengl_library_check_button_text'.
		once
			create Result.put ("OpenGL low level wrapper (experimental)")
		end

	opengl_library_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `opengl_library_check_button_tooltip'.
		do
			Result := opengl_library_check_button_tooltip_cell.item
		end

	opengl_library_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `opengl_library_check_button_tooltip'.
		once
			create Result.put ("Create hardware accelerated 3D scene.")
		end

	file_save_as_menu_item_text: STRING_32
			-- `Result' is STRING_32 constant named `file_save_as_menu_item_text'.
		do
			Result := file_save_as_menu_item_text_cell.item
		end

	file_save_as_menu_item_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `file_save_as_menu_item_text'.
		once
			create Result.put ("Save Project &As...")
		end

	save_dialog_title: STRING_32
			-- `Result' is STRING_32 constant named `save_dialog_title'.
		do
			Result := save_dialog_title_cell.item
		end

	save_dialog_title_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `save_dialog_title'.
		once
			create Result.put ("Save as...")
		end

	project_path_text_field_default_text: STRING_32
			-- `Result' is STRING_32 constant named `project_path_text_field_default_text'.
		do
			Result := project_path_text_field_default_text_cell.item
		end

	project_path_text_field_default_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_path_text_field_default_text'.
		once
			create Result.put (".")
		end

	project_name_text_field_default_text: STRING_32
			-- `Result' is STRING_32 constant named `project_name_text_field_default_text'.
		do
			Result := project_name_text_field_default_text_cell.item
		end

	project_name_text_field_default_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_name_text_field_default_text'.
		once
			create Result.put ("game")
		end

	root_class_text_field_default_text: STRING_32
			-- `Result' is STRING_32 constant named `root_class_text_field_default_text'.
		do
			Result := root_class_text_field_default_text_cell.item
		end

	root_class_text_field_default_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `root_class_text_field_default_text'.
		once
			create Result.put ("APPLICATION")
		end

	core_library_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `core_library_check_button_default_selected'.
		do
			Result := core_library_check_button_default_selected_cell.item
		end

	core_library_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `core_library_check_button_default_selected'.
		once
			create Result.put (0)
		end

	image_file_library_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `image_file_library_check_button_default_selected'.
		do
			Result := image_file_library_check_button_default_selected_cell.item
		end

	image_file_library_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `image_file_library_check_button_default_selected'.
		once
			create Result.put (0)
		end

	text_library_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `text_library_check_button_default_selected'.
		do
			Result := text_library_check_button_default_selected_cell.item
		end

	text_library_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `text_library_check_button_default_selected'.
		once
			create Result.put (0)
		end

	effects_library_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `effects_library_check_button_default_selected'.
		do
			Result := effects_library_check_button_default_selected_cell.item
		end

	effects_library_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `effects_library_check_button_default_selected'.
		once
			create Result.put (0)
		end

	audio_library_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `audio_library_check_button_default_selected'.
		do
			Result := audio_library_check_button_default_selected_cell.item
		end

	audio_library_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `audio_library_check_button_default_selected'.
		once
			create Result.put (0)
		end

	sound_file_library_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `sound_file_library_check_button_default_selected'.
		do
			Result := sound_file_library_check_button_default_selected_cell.item
		end

	sound_file_library_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `sound_file_library_check_button_default_selected'.
		once
			create Result.put (0)
		end

	mpg_file_library_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `mpg_file_library_check_button_default_selected'.
		do
			Result := mpg_file_library_check_button_default_selected_cell.item
		end

	mpg_file_library_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `mpg_file_library_check_button_default_selected'.
		once
			create Result.put (0)
		end

	opengl_library_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `opengl_library_check_button_default_selected'.
		do
			Result := opengl_library_check_button_default_selected_cell.item
		end

	opengl_library_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `opengl_library_check_button_default_selected'.
		once
			create Result.put (0)
		end

	new_project_confirmation_text: STRING_32
			-- `Result' is STRING_32 constant named `new_project_confirmation_text'.
		do
			Result := new_project_confirmation_text_cell.item
		end

	new_project_confirmation_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `new_project_confirmation_text'.
		once
			create Result.put ("Are you sure? Every unsaved modification will be lost.")
		end

	regenerate_config_file_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `regenerate_config_file_check_button_default_selected'.
		do
			Result := regenerate_config_file_check_button_default_selected_cell.item
		end

	regenerate_config_file_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `regenerate_config_file_check_button_default_selected'.
		once
			create Result.put (1)
		end

	open_project_confirmation_text: STRING_32
			-- `Result' is STRING_32 constant named `open_project_confirmation_text'.
		do
			Result := open_project_confirmation_text_cell.item
		end

	open_project_confirmation_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `open_project_confirmation_text'.
		once
			create Result.put ("Are you sure? Every unsaved modification will be lost.")
		end

	quit_confirmation_text: STRING_32
			-- `Result' is STRING_32 constant named `quit_confirmation_text'.
		do
			Result := quit_confirmation_text_cell.item
		end

	quit_confirmation_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `quit_confirmation_text'.
		once
			create Result.put ("Are you sure? Every unsaved modification will be lost.")
		end

	open_dialog_title: STRING_32
			-- `Result' is STRING_32 constant named `open_dialog_title'.
		do
			Result := open_dialog_title_cell.item
		end

	open_dialog_title_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `open_dialog_title'.
		once
			create Result.put ("Open project...")
		end

	project_path_browse_dialog: STRING_32
			-- `Result' is STRING_32 constant named `project_path_browse_dialog'.
		do
			Result := project_path_browse_dialog_cell.item
		end

	project_path_browse_dialog_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `project_path_browse_dialog'.
		once
			create Result.put ("Project path...")
		end

	field_not_valid: STRING_32
			-- `Result' is STRING_32 constant named `field_not_valid'.
		do
			Result := field_not_valid_cell.item
		end

	field_not_valid_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `field_not_valid'.
		once
			create Result.put ("The field '{$field/}' is not valid.")
		end

	root_class_same_as_game2: STRING_32
			-- `Result' is STRING_32 constant named `root_class_same_as_game2'.
		do
			Result := root_class_same_as_game2_cell.item
		end

	root_class_same_as_game2_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `root_class_same_as_game2'.
		once
			create Result.put ("The root class '{$field/}' cannot be '{$name/}'.")
		end

	root_feature_label_text: STRING_32
			-- `Result' is STRING_32 constant named `root_feature_label_text'.
		do
			Result := root_feature_label_text_cell.item
		end

	root_feature_label_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `root_feature_label_text'.
		once
			create Result.put ("Root feature")
		end

	root_feature_label_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `root_feature_label_tooltip'.
		do
			Result := root_feature_label_tooltip_cell.item
		end

	root_feature_label_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `root_feature_label_tooltip'.
		once
			create Result.put ("The name of the root feature in the root class")
		end

	root_feature_text_field_default_text: STRING_32
			-- `Result' is STRING_32 constant named `root_feature_text_field_default_text'.
		do
			Result := root_feature_text_field_default_text_cell.item
		end

	root_feature_text_field_default_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `root_feature_text_field_default_text'.
		once
			create Result.put ("make")
		end

	multi_thread_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `multi_thread_check_button_text'.
		do
			Result := multi_thread_check_button_text_cell.item
		end

	multi_thread_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `multi_thread_check_button_text'.
		once
			create Result.put ("Multi-thread?")
		end

	multi_thread_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `multi_thread_check_button_tooltip'.
		do
			Result := multi_thread_check_button_tooltip_cell.item
		end

	multi_thread_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `multi_thread_check_button_tooltip'.
		once
			create Result.put ("This will add multithread functionnality to your project. You have to be extra-careful with this. You cannot manage video memory or input event using multi-thread.")
		end

	game2_root_class: STRING_32
			-- `Result' is STRING_32 constant named `game2_root_class'.
		do
			Result := game2_root_class_cell.item
		end

	game2_root_class_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `game2_root_class'.
		once
			create Result.put ("GAME2_APPLICATION")
		end

	game2_root_feature: STRING_32
			-- `Result' is STRING_32 constant named `game2_root_feature'.
		do
			Result := game2_root_feature_cell.item
		end

	game2_root_feature_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `game2_root_feature'.
		once
			create Result.put ("make")
		end

	code_indicator: STRING_32
			-- `Result' is STRING_32 constant named `code_indicator'.
		do
			Result := code_indicator_cell.item
		end

	code_indicator_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `code_indicator'.
		once
			create Result.put ("Your code here.")
		end

	feature_section: STRING_32
			-- `Result' is STRING_32 constant named `feature_section'.
		do
			Result := feature_section_cell.item
		end

	feature_section_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `feature_section'.
		once
			create Result.put ("Initialization")
		end

	root_class_feature_documentation: STRING_32
			-- `Result' is STRING_32 constant named `root_class_feature_documentation'.
		do
			Result := root_class_feature_documentation_cell.item
		end

	root_class_feature_documentation_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `root_class_feature_documentation'.
		once
			create Result.put ("Running the game.")
		end

	game2_root_class_feature_documentation: STRING_32
			-- `Result' is STRING_32 constant named `game2_root_class_feature_documentation'.
		do
			Result := game2_root_class_feature_documentation_cell.item
		end

	game2_root_class_feature_documentation_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `game2_root_class_feature_documentation'.
		once
			create Result.put ("Initialize the libraries and run the game.")
		end

	root_class_game_documentation: STRING_32
			-- `Result' is STRING_32 constant named `root_class_game_documentation'.
		do
			Result := root_class_game_documentation_cell.item
		end

	root_class_game_documentation_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `root_class_game_documentation'.
		once
			create Result.put ("A game created in Eiffel.")
		end

	game2_root_class_game_documentation: STRING_32
			-- `Result' is STRING_32 constant named `game2_root_class_game_documentation'.
		do
			Result := game2_root_class_game_documentation_cell.item
		end

	game2_root_class_game_documentation_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `game2_root_class_game_documentation'.
		once
			create Result.put ("Internal Root class of the game.")
		end

	game2_root_class_no_modification: STRING_32
			-- `Result' is STRING_32 constant named `game2_root_class_no_modification'.
		do
			Result := game2_root_class_no_modification_cell.item
		end

	game2_root_class_no_modification_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `game2_root_class_no_modification'.
		once
			create Result.put ("The content of this file is auto-generated and must not be modified. Every modification will be lost when regenerated.")
		end

	generate_confirmation: STRING_32
			-- `Result' is STRING_32 constant named `generate_confirmation'.
		do
			Result := generate_confirmation_cell.item
		end

	generate_confirmation_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `generate_confirmation'.
		once
			create Result.put ("The project files has been created.")
		end

	generate_confirmation_with_override: STRING_32
			-- `Result' is STRING_32 constant named `generate_confirmation_with_override'.
		do
			Result := generate_confirmation_with_override_cell.item
		end

	generate_confirmation_with_override_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `generate_confirmation_with_override'.
		once
			create Result.put ("The project files has been created and old files has been renamed with .old extension.")
		end

	void_safe_check_button_text: STRING_32
			-- `Result' is STRING_32 constant named `void_safe_check_button_text'.
		do
			Result := void_safe_check_button_text_cell.item
		end

	void_safe_check_button_text_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `void_safe_check_button_text'.
		once
			create Result.put ("Void-Safe?")
		end

	void_safe_check_button_tooltip: STRING_32
			-- `Result' is STRING_32 constant named `void_safe_check_button_tooltip'.
		do
			Result := void_safe_check_button_tooltip_cell.item
		end

	void_safe_check_button_tooltip_cell: CELL [STRING_32]
			--`Result' is once access to a cell holding vale of `void_safe_check_button_tooltip'.
		once
			create Result.put ("Is void-safe enabled for this project?")
		end

	void_safe_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `void_safe_check_button_default_selected'.
		do
			Result := void_safe_check_button_default_selected_cell.item
		end

	void_safe_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `void_safe_check_button_default_selected'.
		once
			create Result.put (1)
		end

	multi_thread_check_button_default_selected: INTEGER
			-- `Result' is INTEGER constant named `multi_thread_check_button_default_selected'.
		do
			Result := multi_thread_check_button_default_selected_cell.item
		end

	multi_thread_check_button_default_selected_cell: CELL [INTEGER]
			--`Result' is once access to a cell holding vale of `multi_thread_check_button_default_selected'.
		once
			create Result.put (0)
		end

feature -- Access

--| FIXME `constant_by_name' and `has_constant' `constants_initialized' are only required until the complete change to
--| constants is complete. They are required for the pixmaps at the moment.

	constants_initialized: BOOLEAN
			-- Have constants been initialized from file?
		do
			Result := initialized_cell.item
		end

	string_constant_by_name (a_name: STRING): STRING
			-- `Result' is STRING 
		require
			initialized: constants_initialized
			name_valid: a_name /= Void and not a_name.is_empty
			has_constant (a_name)
		do
			check attached all_constants.item (a_name) as l_string then
				Result := l_string.twin
			end
		ensure
			Result_not_void: Result /= Void
		end
		
	integer_constant_by_name (a_name: STRING): INTEGER
			-- `Result' is STRING 
		require
			initialized: constants_initialized
			name_valid: a_name /= Void and not a_name.is_empty
			has_constant (a_name)
		do
			check attached all_constants.item (a_name) as l_string then
				check
					is_integer: l_string.is_integer
				end
				Result := l_string.to_integer
			end
		end
		
	has_constant (a_name: STRING): BOOLEAN
			-- Does constant `a_name' exist?
		require
			initialized: constants_initialized
			name_valid: a_name /= Void and not a_name.is_empty
		do
			all_constants.search (a_name)
			Result := all_constants.found
		end

feature {NONE} -- Implementation

	initialized_cell: CELL [BOOLEAN]
			-- A cell to hold whether the constants have been loaded.
		once
			create Result.put (False)
		end
		
	all_constants: HASH_TABLE [STRING, STRING]
			-- All constants loaded from constants file.
		once
			create Result.make (4)
		end
		
	file_name: STRING
			-- File name from which constants must be loaded.
		do
			Result := file_name_cell.item
		end
		
	file_name_cell: CELL [STRING]
		once
			create Result.put ("constants.txt")
		end
		
	set_file_name (a_file_name: STRING)
			-- Assign `a_file_name' to `file_name'.
		do
			file_name_cell.put (a_file_name)
		end
		
	String_constant: STRING = "STRING"
	
	Integer_constant: STRING = "INTEGER"
		
	parse_file_contents (content: STRING)
			-- Parse contents of `content' into `all_constants'.
		local
			line_contents: STRING
			is_string: BOOLEAN
			is_integer: BOOLEAN
			start_quote1, end_quote1, start_quote2, end_quote2: INTEGER
			name, value: STRING
		do
			from
			until
				content.is_equal ("")
			loop
				line_contents := first_line (content)
				if line_contents.count /= 1 then
					is_string := line_contents.substring_index (String_constant, 1) /= 0
					is_integer := line_contents.substring_index (Integer_constant, 1) /= 0
					if is_string or is_integer then
						start_quote1 := line_contents.index_of ('"', 1)
						end_quote1 := line_contents.index_of ('"', start_quote1 + 1)
						start_quote2 := line_contents.index_of ('"', end_quote1 + 1)
						end_quote2 := line_contents.index_of ('"', start_quote2 + 1)
						name := line_contents.substring (start_quote1 + 1, end_quote1 - 1)
						value := line_contents.substring (start_quote2 + 1, end_quote2 - 1)
						all_constants.force (value, name)
					end
				end
			end
		end
		
	first_line (content: STRING): STRING
			-- `Result' is first line of `Content',
			-- which will be stripped from `content'.
		require
			content_not_void: content /= Void
			content_not_empty: not content.is_empty
		local
			new_line_index: INTEGER		
		do
			new_line_index := content.index_of ('%N', 1)
			if new_line_index /= 0 then
				Result := content.substring (1, new_line_index)
				content.keep_tail (content.count - new_line_index)
			else
				Result := content.twin
				content.keep_head (0)
			end
		ensure
			Result_not_void: Result /= Void
			no_characters_lost: old content.count = Result.count + content.count
		end

	set_with_named_path (a_pixmap: EV_PIXMAP; a_file_name: PATH)
			-- Set image of `a_pixmap' from file, `a_file_name'.
			-- If `a_file_name' does not exist, do nothing.
		require
			a_pixmap_not_void: a_pixmap /= Void
			a_file_name /= Void
		local
			l_file: RAW_FILE
		do
			create l_file.make_with_path (a_file_name)
			if l_file.exists then
				a_pixmap.set_with_named_path (a_file_name)
			end
		end

invariant
	all_constants_not_void: all_constants /= Void

end
