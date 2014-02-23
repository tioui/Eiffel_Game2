note
	description: "External of the SDL library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

class
	GAME_SDL_EXTERNAL

feature -- Function SDL.h

	frozen SDL_Init(flags:NATURAL_32):INTEGER
		external
			"C (Uint32) : int | <SDL.h>"
		alias
			"SDL_Init"
		end

	frozen SDL_Quit_lib
		external
			"C | <SDL.h>"
		alias
			"SDL_Quit"
		end

	frozen SDL_ClearError
		external
			"C | <SDL.h>"
		alias
			"SDL_ClearError"
		end

	frozen SDL_GetError:POINTER
		external
			"C : const char* | <SDL.h>"
		alias
			"SDL_GetError"
		end

	frozen SDL_WasInit(flags:NATURAL_32):NATURAL_32
		external
			"C (Uint32) : Uint32 | <SDL.h>"
		alias
			"SDL_WasInit"
		end

	frozen SDL_InitSubSystem(flags:NATURAL_32):INTEGER
		external
			"C (Uint32) : int | <SDL.h>"
		alias
			"SDL_InitSubSystem"
		end

	frozen SDL_JoystickOpen(device_index:INTEGER):POINTER
		external
			"C (int) : SDL_Joystick* | <SDL.h>"
		alias
			"SDL_JoystickOpen"
		end

	frozen SDL_JoystickClose(joystick:POINTER)
		external
			"C (SDL_Joystick*) | <SDL.h>"
		alias
			"SDL_JoystickClose"
		end

	frozen SDL_NumJoysticks:INTEGER
		external
			"C : int | <SDL.h>"
		alias
			"SDL_NumJoysticks"
		end

	frozen SDL_CreateWindow(title:POINTER;x,y,w,h:INTEGER;flags:NATURAL_32):POINTER
		external
			"C (const char*, int, int, int, int, Uint32) : SDL_Window* | <SDL.h>"
		alias
			"SDL_CreateWindow"
		end

	frozen SDL_DestroyWindow(window:POINTER)
		external
			"C (SDL_Window*) | <SDL.h>"
		alias
			"SDL_DestroyWindow"
		end

	frozen SDL_GetWindowBrightness(window:POINTER):REAL_32
		external
			"C (SDL_Window*) : float | <SDL.h>"
		alias
			"SDL_GetWindowBrightness"
		end

	frozen SDL_SetWindowBrightness(window:POINTER; brightness:REAL_32):INTEGER
		external
			"C (SDL_Window*, float) : int | <SDL.h>"
		alias
			"SDL_SetWindowBrightness"
		end

	frozen SDL_GetWindowDisplayIndex(window:POINTER):INTEGER
		external
			"C (SDL_Window*) : int | <SDL.h>"
		alias
			"SDL_GetWindowDisplayIndex"
		end

	frozen SDL_WINDOWPOS_UNDEFINED_DISPLAY(display:INTEGER):INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWPOS_UNDEFINED_DISPLAY($display)"
		end

	frozen SDL_WINDOWPOS_CENTERED_DISPLAY(display:INTEGER):INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOWPOS_CENTERED_DISPLAY($display)"
		end

	frozen SDL_GetNumVideoDisplays:INTEGER
		external
			"C : int | <SDL.h>"
		alias
			"SDL_GetNumVideoDisplays"
		end

	frozen SDL_Delay(ms:NATURAL_32)
		external
			"C (Uint32) | <SDL.h>"
		alias
			"SDL_Delay"
		end

	frozen SDL_GetDisplayBounds(displayIndex:INTEGER; rect:POINTER):INTEGER
		external
			"C (int, SDL_Rect*) :int | <SDL.h>"
		alias
			"SDL_GetDisplayBounds"
		end

	frozen SDL_GetCurrentDisplayMode(displayIndex:INTEGER; mode:POINTER):INTEGER
		external
			"C (int, SDL_DisplayMode*) :int | <SDL.h>"
		alias
			"SDL_GetCurrentDisplayMode"
		end

	frozen SDL_GetDesktopDisplayMode(displayIndex:INTEGER; mode:POINTER):INTEGER
		external
			"C (int, SDL_DisplayMode*) :int | <SDL.h>"
		alias
			"SDL_GetDesktopDisplayMode"
		end

	frozen SDL_GetClosestDisplayMode(displayIndex:INTEGER; mode, closest :POINTER):POINTER
		external
			"C (int, const SDL_DisplayMode*, SDL_DisplayMode*) :SDL_DisplayMode* | <SDL.h>"
		alias
			"SDL_GetClosestDisplayMode"
		end

	frozen SDL_GetNumDisplayModes(displayIndex:INTEGER):INTEGER
		external
			"C (int) :int | <SDL.h>"
		alias
			"SDL_GetNumDisplayModes"
		end

	frozen SDL_GetDisplayMode(displayIndex, modeIndex:INTEGER; mode:POINTER):INTEGER
		external
			"C (int, int, SDL_DisplayMode*) :int | <SDL.h>"
		alias
			"SDL_GetDisplayMode"
		end

	frozen SDL_GetDisplayName(displayIndex:INTEGER):POINTER
		external
			"C (int) :const char* | <SDL.h>"
		alias
			"SDL_GetDisplayName"
		end

	frozen SDL_GetWindowPixelFormat(window:POINTER):NATURAL_32
		external
			"C (SDL_Window*) :Uint32 | <SDL.h>"
		alias
			"SDL_GetWindowPixelFormat"
		end

	frozen SDL_VERSION_COMPILE(x:POINTER)
		external
			"C inline use <SDL.h>"
		alias
			"SDL_VERSION((SDL_version*)$x)"
		end

	frozen SDL_GetWindowWMInfo(window, info:POINTER):BOOLEAN
		external
			"C (SDL_Window*, SDL_SysWMinfo*) :SDL_bool | <SDL_syswm.h>"
		alias
			"SDL_GetWindowWMInfo"
		end

	frozen SDL_GetTicks:NATURAL_32
		external
			"C :Uint32 | <SDL.h>"
		alias
			"SDL_GetTicks"
		end

	frozen SDL_ShowCursor(toggle:INTEGER):INTEGER
		external
			"C (int) :int | <SDL.h>"
		alias
			"SDL_ShowCursor"
		end

	frozen SDL_LoadBMP(file:POINTER):POINTER
		external
			"C (const char*) :SDL_Surface* | <SDL.h>"
		alias
			"SDL_LoadBMP"
		end

	frozen SDL_FreeSurface(surface:POINTER)
		external
			"C (SDL_Surface*) | <SDL.h>"
		alias
			"SDL_FreeSurface"
		end

	frozen SDL_AllocRW:POINTER
		external
			"C :SDL_RWops* | <SDL.h>"
		alias
			"SDL_AllocRW"
		end

	frozen SDL_FreeRW(area:POINTER)
		external
			"C (SDL_RWops*) | <SDL.h>"
		alias
			"SDL_FreeRW"
		end

	frozen SDL_LoadBMP_RW(src:POINTER;freesrc:INTEGER):POINTER
		external
			"C (SDL_RWops*,int) :SDL_Surface* | <SDL.h>"
		alias
			"SDL_LoadBMP_RW"
		end

	frozen SDL_CreateRGBSurface(flags:NATURAL_32; width, height, depth:INTEGER; Rmask, Gmask, Bmask, Amask:NATURAL_32):POINTER
		external
			"C (Uint32,int,int,int,Uint32,Uint32,Uint32,Uint32) :SDL_Surface* | <SDL.h>"
		alias
			"SDL_CreateRGBSurface"
		end

	frozen SDL_PixelFormatEnumToMasks(format:NATURAL_32; bpp, Rmask, Gmask, Bmask, Amask:POINTER):BOOLEAN
		external
			"C (Uint32,int*,Uint32*,Uint32*,Uint32*,Uint32*) :SDL_bool | <SDL.h>"
		alias
			"SDL_PixelFormatEnumToMasks"
		end

	frozen SDL_AllocFormat(pixel_format:NATURAL_32):POINTER
		external
			"C (Uint32) :SDL_PixelFormat* | <SDL.h>"
		alias
			"SDL_AllocFormat"
		end

	frozen SDL_FreeFormat(format:POINTER)
		external
			"C (SDL_PixelFormat*) | <SDL.h>"
		alias
			"SDL_FreeFormat"
		end

	frozen SDL_ConvertSurfaceFormat(src:POINTER;pixel_format,flags:NATURAL_32):POINTER
		external
			"C (SDL_Surface*, Uint32, Uint32) :SDL_Surface* | <SDL.h>"
		alias
			"SDL_ConvertSurfaceFormat"
		end

	frozen SDL_ConvertSurface(src, fmt:POINTER;flags:NATURAL_32):POINTER
		external
			"C (SDL_Surface*, const SDL_PixelFormat*, Uint32) :SDL_Surface* | <SDL.h>"
		alias
			"SDL_ConvertSurface"
		end

	frozen SDL_BlitSurface(src, srcrect, dst, dstrect:POINTER):INTEGER
		external
			"C (SDL_Surface*, const SDL_Rect*, SDL_Surface*, SDL_Rect*) :int | <SDL.h>"
		alias
			"SDL_BlitSurface"
		end

	frozen SDL_FillRect(dst, rect:POINTER; collor:NATURAL_32):INTEGER
		external
			"C (SDL_Surface*, const SDL_Rect*, Uint32) :int | <SDL.h>"
		alias
			"SDL_FillRect"
		end

	frozen SDL_MapRGBA(format:POINTER; r,g,b,a:NATURAL_8):NATURAL_32
		external
			"C (const SDL_PixelFormat*, Uint8, Uint8, Uint8, Uint8) :Uint32 | <SDL.h>"
		alias
			"SDL_MapRGBA"
		end

	frozen SDL_MapRGB(format:POINTER; r,g,b:NATURAL_8):NATURAL_32
		external
			"C (const SDL_PixelFormat*, Uint8, Uint8, Uint8) :Uint32 | <SDL.h>"
		alias
			"SDL_MapRGB"
		end

	frozen SDL_GetRGBA(pixel:NATURAL_32;format, r,g,b,a:POINTER)
		external
			"C (Uint32, const SDL_PixelFormat*, Uint8*, Uint8*, Uint8*, Uint8*) | <SDL.h>"
		alias
			"SDL_GetRGBA"
		end

	frozen SDL_GetWindowSurface(window:POINTER):POINTER
		external
			"C (SDL_Window*) : SDL_Surface* | <SDL.h>"
		alias
			"SDL_GetWindowSurface"
		end

	frozen SDL_UpdateWindowSurface(window:POINTER):INTEGER
		external
			"C (SDL_Window*) : int | <SDL.h>"
		alias
			"SDL_UpdateWindowSurface"
		end

	frozen SDL_UpdateWindowSurfaceRects(window, rects:POINTER; numrects:INTEGER):INTEGER
		external
			"C (SDL_Window*, const SDL_Rect*, int) : int | <SDL.h>"
		alias
			"SDL_UpdateWindowSurfaceRects"
		end

	frozen SDL_SetColorKey(surface:POINTER; flag:INTEGER;key:NATURAL_32):INTEGER
		external
			"C (SDL_Surface*, int, Uint32) : int | <SDL.h>"
		alias
			"SDL_SetColorKey"
		end

	frozen SDL_GetColorKey(surface, key:POINTER):INTEGER
		external
			"C (SDL_Surface*, Uint32*) : int | <SDL.h>"
		alias
			"SDL_GetColorKey"
		end

	frozen SDL_BlitScaled(src, srcrect, dst, dstrect :POINTER):INTEGER
		external
			"C (SDL_Surface*, const SDL_Rect*, SDL_Surface*, SDL_Rect*) : int | <SDL.h>"
		alias
			"SDL_BlitScaled"
		end

	frozen SDL_PollEvent(event :POINTER):INTEGER
		external
			"C (SDL_Event*) : int | <SDL.h>"
		alias
			"SDL_PollEvent"
		end

	frozen SDL_MasksToPixelFormatEnum(bpp:INTEGER;Rmask,Gmask,Bmask,Amask:NATURAL_32):NATURAL_32
		external
			"C (int, Uint32, Uint32, Uint32, Uint32) : Uint32 | <SDL.h>"
		alias
			"SDL_MasksToPixelFormatEnum"
		end

	frozen SDL_RWFromFile(file, mode:POINTER):POINTER
		external
			"C (const char*, const char*) : SDL_RWops* | <SDL.h>"
		alias
			"SDL_RWFromFile"
		end

	frozen SDL_GetSurfaceBlendMode(surface, blendMode:POINTER):INTEGER
		external
			"C (SDL_Surface*, SDL_BlendMode*) : int | <SDL.h>"
		alias
			"SDL_GetSurfaceBlendMode"
		end

	frozen SDL_SetSurfaceBlendMode(surface:POINTER; blendMode:INTEGER):INTEGER
		external
			"C (SDL_Surface*, SDL_BlendMode) : int | <SDL.h>"
		alias
			"SDL_SetSurfaceBlendMode"
		end

	frozen SDL_GetSurfaceAlphaMod(surface, alpha:POINTER):INTEGER
		external
			"C (SDL_Surface*, Uint8*) : int | <SDL.h>"
		alias
			"SDL_GetSurfaceAlphaMod"
		end

	frozen SDL_SetSurfaceAlphaMod(surface:POINTER;alpha:NATURAL_8):INTEGER
		external
			"C (SDL_Surface*, Uint8) : int | <SDL.h>"
		alias
			"SDL_SetSurfaceAlphaMod"
		end

	frozen SDL_GetSurfaceColorMod(surface, r, g, b:POINTER):INTEGER
		external
			"C (SDL_Surface*, Uint8*, Uint8*, Uint8*) : int | <SDL.h>"
		alias
			"SDL_GetSurfaceColorMod"
		end

	frozen SDL_SetSurfaceColorMod(surface:POINTER;r, g, b:NATURAL_8):INTEGER
		external
			"C (SDL_Surface*, Uint8, Uint8, Uint8) : int | <SDL.h>"
		alias
			"SDL_SetSurfaceColorMod"
		end

	frozen SDL_SetSurfaceRLE(surface:POINTER;flag:INTEGER):INTEGER
		external
			"C (SDL_Surface*, int) : int | <SDL.h>"
		alias
			"SDL_SetSurfaceRLE"
		end

