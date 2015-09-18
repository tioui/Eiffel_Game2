note
	description : "Mouse-text application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

create
	make

feature {NONE} -- Initialization

	make
		local
			l_controller:GAME_LIB_CONTROLLER
			l_text_controller:GAME_TEXT_CONTROLLER
		do
			create l_controller.make
			create l_text_controller.make
			l_controller.enable_video -- Enable the video functionalities
			l_text_controller.enable_text  -- Enable the Text Surface functionnality
			run_game(l_controller)  -- Run the core creator of the game.
			l_text_controller.quit_library
			l_controller.quit_library  -- Clear the library before quitting
		end

	run_game(a_controller:GAME_LIB_CONTROLLER)
		local
			l_font:GAME_FONT
		do
			text_to_print:=""
			unicode_text:="Unicode text: "		-- To show that the library can draw unicode character.
			unicode_text.append_code (0x266c)		-- The first unicoe character
			unicode_text.append_code (0x265e)		-- The seconde unicode character
			unicode_text.append_code (0x103d3)		-- The third unicode character
			create l_font.make ("font.ttf", 18)  -- Initialise the font to use in the text print. The process is long. Better doing it only once.
			a_controller.event_controller.enable_keyboard_unicode
			a_controller.event_controller.on_key_down.extend (agent on_key_down(a_controller,l_font,?))
			a_controller.event_controller.on_resize_window.extend (agent on_window_resize(a_controller,?,?))	-- When the window will be resized, execute the on_window_resize routine with the controller as argument.
			a_controller.event_controller.on_quit_signal.extend (agent on_quit(a_controller))  -- When the X of the window is pressed, execute the on_quit method.
			a_controller.create_screen_surface (320, 240, 16, true, true, true, true, false)	-- Create the window. Dimension: 320x240, 16 bits per pixel, Use video memory, use hardware double buffer,
																								-- the windows will be resisable, the window will have the window frame, not in fullscreen mode.
			update_screen(a_controller,l_font,' ', "")
			a_controller.launch  -- The controller will loop until the stop controller.method is called (in method on_quit).
		end

	on_key_down(a_controller:GAME_LIB_CONTROLLER;a_font:GAME_FONT;a_keyboard_event:GAME_KEYBOARD_EVENT)
		local
			l_character:CHARACTER_32
		do
			l_character:=a_keyboard_event.character
			if l_character='%B' then	-- A Backspace
				text_to_print.remove_tail (1)
			else
				if l_character /= '%U' then		-- %U is an invalid character.
					text_to_print.append_character (l_character)
				end

			end
			update_screen(a_controller,a_font,a_keyboard_event.character,a_keyboard_event.out)
		end

	update_screen(a_controller:GAME_LIB_CONTROLLER;a_font:GAME_FONT;a_character:CHARACTER_32; a_key_text:STRING)
		local
			l_character_surface, l_key_text_surface, l_print_surface, l_unicode_surface:GAME_SURFACE_TEXT
			l_text_color:GAME_COLOR
			l_bg_color:GAME_COLOR
			l_text_prefix:STRING_32
		do
			create l_text_color.make_rgb (0, 0, 0)
			l_text_prefix:="Key character: "
			l_text_prefix.append_character (a_character)
			create l_character_surface.make_blended (l_text_prefix, a_font, l_text_color)
			create l_key_text_surface.make_blended ("Key text representation: "+a_key_text, a_font, l_text_color)
			l_text_prefix:="Generated text: "
			l_text_prefix.append (text_to_print)
			create l_print_surface.make_blended (l_text_prefix, a_font, l_text_color)
			create l_unicode_surface.make_blended (unicode_text, a_font, l_text_color)
			create l_bg_color.make_rgb (255, 168, 0)
			a_controller.screen_surface.fill_rect (l_bg_color, 0, 0, a_controller.screen_surface.width, a_controller.screen_surface.height)
			a_controller.screen_surface.draw_surface (l_key_text_surface, 10, 10)
			a_controller.screen_surface.draw_surface (l_character_surface, 10, 70)
			a_controller.screen_surface.draw_surface (l_print_surface, 10, 130)
			a_controller.screen_surface.draw_surface (l_unicode_surface, 10, 190)
			a_controller.flip_screen
		end

	on_quit(controller:GAME_LIB_CONTROLLER)
			-- This method is called when the quit signal is send to the application (ex: window X button pressed).
		do
			controller.stop  -- Stop the controller loop (allow controller.launch to return)
		end

	on_window_resize(controller:GAME_LIB_CONTROLLER;width,height:INTEGER)
			-- When the window is resized, create a new screen surface with the new dimension
		do
			controller.create_screen_surface (width, height, 16, true, true, true, true, false)
		end


	text_to_print:STRING_32

	unicode_text:STRING_32

end
