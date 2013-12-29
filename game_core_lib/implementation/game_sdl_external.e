note
	description: "External of the SDL library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_SDL_EXTERNAL

feature -- Function SDL.h


feature -- Manual C function (implemented in SDLmore.c)

	frozen rotateSurface90Degrees(surface:POINTER;nb_clockwise:INTEGER):POINTER
			-- Do a 90 degree Rotation on the `surface' `nb_clockwise' times
		external
			"C (SDL_Surface *,int) : SDL_Surface * | %"core_more.h%""
		alias
			"rotateSurface90Degrees_all"
		end

	frozen getPixel(surface:POINTER;x,y:INTEGER):NATURAL_32
			-- Get the pixel internal color representation of the `surface' at (`x',`y')
		external
			"C (SDL_Surface *,int,int) : Uint32 | %"core_more.h%""
		alias
			"getpixel"
		end

	frozen putPixel(surface:POINTER;x,y:INTEGER;pixel:NATURAL_32)
			-- Put the pixel internal color representation on the `surface' at (`x',`y')
		external
			"C (SDL_Surface *,int,int,Uint32) | %"core_more.h%""
		alias
			"putpixel"
		end

	frozen copyPalette(surface_src,surface_dst:POINTER)
			-- copy the internal color palette of the `surface_src' to the `surface_dst'.
		external
			"C (SDL_Surface *,SDL_Surface *)  | %"core_more.h%""
		alias
			"CopyPalette_8"
		end

	frozen MirrorSurfaceX(surface:POINTER):POINTER
			-- Mirror the `surface' by the X axis
		external
			"C (SDL_Surface *) : SDL_Surface * | %"core_more.h%""
		alias
			"MirrorSurfaceX"
		end


	frozen MirrorSurfaceY(surface:POINTER):POINTER
			-- Mirror the `surface' by the Y axis
		external
			"C (SDL_Surface *) : SDL_Surface * | %"core_more.h%""
		alias
			"MirrorSurfaceY"
		end


	frozen setSDLRWops(rwop,cpf_infos:POINTER)
			-- Set a CustomPackageFileInfos in the SDL ressource reader.
		external
			"C (SDL_RWops *,CustomPackageFileInfos*) | %"core_more.h%""
		alias
			"setSDLRWops"
		end

feature -- Structure SDL_Event SDL.h

	frozen c_sizeof_sdl_event:INTEGER
			-- Size of an SDL_Event C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_Event)"
		end

	frozen set_event_struct_type (event: POINTER; type:NATURAL_32)
			-- Event type
		external
			"C [struct <SDL.h>] (SDL_Event, Uint32)"
		alias

			"type"
		end

	frozen get_event_struct_type(event:POINTER):NATURAL_32
			-- Event type
		external
			"C [struct <SDL.h>] (SDL_Event):Uint32"
		alias
			"type"
		end

	frozen get_event_struct_window_pointer (event:POINTER):POINTER
		-- Activation Event
		-- Return a pointer to SDL_ActiveEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->window)"
		end

	frozen get_event_struct_key_pointer (event:POINTER):POINTER
		-- keyboard event data
		-- Return a pointer to SDL_KeyboardEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->key)"
		end

	frozen get_event_struct_edit_pointer (event:POINTER):POINTER
		-- text editing event data
		-- Return a pointer to SDL_TextEditingEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->edit)"
		end

	frozen get_event_struct_text_pointer (event:POINTER):POINTER
		-- text input event data
		-- Return a pointer to SDL_TextInputEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->text)"
		end

	frozen get_event_struct_motion_pointer (event:POINTER):POINTER
		-- Mouse motion event
		-- Return a pointer to SDL_MouseMotionEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->motion)"
		end

	frozen get_event_struct_button_pointer (event:POINTER):POINTER
		-- Mouse button event
		-- Return a pointer to SDL_MouseMotionEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->button)"
		end

	frozen get_event_struct_wheel_pointer (event:POINTER):POINTER
		-- mouse wheel event data
		-- Return a pointer to SDL_MouseWheelEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->wheel)"
		end

	frozen get_event_struct_jaxis_pointer (event:POINTER):POINTER
		-- Joystick Axis motion event
		-- Return a pointer to SDL_JoyAxisEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->jaxis)"
		end

	frozen get_event_struct_jball_pointer (event:POINTER):POINTER
		-- Joystick trackball motion event
		-- Return a pointer to SDL_JoyBallEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->jball)"
		end

	frozen get_event_struct_jhat_pointer (event:POINTER):POINTER
		-- Joystick hat motion event
		-- Return a pointer to SDL_JoyHatEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->jhat)"
		end

	frozen get_event_struct_jbutton_pointer (event:POINTER):POINTER
		-- Joystick button event
		-- Return a pointer to SDL_JoyButtonEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->jbutton)"
		end

	frozen get_event_struct_jdevice_pointer (event:POINTER):POINTER
		-- joystick device event data
		-- Return a pointer to SDL_JoyDeviceEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->jdevice)"
		end

	frozen get_event_struct_caxis_pointer (event:POINTER):POINTER
		-- game controller axis event data
		-- Return a pointer to SDL_ControllerAxisEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->caxis)"
		end

	frozen get_event_struct_cbutton_pointer (event:POINTER):POINTER
		-- game controller button event data
		-- Return a pointer to SDL_ControllerButtonEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->cbutton)"
		end

	frozen get_event_struct_cdevice_pointer (event:POINTER):POINTER
		-- game controller device event data
		-- Return a pointer to SDL_ControllerDeviceEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->cdevice)"
		end

	frozen get_event_struct_quit_pointer (event:POINTER):POINTER
		-- Application quit request event
		-- Return a pointer to SDL_QuitEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->quit)"
		end

	frozen get_event_struct_user_pointer (event:POINTER):POINTER
		-- User defined event
		-- Return a pointer to SDL_UserEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->user)"
		end

	frozen get_event_struct_syswm_pointer (event:POINTER):POINTER
		-- Undefined window manager event
		-- Return a pointer to SDL_SysWMEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->syswm)"
		end

	frozen get_event_struct_tfinger_pointer (event:POINTER):POINTER
		-- touch finger event data
		-- Return a pointer to SDL_TouchFingerEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->tfinger)"
		end

	frozen get_event_struct_mgesture_pointer (event:POINTER):POINTER
		-- multi finger gesture data
		-- Return a pointer to SDL_MultiGestureEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->mgesture)"
		end

	frozen get_event_struct_dgesture_pointer (event:POINTER):POINTER
		-- multi finger gesture data
		-- Return a pointer to SDL_DollarGestureEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->dgesture)"
		end

	frozen get_event_struct_drop_pointer (event:POINTER):POINTER
		-- drag and drop event data
		-- Return a pointer to SDL_DropEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->drop)"
		end

