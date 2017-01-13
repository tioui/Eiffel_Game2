note
	description: "The window that manage the project field edition."
	generator: "EiffelBuild"
	date: "Sat, 07 Jan 2017 22:18:47 +0000"
	revision: "1.0"

class
	EDIT_PROJECT_WINDOW

inherit
	EDIT_PROJECT_WINDOW_IMP


feature {NONE} -- Initialization

	user_create_interface_objects
			-- Create any auxilliary objects needed for EDIT_PROJECT_WINDOW.
			-- Initialization for these objects must be performed in `user_initialization'.
		do
			create uuid_generator
		end

	user_initialization
			-- Perform any initialization on objects created by `user_create_interface_objects'
			-- and from within current class itself.
		local
			l_pixmap:EV_PIXMAP
		do
			close_request_actions.wipe_out
			close_request_actions.extend (agent quit)
			create l_pixmap.make_with_pixel_buffer (create {NEW_PIXEL_BUFFER}.make)
			file_new_menu_item.set_pixmap (l_pixmap)
			new_tool_bar_button.set_pixmap (l_pixmap)
			create l_pixmap.make_with_pixel_buffer (create {SAVE_PIXEL_BUFFER}.make)
			file_save_menu_item.set_pixmap (l_pixmap)
			save_tool_bar_button.set_pixmap (l_pixmap)
			create l_pixmap.make_with_pixel_buffer (create {SAVE_AS_PIXEL_BUFFER}.make)
			file_save_as_menu_item.set_pixmap (l_pixmap)
			create l_pixmap.make_with_pixel_buffer (create {OPEN_PIXEL_BUFFER}.make)
			file_open_menu_item.set_pixmap (l_pixmap)
			open_tool_bar_button.set_pixmap (l_pixmap)
			create l_pixmap.make_with_pixel_buffer (create {EXIT_PIXEL_BUFFER}.make)
			file_quit_menu_item.set_pixmap (l_pixmap)
			create l_pixmap.make_with_pixel_buffer (create {GENERATE_PIXEL_BUFFER}.make)
			project_generate_menu_item.set_pixmap (l_pixmap)
			generate_code_tool_bar_button.set_pixmap (l_pixmap)
			generate_code_button.set_pixmap (l_pixmap)
			set_default_values
			has_change := False
			project_path_label.set_text (project_path_label.text + " : ")
			project_name_label.set_text (project_name_label.text + " : ")
			target_name_label.set_text (target_name_label.text + " : ")
			cluster_name_label.set_text (cluster_name_label.text + " : ")
			root_class_label.set_text (root_class_label.text + " : ")
			root_feature_label.set_text (root_feature_label.text + " : ")
		end