feature -- Manual C function (implemented in sdl_additions.c)

	frozen rotateSurface90Degrees(surface:POINTER;nb_clockwise:INTEGER):POINTER
			-- Do a 90 degree Rotation on the `surface' `nb_clockwise' times
		external
			"C (SDL_Surface *,int) : SDL_Surface * | %"sdl_additions.h%""
		alias
			"rotateSurface90Degrees_all"
		end

	frozen getPixel(surface:POINTER;x,y:INTEGER):NATURAL_32
			-- Get the pixel internal color representation of the `surface' at (`x',`y')
		external
			"C (SDL_Surface *,int,int) : Uint32 | %"sdl_additions.h%""
		alias
			"getpixel"
		end

	frozen putPixel(surface:POINTER;x,y:INTEGER;pixel:NATURAL_32)
			-- Put the pixel internal color representation on the `surface' at (`x',`y')
		external
			"C (SDL_Surface *,int,int,Uint32) | %"sdl_additions.h%""
		alias
			"putpixel"
		end

	frozen copyPalette(surface_src,surface_dst:POINTER)
			-- copy the internal color palette of the `surface_src' to the `surface_dst'.
		external
			"C (SDL_Surface *,SDL_Surface *)  | %"sdl_additions.h%""
		alias
			"CopyPalette_8"
		end

	frozen MirrorSurfaceX(surface:POINTER):POINTER
			-- Mirror the `surface' by the X axis
		external
			"C (SDL_Surface *) : SDL_Surface * | %"sdl_additions.h%""
		alias
			"MirrorSurfaceX"
		end


	frozen MirrorSurfaceY(surface:POINTER):POINTER
			-- Mirror the `surface' by the Y axis
		external
			"C (SDL_Surface *) : SDL_Surface * | %"sdl_additions.h%""
		alias
			"MirrorSurfaceY"
		end


	frozen setSDLRWops(rwop,cpf_infos:POINTER)
			-- Set a CustomPackageFileInfos in the SDL ressource reader.
		external
			"C (SDL_RWops *,CustomPackageFileInfos*) | %"sdl_additions.h%""
		alias
			"setSDLRWops"
		end

