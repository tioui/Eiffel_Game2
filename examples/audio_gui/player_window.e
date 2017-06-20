note
	description: "A simple GUI audio player"
	author: "Louis Marchand"
	generator: "EiffelBuild"
	date: "Tue, 21 Feb 2017 00:15:23 +0000"
	revision: "0.1"

class
	PLAYER_WINDOW

inherit
	PLAYER_WINDOW_IMP
	AUDIO_LIBRARY_SHARED
		undefine
			default_create, copy
		end
	MPG_LIBRARY_SHARED
		undefine
			default_create, copy
		end


feature {NONE} -- Initialization

	user_create_interface_objects
			-- Create any auxilliary objects needed for PLAYER_WINDOW.
			-- Initialization for these objects must be performed in `user_initialization'.
		do
			if not audio_library.is_playback_enable then	-- Just in case that the current Window
				audio_library.enable_playback				-- has already been open and close
				audio_library.sources_wipe_out
			end
			if not mpg_library.is_mpg_enabled then
				mpg_library.enable_mpg
			end
			audio_library.sources_add
			audio_source := audio_library.last_source_added
			create timer.make_with_interval (10)
		end

	user_initialization
			-- Perform any initialization on objects created by `user_create_interface_objects'
			-- and from within current class itself.
		do
			timer.actions.extend (agent update_sound)
			must_update_time_position_range := False
		end

feature {NONE} -- Implementation


	open_button_select_actions
			-- Called by `select_actions' of `open_button'.
		local
			l_dialog:EV_FILE_OPEN_DIALOG
		do
			create l_dialog.make_with_title ("Open file...")
			l_dialog.open_actions.extend (agent open_dialog_actions(l_dialog))
			l_dialog.show_modal_to_window (Current)
		end

	open_dialog_actions(a_dialog:EV_FILE_OPEN_DIALOG)
			-- Called by the `open_button_select_actions' open dialog window when the user accept a file
		local
			l_audio_sound:AUDIO_SOUND_FILE
			l_mpg_sound:MPG_SOUND_FILE
		do
			sound_file_name := a_dialog.file_name
			create l_audio_sound.make (a_dialog.file_name)
			open_sound (l_audio_sound)
			if not attached sound then
				create l_mpg_sound.make (a_dialog.file_name)
				open_sound (l_mpg_sound)
				if l_mpg_sound.is_open then
					l_mpg_sound.scan
				end
			end
			show_sound_name
		end

	show_sound_name
			-- Show the sound title in `sound_name_label'
		local
			l_path:PATH
		do
			sound_name_label.set_text ("")
			if attached sound as la_sound then
				if attached la_sound.title as la_title then
					if attached la_sound.artist as la_artist then
						sound_name_label.set_text (la_artist + " - ")
					end
					sound_name_label.set_text (sound_name_label.text + la_title)
				else
					if attached sound_file_name as la_file_name then
						create l_path.make_from_string (la_file_name)
						if attached l_path.entry as la_entry then
							sound_name_label.set_text (la_entry.name)
						end
					end
				end
			end
		end

	open_sound(a_sound:METADATA_AUDIO_SOUND)
			-- Open `a_sound' and put it in `sound'
		do
			if a_sound.is_openable then
				a_sound.open
				if a_sound.is_open then
					audio_source.queue_sound (a_sound)
					sound := a_sound
					audio_source.play
					must_update_time_position_range := True
				end
			end
		end

	time_position_range_button_press_actions (a_x, a_y, a_button: INTEGER_32; a_x_tilt, a_y_tilt, a_pressure: REAL_64; a_screen_x, a_screen_y: INTEGER_32)
			-- <Precursor>
		do
			must_update_time_position_range := False
		end

	time_position_range_button_release_actions (a_x, a_y, a_button: INTEGER_32; a_x_tilt, a_y_tilt, a_pressure: REAL_64; a_screen_x, a_screen_y: INTEGER_32)
			-- <Precursor>
		local
			l_value:INTEGER_64
		do
			if audio_source.is_playing and attached sound as la_sound then
				l_value := ((la_sound.sample_count * time_position_range.value) // 100)
				if l_value < 1 then
					la_sound.sample_seek (1)
				elseif l_value > la_sound.sample_count then
					la_sound.sample_seek (la_sound.sample_count)
				else
					la_sound.sample_seek (l_value)
				end
				must_update_time_position_range := True
			end
		end


	update_sound
			-- Update the `Audio_library'
		do
			audio_library.update
			if audio_source.is_playing and attached sound as la_sound then
				time_label.set_text (
										(la_sound.time_position // 60000).out + ":" +
										((la_sound.time_position // 1000) \\ 60).out + " / " +
										(la_sound.time_count // 60000).out + ":" +
										((la_sound.time_count // 1000) \\ 60).out
									)
				if must_update_time_position_range then
					time_position_range.set_value (((la_sound.sample_position / la_sound.sample_count) * 100).rounded)
				end
			end
		end

	sound:detachable METADATA_AUDIO_SOUND
			-- The sound that is playing (if any)

	sound_file_name:detachable READABLE_STRING_GENERAL
			-- The file name of `sound'

	audio_source:AUDIO_SOURCE
			-- The audio source that is used to play `sound'

	timer:EV_TIMEOUT
			-- The timer used to update the `audio_library'

	must_update_time_position_range:BOOLEAN
			-- `True' if `time_position_range' must be updated



end