feature -- Structure SDL_CommonEvent SDL.h

	frozen c_sizeof_sdl_common_event:INTEGER
			-- Size of an SDL_CommonEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_CommonEvent)"
		end

	frozen set_common_event_struct_type (event: POINTER; type:NATURAL_32)
			-- Event type.
		external
			"C [struct <SDL.h>] (SDL_CommonEvent, Uint32)"
		alias
			"type"
		end

	frozen get_common_event_struct_type(event:POINTER):NATURAL_32
			-- Event type.
		external
			"C [struct <SDL.h>] (SDL_CommonEvent):Uint32"
		alias
			"type"
		end

	frozen set_common_event_struct_timestamp (event: POINTER; timestamp:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_CommonEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_common_event_struct_timestamp(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_CommonEvent):Uint32"
		alias
			"timestamp"
		end

feature -- Structure SDL_WindowEvent SDL.h

	frozen c_sizeof_sdl_window_event:INTEGER
			-- Size of an SDL_WindowEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_WindowEvent)"
		end

	frozen set_window_event_struct_type (event: POINTER; type:NATURAL_32)
			-- Event type. Always SDL_WINDOWEVENT.
		external
			"C [struct <SDL.h>] (SDL_WindowEvent, Uint32)"
		alias
			"type"
		end

	frozen get_window_event_struct_type(event:POINTER):NATURAL_32
			-- Event type. Always SDL_WINDOWEVENT.
		external
			"C [struct <SDL.h>] (SDL_WindowEvent):Uint32"
		alias
			"type"
		end

	frozen set_window_event_struct_timestamp (event: POINTER; timestamp:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_WindowEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_window_event_struct_timestamp(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_WindowEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_window_event_struct_window_id (event: POINTER; window_id:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_WindowEvent, Uint32)"
		alias
			"windowID"
		end

	frozen get_window_event_struct_window_id(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_WindowEvent):Uint32"
		alias
			"windowID"
		end

	frozen set_window_event_struct_event (event: POINTER; event_id:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_WindowEvent, Uint8)"
		alias
			"event"
		end

	frozen get_window_event_struct_event(event:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_WindowEvent):Uint8"
		alias
			"event"
		end

	frozen set_window_event_struct_data1 (event: POINTER; data1:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_WindowEvent, Sint32)"
		alias
			"data1"
		end

	frozen get_window_event_struct_data1(event:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_WindowEvent):Sint32"
		alias
			"data1"
		end

	frozen set_window_event_struct_data2 (event: POINTER; data2:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_WindowEvent, Sint32)"
		alias
			"data2"
		end

	frozen get_window_event_struct_data2(event:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_WindowEvent):Sint32"
		alias
			"data2"
		end

feature -- Structure SDL_KeyboardEvent SDL.h


	frozen c_sizeof_sdl_keyboard_event:INTEGER
			-- Size of an SDL_KeyboardEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_KeyboardEvent)"
		end

	frozen set_keyboard_event_struct_type (event: POINTER; type:NATURAL_32)
			-- Event type. Always SDL_KEYDOWN or SDL_KEYUP.
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent, Uint32)"
		alias
			"type"
		end

	frozen get_keyboard_event_struct_type(event:POINTER):NATURAL_32
			-- Event type. Always SDL_KEYDOWN or SDL_KEYUP.
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent):Uint32"
		alias
			"type"
		end

	frozen set_keyboard_event_struct_timestamp (event: POINTER; timestamp:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_keyboard_event_struct_timestamp(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_keyboard_event_struct_window_id (event: POINTER; window_id:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent, Uint32)"
		alias
			"windowID"
		end

	frozen get_keyboard_event_struct_window_id(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent):Uint32"
		alias
			"windowID"
		end

	frozen set_keyboard_event_struct_state (event: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent, Uint8)"
		alias
			"state"
		end

	frozen get_keyboard_event_struct_state(event:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent):Uint8"
		alias
			"state"
		end

	frozen set_keyboard_event_struct_repeat (event: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent, Uint8)"
		alias
			"repeat"
		end

	frozen get_keyboard_event_struct_repeat(event:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent):Uint8"
		alias
			"repeat"
		end

	frozen get_keyboard_event_struct_keysym_pointer (event:POINTER):POINTER
		-- Contains key press information
		-- Return a pointer to SDL_Keysym
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_KeyboardEvent *)$event)->keysym)"
		end