feature -- Structure SDL_DisplayMode SDL.h

	frozen c_sizeof_sdl_display_mode:INTEGER
			-- Size of an SDL_DisplayMode C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_DisplayMode)"
		end

	frozen set_display_mode_struct_format (mode: POINTER; format:NATURAL_32)
			-- One of the SDL_PixelFormatEnum values
		external
			"C [struct <SDL.h>] (SDL_DisplayMode, Uint32)"
		alias
			"format"
		end

	frozen get_display_mode_struct_format(mode:POINTER):NATURAL_32
			-- One of the SDL_PixelFormatEnum values
		external
			"C [struct <SDL.h>] (SDL_DisplayMode):Uint32"
		alias
			"format"
		end

	frozen set_display_mode_struct_w (mode: POINTER; w:INTEGER)
			-- Width
		external
			"C [struct <SDL.h>] (SDL_DisplayMode, int)"
		alias
			"w"
		end

	frozen get_display_mode_struct_w(mode:POINTER):INTEGER
			-- Width
		external
			"C [struct <SDL.h>] (SDL_DisplayMode):int"
		alias
			"w"
		end

	frozen set_display_mode_struct_h (mode: POINTER; h:INTEGER)
			-- Height
		external
			"C [struct <SDL.h>] (SDL_DisplayMode, int)"
		alias
			"h"
		end

	frozen get_display_mode_struct_h(mode:POINTER):INTEGER
			-- Height
		external
			"C [struct <SDL.h>] (SDL_DisplayMode):int"
		alias
			"h"
		end

	frozen set_display_mode_struct_refresh_rate (mode: POINTER; refresh_rate:INTEGER)
			-- Refresh rate (in Hz), or 0 for unspecified
		external
			"C [struct <SDL.h>] (SDL_DisplayMode, int)"
		alias
			"refresh_rate"
		end

	frozen get_display_mode_struct_refresh_rate(mode:POINTER):INTEGER
			-- Refresh rate (in Hz), or 0 for unspecified
		external
			"C [struct <SDL.h>] (SDL_DisplayMode):int"
		alias
			"refresh_rate"
		end