feature {NONE} -- Actions


	file_new_menu_item_select_actions
			-- Called by `select_actions' of `file_new_menu_item'.
		do
			new_project
		end


	file_open_menu_item_select_action
			-- Called by `select_actions' of `file_open_menu_item'.
		do
			open_project
		end


	file_recent_menu_item_select_actions (an_item: EV_MENU_ITEM)
			-- Called by `item_select_actions' of `file_recent_menu'.
		do
		end


	file_save_menu_item_select_actions
			-- Called by `select_actions' of `file_save_menu_item'.
		do
			save_project
		end

	file_save_as_menu_item_select_actions
			-- Called by `select_actions' of `file_save_as_menu_item'.
		do
			save_project_as
		end


	file_quit_menu_item_select_actions
			-- Called by `select_actions' of `file_quit_menu_item'.
		do
			quit
		end


	project_generate_menu_item_select_actions
			-- Called by `select_actions' of `project_generate_menu_item'.
		do
			generate_project
		end


	help_about_menu_item_select_actions
			-- Called by `select_actions' of `help_about_menu_item'.
		do
		end


	new_tool_bar_button_select_actions
			-- Called by `select_actions' of `new_tool_bar_button'.
		do
			new_project
		end


	open_tool_bar_button_select_actions
			-- Called by `select_actions' of `open_tool_bar_button'.
		do
			open_project
		end


	save_tool_bar_button_select_actions
			-- Called by `select_actions' of `save_tool_bar_button'.
		do
			save_project
		end


	generate_code_tool_bar_button_select_actions
			-- Called by `select_actions' of `generate_code_tool_bar_button'.
		do
			generate_project
		end


	regenerate_config_file_check_button_select_actions
			-- Called by `select_actions' of `regenerate_config_file_check_button'.
		do
		end


	project_path_text_field_change_actions
			-- Called by `change_actions' of `project_path_text_field'.
		do
			manage_disable_regenerate_ecf
			has_change := True
		end

	project_path_browse_dialog_button_select_actions
			-- Called by `select_actions' of `project_path_browse_dialog_button'.
		local
			l_dialog:EV_DIRECTORY_DIALOG
		do
			create l_dialog.make_with_title (project_path_browse_dialog)
			l_dialog.ok_actions.extend (agent project_path_browse_action(l_dialog))
			l_dialog.show_modal_to_window (Current)
		end

	project_name_text_field_focus_in_actions
			-- Called by `focus_in_actions' of `project_name_text_field'.
		do
			if project_name_text_field.text.is_equal (target_name_text_field.text) then
				change_target_on_project_name_edit := True
			else
				change_target_on_project_name_edit := False
			end
			if project_name_text_field.text.is_equal (cluster_name_text_field.text) then
				change_cluster_on_project_name_edit := True
			else
				change_cluster_on_project_name_edit := False
			end
		end


	project_name_text_field_change_actions
			-- Called by `change_actions' of `project_name_text_field'.
		do
			manage_disable_regenerate_ecf
			has_change := True
			if change_target_on_project_name_edit then
				target_name_text_field.set_text (project_name_text_field.text)
			end
			if change_cluster_on_project_name_edit then
				cluster_name_text_field.set_text (project_name_text_field.text)
			end
		end

	target_name_text_field_focus_in_actions
			-- Called by `focus_in_actions' of `target_name_text_field'.
		do
			if target_name_text_field.text.is_equal (cluster_name_text_field.text) then
				change_cluster_on_target_name_edit := True
			else
				change_cluster_on_target_name_edit := False
			end
		end

	target_name_text_field_change_actions
			-- Called by `change_actions' of `target_name_text_field'.
		do
			has_change := True
			if change_cluster_on_target_name_edit then
				cluster_name_text_field.set_text (target_name_text_field.text)
			end
		end

	root_class_text_field_change_actions
			-- Called by `change_actions' of `root_class_text_field'.
		do
			has_change := True
		end

	root_feature_text_field_change_actions
			-- Called by `change_actions' of `root_feature_text_field'.
		do
			has_change := True
		end

	multi_thread_check_button_select_actions
			-- Called by `select_actions' of `multi_thread_check_button'.
		do
			has_change := True
		end

	void_safe_check_button_select_actions
			-- Called by `select_actions' of `void_safe_check_button'.
		do
			has_change := True
		end

	core_library_check_button_select_action
			-- Called by `select_actions' of `core_library_check_button'.
		do
			has_change := True
		end


	image_file_library_check_button_select_actions
			-- Called by `select_actions' of `image_file_library_check_button'.
		do
			has_change := True
		end


	text_library_check_button_select_actions
			-- Called by `select_actions' of `text_library_check_button'.
		do
			has_change := True
		end


	effects_library_check_button_select_actions
			-- Called by `select_actions' of `effects_library_check_button'.
		do
			has_change := True
		end


	audio_library_check_button_select_actions
			-- Called by `select_actions' of `audio_library_check_button'.
		do
			has_change := True
		end


	sound_file_library_check_button_select_actions
			-- Called by `select_actions' of `sound_file_library_check_button'.
		do
			has_change := True
		end


	mpg_file_library_check_button_select_actions
			-- Called by `select_actions' of `mpg_file_library_check_button'.
		do
			has_change := True
		end


	opengl_library_check_button_select_actions
			-- Called by `select_actions' of `opengl_library_check_button'.
		do
			has_change := True
		end


	generate_code_button_select_actions
			-- Called by `select_actions' of `generate_code_button'.
		do
			generate_project
		end