feature -- Structure SDL_Keysym SDL.h


	frozen c_sizeof_sdl_keysym:INTEGER
			-- Size of an SDL_keysym C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_Keysym)"
		end

	frozen set_key_sym_struct_scancode (ptr: POINTER; value:INTEGER)
		external
			"C [struct <SDL.h>] (SDL_Keysym, int)"
		alias
			"scancode"
		end

	frozen get_key_sym_struct_scancode(ptr:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_Keysym):int"
		alias
			"scancode"
		end

	frozen set_key_sym_struct_sym (ptr: POINTER; value:INTEGER)
		external
			"C [struct <SDL.h>] (SDL_Keysym, int)"
		alias
			"sym"
		end

	frozen get_key_sym_struct_sym(ptr:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_Keysym):int"
		alias
			"sym"
		end

	frozen set_key_sym_struct_mod (ptr: POINTER; value:NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_Keysym, Uint16)"
		alias
			"mod"
		end

	frozen get_key_sym_struct_mod(ptr:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_Keysym):Uint16"
		alias
			"mod"
		end

feature -- Structure SDL_TextEditingEvent SDL.h

	frozen c_sizeof_sdl_text_editing_event:INTEGER
			-- Size of an SDL_TextEditingEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_TextEditingEvent)"
		end

	frozen set_text_editing_event_struct_type (event: POINTER; type:NATURAL_32)
			-- Event type. Always SDL_TEXTEDITING
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent, Uint32)"
		alias
			"type"
		end

	frozen get_text_editing_event_struct_type(event:POINTER):NATURAL_32
			-- Event type. Always SDL_TEXTEDITING
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent):Uint32"
		alias
			"type"
		end

	frozen set_text_editing_event_struct_timestamp (event: POINTER; timestamp:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_text_editing_event_struct_timestamp(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_text_editing_event_struct_window_id (event: POINTER; window_id:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent, Uint32)"
		alias
			"windowID"
		end

	frozen get_text_editing_event_struct_window_id(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent):Uint32"
		alias
			"windowID"
		end

--	frozen set_text_editing_event_struct_text (event: POINTER; text:POINTER)
--		external
--			"C [struct <SDL.h>] (SDL_TextEditingEvent, char*)"
--		alias
--			"text"
--		end

	frozen get_text_editing_event_struct_text(event:POINTER):POINTER
		external
			"C inline use <SDL.h>"
		alias
			"&((((SDL_TextEditingEvent *)$event)->text)[0])"
		end

	frozen set_text_editing_event_struct_start (event: POINTER; start:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent, Sint32)"
		alias
			"start"
		end

	frozen get_text_editing_event_struct_start(event:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent):Sint32"
		alias
			"start"
		end

	frozen set_text_editing_event_struct_length (event: POINTER; length:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent, Sint32)"
		alias
			"length"
		end

	frozen get_text_editing_event_struct_length(event:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_TextEditingEvent):Sint32"
		alias
			"length"
		end

feature -- Structure SDL_TextInputEvent SDL.h

	frozen c_sizeof_sdl_text_input_event:INTEGER
			-- Size of an SDL_TextInputEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_TextInputEvent)"
		end

	frozen set_text_input_event_struct_type (event: POINTER; type:NATURAL_32)
			-- Event type. Always SDL_TEXTINPUT
		external
			"C [struct <SDL.h>] (SDL_TextInputEvent, Uint32)"
		alias
			"type"
		end

	frozen get_text_input_event_struct_type(event:POINTER):NATURAL_32
			-- Event type. Always SDL_TEXTINPUT
		external
			"C [struct <SDL.h>] (SDL_TextInputEvent):Uint32"
		alias
			"type"
		end

	frozen set_text_input_event_struct_timestamp (event: POINTER; timestamp:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_TextInputEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_text_input_event_struct_timestamp(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_TextInputEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_text_input_event_struct_window_id (event: POINTER; window_id:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_TextInputEvent, Uint32)"
		alias
			"windowID"
		end

	frozen get_text_input_event_struct_window_id(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_TextInputEvent):Uint32"
		alias
			"windowID"
		end

--	frozen set_text_input_event_struct_text (event: POINTER; text:CHARACTER)
--		external
--			"C [struct <SDL.h>] (SDL_TextInputEvent, char)"
--		alias
--			"text"
--		end

	frozen get_text_input_event_struct_text(event:POINTER):POINTER
		external
			"C inline use <SDL.h>"
		alias
			"&((((SDL_TextInputEvent *)$event)->text)[0])"
		end

feature -- Structure SDL_MouseMotionEvent SDL.h

	frozen c_sizeof_sdl_mouse_motion_event:INTEGER
			-- Size of an SDL_MouseMotionEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_MouseMotionEvent)"
		end

	frozen set_mouse_motion_event_struct_type (event: POINTER; type:NATURAL_32)
			-- Event type. Always SDL_MOUSEMOTION
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Uint32)"
		alias
			"type"
		end

	frozen get_mouse_motion_event_struct_type(event:POINTER):NATURAL_32
			-- Event type. Always SDL_MOUSEMOTION
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint32"
		alias
			"type"
		end

	frozen set_mouse_motion_event_struct_timestamp (event: POINTER; timestamp:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_mouse_motion_event_struct_timestamp(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_mouse_motion_event_struct_window_id (event: POINTER; window_id:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Uint32)"
		alias
			"windowID"
		end

	frozen get_mouse_motion_event_struct_window_id(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint32"
		alias
			"windowID"
		end

	frozen set_mouse_motion_event_struct_which (event: POINTER; which:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Uint32)"
		alias
			"which"
		end

	frozen get_mouse_motion_event_struct_which(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint32"
		alias
			"which"
		end

	frozen set_mouse_motion_event_struct_state (event: POINTER; state:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Uint32)"
		alias
			"state"
		end

	frozen get_mouse_motion_event_struct_state(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint32"
		alias
			"state"
		end

	frozen set_mouse_motion_event_struct_x (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Sint32)"
		alias
			"x"
		end

	frozen get_mouse_motion_event_struct_x(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Sint32"
		alias
			"x"
		end

	frozen set_mouse_motion_event_struct_y (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Sint32)"
		alias
			"y"
		end

	frozen get_mouse_motion_event_struct_y(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Sint32"
		alias
			"y"
		end

	frozen set_mouse_motion_event_struct_xrel (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Sint32)"
		alias
			"xrel"
		end

	frozen get_mouse_motion_event_struct_xrel(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Sint32"
		alias
			"xrel"
		end

	frozen set_mouse_motion_event_struct_yrel (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Sint32)"
		alias
			"yrel"
		end

	frozen get_mouse_motion_event_struct_yrel(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Sint32"
		alias
			"yrel"
		end


feature -- Structure SDL_MouseButtonEvent SDL.h

	frozen c_sizeof_sdl_mouse_button_event:INTEGER
			-- Size of an SDL_MouseButtonEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_MouseButtonEvent)"
		end

	frozen set_mouse_button_event_struct_type (event: POINTER; type:NATURAL_32)
			-- Event type. Always SDL_MOUSEBUTTONDOWN or SDL_MOUSEBUTTONUP
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint32)"
		alias
			"type"
		end

	frozen get_mouse_button_event_struct_type(event:POINTER):NATURAL_32
			-- Event type. Always SDL_MOUSEBUTTONDOWN or SDL_MOUSEBUTTONUP
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint32"
		alias
			"type"
		end

	frozen set_mouse_button_event_struct_timestamp (event: POINTER; timestamp:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_mouse_button_event_struct_timestamp(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_mouse_button_event_struct_window_id (event: POINTER; window_id:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint32)"
		alias
			"windowID"
		end

	frozen get_mouse_button_event_struct_window_id(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint32"
		alias
			"windowID"
		end

	frozen set_mouse_button_event_struct_which (event: POINTER; which:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint32)"
		alias
			"which"
		end

	frozen get_mouse_button_event_struct_which(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint32"
		alias
			"which"
		end

	frozen set_mouse_button_event_struct_button (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint8)"
		alias
			"button"
		end

	frozen get_mouse_button_event_struct_button(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint8"
		alias
			"button"
		end

	frozen set_mouse_button_event_struct_state (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint8)"
		alias
			"state"
		end

	frozen get_mouse_button_event_struct_state(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint8"
		alias
			"state"
		end

	frozen set_mouse_button_event_struct_x (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Sint32)"
		alias
			"x"
		end

	frozen get_mouse_button_event_struct_x(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Sint32"
		alias
			"x"
		end

	frozen set_mouse_button_event_struct_y (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Sint32)"
		alias
			"y"
		end

	frozen get_mouse_button_event_struct_y(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Sint32"
		alias
			"y"
		end


feature -- Structure SDL_MouseWheelEvent SDL.h

	frozen c_sizeof_sdl_mouse_wheel_event:INTEGER
			-- Size of an SDL_MouseWheelEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_MouseWheelEvent)"
		end

	frozen set_mouse_wheel_event_struct_type (event: POINTER; type:NATURAL_32)
			-- Event type. Always SDL_MOUSEWHEEL
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent, Uint32)"
		alias
			"type"
		end

	frozen get_mouse_wheel_event_struct_type(event:POINTER):NATURAL_32
			-- Event type. Always SDL_MOUSEWHEEL
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent):Uint32"
		alias
			"type"
		end

	frozen set_mouse_wheel_event_struct_timestamp (event: POINTER; timestamp:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_mouse_wheel_event_struct_timestamp(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_mouse_wheel_event_struct_window_id (event: POINTER; window_id:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent, Uint32)"
		alias
			"windowID"
		end

	frozen get_mouse_wheel_event_struct_window_id(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent):Uint32"
		alias
			"windowID"
		end

	frozen set_mouse_wheel_event_struct_which (event: POINTER; which:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent, Uint32)"
		alias
			"which"
		end

	frozen get_mouse_wheel_event_struct_which(event:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent):Uint32"
		alias
			"which"
		end

	frozen set_mouse_wheel_event_struct_x (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent, Sint32)"
		alias
			"x"
		end

	frozen get_mouse_wheel_event_struct_x(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent):Sint32"
		alias
			"x"
		end

	frozen set_mouse_wheel_event_struct_y (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent, Sint32)"
		alias
			"y"
		end

	frozen get_mouse_wheel_event_struct_y(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_MouseWheelEvent):Sint32"
		alias
			"y"
		end

feature -- Structure SDL_JoyAxisEvent SDL.h

	frozen c_sizeof_sdl_joy_axis_event:INTEGER
			-- Size of an SDL_JoyAxisEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_JoyAxisEvent)"
		end

	frozen set_joy_axis_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_JOYAXISMOTION
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent, Uint32)"
		alias
			"type"
		end

	frozen get_joy_axis_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_JOYAXISMOTION
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent):Uint32"
		alias
			"type"
		end

	frozen set_joy_axis_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_joy_axis_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_joy_axis_event_struct_which (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent, SDL_JoystickID)"
		alias
			"which"
		end

	frozen get_joy_axis_event_struct_which(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent):SDL_JoystickID"
		alias
			"which"
		end

	frozen set_joy_axis_event_struct_axis (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent, Uint8)"
		alias
			"axis"
		end

	frozen get_joy_axis_event_struct_axis(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent):Uint8"
		alias
			"axis"
		end

	frozen set_joy_axis_event_struct_value (ptr: POINTER; value:INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent, Sint16)"
		alias
			"value"
		end

	frozen get_joy_axis_event_struct_value(ptr:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent):Sint16"
		alias
			"value"
		end

feature -- Structure SDL_JoyBallEvent SDL.h

	frozen c_sizeof_sdl_joy_ball_event:INTEGER
			-- Size of an SDL_JoyBallEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_JoyBallEvent)"
		end

	frozen set_joy_ball_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_JOYBALLMOTION
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent, Uint32)"
		alias
			"type"
		end

	frozen get_joy_ball_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_JOYBALLMOTION
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent):Uint32"
		alias
			"type"
		end

	frozen set_joy_ball_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_joy_ball_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_joy_ball_event_struct_which (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent, SDL_JoystickID)"
		alias
			"which"
		end

	frozen get_joy_ball_event_struct_which(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent):SDL_JoystickID"
		alias
			"which"
		end

	frozen set_joy_ball_event_struct_ball (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent, Uint8)"
		alias
			"ball"
		end

	frozen get_joy_ball_event_struct_ball(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent):Uint8"
		alias
			"ball"
		end

	frozen set_joy_ball_event_struct_xrel (ptr: POINTER; value:INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent, Sint16)"
		alias
			"xrel"
		end

	frozen get_joy_ball_event_struct_xrel(ptr:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent):Sint16"
		alias
			"xrel"
		end

	frozen set_joy_ball_event_struct_yrel (ptr: POINTER; value:INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent, Sint16)"
		alias
			"yrel"
		end

	frozen get_joy_ball_event_struct_yrel(ptr:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent):Sint16"
		alias
			"yrel"
		end

feature -- Structure SDL_JoyHatEvent SDL.h

	frozen c_sizeof_sdl_joy_hat_event:INTEGER
			-- Size of an SDL_JoyHatEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_JoyHatEvent)"
		end

	frozen set_joy_hat_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_JOYHATMOTION
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent, Uint32)"
		alias
			"type"
		end

	frozen get_joy_hat_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_JOYHATMOTION
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent):Uint32"
		alias
			"type"
		end

	frozen set_joy_hat_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_joy_hat_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_joy_hat_event_struct_which (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent, SDL_JoystickID)"
		alias
			"which"
		end

	frozen get_joy_hat_event_struct_which(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent):SDL_JoystickID"
		alias
			"which"
		end

	frozen set_joy_hat_event_struct_hat (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent, Uint8)"
		alias
			"hat"
		end

	frozen get_joy_hat_event_struct_hat(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent):Uint8"
		alias
			"hat"
		end

	frozen set_joy_hat_event_struct_value (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent, Uint8)"
		alias
			"value"
		end

	frozen get_joy_hat_event_struct_value(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent):Uint8"
		alias
			"value"
		end

feature -- Structure SDL_JoyButtonEvent SDL.h

	frozen c_sizeof_sdl_joy_button_event:INTEGER
			-- Size of an SDL_JoyButtonEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_JoyButtonEvent)"
		end

	frozen set_joy_button_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_JOYBUTTONDOWN or SDL_JOYBUTTONUP
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent, Uint32)"
		alias
			"type"
		end

	frozen get_joy_button_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_JOYBUTTONDOWN or SDL_JOYBUTTONUP
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent):Uint32"
		alias
			"type"
		end

	frozen set_joy_button_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_joy_button_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_joy_button_event_struct_which (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent, SDL_JoystickID)"
		alias
			"which"
		end

	frozen get_joy_button_event_struct_which(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent):SDL_JoystickID"
		alias
			"which"
		end

	frozen set_joy_button_event_struct_button (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent, Uint8)"
		alias
			"button"
		end

	frozen get_joy_button_event_struct_button(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent):Uint8"
		alias
			"button"
		end

	frozen set_joy_button_event_struct_state (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent, Uint8)"
		alias
			"state"
		end

	frozen get_joy_button_event_struct_state(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent):Uint8"
		alias
			"state"
		end

feature -- Structure SDL_JoyDeviceEvent SDL.h

	frozen c_sizeof_sdl_joy_device_event:INTEGER
			-- Size of an SDL_JoyDeviceEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_JoyDeviceEvent)"
		end

	frozen set_joy_device_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_JOYDEVICEADDED or SDL_JOYDEVICEREMOVED
		external
			"C [struct <SDL.h>] (SDL_JoyDeviceEvent, Uint32)"
		alias
			"type"
		end

	frozen get_joy_device_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_JOYDEVICEADDED or SDL_JOYDEVICEREMOVED
		external
			"C [struct <SDL.h>] (SDL_JoyDeviceEvent):Uint32"
		alias
			"type"
		end

	frozen set_joy_device_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_JoyDeviceEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_joy_device_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_JoyDeviceEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_joy_device_event_struct_which (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_JoyDeviceEvent, SDL_JoystickID)"
		alias
			"which"
		end

	frozen get_joy_device_event_struct_which(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_JoyDeviceEvent):SDL_JoystickID"
		alias
			"which"
		end

feature -- Structure SDL_ControllerAxisEvent SDL.h

	frozen c_sizeof_sdl_controller_axis_event:INTEGER
			-- Size of an SDL_ControllerAxisEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_ControllerAxisEvent)"
		end

	frozen set_controller_axis_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_CONTROLLERAXISMOTION
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent, Uint32)"
		alias
			"type"
		end

	frozen get_controller_axis_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_CONTROLLERAXISMOTION
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent):Uint32"
		alias
			"type"
		end

	frozen set_controller_axis_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_controller_axis_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_controller_axis_event_struct_which (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent, SDL_JoystickID)"
		alias
			"which"
		end

	frozen get_controller_axis_event_struct_which(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent):SDL_JoystickID"
		alias
			"which"
		end

	frozen set_controller_axis_event_struct_axis (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent, Uint8)"
		alias
			"axis"
		end

	frozen get_controller_axis_event_struct_axis(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent):Uint8"
		alias
			"axis"
		end

	frozen set_controller_axis_event_struct_value (ptr: POINTER; value:INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent, Sint16)"
		alias
			"value"
		end

	frozen get_controller_axis_event_struct_value(ptr:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_ControllerAxisEvent):Sint16"
		alias
			"value"
		end