feature -- Structure SDL_Rect SDL.h

	frozen c_sizeof_sdl_rect:INTEGER
			-- Size of an SDL_Rect C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_Rect)"
		end

	frozen set_rect_struct_x (rect: POINTER; x:INTEGER)
			-- X location of the rectangle's upper left corner
		external
			"C [struct <SDL.h>] (SDL_Rect, int)"
		alias
			"x"
		end

	frozen get_rect_struct_x(rect:POINTER):INTEGER
			-- X location of the rectangle's upper left corner
		external
			"C [struct <SDL.h>] (SDL_Rect):int"
		alias
			"x"
		end

	frozen set_rect_struct_y (rect: POINTER; y:INTEGER)
			-- Y location of the rectangle's upper left corner
		external
			"C [struct <SDL.h>] (SDL_Rect, int)"
		alias
			"y"
		end

	frozen get_rect_struct_y(rect:POINTER):INTEGER
			-- Y location of the rectangle's upper left corner
		external
			"C [struct <SDL.h>] (SDL_Rect):int"
		alias
			"y"
		end

	frozen set_rect_struct_w (rect: POINTER; w:INTEGER)
			-- Width of the rectangle
		external
			"C [struct <SDL.h>] (SDL_Rect, int)"
		alias
			"w"
		end

	frozen get_rect_struct_w(rect:POINTER):INTEGER
			-- Width of the rectangle
		external
			"C [struct <SDL.h>] (SDL_Rect):int"
		alias
			"w"
		end

	frozen set_rect_struct_h (rect: POINTER; h:INTEGER)
			-- Height of the rectangle
		external
			"C [struct <SDL.h>] (SDL_Rect, int)"
		alias
			"h"
		end

	frozen get_rect_struct_h(rect:POINTER):INTEGER
			-- Height of the rectangle
		external
			"C [struct <SDL.h>] (SDL_Rect):int"
		alias
			"h"
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

	frozen set_dollar_gesture_event_struct_touch_id (ptr: POINTER; value:NATURAL_64)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, SDL_TouchID)"
		alias
			"touchId"
		end

	frozen get_dollar_gesture_event_struct_touch_id(ptr:POINTER):NATURAL_64
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent):SDL_TouchID"
		alias
			"touchId"
		end

	frozen set_dollar_gesture_event_struct_gesture_id (ptr: POINTER; value:INTEGER_64)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, SDL_GestureID)"
		alias
			"gestureId"
		end

	frozen get_dollar_gesture_event_struct_gesture_id(ptr:POINTER):INTEGER_64
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