feature {NONE} -- Implementation

	set_default_values
			-- Put every default values in `Current's fields
		do
			project_path_text_field.set_text (project_path_text_field_default_text)
			project_name_text_field.set_text (project_name_text_field_default_text)
			target_name_text_field.set_text (project_name_text_field_default_text)
			cluster_name_text_field.set_text (project_name_text_field_default_text)
			root_class_text_field.set_text (root_class_text_field_default_text)
			root_feature_text_field.set_text (root_feature_text_field_default_text)
			select_if_1 (core_library_check_button, core_library_check_button_default_selected)
			select_if_1 (image_file_library_check_button, image_file_library_check_button_default_selected)
			select_if_1 (text_library_check_button, text_library_check_button_default_selected)
			select_if_1 (effects_library_check_button, effects_library_check_button_default_selected)
			select_if_1 (audio_library_check_button, audio_library_check_button_default_selected)
			select_if_1 (sound_file_library_check_button, sound_file_library_check_button_default_selected)
			select_if_1 (mpg_file_library_check_button, mpg_file_library_check_button_default_selected)
			select_if_1 (regenerate_config_file_check_button, regenerate_config_file_check_button_default_selected)
			select_if_1 (regenerate_config_file_check_button, regenerate_config_file_check_button_default_selected)
			select_if_1 (multi_thread_check_button, multi_thread_check_button_default_selected)
			select_if_1 (void_safe_check_button, void_safe_check_button_default_selected)
			manage_disable_regenerate_ecf
		ensure
			Is_Default_Values: is_default_values
		end

	select_if_1(a_selectable:EV_DESELECTABLE; a_value:INTEGER)
			-- unselect `a_selectable' if `a_value' is `0'. Select it otherwise
		do
			if a_value = 0 then
				a_selectable.disable_select
			else
				a_selectable.enable_select
			end
		ensure
			Is_Valid: is_select_if_1(a_selectable, a_value)
		end

	is_default_values:BOOLEAN
			-- True if every fields contain the default values
		do
			Result := project_path_text_field.text.is_equal (project_path_text_field_default_text)
			Result := Result and project_name_text_field.text.is_equal (project_name_text_field_default_text)
			Result := Result and target_name_text_field.text.is_equal (project_name_text_field_default_text)
			Result := Result and cluster_name_text_field.text.is_equal (project_name_text_field_default_text)
			Result := Result and root_class_text_field.text.is_equal (root_class_text_field_default_text)
			Result := Result and root_feature_text_field.text.is_equal (root_feature_text_field_default_text)
			Result := Result and is_select_if_1 (core_library_check_button, core_library_check_button_default_selected)
			Result := Result and is_select_if_1 (image_file_library_check_button, image_file_library_check_button_default_selected)
			Result := Result and is_select_if_1 (text_library_check_button, text_library_check_button_default_selected)
			Result := Result and is_select_if_1 (effects_library_check_button, effects_library_check_button_default_selected)
			Result := Result and is_select_if_1 (audio_library_check_button, audio_library_check_button_default_selected)
			Result := Result and is_select_if_1 (sound_file_library_check_button, sound_file_library_check_button_default_selected)
			Result := Result and is_select_if_1 (mpg_file_library_check_button, mpg_file_library_check_button_default_selected)
			Result := Result and is_select_if_1 (regenerate_config_file_check_button, regenerate_config_file_check_button_default_selected)
			Result := Result and is_select_if_1 (multi_thread_check_button, multi_thread_check_button_default_selected)
			Result := Result and is_select_if_1 (void_safe_check_button, void_safe_check_button_default_selected)
		end

	is_select_if_1(a_selectable:EV_DESELECTABLE; a_value:INTEGER):BOOLEAN
			-- True if `a_selectable' is selected when `a_value' is not `0'
		do
			Result :=
						((a_value /= 0) implies a_selectable.is_selected)
					and
						((a_value = 0) implies not a_selectable.is_selected)
		end

	new_project
			-- Create a new project in `Current'
		local
			l_dialog:EV_CONFIRMATION_DIALOG
		do
			if not has_change then
				new_project_action
			else
				create l_dialog.make_with_text_and_actions (
												new_project_confirmation_text,
												<<agent new_project_action>>
											)
				l_dialog.show_modal_to_window (Current)
			end
		end

	new_project_action
			-- Call by `new_project' to create a new project in `Current'
		do
			set_default_values
			project_configuration_preferences := Void
			project_path_text_field.set_focus
			has_change := False
		end


	save_project
			-- Save the project open in `Current'
		do
			if attached project_configuration_preferences as la_preferences then
				save_project_file
			else
				save_project_as
			end
		end

	save_project_as
			-- Save the project open in `Current'
		local
			l_dialog:EV_FILE_SAVE_DIALOG
		do
			create l_dialog.make_with_title (save_dialog_title)
			if attached project_configuration_preferences as la_preferences then
				l_dialog.set_start_path (create {PATH}.make_from_string (la_preferences.location))
			end
			l_dialog.save_actions.extend (agent save_project_as_action(l_dialog))
			l_dialog.show_modal_to_window (Current)
		end

	save_project_as_action(a_dialog:EV_FILE_SAVE_DIALOG)
			-- Call by `save_project_as' to save a project in the file pointed by `a_dialog'
		local
			l_location:READABLE_STRING_32
			l_preference:PREFERENCES
		do
			l_location := a_dialog.file_name
			if not l_location.is_empty then
				create l_preference.make_with_location (l_location)
				project_configuration_preferences := l_preference
				save_project_file
			end
		end

	save_project_file
			-- Save the `project_configuration_preferences' to file
		require
			Project_Configuration_Preferences_Exists: attached project_configuration_preferences
		do
			if attached project_configuration_preferences as la_preferences then
				save_project_file_project_config(la_preferences)
				save_project_file_libraries(la_preferences)
				la_preferences.save_preferences
				has_change := False
				manage_disable_regenerate_ecf
			end
		end

	save_project_file_project_config(a_preferences:PREFERENCES)
			-- Save every configuration of the generated project (to generate the ecf file) in `a_manager'
		local
			l_manager:PREFERENCE_MANAGER
			l_factory:BASIC_PREFERENCE_FACTORY
			l_string_preference:STRING_32_PREFERENCE
			l_boolean_preference:BOOLEAN_PREFERENCE
		do
			if attached a_preferences.manager ("project_configuration") as la_manager then
				l_manager := la_manager
			else
				l_manager := a_preferences.new_manager ("project_configuration")
			end
			create l_factory
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "regenerate_ecf", True)
			l_boolean_preference.set_value (regenerate_config_file_check_button.is_selected)
			a_preferences.set_preference ("regenerate_ecf", l_boolean_preference)
			l_string_preference := l_factory.new_string_32_preference_value (l_manager, "project_path", ".")
			l_string_preference.set_value (project_path_text_field.text)
			a_preferences.set_preference ("project_path", l_string_preference)
			l_string_preference := l_factory.new_string_32_preference_value (l_manager, "project_name", "game")
			l_string_preference.set_value (project_name_text_field.text)
			a_preferences.set_preference ("project_name", l_string_preference)
			l_string_preference := l_factory.new_string_32_preference_value (l_manager, "target_name", "game")
			l_string_preference.set_value (target_name_text_field.text)
			a_preferences.set_preference ("target_name", l_string_preference)
			l_string_preference := l_factory.new_string_32_preference_value (l_manager, "cluster_name", "game")
			l_string_preference.set_value (cluster_name_text_field.text)
			a_preferences.set_preference ("cluster_name", l_string_preference)
			l_string_preference := l_factory.new_string_32_preference_value (l_manager, "root_class", "APPLICATION")
			l_string_preference.set_value (root_class_text_field.text)
			a_preferences.set_preference ("root_class", l_string_preference)
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "multi_thread", False)
			l_boolean_preference.set_value (multi_thread_check_button.is_selected)
			a_preferences.set_preference ("multi_thread", l_boolean_preference)
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "void_safe", False)
			l_boolean_preference.set_value (void_safe_check_button.is_selected)
			a_preferences.set_preference ("void_safe", l_boolean_preference)
		end

	save_project_file_libraries(a_preferences:PREFERENCES)
			-- Save every library to include in the generated project in `a_manager'
		local
			l_manager:PREFERENCE_MANAGER
			l_factory:BASIC_PREFERENCE_FACTORY
			l_boolean_preference:BOOLEAN_PREFERENCE
		do
			if attached a_preferences.manager ("project_libraries") as la_manager then
				l_manager := la_manager
			else
				l_manager := a_preferences.new_manager ("project_libraries")
			end
			create l_factory
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "core_library", True)
			l_boolean_preference.set_value (core_library_check_button.is_selected)
			a_preferences.set_preference ("core_library", l_boolean_preference)
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "image_file_library", True)
			l_boolean_preference.set_value (image_file_library_check_button.is_selected)
			a_preferences.set_preference ("image_file_library", l_boolean_preference)
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "text_library", True)
			l_boolean_preference.set_value (text_library_check_button.is_selected)
			a_preferences.set_preference ("text_library", l_boolean_preference)
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "effects_library", True)
			l_boolean_preference.set_value (effects_library_check_button.is_selected)
			a_preferences.set_preference ("effects_library", l_boolean_preference)
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "audio_library", True)
			l_boolean_preference.set_value (audio_library_check_button.is_selected)
			a_preferences.set_preference ("audio_library", l_boolean_preference)
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "sound_file_library", True)
			l_boolean_preference.set_value (sound_file_library_check_button.is_selected)
			a_preferences.set_preference ("sound_file_library", l_boolean_preference)
			l_boolean_preference := l_factory.new_boolean_preference_value (l_manager, "mpg_file_library", True)
			l_boolean_preference.set_value (mpg_file_library_check_button.is_selected)
			a_preferences.set_preference ("mpg_file_library", l_boolean_preference)
		end

	open_project
			-- Open an existing project in `Current'
		local
			l_confirm_dialog:EV_CONFIRMATION_DIALOG
		do
			if not has_change then
				open_project_action
			else
				create l_confirm_dialog.make_with_text_and_actions (
												open_project_confirmation_text,
												<<agent open_project_action>>
											)
				l_confirm_dialog.show_modal_to_window (Current)
			end
		end

	open_project_action
			-- Call by `open_project' to open an existing project in `Current'
		local
			l_open_dialog:EV_FILE_OPEN_DIALOG
		do
			create l_open_dialog.make_with_title (open_dialog_title)
			l_open_dialog.open_actions.extend (agent load_preferences(l_open_dialog))
			l_open_dialog.show_modal_to_window (Current)
		end

	load_preferences(a_open_dialog:EV_FILE_OPEN_DIALOG)
			-- Load the `project_configuration_preferences' from the file pointed by `a_open_dialog'
		local
			l_preferences:PREFERENCES
		do
			if not a_open_dialog.file_name.is_empty then
				create l_preferences.make_with_location (a_open_dialog.file_name)
				load_project_preferences(l_preferences)
				load_library_preferences (l_preferences)
				project_configuration_preferences := l_preferences
				has_change := False
				manage_disable_regenerate_ecf
			end
		end

	load_project_preferences(a_preferences:PREFERENCES)
			-- Load into `Current' the project field values store in `a_preferences'
		local
            l_manager:PREFERENCE_MANAGER
		do
			if attached a_preferences.manager ("project_configuration") as la_manager then
				l_manager := la_manager
			else
				l_manager := a_preferences.new_manager ("project_configuration")
			end
			load_selected_preference(l_manager, "regenerate_ecf", regenerate_config_file_check_button,
											regenerate_config_file_check_button_default_selected /= 0)
			load_text_preference (l_manager, "project_path", project_path_text_field, project_path_text_field_default_text)
			load_text_preference (l_manager, "project_name", project_name_text_field, project_name_text_field_default_text)
			load_text_preference (l_manager, "target_name", target_name_text_field, project_name_text_field_default_text)
			load_text_preference (l_manager, "cluster_name", cluster_name_text_field, project_name_text_field_default_text)
			load_text_preference (l_manager, "root_class", root_class_text_field, root_class_text_field_default_text)
			load_selected_preference(l_manager, "multi_thread", multi_thread_check_button,
											multi_thread_check_button_default_selected /= 0)
			load_selected_preference(l_manager, "void_safe", void_safe_check_button,
											void_safe_check_button_default_selected /= 0)

		end

	load_library_preferences(a_preferences:PREFERENCES)
			-- Load into `Current' the library values store in `a_preferences'
		local
            l_manager:PREFERENCE_MANAGER
		do
			if attached a_preferences.manager ("project_libraries") as la_manager then
				l_manager := la_manager
			else
				l_manager := a_preferences.new_manager ("project_libraries")
			end
			load_selected_preference(l_manager, "core_library", core_library_check_button,
											core_library_check_button_default_selected /= 0)
			load_selected_preference(l_manager, "image_file_library", image_file_library_check_button,
											image_file_library_check_button_default_selected /= 0)
			load_selected_preference(l_manager, "text_library", text_library_check_button,
											text_library_check_button_default_selected /= 0)
			load_selected_preference(l_manager, "effects_library", effects_library_check_button,
											effects_library_check_button_default_selected /= 0)
			load_selected_preference(l_manager, "audio_library", audio_library_check_button,
											audio_library_check_button_default_selected /= 0)
			load_selected_preference(l_manager, "sound_file_library", sound_file_library_check_button,
											sound_file_library_check_button_default_selected /= 0)
			load_selected_preference(l_manager, "mpg_file_library", mpg_file_library_check_button,
											mpg_file_library_check_button_default_selected /= 0)
		end

	load_text_preference(a_manager:PREFERENCE_MANAGER; a_preference_name:STRING_8; a_textable:EV_TEXTABLE; a_default_value:STRING_32)
			-- Load from `a_preferences' the {STRING_32_PREFERENCE} named `a_preference_name' into `a_textable'
		local
			l_factory:BASIC_PREFERENCE_FACTORY
		do
			create l_factory
			a_textable.set_text (l_factory.new_string_32_preference_value (a_manager, a_preference_name, a_default_value).value)
		end

	load_selected_preference(a_manager:PREFERENCE_MANAGER; a_preference_name:STRING_8; a_selectable:EV_DESELECTABLE; a_default_value:BOOLEAN)
			-- Load from `a_preferences' the {BOOLEAN_PREFERENCE} named `a_preference_name' into `a_selectable'
		local
			l_factory:BASIC_PREFERENCE_FACTORY
		do
			create l_factory
			if l_factory.new_boolean_preference_value (a_manager, a_preference_name, a_default_value).value then
				a_selectable.enable_select
			else
				a_selectable.disable_select
			end
		end

	quit
			-- When the user ask to quit
		local
			l_dialog:EV_CONFIRMATION_DIALOG
		do
			if has_change then
				create l_dialog.make_with_text_and_actions (
												quit_confirmation_text,
												<<agent destroy_and_exit_if_last>>
											)
				l_dialog.show_modal_to_window (Current)
			else
				destroy_and_exit_if_last
			end
		end

	project_path_browse_action(a_dialog:EV_DIRECTORY_DIALOG)
		do
			if not a_dialog.directory.is_empty then
				project_path_text_field.set_text (a_dialog.directory)
				has_change := True
				manage_disable_regenerate_ecf
			end
		end

	manage_disable_regenerate_ecf
			-- Look if it is important to disable the `regenerate_config_file_check_button'
		do

			if ecf_file_exist then
				regenerate_config_file_check_button.enable_sensitive
			else
				regenerate_config_file_check_button.disable_sensitive
			end
		end

	project_directory_path:PATH
			-- The path of the project directory
		local
			l_path:PATH
		do
			create l_path.make_from_string (project_path_text_field.text)
			if l_path.is_relative then
				if attached project_configuration_preferences as la_preferences then
					l_path := (create {PATH}.make_from_string (la_preferences.location)).parent.extended_path(l_path)
				end
			end
			Result := l_path.canonical_path
		end

	ecf_file_path:PATH
			-- The path of the not void safe generated ecf file
		do
			Result := project_directory_path.extended (project_name_text_field.text + ".ecf")
		end

	ecf_file_exist:BOOLEAN
			-- The file pointed by `ecf_file_path' already exist
		local
			l_file:RAW_FILE
		do
			create l_file.make_with_path (ecf_file_path)
			Result := l_file.exists
		end

	root_class_file_path:PATH
			-- The path of the generated root class file
		do
			Result := project_directory_path.extended (root_class_text_field.text.as_lower + ".e")
		end

	game2_root_class_file_path:PATH
			-- The path of the generated root class file
		do
			Result := project_directory_path.extended (game2_root_class.as_lower + ".e")
		end

	root_class_file_exist:BOOLEAN
			-- The file pointed by `root_class_file_path' already exist
		local
			l_file:RAW_FILE
		do
			create l_file.make_with_path (root_class_file_path)
			Result := l_file.exists
		end

	game2_root_class_file_exist:BOOLEAN
			-- The file pointed by `game2_root_class_file_path' already exist
		local
			l_file:RAW_FILE
		do
			create l_file.make_with_path (game2_root_class_file_path)
			Result := l_file.exists
		end


	generate_project
			-- Generate the code of the project in `Current'
		local
			l_ecf_generator:ECF_GENERATOR
			l_root_source_generator:ROOT_SOURCE_GENERATOR
			l_game2_root_source_generator:GAME2_ROOT_SOURCE_GENERATOR
			l_uuid:READABLE_STRING_GENERAL
			l_has_override:BOOLEAN
		do
			validate_project
			if is_project_valid then
				l_has_override := False
				l_uuid := uuid_generator.generate_uuid.out
				if not ecf_file_exist or regenerate_config_file_check_button.is_selected then
					if ecf_file_exist then
						rename_to_old(ecf_file_path.name)
						l_has_override := True
					end
					if void_safe_check_button.is_selected then
						create {ECF_SAFE_GENERATOR}l_ecf_generator.make (ecf_file_path.name, project_name_text_field.text, l_uuid)
					else
						create l_ecf_generator.make (ecf_file_path.name, project_name_text_field.text, l_uuid)
					end
					generate_ecf_file(l_ecf_generator)
				end
				if not root_class_file_exist then
					create l_root_source_generator.make (root_class_file_path.name)
					generate_root_source_file(l_root_source_generator)
					l_root_source_generator.generate_file
				end
				if game2_root_class_file_exist then
					rename_to_old(game2_root_class_file_path.name)
					l_has_override := True
				end
				create l_game2_root_source_generator.make (game2_root_class_file_path.name)
				generate_root_source_file(l_game2_root_source_generator)
				generate_game2_root_source_file(l_game2_root_source_generator)
				if l_has_override then
					show_message(generate_confirmation_with_override)
				else
					show_message(generate_confirmation)
				end
			end
		end

	rename_to_old(a_filename:READABLE_STRING_GENERAL)
			-- Rename a file with the same name, but with the extension .old
		local
			l_file:RAW_FILE
		do
			create l_file.make_with_name (a_filename)
			if l_file.exists then
				l_file.rename_file (a_filename + ".old")
			end
		end

	generate_ecf_file(a_ecf_generator:ECF_GENERATOR)
			-- Generate the ecf (project configuration) files from the fields in `Current'
		do
			a_ecf_generator.set_target (target_name_text_field.text)
			a_ecf_generator.set_cluster (cluster_name_text_field.text)
			a_ecf_generator.set_root_class (game2_root_class)
			a_ecf_generator.set_root_feature (game2_root_feature)
			a_ecf_generator.is_multithread := multi_thread_check_button.is_selected
			a_ecf_generator.has_core_library := core_library_check_button.is_selected
			a_ecf_generator.has_image_file_library := image_file_library_check_button.is_selected
			a_ecf_generator.has_text_library := text_library_check_button.is_selected
			a_ecf_generator.has_effects_library := effects_library_check_button.is_selected
			a_ecf_generator.has_audio_library := audio_library_check_button.is_selected
			a_ecf_generator.has_sound_file_library := sound_file_library_check_button.is_selected
			a_ecf_generator.has_mpg_file_library := mpg_file_library_check_button.is_selected
			a_ecf_generator.generate_file
		end

	generate_root_source_file(a_root_source_generator:ROOT_SOURCE_GENERATOR)
			-- Generate the user root source files from the fields in `Current'
		local
			l_date_time:DATE_TIME
		do
			a_root_source_generator.set_root_class (root_class_text_field.text)
			a_root_source_generator.set_root_feature (root_feature_text_field.text)
			a_root_source_generator.set_code_indicator (code_indicator)
			a_root_source_generator.set_feature_documentation (root_class_feature_documentation)
			a_root_source_generator.set_feature_section (feature_section)
			a_root_source_generator.set_game_documentation (root_class_game_documentation)
			create l_date_time.make_now_utc
			a_root_source_generator.set_date (l_date_time.formatted_out ("yyyy-[0]mm-[0]dd hh24:[0]mi:[0]ss.ff3") + " +0000")
		end

	generate_game2_root_source_file(a_root_source_generator:GAME2_ROOT_SOURCE_GENERATOR)
			-- Generate the internal root source files from the fields in `Current'
		do
			a_root_source_generator.set_game2_root_class (game2_root_class)
			a_root_source_generator.set_game2_root_feature (game2_root_feature)
			a_root_source_generator.set_feature_documentation (game2_root_class_feature_documentation)
			a_root_source_generator.set_game_documentation (game2_root_class_game_documentation)
			a_root_source_generator.set_no_modification (game2_root_class_no_modification)
			a_root_source_generator.has_core_library := core_library_check_button.is_selected
			a_root_source_generator.has_image_file_library := image_file_library_check_button.is_selected
			a_root_source_generator.has_text_library := text_library_check_button.is_selected
			a_root_source_generator.has_effects_library := effects_library_check_button.is_selected
			a_root_source_generator.has_audio_library := audio_library_check_button.is_selected
			a_root_source_generator.has_sound_file_library := sound_file_library_check_button.is_selected
			a_root_source_generator.has_mpg_file_library := mpg_file_library_check_button.is_selected
			a_root_source_generator.generate_file
		end


	validate_project
			-- Check every fields validity
		do
			is_project_valid := True
			if project_name_text_field.text.is_empty or else project_name_text_field.text.has ({CHARACTER_32}' ') then
				manage_invalide_field(project_name_label_text)
			end
			if target_name_text_field.text.is_empty or else target_name_text_field.text.has ({CHARACTER_32}' ') then
				manage_invalide_field(target_name_label_text)
			end
			if cluster_name_text_field.text.is_empty or else cluster_name_text_field.text.has ({CHARACTER_32}' ') then
				manage_invalide_field(cluster_name_label_text)
			end
			if
				root_class_text_field.text.is_empty or else
				root_class_text_field.text.has ({CHARACTER_32}' ') or else
				root_class_text_field.text.as_string_32.is_equal (game2_root_class.as_string_32)
			then
				manage_invalide_field(root_class_label_text)
			end
			if root_feature_text_field.text.is_empty or else root_feature_text_field.text.has ({CHARACTER_32}' ') then
				manage_invalide_field(root_class_label_text)
			end
		end

	manage_invalide_field(a_field_name:READABLE_STRING_GENERAL)
		local
			l_template:TEMPLATE_TEXT
		do
			create l_template.make_from_text (field_not_valid)
			l_template.add_value (a_field_name, "field")
			is_project_valid := False
			l_template.get_structure
			l_template.get_output
			if attached l_template.output as la_output then
				show_message (la_output)
			else
				show_message ("Internal error!")
			end
		end

	show_message(a_message:READABLE_STRING_GENERAL)
			-- Show a message dialog with `a_message' in it
		local
			l_dialog:EV_INFORMATION_DIALOG
		do
			create l_dialog.make_with_text (a_message)
			l_dialog.show_modal_to_window (Current)
		end

	is_project_valid:BOOLEAN
			-- The last call to `validate_project' does not detect any error


	has_change:BOOLEAN
			-- There has been a modification since the last save

	project_configuration_preferences:detachable PREFERENCES
			-- The project configuration file

	change_target_on_project_name_edit:BOOLEAN
			-- Change the target name field when the project name field is modified

	change_cluster_on_project_name_edit:BOOLEAN
			-- Change the cluster name field when the project name field is modified

	change_cluster_on_target_name_edit:BOOLEAN
			-- Change the cluster name field when the target name field is modified

	uuid_generator:UUID_GENERATOR
			-- The generator of unique UUID for project files

end