feature -- Structure SDL_ControllerButtonEvent SDL.h

	frozen c_sizeof_sdl_controller_button_event:INTEGER
			-- Size of an SDL_ControllerButtonEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_ControllerButtonEvent)"
		end

	frozen set_controller_button_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_CONTROLLERBUTTONDOWN or SDL_CONTROLLERBUTTONUP
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent, Uint32)"
		alias
			"type"
		end

	frozen get_controller_button_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_CONTROLLERBUTTONDOWN or SDL_CONTROLLERBUTTONUP
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent):Uint32"
		alias
			"type"
		end

	frozen set_controller_button_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_controller_button_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_controller_button_event_struct_which (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent, SDL_JoystickID)"
		alias
			"which"
		end

	frozen get_controller_button_event_struct_which(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent):SDL_JoystickID"
		alias
			"which"
		end

	frozen set_controller_button_event_struct_button (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent, Uint8)"
		alias
			"button"
		end

	frozen get_controller_button_event_struct_button(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent):Uint8"
		alias
			"button"
		end

	frozen set_controller_button_event_struct_state (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent, Uint8)"
		alias
			"state"
		end

	frozen get_controller_button_event_struct_state(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_ControllerButtonEvent):Uint8"
		alias
			"state"
		end

feature -- Structure SDL_ControllerDeviceEvent SDL.h

	frozen c_sizeof_sdl_controller_device_event:INTEGER
			-- Size of an SDL_ControllerDeviceEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_ControllerDeviceEvent)"
		end

	frozen set_controller_device_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_CONTROLLERDEVICEADDED, SDL_CONTROLLERDEVICEREMOVED or SDL_CONTROLLERDEVICEREMAPPED
		external
			"C [struct <SDL.h>] (SDL_ControllerDeviceEvent, Uint32)"
		alias
			"type"
		end

	frozen get_controller_device_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_CONTROLLERDEVICEADDED, SDL_CONTROLLERDEVICEREMOVED or SDL_CONTROLLERDEVICEREMAPPED
		external
			"C [struct <SDL.h>] (SDL_ControllerDeviceEvent):Uint32"
		alias
			"type"
		end

	frozen set_controller_device_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_ControllerDeviceEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_controller_device_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_ControllerDeviceEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_controller_device_event_struct_which (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_ControllerDeviceEvent, SDL_JoystickID)"
		alias
			"which"
		end

	frozen get_controller_device_event_struct_which(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_ControllerDeviceEvent):SDL_JoystickID"
		alias
			"which"
		end