feature -- Structure SDL_SysWMinfo SDL.h

	frozen c_sizeof_sdl_sys_wm_info:INTEGER
			-- Size of an SDL_SysWMinfo C structure.
		external
			"C inline use <SDL_syswm.h>"
		alias
			"sizeof(SDL_SysWMinfo)"
		end

	frozen get_sys_wm_struct_version(ptr:POINTER):POINTER
			-- Set to the version of the current SDL library.
		external
			"C inline use <SDL_syswm.h>"
		alias
			"&(((SDL_SysWMinfo*)$ptr)->version)"
		end

	frozen get_sys_wm_struct_subsystem(ptr:POINTER):INTEGER
		external
			"C [struct <SDL_syswm.h>] (SDL_SysWMinfo):int"
		alias
			"subsystem"
		end

feature -- Structure SDL_version SDL.h

	frozen c_sizeof_sdl_version:INTEGER
			-- Size of an SDL_SysWMinfo C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_version)"
		end

	frozen get_sdl_version_struct_major(ptr:POINTER):NATURAL_8
			-- The major version of the SDL library.
		external
			"C [struct <SDL.h>] (SDL_version):Uint8"
		alias
			"major"
		end

	frozen get_sdl_version_struct_minor(ptr:POINTER):NATURAL_8
			-- The minor version of the SDL library.
		external
			"C [struct <SDL.h>] (SDL_version):Uint8"
		alias
			"minor"
		end

	frozen get_sdl_version_struct_patch(ptr:POINTER):NATURAL_8
			-- The patch level version of the SDL library.
		external
			"C [struct <SDL.h>] (SDL_version):Uint8"
		alias
			"patch"
		end