feature -- Structure SDL_QuitEvent SDL.h

	frozen c_sizeof_sdl_quit_event:INTEGER
			-- Size of an SDL_QuitEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_QuitEvent)"
		end

	frozen set_quit_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_QUIT
		external
			"C [struct <SDL.h>] (SDL_QuitEvent, Uint32)"
		alias
			"type"
		end

	frozen get_quit_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_QUIT
		external
			"C [struct <SDL.h>] (SDL_QuitEvent):Uint32"
		alias
			"type"
		end

	frozen set_quit_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_ControllerDeviceEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_quit_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_ControllerDeviceEvent):Uint32"
		alias
			"timestamp"
		end

feature -- Structure SDL_TouchFingerEvent SDL.h

	frozen c_sizeof_sdl_touch_finger_event:INTEGER
			-- Size of an SDL_TouchFingerEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_TouchFingerEvent)"
		end

	frozen set_touch_finger_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_FINGERMOTION, SDL_FINGERDOWN, or SDL_FINGERUP
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, Uint32)"
		alias
			"type"
		end

	frozen get_touch_finger_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_FINGERMOTION, SDL_FINGERDOWN, or SDL_FINGERUP
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):Uint32"
		alias
			"type"
		end

	frozen set_touch_finger_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_touch_finger_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_touch_finger_event_struct_touch_id (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, SDL_TouchID)"
		alias
			"touchId"
		end

	frozen get_touch_finger_event_struct_touch_id(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):SDL_TouchID"
		alias
			"touchId"
		end

	frozen set_touch_finger_event_struct_finger_id (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, SDL_FingerID)"
		alias
			"fingerId"
		end

	frozen get_touch_finger_event_struct_finger_id(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):SDL_FingerID"
		alias
			"fingerId"
		end

	frozen set_touch_finger_event_struct_x (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, float)"
		alias
			"x"
		end

	frozen get_touch_finger_event_struct_x(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):float"
		alias
			"x"
		end

	frozen set_touch_finger_event_struct_y (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, float)"
		alias
			"y"
		end

	frozen get_touch_finger_event_struct_y(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):float"
		alias
			"y"
		end

	frozen set_touch_finger_event_struct_dx (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, float)"
		alias
			"dx"
		end

	frozen get_touch_finger_event_struct_dx(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):float"
		alias
			"dx"
		end

	frozen set_touch_finger_event_struct_dy (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, float)"
		alias
			"dy"
		end

	frozen get_touch_finger_event_struct_dy(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):float"
		alias
			"dy"
		end

	frozen set_touch_finger_event_struct_pressure (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, float)"
		alias
			"pressure"
		end

	frozen get_touch_finger_event_struct_pressure(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):float"
		alias
			"pressure"
		end

feature -- Structure SDL_MultiGestureEvent SDL.h

	frozen c_sizeof_sdl_multi_gesture_event:INTEGER
			-- Size of an SDL_MultiGestureEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_MultiGestureEvent)"
		end

	frozen set_multi_gesture_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_MULTIGESTURE
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent, Uint32)"
		alias
			"type"
		end

	frozen get_multi_gesture_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_MULTIGESTURE
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent):Uint32"
		alias
			"type"
		end

	frozen set_multi_gesture_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_multi_gesture_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_multi_gesture_event_struct_touch_id (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent, SDL_TouchID)"
		alias
			"touchId"
		end

	frozen get_multi_gesture_event_struct_touch_id(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent):SDL_TouchID"
		alias
			"touchId"
		end

	frozen set_multi_gesture_event_struct_num_fingers (ptr: POINTER; value:NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent, Uint16)"
		alias
			"numFingers"
		end

	frozen get_multi_gesture_event_struct_num_fingers(ptr:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent):Uint16"
		alias
			"numFingers"
		end

	frozen set_multi_gesture_event_struct_x (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent, float)"
		alias
			"x"
		end

	frozen get_multi_gesture_event_struct_x(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent):float"
		alias
			"x"
		end

	frozen set_multi_gesture_event_struct_y (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent, float)"
		alias
			"y"
		end

	frozen get_multi_gesture_event_struct_y(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent):float"
		alias
			"y"
		end

	frozen set_multi_gesture_event_struct_ddist (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent, float)"
		alias
			"dDist"
		end

	frozen get_multi_gesture_event_struct_ddist(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent):float"
		alias
			"dDist"
		end

	frozen set_multi_gesture_event_struct_dtheta (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent, float)"
		alias
			"dTheta"
		end

	frozen get_multi_gesture_event_struct_dtheta(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent):float"
		alias
			"dTheta"
		end