feature -- Structure SDL_PixelFormat SDL.h

	frozen get_sdl_pixel_format_struct_format(ptr:POINTER):NATURAL_32
			-- the SDL_PixelFormatEnum values
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):Uint32"
		alias
			"format"
		end

	frozen get_sdl_pixel_format_struct_palette(ptr:POINTER):POINTER
			-- an SDL_Palette structure associated with this pixel format, or NULL if the format doesn't have a palette
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):SDL_Palette*"
		alias
			"palette"
		end

	frozen get_sdl_pixel_format_struct_bytes_per_pixel(ptr:POINTER):NATURAL_8
			-- the number of bytes required to hold a pixel value, eg: 1, 2, 3, 4
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):Uint8"
		alias
			"BytesPerPixel"
		end

	frozen get_sdl_pixel_format_struct_bits_per_pixel(ptr:POINTER):NATURAL_8
			-- the number of significant bits in a pixel value, eg: 8, 15, 16, 24, 32
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):Uint8"
		alias
			"BitsPerPixel"
		end

	frozen get_sdl_pixel_format_struct_rmask(ptr:POINTER):NATURAL_32
			-- a mask representing the location of the red component of the pixel
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):Uint32"
		alias
			"Rmask"
		end

	frozen get_sdl_pixel_format_struct_gmask(ptr:POINTER):NATURAL_32
			-- a mask representing the location of the green component of the pixel
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):Uint32"
		alias
			"Gmask"
		end

	frozen get_sdl_pixel_format_struct_bmask(ptr:POINTER):NATURAL_32
			-- a mask representing the location of the blue component of the pixel
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):Uint32"
		alias
			"Bmask"
		end

	frozen get_sdl_pixel_format_struct_amask(ptr:POINTER):NATURAL_32
			-- a mask representing the location of the alpha component of the pixel
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):Uint32"
		alias
			"Amask"
		end

feature -- Structure SDL_Surface SDL.h

	frozen get_sdl_surface_struct_format(ptr:POINTER):POINTER
			-- the format of the pixels stored in the surface
		external
			"C [struct <SDL.h>] (SDL_Surface):SDL_PixelFormat*"
		alias
			"format"
		end

	frozen get_sdl_surface_struct_w(ptr:POINTER):INTEGER
			-- the width in pixels
		external
			"C [struct <SDL.h>] (SDL_Surface):int"
		alias
			"w"
		end

	frozen get_sdl_surface_struct_h(ptr:POINTER):INTEGER
			-- the height in pixels
		external
			"C [struct <SDL.h>] (SDL_Surface):int"
		alias
			"h"
		end

	frozen get_sdl_surface_struct_pitch(ptr:POINTER):INTEGER
			-- the length of a row of pixels in bytes
		external
			"C [struct <SDL.h>] (SDL_Surface):int"
		alias
			"pitch"
		end

	frozen get_sdl_surface_struct_pixels(ptr:POINTER):POINTER
			-- the pointer to the actual pixel data
		external
			"C [struct <SDL.h>] (SDL_Surface):void*"
		alias
			"pixels"
		end

	frozen get_sdl_surface_struct_refcount(ptr:POINTER):INTEGER
			-- reference count that can be incremented by the application
		external
			"C [struct <SDL.h>] (SDL_Surface):int"
		alias
			"refcount"
		end