feature -- Structure SDL_DollarGestureEvent SDL.h

	frozen c_sizeof_sdl_dollar_gesture_event:INTEGER
			-- Size of an SDL_DollarGestureEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_DollarGestureEvent)"
		end

	frozen set_dollar_gesture_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_DOLLARGESTURE
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, Uint32)"
		alias
			"type"
		end

	frozen get_dollar_gesture_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_DOLLARGESTURE
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent):Uint32"
		alias
			"type"
		end

	frozen set_dollar_gesture_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_dollar_gesture_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_dollar_gesture_event_struct_touch_id (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, SDL_TouchID)"
		alias
			"touchId"
		end

	frozen get_dollar_gesture_event_struct_touch_id(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent):SDL_TouchID"
		alias
			"touchId"
		end

	frozen set_dollar_gesture_event_struct_gesture_id (ptr: POINTER; value:INTEGER_32)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, SDL_GestureID)"
		alias
			"gestureId"
		end

	frozen get_dollar_gesture_event_struct_gesture_id(ptr:POINTER):INTEGER_32
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent):SDL_GestureID"
		alias
			"gestureId"
		end

	frozen set_dollar_gesture_event_struct_num_fingers (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, Uint32)"
		alias
			"numFingers"
		end

	frozen get_dollar_gesture_event_struct_num_fingers(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent):Uint32"
		alias
			"numFingers"
		end

	frozen set_dollar_gesture_event_struct_error (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, float)"
		alias
			"error"
		end

	frozen get_dollar_gesture_event_struct_error(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent):float"
		alias
			"error"
		end

	frozen set_dollar_gesture_event_struct_x (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, float)"
		alias
			"x"
		end

	frozen get_dollar_gesture_event_struct_x(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent):float"
		alias
			"x"
		end

	frozen set_dollar_gesture_event_struct_y (ptr: POINTER; value:REAL_32)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, float)"
		alias
			"y"
		end

	frozen get_dollar_gesture_event_struct_y(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent):float"
		alias
			"y"
		end