feature -- Structure SDL_Color SDL.h

	frozen c_sizeof_sdl_color:INTEGER
			-- Size of an SDL_Color C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_Color)"
		end

	frozen set_sdl_color_struct_r (ptr: POINTER; value:NATURAL_8)
			-- the red component in the range 0-255
		external
			"C [struct <SDL.h>] (SDL_Color, Uint8)"
		alias
			"r"
		end

	frozen get_sdl_color_struct_r(ptr:POINTER):NATURAL_8
			-- the red component in the range 0-255
		external
			"C [struct <SDL.h>] (SDL_Color):Uint8"
		alias
			"r"
		end

	frozen set_sdl_color_struct_g (ptr: POINTER; value:NATURAL_8)
			-- the green component in the range 0-255
		external
			"C [struct <SDL.h>] (SDL_Color, Uint8)"
		alias
			"g"
		end

	frozen get_sdl_color_struct_g(ptr:POINTER):NATURAL_8
			-- the green component in the range 0-255
		external
			"C [struct <SDL.h>] (SDL_Color):Uint8"
		alias
			"g"
		end

	frozen set_sdl_color_struct_b (ptr: POINTER; value:NATURAL_8)
			-- the blue component in the range 0-255
		external
			"C [struct <SDL.h>] (SDL_Color, Uint8)"
		alias
			"b"
		end

	frozen get_sdl_color_struct_b(ptr:POINTER):NATURAL_8
			-- the blue component in the range 0-255
		external
			"C [struct <SDL.h>] (SDL_Color):Uint8"
		alias
			"b"
		end

	frozen set_sdl_color_struct_a (ptr: POINTER; value:NATURAL_8)
			-- the alpha component in the range 0-255
		external
			"C [struct <SDL.h>] (SDL_Color, Uint8)"
		alias
			"a"
		end

	frozen get_sdl_color_struct_a(ptr:POINTER):NATURAL_8
			-- the alpha component in the range 0-255
		external
			"C [struct <SDL.h>] (SDL_Color):Uint8"
		alias
			"a"
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

	frozen SDL_INIT_TIMER:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_TIMER"
		end

	frozen SDL_INIT_AUDIO:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_AUDIO"
		end

	frozen SDL_INIT_VIDEO:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_VIDEO"
		end

	frozen SDL_INIT_JOYSTICK:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_JOYSTICK"
		end

	frozen SDL_INIT_HAPTIC:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_HAPTIC"
		end

	frozen SDL_INIT_GAMECONTROLLER:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_GAMECONTROLLER"
		end

	frozen SDL_INIT_EVENTS:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_EVENTS"
		end

	frozen SDL_INIT_EVERYTHING:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_EVERYTHING"
		end

	frozen SDL_INIT_NOPARACHUTE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_NOPARACHUTE"
		end

	frozen SDL_WINDOW_FULLSCREEN:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_FULLSCREEN"
		end

	frozen SDL_WINDOW_FULLSCREEN_DESKTOP:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_FULLSCREEN_DESKTOP"
		end

	frozen SDL_WINDOW_OPENGL:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_OPENGL"
		end

	frozen SDL_WINDOW_HIDDEN:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_HIDDEN"
		end

	frozen SDL_WINDOW_BORDERLESS:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_BORDERLESS"
		end

	frozen SDL_WINDOW_RESIZABLE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_RESIZABLE"
		end

	frozen SDL_WINDOW_MINIMIZED:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_MINIMIZED"
		end

	frozen SDL_WINDOW_MAXIMIZED:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_MAXIMIZED"
		end

	frozen SDL_WINDOW_INPUT_GRABBED:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_WINDOW_INPUT_GRABBED"
		end

	frozen SDL_PIXELFORMAT_UNKNOWN : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_UNKNOWN"
		end


	frozen SDL_PIXELFORMAT_INDEX1LSB : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX1LSB"
		end


	frozen SDL_PIXELFORMAT_INDEX1MSB : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX1MSB"
		end


	frozen SDL_PIXELFORMAT_INDEX4LSB : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX4LSB"
		end


	frozen SDL_PIXELFORMAT_INDEX4MSB : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX4MSB"
		end


	frozen SDL_PIXELFORMAT_INDEX8 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_INDEX8"
		end


	frozen SDL_PIXELFORMAT_RGB332 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB332"
		end


	frozen SDL_PIXELFORMAT_RGB444 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB444"
		end


	frozen SDL_PIXELFORMAT_RGB555 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB555"
		end


	frozen SDL_PIXELFORMAT_BGR555 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGR555"
		end


	frozen SDL_PIXELFORMAT_ARGB4444 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ARGB4444"
		end


	frozen SDL_PIXELFORMAT_RGBA4444 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGBA4444"
		end


	frozen SDL_PIXELFORMAT_ABGR4444 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ABGR4444"
		end


	frozen SDL_PIXELFORMAT_BGRA4444 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGRA4444"
		end


	frozen SDL_PIXELFORMAT_ARGB1555 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ARGB1555"
		end


	frozen SDL_PIXELFORMAT_RGBA5551 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGBA5551"
		end


	frozen SDL_PIXELFORMAT_ABGR1555 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ABGR1555"
		end


	frozen SDL_PIXELFORMAT_BGRA5551 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGRA5551"
		end


	frozen SDL_PIXELFORMAT_RGB565 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB565"
		end


	frozen SDL_PIXELFORMAT_BGR565 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGR565"
		end


	frozen SDL_PIXELFORMAT_RGB24 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB24"
		end


	frozen SDL_PIXELFORMAT_BGR24 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGR24"
		end


	frozen SDL_PIXELFORMAT_RGB888 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGB888"
		end


	frozen SDL_PIXELFORMAT_RGBX8888 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGBX8888"
		end


	frozen SDL_PIXELFORMAT_BGR888 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGR888"
		end


	frozen SDL_PIXELFORMAT_BGRX8888 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGRX8888"
		end


	frozen SDL_PIXELFORMAT_ARGB8888 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ARGB8888"
		end


	frozen SDL_PIXELFORMAT_RGBA8888 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_RGBA8888"
		end


	frozen SDL_PIXELFORMAT_ABGR8888 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ABGR8888"
		end


	frozen SDL_PIXELFORMAT_BGRA8888 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_BGRA8888"
		end


	frozen SDL_PIXELFORMAT_ARGB2101010 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_ARGB2101010"
		end


	frozen SDL_PIXELFORMAT_YV12 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_YV12"
		end


	frozen SDL_PIXELFORMAT_IYUV : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_IYUV"
		end


	frozen SDL_PIXELFORMAT_YUY2 : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_YUY2"
		end


	frozen SDL_PIXELFORMAT_UYVY : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_UYVY"
		end


	frozen SDL_PIXELFORMAT_YVYU : NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_PIXELFORMAT_YVYU"
		end

	frozen SDL_SYSWM_UNKNOWN : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SYSWM_UNKNOWN"
		end

	frozen SDL_SYSWM_WINDOWS : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SYSWM_WINDOWS"
		end

	frozen SDL_SYSWM_X11 : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SYSWM_X11"
		end

	frozen SDL_SYSWM_DIRECTFB : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SYSWM_DIRECTFB"
		end

	frozen SDL_SYSWM_COCOA : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SYSWM_COCOA"
		end

	frozen SDL_SYSWM_UIKIT : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SYSWM_UIKIT"
		end

	frozen SDL_ENABLE : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_ENABLE"
		end

	frozen SDL_DISABLE : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_DISABLE"
		end

	frozen SDL_QUERY : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_QUERY"
		end

	frozen SDL_FALSE : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_FALSE"
		end

	frozen SDL_TRUE : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_TRUE"
		end

	frozen SDL_BLENDMODE_NONE : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BLENDMODE_NONE"
		end

	frozen SDL_BLENDMODE_BLEND : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BLENDMODE_BLEND"
		end

	frozen SDL_BLENDMODE_ADD : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BLENDMODE_ADD"
		end

	frozen SDL_BLENDMODE_MOD : INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BLENDMODE_MOD"
		end



end