feature -- Structure SDL_DropEvent SDL.h

	frozen c_sizeof_sdl_drop_event:INTEGER
			-- Size of an SDL_DropEvent C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_DropEvent)"
		end

	frozen set_drop_event_struct_type (ptr: POINTER; value:NATURAL_32)
			-- Event type. Always SDL_DROPFILE
		external
			"C [struct <SDL.h>] (SDL_DropEvent, Uint32)"
		alias
			"type"
		end

	frozen get_drop_event_struct_type(ptr:POINTER):NATURAL_32
			-- Event type. Always SDL_DROPFILE
		external
			"C [struct <SDL.h>] (SDL_DropEvent):Uint32"
		alias
			"type"
		end

	frozen set_drop_event_struct_timestamp (ptr: POINTER; value:NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_DropEvent, Uint32)"
		alias
			"timestamp"
		end

	frozen get_drop_event_struct_timestamp(ptr:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_DropEvent):Uint32"
		alias
			"timestamp"
		end

	frozen set_drop_event_struct_file (ptr: POINTER; value:POINTER)
		external
			"C [struct <SDL.h>] (SDL_DropEvent, char*)"
		alias
			"file"
		end

	frozen get_drop_event_struct_file(ptr:POINTER):POINTER
		external
			"C [struct <SDL.h>] (SDL_DropEvent):char*"
		alias
			"file"
		end

feature {GAME_SDL_CONSTANTS} -- Constants

	frozen SDL_WINDOWEVENT:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWEVENT"
		end

	frozen SDL_KEYDOWN:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_KEYDOWN"
		end

	frozen SDL_KEYUP:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_KEYUP"
		end

	frozen SDL_TEXTEDITING:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_TEXTEDITING"
		end

	frozen SDL_TEXTINPUT:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_TEXTINPUT"
		end

	frozen SDL_MOUSEMOTION:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_MOUSEMOTION"
		end

	frozen SDL_MOUSEBUTTONDOWN:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_MOUSEBUTTONDOWN"
		end

	frozen SDL_MOUSEBUTTONUP:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_MOUSEBUTTONUP"
		end

	frozen SDL_MOUSEWHEEL:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_MOUSEWHEEL"
		end

	frozen SDL_JOYAXISMOTION:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_JOYAXISMOTION"
		end

	frozen SDL_JOYBALLMOTION:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_JOYBALLMOTION"
		end

	frozen SDL_JOYHATMOTION:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_JOYHATMOTION"
		end

	frozen SDL_JOYBUTTONDOWN:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_JOYBUTTONDOWN"
		end

	frozen SDL_JOYBUTTONUP:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_JOYBUTTONUP"
		end

	frozen SDL_JOYDEVICEADDED:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_JOYDEVICEADDED"
		end

	frozen SDL_JOYDEVICEREMOVED:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_JOYDEVICEREMOVED"
		end

	frozen SDL_CONTROLLERAXISMOTION:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_CONTROLLERAXISMOTION"
		end

	frozen SDL_CONTROLLERBUTTONDOWN:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_CONTROLLERBUTTONDOWN"
		end

	frozen SDL_CONTROLLERBUTTONUP:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_CONTROLLERBUTTONUP"
		end

	frozen SDL_CONTROLLERDEVICEADDED:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_CONTROLLERDEVICEADDED"
		end

	frozen SDL_CONTROLLERDEVICEREMOVED:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_CONTROLLERDEVICEREMOVED"
		end

	frozen SDL_CONTROLLERDEVICEREMAPPED:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_CONTROLLERDEVICEREMAPPED"
		end

	frozen SDL_QUIT:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_QUIT"
		end

	frozen SDL_FINGERMOTION:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_FINGERMOTION"
		end

	frozen SDL_FINGERDOWN:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_FINGERDOWN"
		end

	frozen SDL_FINGERUP:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_FINGERUP"
		end

	frozen SDL_MULTIGESTURE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_MULTIGESTURE"
		end

	frozen SDL_DROPFILE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_DROPFILE"
		end

	frozen SDL_DOLLARGESTURE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_DOLLARGESTURE"
		end

end
