note
	description: "External of the SDL2 library."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 02:40:10 +0000"
	revision: "2.0"

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

--	frozen SDL_GetGlobalMouseState(x,y:POINTER):NATURAL_32
--		external
--			"C (int*, int*) : Uint32 | <SDL.h>"
--		alias
--			"SDL_GetGlobalMouseState"
--		end

	frozen SDL_GetMouseState(x,y:POINTER):NATURAL_32
		external
			"C (int*, int*) : Uint32 | <SDL.h>"
		alias
			"SDL_GetMouseState"
		end

	frozen SDL_GetRelativeMouseMode:BOOLEAN
		external
			"C : SDL_bool | <SDL.h>"
		alias
			"SDL_GetRelativeMouseMode"
		end

	frozen SDL_SetRelativeMouseMode(enable:BOOLEAN):INTEGER
		external
			"C (SDL_bool) : int | <SDL.h>"
		alias
			"SDL_SetRelativeMouseMode"
		end

	frozen SDL_SetCursor(cursor:POINTER)
		external
			"C (SDL_Cursor*) | <SDL.h>"
		alias
			"SDL_SetCursor"
		end

	frozen SDL_GetCursor:POINTER
		external
			"C : SDL_Cursor* | <SDL.h>"
		alias
			"SDL_GetCursor"
		end

	frozen SDL_GetDefaultCursor:POINTER
		external
			"C : SDL_Cursor* | <SDL.h>"
		alias
			"SDL_GetDefaultCursor"
		end

	frozen SDL_CreateColorCursor(surface:POINTER; hot_x, hot_y:INTEGER):POINTER
		external
			"C (SDL_Surface*, int, int) : SDL_Cursor* | <SDL.h>"
		alias
			"SDL_CreateColorCursor"
		end

	frozen SDL_CreateSystemCursor(id:INTEGER):POINTER
		external
			"C (SDL_SystemCursor) : SDL_Cursor* | <SDL.h>"
		alias
			"SDL_CreateSystemCursor"
		end

	frozen SDL_FreeCursor(cursor:POINTER)
		external
			"C (SDL_Cursor*) | <SDL.h>"
		alias
			"SDL_FreeCursor"
		end

	frozen SDL_InitSubSystem(flags:NATURAL_32):INTEGER
		external
			"C (Uint32) : int | <SDL.h>"
		alias
			"SDL_InitSubSystem"
		end

	frozen SDL_QuitSubSystem(flags:NATURAL_32)
		external
			"C (Uint32) | <SDL.h>"
		alias
			"SDL_QuitSubSystem"
		end

	frozen SDL_GetKeyName(key:INTEGER_32):POINTER
		external
			"C (SDL_Keycode) : const char* | <SDL.h>"
		alias
			"SDL_GetKeyName"
		end


	frozen SDL_GetKeyFromScancode(scancode:INTEGER_32):INTEGER_32
		external
			"C (SDL_Scancode) : SDL_Keycode | <SDL.h>"
		alias
			"SDL_GetKeyFromScancode"
		end


	frozen SDL_GetScancodeFromKey(key:INTEGER_32):INTEGER_32
		external
			"C (SDL_Keycode) : SDL_Scancode | <SDL.h>"
		alias
			"SDL_GetScancodeFromKey"
		end

	frozen SDL_GetScancodeFromName(name:POINTER):INTEGER_32
		external
			"C (const char *) : SDL_Scancode | <SDL.h>"
		alias
			"SDL_GetScancodeFromName"
		end

	frozen SDL_GetKeyFromName(name:POINTER):INTEGER_32
		external
			"C (const char *) : SDL_Keycode | <SDL.h>"
		alias
			"SDL_GetKeyFromName"
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

	frozen SDL_JoystickUpdate
		external
			"C | <SDL.h>"
		alias
			"SDL_JoystickUpdate"
		end

	frozen SDL_JoystickEventState(state:INTEGER) : INTEGER
		external
			"C (int) : int | <SDL.h>"
		alias
			"SDL_JoystickEventState"
		end

	frozen SDL_JoystickGetAttached(joystick:POINTER) : BOOLEAN
		external
			"C (SDL_Joystick*) : SDL_bool | <SDL.h>"
		alias
			"SDL_JoystickGetAttached"
		end

	frozen SDL_JoystickNumAxes(joystick:POINTER) : INTEGER
		external
			"C (SDL_Joystick*) : int | <SDL.h>"
		alias
			"SDL_JoystickNumAxes"
		end

	frozen SDL_CreateRenderer(window:POINTER; index:INTEGER; flags:NATURAL_32) : POINTER
		external
			"C (SDL_Window*, int, Uint32) : SDL_Renderer* | <SDL.h>"
		alias
			"SDL_CreateRenderer"
		end

	frozen SDL_GetRenderer(window:POINTER) : POINTER
		external
			"C (SDL_Window*) : SDL_Renderer* | <SDL.h>"
		alias
			"SDL_GetRenderer"
		end

	frozen SDL_DestroyRenderer(renderer:POINTER)
		external
			"C (SDL_Renderer*) | <SDL.h>"
		alias
			"SDL_DestroyRenderer"
		end

	frozen SDL_JoystickGetAxis(joystick:POINTER; axis:INTEGER) : INTEGER_16
		external
			"C (SDL_Joystick*, int) : Sint16 | <SDL.h>"
		alias
			"SDL_JoystickGetAxis"
		end

	frozen SDL_JoystickNumBalls(joystick:POINTER) : INTEGER
		external
			"C (SDL_Joystick*) : int | <SDL.h>"
		alias
			"SDL_JoystickNumBalls"
		end

	frozen SDL_JoystickGetBall(joystick:POINTER; ball: INTEGER; dx, dy:POINTER) : INTEGER
		external
			"C (SDL_Joystick*, int, int*, int*) : int | <SDL.h>"
		alias
			"SDL_JoystickGetBall"
		end

	frozen SDL_JoystickNumButtons(joystick:POINTER) : INTEGER
		external
			"C (SDL_Joystick*) : int | <SDL.h>"
		alias
			"SDL_JoystickNumButtons"
		end

	frozen SDL_JoystickGetButton(joystick:POINTER; button: INTEGER) : BOOLEAN
		external
			"C (SDL_Joystick*, int) : Uint8 | <SDL.h>"
		alias
			"SDL_JoystickGetButton"
		end

	frozen SDL_JoystickNumHats(joystick:POINTER) : INTEGER
		external
			"C (SDL_Joystick*) : int | <SDL.h>"
		alias
			"SDL_JoystickNumHats"
		end

	frozen SDL_JoystickGetHat(joystick:POINTER; hat: INTEGER) : NATURAL_8
		external
			"C (SDL_Joystick*, int) : Uint8 | <SDL.h>"
		alias
			"SDL_JoystickGetHat"
		end

	frozen c_SDL_JoystickGetGUIDString(joystick, pszguid:POINTER; cbguid: INTEGER)
		external
			"C inline use <SDL.h>"
		alias
			"[
				SDL_JoystickGUID guid = SDL_JoystickGetGUID((SDL_Joystick*)$joystick);
				SDL_JoystickGetGUIDString(guid, (char*)$pszguid, (int)$cbguid);
			]"
		end

	frozen c_SDL_JoystickGetDeviceGUIDString(deviceindex:INTEGER; pszguid:POINTER; cbguid: INTEGER)
		external
			"C inline use <SDL.h>"
		alias
			"[
				SDL_JoystickGUID guid = SDL_JoystickGetDeviceGUID((int)$deviceindex);
				SDL_JoystickGetGUIDString(guid, (char*)$pszguid, (int)$cbguid);
			]"
		end



--	frozen SDL_JoystickGetGUIDString(guid, pszguid:POINTER; cbguid: INTEGER)
--		external
--			"C inline use <SDL.h>"
--		alias
--			"SDL_JoystickGetGUIDString(*((SDL_JoystickGUID*)$guid), (char*)$pszguid, (int)$cbguid)"
--		end

--	frozen SDL_JoystickGetGUID(joystick:POINTER): POINTER
--		external
--			"C inline use <SDL.h>"
--		alias
--			"[
--				SDL_Joystick* joystick = (SDL_Joystick*)$joystick;
--				return &(SDL_JoystickGetGUID(joystick));
--			]"
--		end

--	frozen SDL_JoystickGetDeviceGUID(deviceindex:INTEGER): POINTER
--		external
--			"C inline use <SDL.h>"
--		alias
--			"[
--				int index = (int)$deviceindex;7
--				return &(SDL_JoystickGetDeviceGUID(index);
--			]"
--		end

	frozen SDL_JoystickInstanceID(joystick:POINTER) : INTEGER_32
		external
			"C (SDL_Joystick*) : SDL_JoystickID | <SDL.h>"
		alias
			"SDL_JoystickInstanceID"
		end

	frozen SDL_JoystickIsHaptic(joystick:POINTER) : INTEGER
		external
			"C (SDL_Joystick*) : int | <SDL.h>"
		alias
			"SDL_JoystickIsHaptic"
		end

	frozen SDL_JoystickName(joystick:POINTER) : POINTER
		external
			"C (SDL_Joystick*) : const char* | <SDL.h>"
		alias
			"SDL_JoystickName"
		end

	frozen SDL_JoystickNameForIndex(device_index:INTEGER) : POINTER
		external
			"C (int) : const char* | <SDL.h>"
		alias
			"SDL_JoystickNameForIndex"
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

	frozen SDL_GetWindowID(window:POINTER):NATURAL_32
		external
			"C (SDL_Window*) : Uint32 | <SDL.h>"
		alias
			"SDL_GetWindowID"
		end

	frozen SDL_WINDOWPOS_UNDEFINED_DISPLAY(display:INTEGER):INTEGER
		external
			"C [macro <SDL.h>] (EIF_INTEGER) : EIF_INTEGER"
		alias
			"SDL_WINDOWPOS_UNDEFINED_DISPLAY"
		end

	frozen SDL_WINDOWPOS_CENTERED_DISPLAY(display:INTEGER):INTEGER
		external
			"C [macro <SDL.h>] (EIF_INTEGER) : EIF_INTEGER"
		alias
			"SDL_WINDOWPOS_CENTERED_DISPLAY"
		end

	frozen SDL_WINDOWPOS_UNDEFINED:INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_WINDOWPOS_UNDEFINED"
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
			"C [macro <SDL.h>] (SDL_version *)"
		alias
			"SDL_VERSION"
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

	frozen SDL_free(mem:POINTER)
		external
			"C (void *) | <SDL.h>"
		alias
			"SDL_free"
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

	frozen SDL_SetRenderTarget(renderer, texture:POINTER):INTEGER
		external
			"C (SDL_Renderer*, SDL_Texture*) :int | <SDL.h>"
		alias
			"SDL_SetRenderTarget"
		end

	frozen SDL_RenderClear(renderer:POINTER):INTEGER
		external
			"C (SDL_Renderer*) :int | <SDL.h>"
		alias
			"SDL_RenderClear"
		end

	frozen SDL_RenderPresent(renderer:POINTER)
		external
			"C (SDL_Renderer*) | <SDL.h>"
		alias
			"SDL_RenderPresent"
		end

	frozen SDL_RenderCopy(renderer, texture, srcrect, dstrect:POINTER):INTEGER
		external
			"C (SDL_Renderer*, SDL_Texture*, const SDL_Rect*, const SDL_Rect*) :int | <SDL.h>"
		alias
			"SDL_RenderCopy"
		end

	frozen SDL_RenderCopyEx(renderer, texture, srcrect, dstrect:POINTER; angle: REAL_64; center: POINTER; flip: INTEGER):INTEGER
		external
			"C (SDL_Renderer*, SDL_Texture*, const SDL_Rect*, const SDL_Rect*, const double, const SDL_Point*, const SDL_RendererFlip) :int | <SDL.h>"
		alias
			"SDL_RenderCopyEx"
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

	frozen SDL_FillRects(dst, rects:POINTER; count:INTEGER; collor:NATURAL_32):INTEGER
		external
			"C (SDL_Surface*, const SDL_Rect*, int, Uint32) :int | <SDL.h>"
		alias
			"SDL_FillRects"
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

	frozen SDL_EventState(type:NATURAL_32; state:INTEGER):NATURAL_8
		external
			"C (Uint32, int) : Uint8 | <SDL.h>"
		alias
			"SDL_EventState"
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

	frozen SDL_RWFromConstMem(mem:POINTER; size:INTEGER):POINTER
		external
			"C (const void*, int) : SDL_RWops* | <SDL.h>"
		alias
			"SDL_RWFromConstMem"
		end

	frozen SDL_RWFromMem(mem:POINTER; size:INTEGER):POINTER
		external
			"C (void*, int) : SDL_RWops* | <SDL.h>"
		alias
			"SDL_RWFromMem"
		end

	frozen SDL_RWFromFP(mem:POINTER; autoclose:BOOLEAN):POINTER
		external
			"C (void*, SDL_bool) : SDL_RWops* | <SDL.h>"
		alias
			"SDL_RWFromFP"
		end

	frozen SDL_RWclose(context:POINTER):INTEGER
		external
			"C (struct SDL_RWops*) : int | <SDL.h>"
		alias
			"SDL_RWclose"
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

	frozen SDL_GetRenderDrawBlendMode(renderer, blendMode:POINTER):INTEGER
		external
			"C (SDL_Renderer*, SDL_BlendMode*) : int | <SDL.h>"
		alias
			"SDL_GetRenderDrawBlendMode"
		end

	frozen SDL_SetRenderDrawBlendMode(renderer:POINTER; blendMode:INTEGER):INTEGER
		external
			"C (SDL_Renderer*, SDL_BlendMode) : int | <SDL.h>"
		alias
			"SDL_SetRenderDrawBlendMode"
		end

	frozen SDL_GetRenderDrawColor(renderer, r, g, b, a:POINTER):INTEGER
		external
			"C (SDL_Renderer*, Uint8*, Uint8*, Uint8*, Uint8*) : int | <SDL.h>"
		alias
			"SDL_GetRenderDrawColor"
		end

	frozen SDL_SetRenderDrawColor(renderer:POINTER; r, g, b, a:NATURAL_8):INTEGER
		external
			"C (SDL_Renderer*, Uint8, Uint8, Uint8, Uint8) : int | <SDL.h>"
		alias
			"SDL_SetRenderDrawColor"
		end

	frozen SDL_RenderDrawPoints(renderer, points:POINTER; count:INTEGER):INTEGER
		external
			"C (SDL_Renderer*, const SDL_Point*, int) : int | <SDL.h>"
		alias
			"SDL_RenderDrawPoints"
		end

	frozen SDL_RenderDrawPoint(renderer:POINTER; x, y:INTEGER):INTEGER
		external
			"C (SDL_Renderer*, int, int) : int | <SDL.h>"
		alias
			"SDL_RenderDrawPoint"
		end

	frozen SDL_RenderDrawLine(renderer:POINTER; x1, y1, x2, y2:INTEGER):INTEGER
		external
			"C (SDL_Renderer*, int, int, int, int) : int | <SDL.h>"
		alias
			"SDL_RenderDrawLine"
		end

	frozen SDL_RenderDrawLines(renderer, points:POINTER; count:INTEGER):INTEGER
		external
			"C (SDL_Renderer*, const SDL_Point*, int) : int | <SDL.h>"
		alias
			"SDL_RenderDrawLines"
		end

	frozen SDL_RenderDrawRect(renderer, rect:POINTER):INTEGER
		external
			"C (SDL_Renderer*, const SDL_Rect*) : int | <SDL.h>"
		alias
			"SDL_RenderDrawRect"
		end

	frozen SDL_RenderDrawRects(renderer, rects:POINTER; count:INTEGER):INTEGER
		external
			"C (SDL_Renderer*, const SDL_Rect*, int) : int | <SDL.h>"
		alias
			"SDL_RenderDrawRects"
		end

	frozen SDL_RenderFillRect(renderer, rect:POINTER):INTEGER
		external
			"C (SDL_Renderer*, const SDL_Rect*) : int | <SDL.h>"
		alias
			"SDL_RenderFillRect"
		end

	frozen SDL_RenderFillRects(renderer, rects:POINTER; count:INTEGER):INTEGER
		external
			"C (SDL_Renderer*, const SDL_Rect*, int) : int | <SDL.h>"
		alias
			"SDL_RenderFillRects"
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

	frozen SDL_GetNumRenderDrivers:INTEGER
		external
			"C : int | <SDL.h>"
		alias
			"SDL_GetNumRenderDrivers"
		end

	frozen SDL_GetRenderDriverInfo(index: INTEGER; info:POINTER):INTEGER
		external
			"C (int, SDL_RendererInfo*) : int | <SDL.h>"
		alias
			"SDL_GetRenderDriverInfo"
		end

	frozen SDL_GetRendererInfo(renderer, info:POINTER):INTEGER
		external
			"C (SDL_Renderer*, SDL_RendererInfo*) : int | <SDL.h>"
		alias
			"SDL_GetRendererInfo"
		end

	frozen SDL_CreateTexture(renderer:POINTER; format:NATURAL_32; access, w, h:INTEGER):POINTER
		external
			"C (SDL_Renderer*, Uint32, int, int, int) : SDL_Texture* | <SDL.h>"
		alias
			"SDL_CreateTexture"
		end

	frozen SDL_CreateTextureFromSurface(renderer, surface:POINTER):POINTER
		external
			"C (SDL_Renderer*, SDL_Surface*) : SDL_Texture* | <SDL.h>"
		alias
			"SDL_CreateTextureFromSurface"
		end

	frozen SDL_DestroyTexture(texture:POINTER)
		external
			"C (SDL_Texture*) | <SDL.h>"
		alias
			"SDL_DestroyTexture"
		end

	frozen SDL_GetTextureBlendMode(texture, blendMode:POINTER): INTEGER
		external
			"C (SDL_Texture*, SDL_BlendMode*) : int | <SDL.h>"
		alias
			"SDL_GetTextureBlendMode"
		end

	frozen SDL_SetTextureBlendMode(texture:POINTER; blendMode:INTEGER_32):INTEGER
		external
			"C (SDL_Texture*, SDL_BlendMode) : int | <SDL.h>"
		alias
			"SDL_SetTextureBlendMode"
		end

	frozen SDL_GetTextureAlphaMod(texture, alpha:POINTER):INTEGER
		external
			"C (SDL_Texture*, Uint8*) : int | <SDL.h>"
		alias
			"SDL_GetTextureAlphaMod"
		end

	frozen SDL_SetTextureAlphaMod(texture:POINTER; blendMode:NATURAL_8):INTEGER
		external
			"C (SDL_Texture*, Uint8) : int | <SDL.h>"
		alias
			"SDL_SetTextureAlphaMod"
		end

	frozen SDL_GetTextureColorMod(texture, r, g, b:POINTER):INTEGER
		external
			"C (SDL_Texture*, Uint8*, Uint8*, Uint8*) : int | <SDL.h>"
		alias
			"SDL_GetTextureColorMod"
		end

	frozen SDL_SetTextureColorMod(texture:POINTER; r, g, b:NATURAL_8):INTEGER
		external
			"C (SDL_Texture*, Uint8, Uint8, Uint8) : int | <SDL.h>"
		alias
			"SDL_SetTextureColorMod"
		end

	frozen SDL_GetRendererOutputSize(renderer, w, h:POINTER):INTEGER
		external
			"C (SDL_Renderer*, int*, int*) : int | <SDL.h>"
		alias
			"SDL_GetRendererOutputSize"
		end

	frozen SDL_RenderGetClipRect(renderer, rect:POINTER)
		external
			"C (SDL_Renderer*, SDL_Rect*) | <SDL.h>"
		alias
			"SDL_RenderGetClipRect"
		end

	frozen SDL_RenderSetClipRect(renderer, rect:POINTER):INTEGER
		external
			"C (SDL_Renderer*, const SDL_Rect*) : int | <SDL.h>"
		alias
			"SDL_RenderSetClipRect"
		end

	frozen SDL_RenderGetLogicalSize(renderer, w, h:POINTER)
		external
			"C (SDL_Renderer*, int*, int*) | <SDL.h>"
		alias
			"SDL_RenderGetLogicalSize"
		end

	frozen SDL_RenderSetLogicalSize(renderer:POINTER; w, h:INTEGER):INTEGER
		external
			"C (SDL_Renderer*, int, int) : int | <SDL.h>"
		alias
			"SDL_RenderSetLogicalSize"
		end

	frozen SDL_RenderGetScale(renderer, scaleX, scaleY:POINTER)
		external
			"C (SDL_Renderer*, float*, float*) | <SDL.h>"
		alias
			"SDL_RenderGetScale"
		end

	frozen SDL_RenderSetScale(renderer:POINTER; scaleX, scaleY:REAL_32):INTEGER
		external
			"C (SDL_Renderer*, float, float) : int | <SDL.h>"
		alias
			"SDL_RenderSetScale"
		end

	frozen SDL_RenderGetViewport(renderer, rect:POINTER)
		external
			"C (SDL_Renderer*, SDL_Rect*) | <SDL.h>"
		alias
			"SDL_RenderGetViewport"
		end

	frozen SDL_RenderSetViewport(renderer, rect:POINTER):INTEGER
		external
			"C (SDL_Renderer*, const SDL_Rect*) : int | <SDL.h>"
		alias
			"SDL_RenderSetViewport"
		end

	frozen SDL_AllocPalette(ncolors:INTEGER):POINTER
		external
			"C (int) : SDL_Palette* | <SDL.h>"
		alias
			"SDL_AllocPalette"
		end

	frozen SDL_FreePalette(palette:POINTER)
		external
			"C (SDL_Palette*) | <SDL.h>"
		alias
			"SDL_FreePalette"
		end

	frozen SDL_SetPixelFormatPalette(format, palette:POINTER):INTEGER
		external
			"C (SDL_PixelFormat*, SDL_Palette*) : int | <SDL.h>"
		alias
			"SDL_SetPixelFormatPalette"
		end

	frozen SDL_QueryTexture(texture, format, access, w, h:POINTER):INTEGER
		external
			"C (SDL_Texture*, Uint32*, int*, int*, int*) : int | <SDL.h>"
		alias
			"SDL_QueryTexture"
		end

	frozen SDL_HideWindow(window:POINTER)
		external
			"C (SDL_Window*) | <SDL.h>"
		alias
			"SDL_HideWindow"
		end

	frozen SDL_ShowWindow(window:POINTER)
		external
			"C (SDL_Window*) | <SDL.h>"
		alias
			"SDL_ShowWindow"
		end

	frozen SDL_MinimizeWindow(window:POINTER)
		external
			"C (SDL_Window*) | <SDL.h>"
		alias
			"SDL_MinimizeWindow"
		end

	frozen SDL_MaximizeWindow(window:POINTER)
		external
			"C (SDL_Window*) | <SDL.h>"
		alias
			"SDL_MaximizeWindow"
		end

	frozen SDL_RestoreWindow(window:POINTER)
		external
			"C (SDL_Window*) | <SDL.h>"
		alias
			"SDL_RestoreWindow"
		end

	frozen SDL_RaiseWindow(window:POINTER)
		external
			"C (SDL_Window*) | <SDL.h>"
		alias
			"SDL_RaiseWindow"
		end

	frozen SDL_SetWindowBordered(window:POINTER; bordered:BOOLEAN)
		external
			"C (SDL_Window*, SDL_bool) | <SDL.h>"
		alias
			"SDL_SetWindowBordered"
		end

	frozen SDL_SetWindowDisplayMode(window, mode:POINTER):INTEGER
		external
			"C (SDL_Window*, const SDL_DisplayMode*) : int | <SDL.h>"
		alias
			"SDL_SetWindowDisplayMode"
		end

	frozen SDL_GetWindowDisplayMode(window, mode:POINTER):INTEGER
		external
			"C (SDL_Window*, SDL_DisplayMode*) : int | <SDL.h>"
		alias
			"SDL_GetWindowDisplayMode"
		end

	frozen SDL_SetWindowFullscreen(window:POINTER; flags:NATURAL_32):INTEGER
		external
			"C (SDL_Window*, Uint32) : int | <SDL.h>"
		alias
			"SDL_SetWindowFullscreen"
		end

	frozen SDL_GetWindowFlags(window:POINTER) : NATURAL_32
		external
			"C (SDL_Window*) : Uint32 | <SDL.h>"
		alias
			"SDL_GetWindowFlags"
		end

	frozen SDL_SetWindowGammaRamp(window, red, green, blue:POINTER) : INTEGER
		external
			"C (SDL_Window*, const Uint16*, const Uint16*, const Uint16*) : int | <SDL.h>"
		alias
			"SDL_SetWindowGammaRamp"
		end

	frozen SDL_GetWindowGammaRamp(window, red, green, blue:POINTER) : INTEGER
		external
			"C (SDL_Window*, Uint16*, Uint16*, Uint16*) : int | <SDL.h>"
		alias
			"SDL_GetWindowGammaRamp"
		end

	frozen SDL_GetWindowGrab(window:POINTER) : BOOLEAN
		external
			"C (SDL_Window*) : SDL_bool | <SDL.h>"
		alias
			"SDL_GetWindowGrab"
		end

	frozen SDL_SetWindowGrab(window:POINTER; grabbed:BOOLEAN)
		external
			"C (SDL_Window*, SDL_bool) | <SDL.h>"
		alias
			"SDL_SetWindowGrab"
		end

	frozen SDL_GetWindowMaximumSize(window, w, h:POINTER)
		external
			"C (SDL_Window*, int*, int*) | <SDL.h>"
		alias
			"SDL_GetWindowMaximumSize"
		end

	frozen SDL_SetWindowMaximumSize(window:POINTER; max_w, max_h:INTEGER)
		external
			"C (SDL_Window*, int, int) | <SDL.h>"
		alias
			"SDL_SetWindowMaximumSize"
		end

	frozen SDL_GetWindowMinimumSize(window, w, h:POINTER)
		external
			"C (SDL_Window*, int*, int*) | <SDL.h>"
		alias
			"SDL_GetWindowMinimumSize"
		end

	frozen SDL_SetWindowMinimumSize(window:POINTER; min_w, min_h:INTEGER)
		external
			"C (SDL_Window*, int, int) | <SDL.h>"
		alias
			"SDL_SetWindowMinimumSize"
		end

	frozen SDL_GetWindowSize(window, w, h:POINTER)
		external
			"C (SDL_Window*, int*, int*) | <SDL.h>"
		alias
			"SDL_GetWindowSize"
		end

	frozen SDL_SetWindowSize(window:POINTER; w, h:INTEGER)
		external
			"C (SDL_Window*, int, int) | <SDL.h>"
		alias
			"SDL_SetWindowSize"
		end

	frozen SDL_GetWindowPosition(window, x, y:POINTER)
		external
			"C (SDL_Window*, int*, int*) | <SDL.h>"
		alias
			"SDL_GetWindowPosition"
		end

	frozen SDL_SetWindowPosition(window:POINTER; x, y:INTEGER)
		external
			"C (SDL_Window*, int, int) | <SDL.h>"
		alias
			"SDL_SetWindowPosition"
		end

	frozen SDL_GetWindowTitle(window:POINTER) : POINTER
		external
			"C (SDL_Window*): const char* | <SDL.h>"
		alias
			"SDL_GetWindowTitle"
		end

	frozen SDL_SetWindowTitle(window, title:POINTER)
		external
			"C (SDL_Window*, const char*) | <SDL.h>"
		alias
			"SDL_SetWindowTitle"
		end

	frozen SDL_WarpMouseInWindow(window: POINTER; x, y:INTEGER)
		external
			"C (SDL_Window*, int, int) | <SDL.h>"
		alias
			"SDL_WarpMouseInWindow"
		end

	frozen SDL_SetWindowIcon(window, icon: POINTER)
		external
			"C (SDL_Window*, SDL_Surface*) | <SDL.h>"
		alias
			"SDL_SetWindowIcon"
		end

	frozen SDL_NumHaptics:INTEGER
		external
			"C : int | <SDL.h>"
		alias
			"SDL_NumHaptics"
		end

	frozen SDL_HapticOpen(device_index:INTEGER):POINTER
		external
			"C (int) : SDL_Haptic* | <SDL.h>"
		alias
			"SDL_HapticOpen"
		end

	frozen SDL_HapticOpenFromJoystick(joystick:POINTER):POINTER
		external
			"C (SDL_Joystick*) : SDL_Haptic* | <SDL.h>"
		alias
			"SDL_HapticOpenFromJoystick"
		end

	frozen SDL_HapticClose(haptic:POINTER)
		external
			"C (SDL_Haptic*) | <SDL.h>"
		alias
			"SDL_HapticClose"
		end

	frozen SDL_HapticOpenFromMouse:POINTER
		external
			"C : SDL_Haptic* | <SDL.h>"
		alias
			"SDL_HapticOpenFromMouse"
		end

	frozen SDL_MouseIsHaptic:BOOLEAN
		external
			"C : int | <SDL.h>"
		alias
			"SDL_MouseIsHaptic"
		end

	frozen SDL_HapticNumAxes(haptic:POINTER):INTEGER
		external
			"C (SDL_Haptic*) : int | <SDL.h>"
		alias
			"SDL_HapticNumAxes"
		end

	frozen SDL_HapticName(device_index:INTEGER):POINTER
		external
			"C (int) : const char* | <SDL.h>"
		alias
			"SDL_HapticName"
		end

	frozen SDL_HapticQuery(haptic:POINTER):NATURAL
		external
			"C (SDL_Haptic*) : unsigned int | <SDL.h>"
		alias
			"SDL_HapticQuery"
		end

	frozen SDL_HapticPause(haptic:POINTER):INTEGER
		external
			"C (SDL_Haptic*) : int | <SDL.h>"
		alias
			"SDL_HapticPause"
		end

	frozen SDL_HapticUnpause(haptic:POINTER):INTEGER
		external
			"C (SDL_Haptic*) : int | <SDL.h>"
		alias
			"SDL_HapticUnpause"
		end

	frozen SDL_HapticRumbleSupported(haptic:POINTER):BOOLEAN
		external
			"C (SDL_Haptic*) : int | <SDL.h>"
		alias
			"SDL_HapticRumbleSupported"
		end

	frozen SDL_HapticOpened(device_index:INTEGER):BOOLEAN
		external
			"C (int) : int | <SDL.h>"
		alias
			"SDL_HapticOpened"
		end

	frozen SDL_HapticRumbleInit(haptic:POINTER):INTEGER
		external
			"C (SDL_Haptic*) : int | <SDL.h>"
		alias
			"SDL_HapticRumbleInit"
		end

	frozen SDL_HapticNumEffects(haptic:POINTER):INTEGER
		external
			"C (SDL_Haptic*) : int | <SDL.h>"
		alias
			"SDL_HapticNumEffects"
		end

	frozen SDL_HapticNumEffectsPlaying(haptic:POINTER):INTEGER
		external
			"C (SDL_Haptic*) : int | <SDL.h>"
		alias
			"SDL_HapticNumEffectsPlaying"
		end

	frozen SDL_HapticRumblePlay(haptic:POINTER; strength:REAL_32; length:NATURAL_32):INTEGER
		external
			"C (SDL_Haptic*, float, Uint32) : int | <SDL.h>"
		alias
			"SDL_HapticRumblePlay"
		end

	frozen SDL_HapticRumbleStop(haptic:POINTER):INTEGER
		external
			"C (SDL_Haptic*) : int | <SDL.h>"
		alias
			"SDL_HapticRumbleStop"
		end

	frozen SDL_HapticSetGain(haptic:POINTER; gain:INTEGER):INTEGER
		external
			"C (SDL_Haptic*, int) : int | <SDL.h>"
		alias
			"SDL_HapticSetGain"
		end

	frozen SDL_getenv(name:POINTER):POINTER
		external
			"C (const char *) : char * | <SDL.h>"
		alias
			"SDL_getenv"
		end

	frozen SDL_setenv(name, value:POINTER; overwrite:BOOLEAN):INTEGER
		external
			"C (const char *, const char *, int) : int | <SDL.h>"
		alias
			"SDL_setenv"
		end

	frozen SDL_HapticStopAll(haptic:POINTER):INTEGER
		external
			"C (SDL_Haptic*) : int | <SDL.h>"
		alias
			"SDL_HapticStopAll"
		end

	frozen SDL_HapticEffectSupported(haptic, effect:POINTER):INTEGER
		external
			"C (SDL_Haptic*, SDL_HapticEffect*) : int | <SDL.h>"
		alias
			"SDL_HapticEffectSupported"
		end

	frozen SDL_HapticNewEffect(haptic, effect:POINTER):INTEGER
		external
			"C (SDL_Haptic*, SDL_HapticEffect*) : int | <SDL.h>"
		alias
			"SDL_HapticNewEffect"
		end

	frozen SDL_HapticDestroyEffect(hapti:POINTER; effect:INTEGER)
		external
			"C (SDL_Haptic*, int) | <SDL.h>"
		alias
			"SDL_HapticDestroyEffect"
		end

	frozen SDL_HapticGetEffectStatus(hapti:POINTER; effect:INTEGER):INTEGER
		external
			"C (SDL_Haptic*, int) : int | <SDL.h>"
		alias
			"SDL_HapticGetEffectStatus"
		end

	frozen SDL_HapticRunEffect(hapti:POINTER; effect:INTEGER; iteration:NATURAL_32):INTEGER
		external
			"C (SDL_Haptic*, int, Uint32) : int | <SDL.h>"
		alias
			"SDL_HapticRunEffect"
		end

	frozen SDL_HapticStopEffect(hapti:POINTER; effect:INTEGER):INTEGER
		external
			"C (SDL_Haptic*, int) : int | <SDL.h>"
		alias
			"SDL_HapticStopEffect"
		end

	frozen SDL_GetTouchFinger(touchid:INTEGER_64; index:INTEGER):POINTER
		external
			"C (SDL_TouchID, int) : SDL_Finger * | <SDL.h>"
		alias
			"SDL_GetTouchFinger"
		end

	frozen SDL_GetNumTouchDevices:INTEGER
		external
			"C  : int | <SDL.h>"
		alias
			"SDL_GetNumTouchDevices"
		end

	frozen SDL_GetTouchDevice(index:INTEGER):INTEGER_64
		external
			"C (int) : SDL_TouchID | <SDL.h>"
		alias
			"SDL_GetTouchDevice"
		end

	frozen SDL_GetNumTouchFingers(touchID:INTEGER_64):INTEGER
		external
			"C (SDL_TouchID) : int | <SDL.h>"
		alias
			"SDL_GetNumTouchFingers"
		end

	frozen SDL_RecordGesture(touchID:INTEGER_64):INTEGER
		external
			"C (SDL_TouchID) : int | <SDL.h>"
		alias
			"SDL_RecordGesture"
		end

	frozen SDL_SaveAllDollarTemplates(dst:POINTER):INTEGER
		external
			"C (SDL_RWops *) : int | <SDL.h>"
		alias
			"SDL_SaveAllDollarTemplates"
		end

	frozen SDL_SaveDollarTemplate(gestureId:INTEGER_64; dst:POINTER):INTEGER
		external
			"C (SDL_GestureID, SDL_RWops *) : int | <SDL.h>"
		alias
			"SDL_SaveDollarTemplate"
		end

	frozen SDL_LoadDollarTemplates(touchID:INTEGER_64; src:POINTER):INTEGER
		external
			"C (SDL_TouchID, SDL_RWops *) : int | <SDL.h>"
		alias
			"SDL_LoadDollarTemplates"
		end

	frozen SDL_StartTextInput
		external
			"C | <SDL.h>"
		alias
			"SDL_StartTextInput"
		end

	frozen SDL_StopTextInput
		external
			"C | <SDL.h>"
		alias
			"SDL_StopTextInput"
		end

	frozen SDL_SetTextInputRect(rect:POINTER)
		external
			"C (SDL_Rect*)| <SDL.h>"
		alias
			"SDL_SetTextInputRect"
		end

	frozen SDL_IsTextInputActive:BOOLEAN
		external
			"C : SDL_bool | <SDL.h>"
		alias
			"SDL_IsTextInputActive"
		end

	frozen SDL_GL_SwapWindow(a_window:POINTER)
		external
			"C (SDL_Window*) | <SDL.h>"
		alias
			"SDL_GL_SwapWindow"
		end

	frozen SDL_GL_SetAttribute(a_attr, a_value:INTEGER):INTEGER
		external
			"C (SDL_GLattr, int) : int | <SDL.h>"
		alias
			"SDL_GL_SetAttribute"
		end

	frozen SDL_GL_GetAttribute(a_attr:INTEGER; a_value:POINTER):INTEGER
		external
			"C (SDL_GLattr, int *) : int | <SDL.h>"
		alias
			"SDL_GL_GetAttribute"
		end

	frozen SDL_GL_ResetAttributes
		external
			"C | <SDL.h>"
		alias
			"SDL_GL_ResetAttributes"
		end

	frozen SDL_GL_LoadLibrary(a_path:POINTER):INTEGER
		external
			"C (char *) : int | <SDL.h>"
		alias
			"SDL_GL_LoadLibrary"
		end

	frozen SDL_GL_UnloadLibrary
		external
			"C | <SDL.h>"
		alias
			"SDL_GL_UnloadLibrary"
		end

	frozen SDL_GL_CreateContext(a_window:POINTER):POINTER
		external
			"C (SDL_Window*) : SDL_GLContext | <SDL.h>"
		alias
			"SDL_GL_CreateContext"
		end

	frozen SDL_GL_DeleteContext(a_context:POINTER)
		external
			"C (SDL_GLContext) | <SDL.h>"
		alias
			"SDL_GL_DeleteContext"
		end

	frozen SDL_GL_SetSwapInterval(a_interval:INTEGER):INTEGER
		external
			"C (int) : int | <SDL.h>"
		alias
			"SDL_GL_SetSwapInterval"
		end

	frozen SDL_GL_GetSwapInterval:INTEGER
		external
			"C : int | <SDL.h>"
		alias
			"SDL_GL_GetSwapInterval"
		end

	frozen SDL_GL_GetDrawableSize(a_window, a_width, a_height:POINTER)
		external
			"C (SDL_Window*, int *, int *) | <SDL.h>"
		alias
			"SDL_GL_GetDrawableSize"
		end

	frozen SDL_MUSTLOCK(surface:POINTER):BOOLEAN
		external
			"C [macro <SDL.h>] (SDL_Surface *) : SDL_bool"
		alias
			"SDL_MUSTLOCK"
		end

	frozen SDL_LockSurface(a_surface:POINTER):INTEGER
		external
			"C (SDL_Surface*) : int | <SDL.h>"
		alias
			"SDL_LockSurface"
		end

	frozen SDL_UnlockSurface(a_surface:POINTER)
		external
			"C (SDL_Surface*) | <SDL.h>"
		alias
			"SDL_UnlockSurface"
		end

	frozen SDL_PIXELTYPE(format:NATURAL_32):NATURAL
		external
			"C [macro <SDL.h>] (Uint32) : Uint32"
		alias
			"SDL_PIXELTYPE"
		end

	frozen SDL_PIXELORDER(format:NATURAL_32):NATURAL
		external
			"C [macro <SDL.h>] (Uint32) : Uint32"
		alias
			"SDL_PIXELORDER"
		end

	frozen SDL_PIXELLAYOUT(format:NATURAL_32):NATURAL
		external
			"C [macro <SDL.h>] (Uint32) : Uint32"
		alias
			"SDL_PIXELLAYOUT"
		end

	frozen SDL_BITSPERPIXEL(format:NATURAL_32):INTEGER
		external
			"C [macro <SDL.h>] (Uint32) : int"
		alias
			"SDL_BITSPERPIXEL"
		end

	frozen SDL_BYTESPERPIXEL(format:NATURAL_32):INTEGER
		external
			"C [macro <SDL.h>] (Uint32) : int"
		alias
			"SDL_BYTESPERPIXEL"
		end

	frozen SDL_ISPIXELFORMAT_INDEXED(format:NATURAL_32):BOOLEAN
		external
			"C [macro <SDL.h>] (Uint32) : SDL_bool"
		alias
			"SDL_ISPIXELFORMAT_INDEXED"
		end

	frozen SDL_ISPIXELFORMAT_FOURCC(format:NATURAL_32):BOOLEAN
		external
			"C [macro <SDL.h>] (Uint32) : SDL_bool"
		alias
			"SDL_ISPIXELFORMAT_FOURCC"
		end

	frozen SDL_ISPIXELFORMAT_ALPHA(format:NATURAL_32):BOOLEAN
		external
			"C [macro <SDL.h>] (Uint32) : SDL_bool"
		alias
			"SDL_ISPIXELFORMAT_ALPHA"
		end

	frozen SDL_GetClipboardText:POINTER
		external
			"C : char* | <SDL.h>"
		alias
			"SDL_GetClipboardText"
		end

	frozen SDL_SetClipboardText(text:POINTER):INTEGER
		external
			"C (char*) : int | <SDL.h>"
		alias
			"SDL_SetClipboardText"
		end

	frozen SDL_HasClipboardText:BOOLEAN
		external
			"C : SDL_bool | <SDL.h>"
		alias
			"SDL_HasClipboardText"
		end

	frozen SDL_LockTexture(texture, rect, pixels, pitch:POINTER):INTEGER
		external
			"C (SDL_Texture*, SDL_Rect*, void**, int*) : int | <SDL.h>"
		alias
			"SDL_LockTexture"
		end

	frozen SDL_UpdateTexture(texture, rect, pixels:POINTER; pitch:INTEGER):INTEGER
		external
			"C (SDL_Texture*, SDL_Rect*, void*, int) : int | <SDL.h>"
		alias
			"SDL_UpdateTexture"
		end

	frozen SDL_UnlockTexture(texture:POINTER)
		external
			"C (SDL_Texture*) | <SDL.h>"
		alias
			"SDL_UnlockTexture"
		end

	frozen SDL_GetPowerInfo(secs, pct:POINTER):NATURAL
		external
			"C (int*, int*) : SDL_PowerState | <SDL.h>"
		alias
			"SDL_GetPowerInfo"
		end

	frozen SDL_SaveBMP(surface, file:POINTER):INTEGER
		external
			"C (SDL_Surface*, const char*) : int | <SDL.h>"
		alias
			"SDL_SaveBMP"
		end

	frozen SDL_GetBasePath:POINTER
		external
			"C : char * | <SDL.h>"
		alias
			"SDL_GetBasePath"
		end

	frozen SDL_GetPrefPath(org, app:POINTER):POINTER
		external
			"C (const char*, const char*) : char * | <SDL.h>"
		alias
			"SDL_GetPrefPath"
		end

feature -- Manual C function (implemented in sdl_additions.c)

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

feature -- Structure SDL_Point SDL.h

	frozen c_sizeof_sdl_point:INTEGER
			-- Size of an SDL_Point C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_Point)"
		end

	frozen set_point_struct_x (point: POINTER; x:INTEGER)
			-- X location of the point
		external
			"C [struct <SDL.h>] (SDL_Point, int)"
		alias
			"x"
		end

	frozen get_point_struct_x(point:POINTER):INTEGER
			-- X location of the point
		external
			"C [struct <SDL.h>] (SDL_Point):int"
		alias
			"x"
		end

	frozen set_point_struct_y (point: POINTER; y:INTEGER)
			-- Y location of the point
		external
			"C [struct <SDL.h>] (SDL_Point, int)"
		alias
			"y"
		end

	frozen get_point_struct_y(point:POINTER):INTEGER
			-- Y location of the point
		external
			"C [struct <SDL.h>] (SDL_Point):int"
		alias
			"y"
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

	frozen set_mouse_button_event_struct_clicks (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint8)"
		alias
			"clicks"
		end

	frozen get_mouse_button_event_struct_clicks(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint8"
		alias
			"clicks"
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

	frozen set_touch_finger_event_struct_touch_id (ptr: POINTER; value:INTEGER_64)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, SDL_TouchID)"
		alias
			"touchId"
		end

	frozen get_touch_finger_event_struct_touch_id(ptr:POINTER):INTEGER_64
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent):SDL_TouchID"
		alias
			"touchId"
		end

	frozen set_touch_finger_event_struct_finger_id (ptr: POINTER; value:INTEGER_64)
		external
			"C [struct <SDL.h>] (SDL_TouchFingerEvent, SDL_FingerID)"
		alias
			"fingerId"
		end

	frozen get_touch_finger_event_struct_finger_id(ptr:POINTER):INTEGER_64
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

	frozen set_multi_gesture_event_struct_touch_id (ptr: POINTER; value:INTEGER_64)
		external
			"C [struct <SDL.h>] (SDL_MultiGestureEvent, SDL_TouchID)"
		alias
			"touchId"
		end

	frozen get_multi_gesture_event_struct_touch_id(ptr:POINTER):INTEGER_64
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

	frozen set_dollar_gesture_event_struct_touch_id (ptr: POINTER; value:INTEGER_64)
		external
			"C [struct <SDL.h>] (SDL_DollarGestureEvent, SDL_TouchID)"
		alias
			"touchId"
		end

	frozen get_dollar_gesture_event_struct_touch_id(ptr:POINTER):INTEGER_64
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


feature -- Structure SDL_RendererInfo SDL.h

	frozen c_sizeof_sdl_renderer_info:INTEGER
			-- Size of an SDL_RendererInfo C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_RendererInfo)"
		end

	frozen get_sdl_renderer_info_name(ptr:POINTER):POINTER
			-- Retreive the name of the renderer driver
		external
			"C [struct <SDL.h>] (SDL_RendererInfo):const char*"
		alias
			"name"
		end

	frozen get_sdl_renderer_info_flags(ptr:POINTER):NATURAL_32
			-- Every supported renderer flags
		external
			"C [struct <SDL.h>] (SDL_RendererInfo):Uint32"
		alias
			"flags"
		end

	frozen get_sdl_renderer_info_num_texture_formats(ptr:POINTER):NATURAL_32
			-- The number of available texture formats
		external
			"C [struct <SDL.h>] (SDL_RendererInfo):Uint32"
		alias
			"num_texture_formats"
		end

	frozen get_sdl_renderer_info_texture_formats(ptr:POINTER; index:INTEGER):NATURAL_32
			-- The i-th texture format
		external
			"C inline use <SDL.h>"
		alias
			"((Uint32*)(((SDL_RendererInfo*)$ptr)->texture_formats))[(int)$index]"
		end

	frozen get_sdl_renderer_info_max_texture_width(ptr:POINTER):INTEGER
			-- The maximum width of texture that the renderer driver can manage
			-- (0 for unknown)
		external
			"C [struct <SDL.h>] (SDL_RendererInfo):int"
		alias
			"max_texture_width"
		end

	frozen get_sdl_renderer_info_max_texture_height(ptr:POINTER):INTEGER
			-- The maximum height of texture that the renderer driver can manage
			-- (0 for unknown)
		external
			"C [struct <SDL.h>] (SDL_RendererInfo):int"
		alias
			"max_texture_height"
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

feature -- Structure SDL_Palette SDL.h

	frozen set_sdl_palette_struct_ncolors (ptr: POINTER; value:INTEGER)
			-- the number of colors in the palette
		external
			"C [struct <SDL.h>] (SDL_Palette, int)"
		alias
			"ncolors"
		end

	frozen get_sdl_palette_struct_ncolors(ptr:POINTER):INTEGER
			-- the number of colors in the palette
		external
			"C [struct <SDL.h>] (SDL_Palette):int"
		alias
			"ncolors"
		end

	frozen get_sdl_palette_struct_color_i (ptr: POINTER; index:INTEGER):POINTER
			-- SDL_Color at `index'
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Palette*)$ptr)->colors[(int) $index])"
		end

feature -- Structure SDL_HapticEffect SDL.h

	frozen c_sizeof_sdl_haptic_effect:INTEGER
			-- Size of an SDL_HapticEffect C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_HapticEffect)"
		end

	frozen set_sdl_haptic_effect_type (ptr: POINTER; value:NATURAL_16)
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticEffect, Uint16)"
		alias
			"type"
		end

	frozen get_sdl_haptic_effect_type(ptr:POINTER):NATURAL_16
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticEffect):Uint16"
		alias
			"type"
		end

	frozen get_sdl_haptic_effect_constant(ptr:POINTER):POINTER
			-- constant effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticEffect*)$ptr)->constant)"
		end

	frozen get_sdl_haptic_effect_periodic(ptr:POINTER):POINTER
			-- periodic effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticEffect*)$ptr)->periodic)"
		end

	frozen get_sdl_haptic_effect_condition(ptr:POINTER):POINTER
			-- condition effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticEffect*)$ptr)->condition)"
		end

	frozen get_sdl_haptic_effect_ramp(ptr:POINTER):POINTER
			-- ramp effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticEffect*)$ptr)->ramp)"
		end

	frozen get_sdl_haptic_effect_leftright(ptr:POINTER):POINTER
			-- leftright effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticEffect*)$ptr)->leftright)"
		end

	frozen get_sdl_haptic_effect_custom(ptr:POINTER):POINTER
			-- custom effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticEffect*)$ptr)->custom)"
		end


feature -- Structure SDL_HapticConstant SDL.h

	frozen get_sdl_haptic_constant_direction(ptr:POINTER):POINTER
			-- direction of the effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticConstant*)$ptr)->direction)"
		end

	frozen set_sdl_haptic_constant_length (ptr: POINTER; value:NATURAL_32)
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticConstant, Uint32)"
		alias
			"length"
		end

	frozen get_sdl_haptic_constant_length(ptr:POINTER):NATURAL_32
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticConstant):Uint32"
		alias
			"length"
		end

	frozen set_sdl_haptic_constant_delay (ptr: POINTER; value:NATURAL_16)
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticConstant, Uint16)"
		alias
			"delay"
		end

	frozen get_sdl_haptic_constant_delay(ptr:POINTER):NATURAL_16
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticConstant):Uint16"
		alias
			"delay"
		end

	frozen set_sdl_haptic_constant_button (ptr: POINTER; value:NATURAL_16)
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticConstant, Uint16)"
		alias
			"button"
		end

	frozen get_sdl_haptic_constant_button(ptr:POINTER):NATURAL_16
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticConstant):Uint16"
		alias
			"button"
		end

	frozen set_sdl_haptic_constant_interval (ptr: POINTER; value:NATURAL_16)
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticConstant, Uint16)"
		alias
			"interval"
		end

	frozen get_sdl_haptic_constant_interval(ptr:POINTER):NATURAL_16
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticConstant):Uint16"
		alias
			"interval"
		end

	frozen set_sdl_haptic_constant_level (ptr: POINTER; value:INTEGER_16)
			-- strength of the constant effect
		external
			"C [struct <SDL.h>] (SDL_HapticConstant, Sint16)"
		alias
			"level"
		end

	frozen get_sdl_haptic_constant_level(ptr:POINTER):INTEGER_16
			-- strength of the constant effect
		external
			"C [struct <SDL.h>] (SDL_HapticConstant):Sint16"
		alias
			"level"
		end

	frozen set_sdl_haptic_constant_attack_length (ptr: POINTER; value:NATURAL_16)
			-- duration of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticConstant, Uint16)"
		alias
			"attack_length"
		end

	frozen get_sdl_haptic_constant_attack_length(ptr:POINTER):NATURAL_16
			-- duration of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticConstant):Uint16"
		alias
			"attack_length"
		end

	frozen set_sdl_haptic_constant_attack_level (ptr: POINTER; value:NATURAL_16)
			-- level at the start of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticConstant, Uint16)"
		alias
			"attack_level"
		end

	frozen get_sdl_haptic_constant_attack_level(ptr:POINTER):NATURAL_16
			-- level at the start of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticConstant):Uint16"
		alias
			"attack_level"
		end

	frozen set_sdl_haptic_constant_fade_length (ptr: POINTER; value:NATURAL_16)
			-- duration of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticConstant, Uint16)"
		alias
			"fade_length"
		end

	frozen get_sdl_haptic_constant_fade_length(ptr:POINTER):NATURAL_16
			-- duration of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticConstant):Uint16"
		alias
			"fade_length"
		end

	frozen set_sdl_haptic_constant_fade_level (ptr: POINTER; value:NATURAL_16)
			-- level at the end of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticConstant, Uint16)"
		alias
			"fade_level"
		end

	frozen get_sdl_haptic_constant_fade_level(ptr:POINTER):NATURAL_16
			-- level at the end of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticConstant):Uint16"
		alias
			"fade_level"
		end

feature -- Structure SDL_HapticPeriodic SDL.h

	frozen get_sdl_haptic_periodic_direction(ptr:POINTER):POINTER
			-- direction of the effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticPeriodic*)$ptr)->direction)"
		end

	frozen set_sdl_haptic_periodic_length (ptr: POINTER; value:NATURAL_32)
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint32)"
		alias
			"length"
		end

	frozen get_sdl_haptic_periodic_length(ptr:POINTER):NATURAL_32
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint32"
		alias
			"length"
		end

	frozen set_sdl_haptic_periodic_delay (ptr: POINTER; value:NATURAL_16)
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint16)"
		alias
			"delay"
		end

	frozen get_sdl_haptic_periodic_delay(ptr:POINTER):NATURAL_16
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint16"
		alias
			"delay"
		end

	frozen set_sdl_haptic_periodic_button (ptr: POINTER; value:NATURAL_16)
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint16)"
		alias
			"button"
		end

	frozen get_sdl_haptic_periodic_button(ptr:POINTER):NATURAL_16
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint16"
		alias
			"button"
		end

	frozen set_sdl_haptic_periodic_interval (ptr: POINTER; value:NATURAL_16)
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint16)"
		alias
			"interval"
		end

	frozen get_sdl_haptic_periodic_interval(ptr:POINTER):NATURAL_16
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint16"
		alias
			"interval"
		end

	frozen set_sdl_haptic_periodic_period (ptr: POINTER; value:NATURAL_16)
			-- period of the wave
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint16)"
		alias
			"period"
		end

	frozen get_sdl_haptic_periodic_period(ptr:POINTER):NATURAL_16
			-- period of the wave
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint16"
		alias
			"period"
		end

	frozen set_sdl_haptic_periodic_magnitude (ptr: POINTER; value:INTEGER_16)
			-- peak value; if negative, equivalent to 180 degrees extra phase shift
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Sint16)"
		alias
			"magnitude"
		end

	frozen get_sdl_haptic_periodic_magnitude(ptr:POINTER):INTEGER_16
			-- peak value; if negative, equivalent to 180 degrees extra phase shift
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Sint16"
		alias
			"magnitude"
		end

	frozen set_sdl_haptic_periodic_offset (ptr: POINTER; value:INTEGER_16)
			-- mean value of the wave
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Sint16)"
		alias
			"offset"
		end

	frozen get_sdl_haptic_periodic_offset(ptr:POINTER):INTEGER_16
			-- mean value of the wave
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Sint16"
		alias
			"offset"
		end

	frozen set_sdl_haptic_periodic_phase (ptr: POINTER; value:NATURAL_16)
			-- positive phase shift given by hundredth of a degree
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint16)"
		alias
			"phase"
		end

	frozen get_sdl_haptic_periodic_phase(ptr:POINTER):NATURAL_16
			-- positive phase shift given by hundredth of a degree
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint16"
		alias
			"phase"
		end

	frozen set_sdl_haptic_periodic_attack_length (ptr: POINTER; value:NATURAL_16)
			-- duration of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint16)"
		alias
			"attack_length"
		end

	frozen get_sdl_haptic_periodic_attack_length(ptr:POINTER):NATURAL_16
			-- duration of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint16"
		alias
			"attack_length"
		end

	frozen set_sdl_haptic_periodic_attack_level (ptr: POINTER; value:NATURAL_16)
			-- level at the start of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint16)"
		alias
			"attack_level"
		end

	frozen get_sdl_haptic_periodic_attack_level(ptr:POINTER):NATURAL_16
			-- level at the start of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint16"
		alias
			"attack_level"
		end

	frozen set_sdl_haptic_periodic_fade_length (ptr: POINTER; value:NATURAL_16)
			-- duration of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint16)"
		alias
			"fade_length"
		end

	frozen get_sdl_haptic_periodic_fade_length(ptr:POINTER):NATURAL_16
			-- duration of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint16"
		alias
			"fade_length"
		end

	frozen set_sdl_haptic_periodic_fade_level (ptr: POINTER; value:NATURAL_16)
			-- level at the end of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic, Uint16)"
		alias
			"fade_level"
		end

	frozen get_sdl_haptic_periodic_fade_level(ptr:POINTER):NATURAL_16
			-- level at the end of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticPeriodic):Uint16"
		alias
			"fade_level"
		end

feature -- Structure SDL_HapticCondition SDL.h

	frozen set_sdl_haptic_condition_length (ptr: POINTER; value:NATURAL_32)
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticCondition, Uint32)"
		alias
			"length"
		end

	frozen get_sdl_haptic_condition_length(ptr:POINTER):NATURAL_32
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticCondition):Uint32"
		alias
			"length"
		end

	frozen set_sdl_haptic_condition_delay (ptr: POINTER; value:NATURAL_16)
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticCondition, Uint16)"
		alias
			"delay"
		end

	frozen get_sdl_haptic_condition_delay(ptr:POINTER):NATURAL_16
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticCondition):Uint16"
		alias
			"delay"
		end

	frozen set_sdl_haptic_condition_button (ptr: POINTER; value:NATURAL_16)
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticCondition, Uint16)"
		alias
			"button"
		end

	frozen get_sdl_haptic_condition_button(ptr:POINTER):NATURAL_16
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticCondition):Uint16"
		alias
			"button"
		end

	frozen set_sdl_haptic_condition_interval (ptr: POINTER; value:NATURAL_16)
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticCondition, Uint16)"
		alias
			"interval"
		end

	frozen get_sdl_haptic_condition_interval(ptr:POINTER):NATURAL_16
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticCondition):Uint16"
		alias
			"interval"
		end

	frozen set_sdl_haptic_condition_struct_right_sat_i (ptr: POINTER; index:INTEGER; value:NATURAL_16)
			-- level when joystick is to the positive side; max 0xFFFF
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->right_sat[((int)$index)] = ((Sint32)$value)"
		end

	frozen get_sdl_haptic_condition_struct_right_sat_i(ptr:POINTER; index:INTEGER):NATURAL_16
			-- level when joystick is to the positive side; max 0xFFFF
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->right_sat[((int)$index)]"
		end

	frozen set_sdl_haptic_condition_struct_left_sat_i (ptr: POINTER; index:INTEGER; value:NATURAL_16)
			-- level when joystick is to the negative side; max 0xFFFF
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->left_sat[((int)$index)] = ((Sint32)$value)"
		end

	frozen get_sdl_haptic_condition_struct_left_sat_i(ptr:POINTER; index:INTEGER):NATURAL_16
			-- level when joystick is to the negative side; max 0xFFFF
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->left_sat[((int)$index)]"
		end

	frozen set_sdl_haptic_condition_struct_right_coeff_i (ptr: POINTER; index:INTEGER; value:INTEGER_16)
			-- how fast to increase the force towards the positive side
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->right_coeff[((int)$index)] = ((Sint32)$value)"
		end

	frozen get_sdl_haptic_condition_struct_right_coeff_i(ptr:POINTER; index:INTEGER):INTEGER_16
			-- how fast to increase the force towards the positive side
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->right_coeff[((int)$index)]"
		end

	frozen set_sdl_haptic_condition_struct_left_coeff_i (ptr: POINTER; index:INTEGER; value:INTEGER_16)
			-- how fast to increase the force towards the negative side
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->left_coeff[((int)$index)] = ((Sint32)$value)"
		end

	frozen get_sdl_haptic_condition_struct_left_coeff_i(ptr:POINTER; index:INTEGER):INTEGER_16
			-- how fast to increase the force towards the negative side
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->left_coeff[((int)$index)]"
		end

	frozen set_sdl_haptic_condition_struct_deadband_i (ptr: POINTER; index:INTEGER; value:NATURAL_16)
			-- size of the dead zone; max 0xFFFF: whole axis-range when 0-centered
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->deadband[((int)$index)] = ((Sint32)$value)"
		end

	frozen get_sdl_haptic_condition_struct_deadband_i(ptr:POINTER; index:INTEGER):NATURAL_16
			-- size of the dead zone; max 0xFFFF: whole axis-range when 0-centered
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->deadband[((int)$index)]"
		end

	frozen set_sdl_haptic_condition_struct_center_i (ptr: POINTER; index:INTEGER; value:INTEGER_16)
			-- position of the dead zone
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->center[((int)$index)] = ((Sint32)$value)"
		end

	frozen get_sdl_haptic_condition_struct_center_i(ptr:POINTER; index:INTEGER):INTEGER_16
			-- position of the dead zone
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticCondition*)$ptr)->center[((int)$index)]"
		end

feature -- Structure SDL_HapticRamp SDL.h

	frozen get_sdl_haptic_ramp_direction(ptr:POINTER):POINTER
			-- direction of the effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticRamp*)$ptr)->direction)"
		end

	frozen set_sdl_haptic_ramp_length (ptr: POINTER; value:NATURAL_32)
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Uint32)"
		alias
			"length"
		end

	frozen get_sdl_haptic_ramp_length(ptr:POINTER):NATURAL_32
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Uint32"
		alias
			"length"
		end

	frozen set_sdl_haptic_ramp_delay (ptr: POINTER; value:NATURAL_16)
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Uint16)"
		alias
			"delay"
		end

	frozen get_sdl_haptic_ramp_delay(ptr:POINTER):NATURAL_16
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Uint16"
		alias
			"delay"
		end

	frozen set_sdl_haptic_ramp_button (ptr: POINTER; value:NATURAL_16)
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Uint16)"
		alias
			"button"
		end

	frozen get_sdl_haptic_ramp_button(ptr:POINTER):NATURAL_16
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Uint16"
		alias
			"button"
		end

	frozen set_sdl_haptic_ramp_interval (ptr: POINTER; value:NATURAL_16)
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Uint16)"
		alias
			"interval"
		end

	frozen get_sdl_haptic_ramp_interval(ptr:POINTER):NATURAL_16
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Uint16"
		alias
			"interval"
		end

	frozen set_sdl_haptic_ramp_start (ptr: POINTER; value:INTEGER_16)
			-- strength of the ramp effect at the start
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Sint16)"
		alias
			"start"
		end

	frozen get_sdl_haptic_ramp_start(ptr:POINTER):INTEGER_16
			-- strength of the ramp effect at the start
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Sint16"
		alias
			"start"
		end

	frozen set_sdl_haptic_ramp_end (ptr: POINTER; value:INTEGER_16)
			-- strength of the ramp effect at the end
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Sint16)"
		alias
			"end"
		end

	frozen get_sdl_haptic_ramp_end(ptr:POINTER):INTEGER_16
			-- strength of the ramp effect at the end
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Sint16"
		alias
			"end"
		end

	frozen set_sdl_haptic_ramp_attack_length (ptr: POINTER; value:NATURAL_16)
			-- duration of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Uint16)"
		alias
			"attack_length"
		end

	frozen get_sdl_haptic_ramp_attack_length(ptr:POINTER):NATURAL_16
			-- duration of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Uint16"
		alias
			"attack_length"
		end

	frozen set_sdl_haptic_ramp_attack_level (ptr: POINTER; value:NATURAL_16)
			-- level at the start of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Uint16)"
		alias
			"attack_level"
		end

	frozen get_sdl_haptic_ramp_attack_level(ptr:POINTER):NATURAL_16
			-- level at the start of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Uint16"
		alias
			"attack_level"
		end

	frozen set_sdl_haptic_ramp_fade_length (ptr: POINTER; value:NATURAL_16)
			-- duration of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Uint16)"
		alias
			"fade_length"
		end

	frozen get_sdl_haptic_ramp_fade_length(ptr:POINTER):NATURAL_16
			-- duration of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Uint16"
		alias
			"fade_length"
		end

	frozen set_sdl_haptic_ramp_fade_level (ptr: POINTER; value:NATURAL_16)
			-- level at the end of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticRamp, Uint16)"
		alias
			"fade_level"
		end

	frozen get_sdl_haptic_ramp_fade_level(ptr:POINTER):NATURAL_16
			-- level at the end of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticRamp):Uint16"
		alias
			"fade_level"
		end

feature -- Structure SDL_HapticLeftRight SDL.h

	frozen set_sdl_haptic_leftright_length (ptr: POINTER; value:NATURAL_32)
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticLeftRight, Uint32)"
		alias
			"length"
		end

	frozen get_sdl_haptic_leftright_length(ptr:POINTER):NATURAL_32
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticLeftRight):Uint32"
		alias
			"length"
		end

	frozen set_sdl_haptic_leftright_large_magnitude (ptr: POINTER; value:NATURAL_16)
			-- control of the large controller motor
		external
			"C [struct <SDL.h>] (SDL_HapticLeftRight, Uint16)"
		alias
			"large_magnitude"
		end

	frozen get_sdl_haptic_leftright_large_magnitude(ptr:POINTER):NATURAL_16
			-- control of the large controller motor
		external
			"C [struct <SDL.h>] (SDL_HapticLeftRight):Uint16"
		alias
			"large_magnitude"
		end

	frozen set_sdl_haptic_leftright_small_magnitude (ptr: POINTER; value:NATURAL_16)
			-- control of the large controller motor
		external
			"C [struct <SDL.h>] (SDL_HapticLeftRight, Uint16)"
		alias
			"small_magnitude"
		end

	frozen get_sdl_haptic_leftright_small_magnitude(ptr:POINTER):NATURAL_16
			-- control of the large controller motor
		external
			"C [struct <SDL.h>] (SDL_HapticLeftRight):Uint16"
		alias
			"small_magnitude"
		end

feature -- Structure SDL_HapticCustom SDL.h

	frozen get_sdl_haptic_custom_direction(ptr:POINTER):POINTER
			-- direction of the effect
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_HapticCustom*)$ptr)->direction)"
		end

	frozen set_sdl_haptic_custom_length (ptr: POINTER; value:NATURAL_32)
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint32)"
		alias
			"length"
		end

	frozen get_sdl_haptic_custom_length(ptr:POINTER):NATURAL_32
			-- duration of effect (ms)
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint32"
		alias
			"length"
		end

	frozen set_sdl_haptic_custom_delay (ptr: POINTER; value:NATURAL_16)
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16)"
		alias
			"delay"
		end

	frozen get_sdl_haptic_custom_delay(ptr:POINTER):NATURAL_16
			-- delay before starting effect
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16"
		alias
			"delay"
		end

	frozen set_sdl_haptic_custom_button (ptr: POINTER; value:NATURAL_16)
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16)"
		alias
			"button"
		end

	frozen get_sdl_haptic_custom_button(ptr:POINTER):NATURAL_16
			-- button that triggers effect
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16"
		alias
			"button"
		end

	frozen set_sdl_haptic_custom_interval (ptr: POINTER; value:NATURAL_16)
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16)"
		alias
			"interval"
		end

	frozen get_sdl_haptic_custom_interval(ptr:POINTER):NATURAL_16
			-- how soon before effect can be triggered again
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16"
		alias
			"interval"
		end

	frozen set_sdl_haptic_custom_channels (ptr: POINTER; value:NATURAL_8)
			-- axes to use, minimum of 1
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint8)"
		alias
			"channels"
		end

	frozen get_sdl_haptic_custom_channels(ptr:POINTER):NATURAL_8
			-- axes to use, minimum of 1
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint8"
		alias
			"channels"
		end

	frozen set_sdl_haptic_custom_period (ptr: POINTER; value:NATURAL_16)
			-- period of the samples
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16)"
		alias
			"period"
		end

	frozen get_sdl_haptic_custom_period(ptr:POINTER):NATURAL_16
			-- period of the samples
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16"
		alias
			"period"
		end

	frozen set_sdl_haptic_custom_samples (ptr: POINTER; value:NATURAL_16)
			-- number of samples
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16)"
		alias
			"samples"
		end

	frozen get_sdl_haptic_custom_samples(ptr:POINTER):NATURAL_16
			-- number of samples
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16"
		alias
			"samples"
		end

	frozen set_sdl_haptic_custom_data (ptr, value: POINTER)
			-- should contain channels*samples items
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16*)"
		alias
			"data"
		end

	frozen get_sdl_haptic_custom_data(ptr:POINTER):POINTER
			-- duration of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16*"
		alias
			"data"
		end


	frozen set_sdl_haptic_custom_attack_length (ptr: POINTER; value:NATURAL_16)
			-- should contain channels*samples items
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16)"
		alias
			"attack_length"
		end

	frozen get_sdl_haptic_custom_attack_length(ptr:POINTER):NATURAL_16
			-- duration of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16"
		alias
			"attack_length"
		end

	frozen set_sdl_haptic_custom_attack_level (ptr: POINTER; value:NATURAL_16)
			-- level at the start of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16)"
		alias
			"attack_level"
		end

	frozen get_sdl_haptic_custom_attack_level(ptr:POINTER):NATURAL_16
			-- level at the start of the attack
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16"
		alias
			"attack_level"
		end

	frozen set_sdl_haptic_custom_fade_length (ptr: POINTER; value:NATURAL_16)
			-- duration of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16)"
		alias
			"fade_length"
		end

	frozen get_sdl_haptic_custom_fade_length(ptr:POINTER):NATURAL_16
			-- duration of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16"
		alias
			"fade_length"
		end

	frozen set_sdl_haptic_custom_fade_level (ptr: POINTER; value:NATURAL_16)
			-- level at the end of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticCustom, Uint16)"
		alias
			"fade_level"
		end

	frozen get_sdl_haptic_custom_fade_level(ptr:POINTER):NATURAL_16
			-- level at the end of the fade
		external
			"C [struct <SDL.h>] (SDL_HapticCustom):Uint16"
		alias
			"fade_level"
		end


feature -- Structure SDL_HapticDirection SDL.h

	frozen c_sizeof_sdl_haptic_direction:INTEGER
			-- Size of an SDL_HapticDirection C structure.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_HapticDirection)"
		end

	frozen set_sdl_haptic_direction_struct_type (ptr: POINTER; value:NATURAL_8)
			-- the type of encoding
		external
			"C [struct <SDL.h>] (SDL_HapticDirection, Uint8)"
		alias
			"type"
		end

	frozen get_sdl_haptic_direction_struct_type(ptr:POINTER):NATURAL_8
			-- the type of encoding
		external
			"C [struct <SDL.h>] (SDL_HapticDirection):Uint8"
		alias
			"type"
		end

	frozen set_sdl_haptic_direction_struct_dir_i (ptr: POINTER; index:INTEGER; value:INTEGER_32)
			-- the encoded direction
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticDirection*)$ptr)->dir[((int)$index)] = ((Sint32)$value)"
		end

	frozen get_sdl_haptic_direction_struct_dir_i(ptr:POINTER; index:INTEGER):INTEGER_32
			-- the type of encoding
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_HapticDirection*)$ptr)->dir[((int)$index)]"
		end


feature -- Structure SDL_Finger SDL.h

	frozen get_sdl_finger_struct_id(ptr:POINTER):INTEGER_64
		external
			"C [struct <SDL.h>] (SDL_Finger):Sint64"
		alias
			"id"
		end

	frozen get_sdl_finger_struct_x(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_Finger):float"
		alias
			"x"
		end

	frozen get_sdl_finger_struct_y(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_Finger):float"
		alias
			"y"
		end

	frozen get_sdl_finger_struct_pressure(ptr:POINTER):REAL_32
		external
			"C [struct <SDL.h>] (SDL_Finger):float"
		alias
			"pressure"
		end


feature -- Constants

	frozen SDL_WINDOWEVENT:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOWEVENT"
		end

	frozen SDL_KEYDOWN:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_KEYDOWN"
		end

	frozen SDL_KEYUP:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_KEYUP"
		end

	frozen SDL_TEXTEDITING:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_TEXTEDITING"
		end

	frozen SDL_TEXTINPUT:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_TEXTINPUT"
		end

	frozen SDL_MOUSEMOTION:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_MOUSEMOTION"
		end

	frozen SDL_MOUSEBUTTONDOWN:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_MOUSEBUTTONDOWN"
		end

	frozen SDL_MOUSEBUTTONUP:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_MOUSEBUTTONUP"
		end

	frozen SDL_MOUSEWHEEL:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_MOUSEWHEEL"
		end

	frozen SDL_JOYAXISMOTION:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_JOYAXISMOTION"
		end

	frozen SDL_JOYBALLMOTION:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_JOYBALLMOTION"
		end

	frozen SDL_JOYHATMOTION:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_JOYHATMOTION"
		end

	frozen SDL_JOYBUTTONDOWN:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_JOYBUTTONDOWN"
		end

	frozen SDL_JOYBUTTONUP:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_JOYBUTTONUP"
		end

	frozen SDL_JOYDEVICEADDED:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_JOYDEVICEADDED"
		end

	frozen SDL_JOYDEVICEREMOVED:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_JOYDEVICEREMOVED"
		end

	frozen SDL_CONTROLLERAXISMOTION:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_CONTROLLERAXISMOTION"
		end

	frozen SDL_CONTROLLERBUTTONDOWN:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_CONTROLLERBUTTONDOWN"
		end

	frozen SDL_CONTROLLERBUTTONUP:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_CONTROLLERBUTTONUP"
		end

	frozen SDL_CONTROLLERDEVICEADDED:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_CONTROLLERDEVICEADDED"
		end

	frozen SDL_CONTROLLERDEVICEREMOVED:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_CONTROLLERDEVICEREMOVED"
		end

	frozen SDL_CONTROLLERDEVICEREMAPPED:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_CONTROLLERDEVICEREMAPPED"
		end

	frozen SDL_QUIT:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_QUIT"
		end

	frozen SDL_FINGERMOTION:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_FINGERMOTION"
		end

	frozen SDL_FINGERDOWN:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_FINGERDOWN"
		end

	frozen SDL_FINGERUP:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_FINGERUP"
		end

	frozen SDL_MULTIGESTURE:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_MULTIGESTURE"
		end

	frozen SDL_DROPFILE:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_DROPFILE"
		end

	frozen SDL_DOLLARGESTURE:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_DOLLARGESTURE"
		end

	frozen SDL_DOLLARRECORD:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_DOLLARRECORD"
		end

	frozen SDL_INIT_TIMER:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_INIT_TIMER"
		end

	frozen SDL_INIT_AUDIO:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_INIT_AUDIO"
		end

	frozen SDL_INIT_VIDEO:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_INIT_VIDEO"
		end

	frozen SDL_INIT_JOYSTICK:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_INIT_JOYSTICK"
		end

	frozen SDL_INIT_HAPTIC:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_INIT_HAPTIC"
		end

	frozen SDL_INIT_GAMECONTROLLER:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_INIT_GAMECONTROLLER"
		end

	frozen SDL_INIT_EVENTS:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_INIT_EVENTS"
		end

	frozen SDL_INIT_EVERYTHING:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_INIT_EVERYTHING"
		end

	frozen SDL_INIT_NOPARACHUTE:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_INIT_NOPARACHUTE"
		end

	frozen SDL_WINDOW_FULLSCREEN:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOW_FULLSCREEN"
		end

	frozen SDL_WINDOW_FULLSCREEN_DESKTOP:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOW_FULLSCREEN_DESKTOP"
		end

	frozen SDL_WINDOW_OPENGL:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOW_OPENGL"
		end

	frozen SDL_WINDOW_HIDDEN:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOW_HIDDEN"
		end

	frozen SDL_WINDOW_BORDERLESS:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOW_BORDERLESS"
		end

	frozen SDL_WINDOW_RESIZABLE:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOW_RESIZABLE"
		end

	frozen SDL_WINDOW_MINIMIZED:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOW_MINIMIZED"
		end

	frozen SDL_WINDOW_MAXIMIZED:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOW_MAXIMIZED"
		end

	frozen SDL_WINDOW_INPUT_GRABBED:NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_WINDOW_INPUT_GRABBED"
		end

	frozen SDL_PIXELFORMAT_UNKNOWN : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_UNKNOWN"
		end


	frozen SDL_PIXELFORMAT_INDEX1LSB : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_INDEX1LSB"
		end


	frozen SDL_PIXELFORMAT_INDEX1MSB : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_INDEX1MSB"
		end


	frozen SDL_PIXELFORMAT_INDEX4LSB : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_INDEX4LSB"
		end


	frozen SDL_PIXELFORMAT_INDEX4MSB : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_INDEX4MSB"
		end


	frozen SDL_PIXELFORMAT_INDEX8 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_INDEX8"
		end


	frozen SDL_PIXELFORMAT_RGB332 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGB332"
		end


	frozen SDL_PIXELFORMAT_RGB444 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGB444"
		end


	frozen SDL_PIXELFORMAT_RGB555 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGB555"
		end


	frozen SDL_PIXELFORMAT_BGR555 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_BGR555"
		end


	frozen SDL_PIXELFORMAT_ARGB4444 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_ARGB4444"
		end


	frozen SDL_PIXELFORMAT_RGBA4444 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGBA4444"
		end


	frozen SDL_PIXELFORMAT_ABGR4444 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_ABGR4444"
		end


	frozen SDL_PIXELFORMAT_BGRA4444 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_BGRA4444"
		end


	frozen SDL_PIXELFORMAT_ARGB1555 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_ARGB1555"
		end


	frozen SDL_PIXELFORMAT_RGBA5551 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGBA5551"
		end


	frozen SDL_PIXELFORMAT_ABGR1555 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_ABGR1555"
		end


	frozen SDL_PIXELFORMAT_BGRA5551 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_BGRA5551"
		end


	frozen SDL_PIXELFORMAT_RGB565 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGB565"
		end


	frozen SDL_PIXELFORMAT_BGR565 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_BGR565"
		end


	frozen SDL_PIXELFORMAT_RGB24 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGB24"
		end


	frozen SDL_PIXELFORMAT_BGR24 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_BGR24"
		end


	frozen SDL_PIXELFORMAT_RGB888 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGB888"
		end


	frozen SDL_PIXELFORMAT_RGBX8888 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGBX8888"
		end


	frozen SDL_PIXELFORMAT_BGR888 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_BGR888"
		end


	frozen SDL_PIXELFORMAT_BGRX8888 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_BGRX8888"
		end


	frozen SDL_PIXELFORMAT_ARGB8888 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_ARGB8888"
		end


	frozen SDL_PIXELFORMAT_RGBA8888 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_RGBA8888"
		end


	frozen SDL_PIXELFORMAT_ABGR8888 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_ABGR8888"
		end


	frozen SDL_PIXELFORMAT_BGRA8888 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_BGRA8888"
		end


	frozen SDL_PIXELFORMAT_ARGB2101010 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_ARGB2101010"
		end


	frozen SDL_PIXELFORMAT_YV12 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_YV12"
		end


	frozen SDL_PIXELFORMAT_IYUV : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_IYUV"
		end


	frozen SDL_PIXELFORMAT_YUY2 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_YUY2"
		end


	frozen SDL_PIXELFORMAT_UYVY : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_UYVY"
		end


	frozen SDL_PIXELFORMAT_YVYU : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_PIXELFORMAT_YVYU"
		end


	frozen SDL_SYSWM_UNKNOWN : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_SYSWM_UNKNOWN"
		end

	frozen SDL_SYSWM_WINDOWS : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_SYSWM_WINDOWS"
		end

	frozen SDL_SYSWM_X11 : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_SYSWM_X11"
		end

	frozen SDL_SYSWM_DIRECTFB : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_SYSWM_DIRECTFB"
		end

	frozen SDL_SYSWM_COCOA : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_SYSWM_COCOA"
		end

	frozen SDL_SYSWM_UIKIT : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_SYSWM_UIKIT"
		end

	frozen SDL_ENABLE : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_ENABLE"
		end

	frozen SDL_DISABLE : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_DISABLE"
		end

	frozen SDL_QUERY : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_QUERY"
		end

	frozen SDL_FALSE : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_FALSE"
		end

	frozen SDL_TRUE : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_TRUE"
		end

	frozen SDL_BLENDMODE_NONE : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_BLENDMODE_NONE"
		end

	frozen SDL_BLENDMODE_BLEND : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_BLENDMODE_BLEND"
		end

	frozen SDL_BLENDMODE_ADD : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_BLENDMODE_ADD"
		end

	frozen SDL_BLENDMODE_MOD : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_BLENDMODE_MOD"
		end

	frozen SDL_HAT_CENTERED : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_HAT_CENTERED"
		end

	frozen SDL_HAT_UP : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_HAT_UP"
		end

	frozen SDL_HAT_RIGHT : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_HAT_RIGHT"
		end

	frozen SDL_HAT_DOWN : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_HAT_DOWN"
		end

	frozen SDL_HAT_LEFT : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_HAT_LEFT"
		end

	frozen SDL_HAT_RIGHTUP : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_HAT_RIGHTUP"
		end

	frozen SDL_HAT_RIGHTDOWN : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_HAT_RIGHTDOWN"
		end

	frozen SDL_HAT_LEFTUP : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_HAT_LEFTUP"
		end

	frozen SDL_HAT_LEFTDOWN : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_HAT_LEFTDOWN"
		end

	frozen SDL_WINDOWEVENT_SHOWN : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_SHOWN"
		end

	frozen SDL_WINDOWEVENT_HIDDEN : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_HIDDEN"
		end

	frozen SDL_WINDOWEVENT_EXPOSED : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_EXPOSED"
		end

	frozen SDL_WINDOWEVENT_MOVED : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_MOVED"
		end

	frozen SDL_WINDOWEVENT_RESIZED : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_RESIZED"
		end

	frozen SDL_WINDOWEVENT_SIZE_CHANGED : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_SIZE_CHANGED"
		end

	frozen SDL_WINDOWEVENT_MINIMIZED : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_MINIMIZED"
		end

	frozen SDL_WINDOWEVENT_MAXIMIZED : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_MAXIMIZED"
		end

	frozen SDL_WINDOWEVENT_RESTORED : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_RESTORED"
		end

	frozen SDL_WINDOWEVENT_ENTER : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_ENTER"
		end

	frozen SDL_WINDOWEVENT_LEAVE : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_LEAVE"
		end

	frozen SDL_WINDOWEVENT_FOCUS_GAINED : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_FOCUS_GAINED"
		end

	frozen SDL_WINDOWEVENT_FOCUS_LOST : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_FOCUS_LOST"
		end

	frozen SDL_WINDOWEVENT_CLOSE : NATURAL_8
		external
			"C [macro <SDL.h>] : EIF_NATURAL_8"
		alias
			"SDL_WINDOWEVENT_CLOSE"
		end

	frozen KMOD_NONE : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_NONE"
		end

	frozen KMOD_LSHIFT : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_LSHIFT"
		end

	frozen KMOD_RSHIFT : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_RSHIFT"
		end

	frozen KMOD_LCTRL : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_LCTRL"
		end

	frozen KMOD_RCTRL : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_RCTRL"
		end

	frozen KMOD_LALT : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_LALT"
		end

	frozen KMOD_RALT : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_RALT"
		end

	frozen KMOD_LGUI : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_LGUI"
		end

	frozen KMOD_RGUI : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_RGUI"
		end

	frozen KMOD_NUM : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_NUM"
		end

	frozen KMOD_CAPS : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_CAPS"
		end

	frozen KMOD_MODE : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_MODE"
		end

	frozen KMOD_CTRL : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_CTRL"
		end

	frozen KMOD_SHIFT : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_SHIFT"
		end

	frozen KMOD_ALT : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_ALT"
		end

	frozen KMOD_GUI : NATURAL_16
		external
			"C [macro <SDL.h>] : EIF_NATURAL_16"
		alias
			"KMOD_GUI"
		end

	frozen SDL_SCANCODE_UNKNOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_UNKNOWN"
		end


	frozen SDL_SCANCODE_A : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_A"
		end


	frozen SDL_SCANCODE_B : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_B"
		end


	frozen SDL_SCANCODE_C : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_C"
		end


	frozen SDL_SCANCODE_D : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_D"
		end


	frozen SDL_SCANCODE_E : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_E"
		end


	frozen SDL_SCANCODE_F : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F"
		end


	frozen SDL_SCANCODE_G : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_G"
		end


	frozen SDL_SCANCODE_H : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_H"
		end


	frozen SDL_SCANCODE_I : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_I"
		end


	frozen SDL_SCANCODE_J : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_J"
		end


	frozen SDL_SCANCODE_K : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_K"
		end


	frozen SDL_SCANCODE_L : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_L"
		end


	frozen SDL_SCANCODE_M : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_M"
		end


	frozen SDL_SCANCODE_N : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_N"
		end


	frozen SDL_SCANCODE_O : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_O"
		end


	frozen SDL_SCANCODE_P : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_P"
		end


	frozen SDL_SCANCODE_Q : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_Q"
		end


	frozen SDL_SCANCODE_R : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_R"
		end


	frozen SDL_SCANCODE_S : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_S"
		end


	frozen SDL_SCANCODE_T : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_T"
		end


	frozen SDL_SCANCODE_U : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_U"
		end


	frozen SDL_SCANCODE_V : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_V"
		end


	frozen SDL_SCANCODE_W : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_W"
		end


	frozen SDL_SCANCODE_X : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_X"
		end


	frozen SDL_SCANCODE_Y : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_Y"
		end


	frozen SDL_SCANCODE_Z : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_Z"
		end


	frozen SDL_SCANCODE_1 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_1"
		end


	frozen SDL_SCANCODE_2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_2"
		end


	frozen SDL_SCANCODE_3 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_3"
		end


	frozen SDL_SCANCODE_4 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_4"
		end


	frozen SDL_SCANCODE_5 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_5"
		end


	frozen SDL_SCANCODE_6 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_6"
		end


	frozen SDL_SCANCODE_7 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_7"
		end


	frozen SDL_SCANCODE_8 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_8"
		end


	frozen SDL_SCANCODE_9 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_9"
		end


	frozen SDL_SCANCODE_0 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_0"
		end


	frozen SDL_SCANCODE_RETURN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RETURN"
		end


	frozen SDL_SCANCODE_ESCAPE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_ESCAPE"
		end


	frozen SDL_SCANCODE_BACKSPACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_BACKSPACE"
		end


	frozen SDL_SCANCODE_TAB : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_TAB"
		end


	frozen SDL_SCANCODE_SPACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SPACE"
		end


	frozen SDL_SCANCODE_MINUS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MINUS"
		end


	frozen SDL_SCANCODE_EQUALS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_EQUALS"
		end


	frozen SDL_SCANCODE_LEFTBRACKET : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LEFTBRACKET"
		end


	frozen SDL_SCANCODE_RIGHTBRACKET : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RIGHTBRACKET"
		end


	frozen SDL_SCANCODE_BACKSLASH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_BACKSLASH"
		end


	frozen SDL_SCANCODE_NONUSHASH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_NONUSHASH"
		end


	frozen SDL_SCANCODE_SEMICOLON : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SEMICOLON"
		end


	frozen SDL_SCANCODE_APOSTROPHE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_APOSTROPHE"
		end


	frozen SDL_SCANCODE_GRAVE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_GRAVE"
		end


	frozen SDL_SCANCODE_COMMA : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_COMMA"
		end


	frozen SDL_SCANCODE_PERIOD : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PERIOD"
		end


	frozen SDL_SCANCODE_SLASH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SLASH"
		end


	frozen SDL_SCANCODE_CAPSLOCK : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CAPSLOCK"
		end


	frozen SDL_SCANCODE_F1 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F1"
		end


	frozen SDL_SCANCODE_F2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F2"
		end


	frozen SDL_SCANCODE_F3 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F3"
		end


	frozen SDL_SCANCODE_F4 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F4"
		end


	frozen SDL_SCANCODE_F5 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F5"
		end


	frozen SDL_SCANCODE_F6 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F6"
		end


	frozen SDL_SCANCODE_F7 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F7"
		end


	frozen SDL_SCANCODE_F8 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F8"
		end


	frozen SDL_SCANCODE_F9 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F9"
		end


	frozen SDL_SCANCODE_F10 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F10"
		end


	frozen SDL_SCANCODE_F11 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F11"
		end


	frozen SDL_SCANCODE_F12 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F12"
		end


	frozen SDL_SCANCODE_PRINTSCREEN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PRINTSCREEN"
		end


	frozen SDL_SCANCODE_SCROLLLOCK : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SCROLLLOCK"
		end


	frozen SDL_SCANCODE_PAUSE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PAUSE"
		end


	frozen SDL_SCANCODE_INSERT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INSERT"
		end


	frozen SDL_SCANCODE_HOME : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_HOME"
		end


	frozen SDL_SCANCODE_PAGEUP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PAGEUP"
		end


	frozen SDL_SCANCODE_DELETE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_DELETE"
		end


	frozen SDL_SCANCODE_END : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_END"
		end


	frozen SDL_SCANCODE_PAGEDOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PAGEDOWN"
		end


	frozen SDL_SCANCODE_RIGHT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RIGHT"
		end


	frozen SDL_SCANCODE_LEFT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LEFT"
		end


	frozen SDL_SCANCODE_DOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_DOWN"
		end


	frozen SDL_SCANCODE_UP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_UP"
		end


	frozen SDL_SCANCODE_NUMLOCKCLEAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_NUMLOCKCLEAR"
		end


	frozen SDL_SCANCODE_KP_DIVIDE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_DIVIDE"
		end


	frozen SDL_SCANCODE_KP_MULTIPLY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MULTIPLY"
		end


	frozen SDL_SCANCODE_KP_MINUS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MINUS"
		end


	frozen SDL_SCANCODE_KP_PLUS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_PLUS"
		end


	frozen SDL_SCANCODE_KP_ENTER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_ENTER"
		end


	frozen SDL_SCANCODE_KP_1 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_1"
		end


	frozen SDL_SCANCODE_KP_2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_2"
		end


	frozen SDL_SCANCODE_KP_3 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_3"
		end


	frozen SDL_SCANCODE_KP_4 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_4"
		end


	frozen SDL_SCANCODE_KP_5 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_5"
		end


	frozen SDL_SCANCODE_KP_6 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_6"
		end


	frozen SDL_SCANCODE_KP_7 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_7"
		end


	frozen SDL_SCANCODE_KP_8 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_8"
		end


	frozen SDL_SCANCODE_KP_9 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_9"
		end


	frozen SDL_SCANCODE_KP_0 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_0"
		end


	frozen SDL_SCANCODE_KP_PERIOD : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_PERIOD"
		end


	frozen SDL_SCANCODE_NONUSBACKSLASH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_NONUSBACKSLASH"
		end


	frozen SDL_SCANCODE_APPLICATION : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_APPLICATION"
		end


	frozen SDL_SCANCODE_POWER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_POWER"
		end


	frozen SDL_SCANCODE_KP_EQUALS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_EQUALS"
		end


	frozen SDL_SCANCODE_F13 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F13"
		end


	frozen SDL_SCANCODE_F14 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F14"
		end


	frozen SDL_SCANCODE_F15 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F15"
		end


	frozen SDL_SCANCODE_F16 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F16"
		end


	frozen SDL_SCANCODE_F17 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F17"
		end


	frozen SDL_SCANCODE_F18 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F18"
		end


	frozen SDL_SCANCODE_F19 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F19"
		end


	frozen SDL_SCANCODE_F20 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F20"
		end


	frozen SDL_SCANCODE_F21 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F21"
		end


	frozen SDL_SCANCODE_F22 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F22"
		end


	frozen SDL_SCANCODE_F23 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F23"
		end


	frozen SDL_SCANCODE_F24 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_F24"
		end


	frozen SDL_SCANCODE_EXECUTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_EXECUTE"
		end


	frozen SDL_SCANCODE_HELP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_HELP"
		end


	frozen SDL_SCANCODE_MENU : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MENU"
		end


	frozen SDL_SCANCODE_SELECT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SELECT"
		end


	frozen SDL_SCANCODE_STOP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_STOP"
		end


	frozen SDL_SCANCODE_AGAIN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AGAIN"
		end


	frozen SDL_SCANCODE_UNDO : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_UNDO"
		end


	frozen SDL_SCANCODE_CUT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CUT"
		end


	frozen SDL_SCANCODE_COPY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_COPY"
		end


	frozen SDL_SCANCODE_PASTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PASTE"
		end


	frozen SDL_SCANCODE_FIND : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_FIND"
		end


	frozen SDL_SCANCODE_MUTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MUTE"
		end


	frozen SDL_SCANCODE_VOLUMEUP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_VOLUMEUP"
		end


	frozen SDL_SCANCODE_VOLUMEDOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_VOLUMEDOWN"
		end

	frozen SDL_SCANCODE_KP_COMMA : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_COMMA"
		end


	frozen SDL_SCANCODE_KP_EQUALSAS400 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_EQUALSAS400"
		end


	frozen SDL_SCANCODE_INTERNATIONAL1 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL1"
		end


	frozen SDL_SCANCODE_INTERNATIONAL2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL2"
		end


	frozen SDL_SCANCODE_INTERNATIONAL3 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL3"
		end


	frozen SDL_SCANCODE_INTERNATIONAL4 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL4"
		end


	frozen SDL_SCANCODE_INTERNATIONAL5 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL5"
		end


	frozen SDL_SCANCODE_INTERNATIONAL6 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL6"
		end


	frozen SDL_SCANCODE_INTERNATIONAL7 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL7"
		end


	frozen SDL_SCANCODE_INTERNATIONAL8 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL8"
		end


	frozen SDL_SCANCODE_INTERNATIONAL9 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_INTERNATIONAL9"
		end


	frozen SDL_SCANCODE_LANG1 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG1"
		end


	frozen SDL_SCANCODE_LANG2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG2"
		end


	frozen SDL_SCANCODE_LANG3 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG3"
		end


	frozen SDL_SCANCODE_LANG4 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG4"
		end


	frozen SDL_SCANCODE_LANG5 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG5"
		end


	frozen SDL_SCANCODE_LANG6 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG6"
		end


	frozen SDL_SCANCODE_LANG7 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG7"
		end


	frozen SDL_SCANCODE_LANG8 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG8"
		end


	frozen SDL_SCANCODE_LANG9 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LANG9"
		end


	frozen SDL_SCANCODE_ALTERASE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_ALTERASE"
		end


	frozen SDL_SCANCODE_SYSREQ : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SYSREQ"
		end


	frozen SDL_SCANCODE_CANCEL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CANCEL"
		end


	frozen SDL_SCANCODE_CLEAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CLEAR"
		end


	frozen SDL_SCANCODE_PRIOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_PRIOR"
		end


	frozen SDL_SCANCODE_RETURN2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RETURN2"
		end


	frozen SDL_SCANCODE_SEPARATOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SEPARATOR"
		end


	frozen SDL_SCANCODE_OUT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_OUT"
		end


	frozen SDL_SCANCODE_OPER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_OPER"
		end


	frozen SDL_SCANCODE_CLEARAGAIN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CLEARAGAIN"
		end


	frozen SDL_SCANCODE_CRSEL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CRSEL"
		end


	frozen SDL_SCANCODE_EXSEL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_EXSEL"
		end


	frozen SDL_SCANCODE_KP_00 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_00"
		end


	frozen SDL_SCANCODE_KP_000 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_000"
		end


	frozen SDL_SCANCODE_THOUSANDSSEPARATOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_THOUSANDSSEPARATOR"
		end


	frozen SDL_SCANCODE_DECIMALSEPARATOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_DECIMALSEPARATOR"
		end


	frozen SDL_SCANCODE_CURRENCYUNIT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CURRENCYUNIT"
		end


	frozen SDL_SCANCODE_CURRENCYSUBUNIT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CURRENCYSUBUNIT"
		end


	frozen SDL_SCANCODE_KP_LEFTPAREN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_LEFTPAREN"
		end


	frozen SDL_SCANCODE_KP_RIGHTPAREN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_RIGHTPAREN"
		end


	frozen SDL_SCANCODE_KP_LEFTBRACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_LEFTBRACE"
		end


	frozen SDL_SCANCODE_KP_RIGHTBRACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_RIGHTBRACE"
		end


	frozen SDL_SCANCODE_KP_TAB : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_TAB"
		end


	frozen SDL_SCANCODE_KP_BACKSPACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_BACKSPACE"
		end


	frozen SDL_SCANCODE_KP_A : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_A"
		end


	frozen SDL_SCANCODE_KP_B : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_B"
		end


	frozen SDL_SCANCODE_KP_C : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_C"
		end


	frozen SDL_SCANCODE_KP_D : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_D"
		end


	frozen SDL_SCANCODE_KP_E : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_E"
		end


	frozen SDL_SCANCODE_KP_F : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_F"
		end


	frozen SDL_SCANCODE_KP_XOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_XOR"
		end


	frozen SDL_SCANCODE_KP_POWER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_POWER"
		end


	frozen SDL_SCANCODE_KP_PERCENT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_PERCENT"
		end


	frozen SDL_SCANCODE_KP_LESS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_LESS"
		end


	frozen SDL_SCANCODE_KP_GREATER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_GREATER"
		end


	frozen SDL_SCANCODE_KP_AMPERSAND : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_AMPERSAND"
		end


	frozen SDL_SCANCODE_KP_DBLAMPERSAND : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_DBLAMPERSAND"
		end


	frozen SDL_SCANCODE_KP_VERTICALBAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_VERTICALBAR"
		end


	frozen SDL_SCANCODE_KP_DBLVERTICALBAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_DBLVERTICALBAR"
		end


	frozen SDL_SCANCODE_KP_COLON : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_COLON"
		end


	frozen SDL_SCANCODE_KP_HASH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_HASH"
		end


	frozen SDL_SCANCODE_KP_SPACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_SPACE"
		end


	frozen SDL_SCANCODE_KP_AT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_AT"
		end


	frozen SDL_SCANCODE_KP_EXCLAM : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_EXCLAM"
		end


	frozen SDL_SCANCODE_KP_MEMSTORE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMSTORE"
		end


	frozen SDL_SCANCODE_KP_MEMRECALL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMRECALL"
		end


	frozen SDL_SCANCODE_KP_MEMCLEAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMCLEAR"
		end


	frozen SDL_SCANCODE_KP_MEMADD : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMADD"
		end


	frozen SDL_SCANCODE_KP_MEMSUBTRACT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMSUBTRACT"
		end


	frozen SDL_SCANCODE_KP_MEMMULTIPLY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMMULTIPLY"
		end


	frozen SDL_SCANCODE_KP_MEMDIVIDE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_MEMDIVIDE"
		end


	frozen SDL_SCANCODE_KP_PLUSMINUS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_PLUSMINUS"
		end


	frozen SDL_SCANCODE_KP_CLEAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_CLEAR"
		end


	frozen SDL_SCANCODE_KP_CLEARENTRY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_CLEARENTRY"
		end


	frozen SDL_SCANCODE_KP_BINARY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_BINARY"
		end


	frozen SDL_SCANCODE_KP_OCTAL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_OCTAL"
		end


	frozen SDL_SCANCODE_KP_DECIMAL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_DECIMAL"
		end


	frozen SDL_SCANCODE_KP_HEXADECIMAL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KP_HEXADECIMAL"
		end


	frozen SDL_SCANCODE_LCTRL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LCTRL"
		end


	frozen SDL_SCANCODE_LSHIFT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LSHIFT"
		end


	frozen SDL_SCANCODE_LALT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LALT"
		end


	frozen SDL_SCANCODE_LGUI : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_LGUI"
		end


	frozen SDL_SCANCODE_RCTRL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RCTRL"
		end


	frozen SDL_SCANCODE_RSHIFT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RSHIFT"
		end


	frozen SDL_SCANCODE_RALT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RALT"
		end


	frozen SDL_SCANCODE_RGUI : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_RGUI"
		end


	frozen SDL_SCANCODE_MODE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MODE"
		end


	frozen SDL_SCANCODE_AUDIONEXT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIONEXT"
		end


	frozen SDL_SCANCODE_AUDIOPREV : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIOPREV"
		end


	frozen SDL_SCANCODE_AUDIOSTOP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIOSTOP"
		end


	frozen SDL_SCANCODE_AUDIOPLAY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIOPLAY"
		end


	frozen SDL_SCANCODE_AUDIOMUTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AUDIOMUTE"
		end


	frozen SDL_SCANCODE_MEDIASELECT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MEDIASELECT"
		end


	frozen SDL_SCANCODE_WWW : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_WWW"
		end


	frozen SDL_SCANCODE_MAIL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_MAIL"
		end


	frozen SDL_SCANCODE_CALCULATOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_CALCULATOR"
		end


	frozen SDL_SCANCODE_COMPUTER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_COMPUTER"
		end


	frozen SDL_SCANCODE_AC_SEARCH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_SEARCH"
		end


	frozen SDL_SCANCODE_AC_HOME : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_HOME"
		end


	frozen SDL_SCANCODE_AC_BACK : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_BACK"
		end


	frozen SDL_SCANCODE_AC_FORWARD : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_FORWARD"
		end


	frozen SDL_SCANCODE_AC_STOP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_STOP"
		end


	frozen SDL_SCANCODE_AC_REFRESH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_REFRESH"
		end


	frozen SDL_SCANCODE_AC_BOOKMARKS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_AC_BOOKMARKS"
		end


	frozen SDL_SCANCODE_BRIGHTNESSDOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_BRIGHTNESSDOWN"
		end


	frozen SDL_SCANCODE_BRIGHTNESSUP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_BRIGHTNESSUP"
		end


	frozen SDL_SCANCODE_DISPLAYSWITCH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_DISPLAYSWITCH"
		end


	frozen SDL_SCANCODE_KBDILLUMTOGGLE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KBDILLUMTOGGLE"
		end


	frozen SDL_SCANCODE_KBDILLUMDOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KBDILLUMDOWN"
		end


	frozen SDL_SCANCODE_KBDILLUMUP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_KBDILLUMUP"
		end


	frozen SDL_SCANCODE_EJECT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_EJECT"
		end


	frozen SDL_SCANCODE_SLEEP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_SLEEP"
		end


	frozen SDL_SCANCODE_APP1 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_APP1"
		end


	frozen SDL_SCANCODE_APP2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDL_SCANCODE_APP2"
		end


	frozen SDLK_UNKNOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_UNKNOWN"
		end


	frozen SDLK_RETURN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RETURN"
		end


	frozen SDLK_ESCAPE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_ESCAPE"
		end


	frozen SDLK_BACKSPACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BACKSPACE"
		end


	frozen SDLK_TAB : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_TAB"
		end


	frozen SDLK_SPACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SPACE"
		end


	frozen SDLK_EXCLAIM : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EXCLAIM"
		end


	frozen SDLK_QUOTEDBL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_QUOTEDBL"
		end


	frozen SDLK_HASH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_HASH"
		end


	frozen SDLK_PERCENT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PERCENT"
		end


	frozen SDLK_DOLLAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DOLLAR"
		end


	frozen SDLK_AMPERSAND : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AMPERSAND"
		end


	frozen SDLK_QUOTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_QUOTE"
		end


	frozen SDLK_LEFTPAREN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LEFTPAREN"
		end


	frozen SDLK_RIGHTPAREN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RIGHTPAREN"
		end


	frozen SDLK_ASTERISK : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_ASTERISK"
		end


	frozen SDLK_PLUS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PLUS"
		end


	frozen SDLK_COMMA : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_COMMA"
		end


	frozen SDLK_MINUS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MINUS"
		end


	frozen SDLK_PERIOD : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PERIOD"
		end


	frozen SDLK_SLASH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SLASH"
		end


	frozen SDLK_0 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_0"
		end


	frozen SDLK_1 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_1"
		end


	frozen SDLK_2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_2"
		end


	frozen SDLK_3 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_3"
		end


	frozen SDLK_4 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_4"
		end


	frozen SDLK_5 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_5"
		end


	frozen SDLK_6 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_6"
		end


	frozen SDLK_7 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_7"
		end


	frozen SDLK_8 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_8"
		end


	frozen SDLK_9 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_9"
		end


	frozen SDLK_COLON : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_COLON"
		end


	frozen SDLK_SEMICOLON : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SEMICOLON"
		end


	frozen SDLK_LESS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LESS"
		end


	frozen SDLK_EQUALS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EQUALS"
		end


	frozen SDLK_GREATER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_GREATER"
		end


	frozen SDLK_QUESTION : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_QUESTION"
		end


	frozen SDLK_AT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AT"
		end


	frozen SDLK_LEFTBRACKET : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LEFTBRACKET"
		end


	frozen SDLK_BACKSLASH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BACKSLASH"
		end


	frozen SDLK_RIGHTBRACKET : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RIGHTBRACKET"
		end


	frozen SDLK_CARET : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CARET"
		end


	frozen SDLK_UNDERSCORE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_UNDERSCORE"
		end


	frozen SDLK_BACKQUOTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BACKQUOTE"
		end


	frozen SDLK_a : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_a"
		end


	frozen SDLK_b : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_b"
		end


	frozen SDLK_c : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_c"
		end


	frozen SDLK_d : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_d"
		end


	frozen SDLK_e : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_e"
		end


	frozen SDLK_f : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_f"
		end


	frozen SDLK_g : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_g"
		end


	frozen SDLK_h : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_h"
		end


	frozen SDLK_i : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_i"
		end


	frozen SDLK_j : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_j"
		end


	frozen SDLK_k : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_k"
		end


	frozen SDLK_l : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_l"
		end


	frozen SDLK_m : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_m"
		end


	frozen SDLK_n : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_n"
		end


	frozen SDLK_o : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_o"
		end


	frozen SDLK_p : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_p"
		end


	frozen SDLK_q : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_q"
		end


	frozen SDLK_r : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_r"
		end


	frozen SDLK_s : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_s"
		end


	frozen SDLK_t : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_t"
		end


	frozen SDLK_u : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_u"
		end


	frozen SDLK_v : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_v"
		end


	frozen SDLK_w : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_w"
		end


	frozen SDLK_x : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_x"
		end


	frozen SDLK_y : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_y"
		end


	frozen SDLK_z : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_z"
		end


	frozen SDLK_CAPSLOCK : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CAPSLOCK"
		end


	frozen SDLK_F1 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F1"
		end


	frozen SDLK_F2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F2"
		end


	frozen SDLK_F3 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F3"
		end


	frozen SDLK_F4 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F4"
		end


	frozen SDLK_F5 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F5"
		end


	frozen SDLK_F6 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F6"
		end


	frozen SDLK_F7 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F7"
		end


	frozen SDLK_F8 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F8"
		end


	frozen SDLK_F9 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F9"
		end


	frozen SDLK_F10 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F10"
		end


	frozen SDLK_F11 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F11"
		end


	frozen SDLK_F12 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F12"
		end


	frozen SDLK_PRINTSCREEN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PRINTSCREEN"
		end


	frozen SDLK_SCROLLLOCK : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SCROLLLOCK"
		end


	frozen SDLK_PAUSE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PAUSE"
		end


	frozen SDLK_INSERT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_INSERT"
		end


	frozen SDLK_HOME : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_HOME"
		end


	frozen SDLK_PAGEUP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PAGEUP"
		end


	frozen SDLK_DELETE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DELETE"
		end


	frozen SDLK_END : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_END"
		end


	frozen SDLK_PAGEDOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PAGEDOWN"
		end


	frozen SDLK_RIGHT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RIGHT"
		end


	frozen SDLK_LEFT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LEFT"
		end


	frozen SDLK_DOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DOWN"
		end


	frozen SDLK_UP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_UP"
		end


	frozen SDLK_NUMLOCKCLEAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_NUMLOCKCLEAR"
		end


	frozen SDLK_KP_DIVIDE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_DIVIDE"
		end


	frozen SDLK_KP_MULTIPLY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MULTIPLY"
		end


	frozen SDLK_KP_MINUS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MINUS"
		end


	frozen SDLK_KP_PLUS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_PLUS"
		end


	frozen SDLK_KP_ENTER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_ENTER"
		end


	frozen SDLK_KP_1 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_1"
		end


	frozen SDLK_KP_2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_2"
		end


	frozen SDLK_KP_3 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_3"
		end


	frozen SDLK_KP_4 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_4"
		end


	frozen SDLK_KP_5 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_5"
		end


	frozen SDLK_KP_6 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_6"
		end


	frozen SDLK_KP_7 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_7"
		end


	frozen SDLK_KP_8 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_8"
		end


	frozen SDLK_KP_9 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_9"
		end


	frozen SDLK_KP_0 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_0"
		end


	frozen SDLK_KP_PERIOD : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_PERIOD"
		end


	frozen SDLK_APPLICATION : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_APPLICATION"
		end


	frozen SDLK_POWER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_POWER"
		end


	frozen SDLK_KP_EQUALS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_EQUALS"
		end


	frozen SDLK_F13 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F13"
		end


	frozen SDLK_F14 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F14"
		end


	frozen SDLK_F15 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F15"
		end


	frozen SDLK_F16 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F16"
		end


	frozen SDLK_F17 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F17"
		end


	frozen SDLK_F18 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F18"
		end


	frozen SDLK_F19 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F19"
		end


	frozen SDLK_F20 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F20"
		end


	frozen SDLK_F21 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F21"
		end


	frozen SDLK_F22 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F22"
		end


	frozen SDLK_F23 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F23"
		end


	frozen SDLK_F24 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_F24"
		end


	frozen SDLK_EXECUTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EXECUTE"
		end


	frozen SDLK_HELP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_HELP"
		end


	frozen SDLK_MENU : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MENU"
		end


	frozen SDLK_SELECT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SELECT"
		end


	frozen SDLK_STOP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_STOP"
		end


	frozen SDLK_AGAIN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AGAIN"
		end


	frozen SDLK_UNDO : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_UNDO"
		end


	frozen SDLK_CUT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CUT"
		end


	frozen SDLK_COPY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_COPY"
		end


	frozen SDLK_PASTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PASTE"
		end


	frozen SDLK_FIND : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_FIND"
		end


	frozen SDLK_MUTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MUTE"
		end


	frozen SDLK_VOLUMEUP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_VOLUMEUP"
		end


	frozen SDLK_VOLUMEDOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_VOLUMEDOWN"
		end


	frozen SDLK_KP_COMMA : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_COMMA"
		end


	frozen SDLK_KP_EQUALSAS400 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_EQUALSAS400"
		end


	frozen SDLK_ALTERASE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_ALTERASE"
		end


	frozen SDLK_SYSREQ : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SYSREQ"
		end


	frozen SDLK_CANCEL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CANCEL"
		end


	frozen SDLK_CLEAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CLEAR"
		end


	frozen SDLK_PRIOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_PRIOR"
		end


	frozen SDLK_RETURN2 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RETURN2"
		end


	frozen SDLK_SEPARATOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SEPARATOR"
		end


	frozen SDLK_OUT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_OUT"
		end


	frozen SDLK_OPER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_OPER"
		end


	frozen SDLK_CLEARAGAIN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CLEARAGAIN"
		end


	frozen SDLK_CRSEL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CRSEL"
		end


	frozen SDLK_EXSEL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EXSEL"
		end


	frozen SDLK_KP_00 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_00"
		end


	frozen SDLK_KP_000 : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_000"
		end


	frozen SDLK_THOUSANDSSEPARATOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_THOUSANDSSEPARATOR"
		end


	frozen SDLK_DECIMALSEPARATOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DECIMALSEPARATOR"
		end


	frozen SDLK_CURRENCYUNIT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CURRENCYUNIT"
		end


	frozen SDLK_CURRENCYSUBUNIT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CURRENCYSUBUNIT"
		end


	frozen SDLK_KP_LEFTPAREN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_LEFTPAREN"
		end


	frozen SDLK_KP_RIGHTPAREN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_RIGHTPAREN"
		end


	frozen SDLK_KP_LEFTBRACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_LEFTBRACE"
		end


	frozen SDLK_KP_RIGHTBRACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_RIGHTBRACE"
		end


	frozen SDLK_KP_TAB : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_TAB"
		end


	frozen SDLK_KP_BACKSPACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_BACKSPACE"
		end


	frozen SDLK_KP_A : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_A"
		end


	frozen SDLK_KP_B : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_B"
		end


	frozen SDLK_KP_C : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_C"
		end


	frozen SDLK_KP_D : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_D"
		end


	frozen SDLK_KP_E : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_E"
		end


	frozen SDLK_KP_F : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_F"
		end


	frozen SDLK_KP_XOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_XOR"
		end


	frozen SDLK_KP_POWER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_POWER"
		end


	frozen SDLK_KP_PERCENT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_PERCENT"
		end


	frozen SDLK_KP_LESS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_LESS"
		end


	frozen SDLK_KP_GREATER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_GREATER"
		end


	frozen SDLK_KP_AMPERSAND : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_AMPERSAND"
		end


	frozen SDLK_KP_DBLAMPERSAND : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_DBLAMPERSAND"
		end


	frozen SDLK_KP_VERTICALBAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_VERTICALBAR"
		end


	frozen SDLK_KP_DBLVERTICALBAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_DBLVERTICALBAR"
		end


	frozen SDLK_KP_COLON : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_COLON"
		end


	frozen SDLK_KP_HASH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_HASH"
		end


	frozen SDLK_KP_SPACE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_SPACE"
		end


	frozen SDLK_KP_AT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_AT"
		end


	frozen SDLK_KP_EXCLAM : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_EXCLAM"
		end


	frozen SDLK_KP_MEMSTORE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMSTORE"
		end


	frozen SDLK_KP_MEMRECALL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMRECALL"
		end


	frozen SDLK_KP_MEMCLEAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMCLEAR"
		end


	frozen SDLK_KP_MEMADD : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMADD"
		end


	frozen SDLK_KP_MEMSUBTRACT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMSUBTRACT"
		end


	frozen SDLK_KP_MEMMULTIPLY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMMULTIPLY"
		end


	frozen SDLK_KP_MEMDIVIDE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_MEMDIVIDE"
		end


	frozen SDLK_KP_PLUSMINUS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_PLUSMINUS"
		end


	frozen SDLK_KP_CLEAR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_CLEAR"
		end


	frozen SDLK_KP_CLEARENTRY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_CLEARENTRY"
		end


	frozen SDLK_KP_BINARY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_BINARY"
		end


	frozen SDLK_KP_OCTAL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_OCTAL"
		end


	frozen SDLK_KP_DECIMAL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_DECIMAL"
		end


	frozen SDLK_KP_HEXADECIMAL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KP_HEXADECIMAL"
		end


	frozen SDLK_LCTRL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LCTRL"
		end


	frozen SDLK_LSHIFT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LSHIFT"
		end


	frozen SDLK_LALT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LALT"
		end


	frozen SDLK_LGUI : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_LGUI"
		end


	frozen SDLK_RCTRL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RCTRL"
		end


	frozen SDLK_RSHIFT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RSHIFT"
		end


	frozen SDLK_RALT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RALT"
		end


	frozen SDLK_RGUI : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_RGUI"
		end


	frozen SDLK_MODE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MODE"
		end


	frozen SDLK_AUDIONEXT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIONEXT"
		end


	frozen SDLK_AUDIOPREV : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIOPREV"
		end


	frozen SDLK_AUDIOSTOP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIOSTOP"
		end


	frozen SDLK_AUDIOPLAY : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIOPLAY"
		end


	frozen SDLK_AUDIOMUTE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AUDIOMUTE"
		end


	frozen SDLK_MEDIASELECT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MEDIASELECT"
		end


	frozen SDLK_WWW : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_WWW"
		end


	frozen SDLK_MAIL : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_MAIL"
		end


	frozen SDLK_CALCULATOR : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_CALCULATOR"
		end


	frozen SDLK_COMPUTER : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_COMPUTER"
		end


	frozen SDLK_AC_SEARCH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_SEARCH"
		end


	frozen SDLK_AC_HOME : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_HOME"
		end


	frozen SDLK_AC_BACK : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_BACK"
		end


	frozen SDLK_AC_FORWARD : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_FORWARD"
		end


	frozen SDLK_AC_STOP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_STOP"
		end


	frozen SDLK_AC_REFRESH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_REFRESH"
		end


	frozen SDLK_AC_BOOKMARKS : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_AC_BOOKMARKS"
		end


	frozen SDLK_BRIGHTNESSDOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BRIGHTNESSDOWN"
		end


	frozen SDLK_BRIGHTNESSUP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_BRIGHTNESSUP"
		end


	frozen SDLK_DISPLAYSWITCH : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_DISPLAYSWITCH"
		end


	frozen SDLK_KBDILLUMTOGGLE : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KBDILLUMTOGGLE"
		end


	frozen SDLK_KBDILLUMDOWN : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KBDILLUMDOWN"
		end


	frozen SDLK_KBDILLUMUP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_KBDILLUMUP"
		end


	frozen SDLK_EJECT : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_EJECT"
		end


	frozen SDLK_SLEEP : INTEGER_32
		external
			"C [macro <SDL.h>] : EIF_INTEGER_32"
		alias
			"SDLK_SLEEP"
		end


	frozen SDL_BUTTON_LMASK : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_LMASK"
		end


	frozen SDL_BUTTON_RMASK : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_RMASK"
		end


	frozen SDL_BUTTON_MMASK : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_MMASK"
		end


	frozen SDL_BUTTON_X1MASK : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_X1MASK"
		end


	frozen SDL_BUTTON_X2MASK : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_X2MASK"
		end


	frozen SDL_TOUCH_MOUSEID : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_TOUCH_MOUSEID"
		end


	frozen  SDL_BUTTON_LEFT : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_LEFT"
		end


	frozen  SDL_BUTTON_RIGHT : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_RIGHT"
		end


	frozen  SDL_BUTTON_MIDDLE : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_MIDDLE"
		end


	frozen  SDL_BUTTON_X1 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_X1"
		end


	frozen  SDL_BUTTON_X2 : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_BUTTON_X2"
		end


	frozen  SDL_RENDERER_ACCELERATED : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_RENDERER_ACCELERATED"
		end


	frozen  SDL_RENDERER_SOFTWARE : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_RENDERER_SOFTWARE"
		end


	frozen  SDL_RENDERER_TARGETTEXTURE : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_RENDERER_TARGETTEXTURE"
		end


	frozen  SDL_RENDERER_PRESENTVSYNC : NATURAL_32
		external
			"C [macro <SDL.h>] : EIF_NATURAL_32"
		alias
			"SDL_RENDERER_PRESENTVSYNC"
		end


	frozen  SDL_FLIP_NONE : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_FLIP_NONE"
		end


	frozen  SDL_FLIP_HORIZONTAL : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_FLIP_HORIZONTAL"
		end


	frozen  SDL_FLIP_VERTICAL : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_FLIP_VERTICAL"
		end

	frozen  SDL_TEXTUREACCESS_STATIC : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_TEXTUREACCESS_STATIC"
		end

	frozen  SDL_TEXTUREACCESS_STREAMING : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_TEXTUREACCESS_STREAMING"
		end

	frozen  SDL_TEXTUREACCESS_TARGET : INTEGER
		external
			"C [macro <SDL.h>] : EIF_INTEGER"
		alias
			"SDL_TEXTUREACCESS_TARGET"
		end

	frozen SDL_WINDOW_SHOWN : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_WINDOW_SHOWN"
		end

	frozen SDL_WINDOW_INPUT_FOCUS : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_WINDOW_INPUT_FOCUS"
		end

	frozen SDL_WINDOW_MOUSE_FOCUS : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_WINDOW_MOUSE_FOCUS"
		end

	frozen SDL_WINDOW_FOREIGN : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_WINDOW_FOREIGN"
		end

	frozen SDL_WINDOWPOS_CENTERED : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_WINDOWPOS_CENTERED"
		end

--	frozen SDL_WINDOW_ALLOW_HIGHDPI : NATURAL_32
--		external
--			"C [macro <SDL.h>] : Uint32"
--		alias
--			"SDL_WINDOW_ALLOW_HIGHDPI"
--		end

	frozen SDL_HAPTIC_CONSTANT : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_CONSTANT"
		end

	frozen SDL_HAPTIC_SINE : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_SINE"
		end

	frozen SDL_HAPTIC_LEFTRIGHT : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_LEFTRIGHT"
		end

	frozen SDL_HAPTIC_TRIANGLE : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_TRIANGLE"
		end

	frozen SDL_HAPTIC_SAWTOOTHUP : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_SAWTOOTHUP"
		end

	frozen SDL_HAPTIC_SAWTOOTHDOWN : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_SAWTOOTHDOWN"
		end

	frozen SDL_HAPTIC_RAMP : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_RAMP"
		end

	frozen SDL_HAPTIC_SPRING : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_SPRING"
		end

	frozen SDL_HAPTIC_DAMPER : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_DAMPER"
		end

	frozen SDL_HAPTIC_INERTIA : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_INERTIA"
		end

	frozen SDL_HAPTIC_FRICTION : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_FRICTION"
		end

	frozen SDL_HAPTIC_CUSTOM : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_CUSTOM"
		end

	frozen SDL_HAPTIC_GAIN : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_GAIN"
		end

	frozen SDL_HAPTIC_AUTOCENTER : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_AUTOCENTER"
		end

	frozen SDL_HAPTIC_STATUS : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_STATUS"
		end

	frozen SDL_HAPTIC_PAUSE : NATURAL
		external
			"C [macro <SDL.h>] : unsigned int"
		alias
			"SDL_HAPTIC_PAUSE"
		end

	frozen SDL_HAPTIC_INFINITY : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_HAPTIC_INFINITY"
		end

	frozen SDL_HAPTIC_CARTESIAN : NATURAL_8
		external
			"C [macro <SDL.h>] : Uint8"
		alias
			"SDL_HAPTIC_CARTESIAN"
		end

	frozen SDL_HAPTIC_POLAR : NATURAL_8
		external
			"C [macro <SDL.h>] : Uint8"
		alias
			"SDL_HAPTIC_POLAR"
		end

	frozen SDL_HAPTIC_SPHERICAL : NATURAL_8
		external
			"C [macro <SDL.h>] : Uint8"
		alias
			"SDL_HAPTIC_SPHERICAL"
		end

	frozen SDL_SYSTEM_CURSOR_ARROW : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_ARROW"
		end

	frozen SDL_SYSTEM_CURSOR_IBEAM : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_IBEAM"
		end

	frozen SDL_SYSTEM_CURSOR_WAIT : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_WAIT"
		end

	frozen SDL_SYSTEM_CURSOR_CROSSHAIR : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_CROSSHAIR"
		end

	frozen SDL_SYSTEM_CURSOR_WAITARROW : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_WAITARROW"
		end

	frozen SDL_SYSTEM_CURSOR_SIZENWSE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_SIZENWSE"
		end

	frozen SDL_SYSTEM_CURSOR_SIZENESW : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_SIZENESW"
		end

	frozen SDL_SYSTEM_CURSOR_SIZEWE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_SIZEWE"
		end

	frozen SDL_SYSTEM_CURSOR_SIZENS : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_SIZENS"
		end

	frozen SDL_SYSTEM_CURSOR_SIZEALL : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_SIZEALL"
		end

	frozen SDL_SYSTEM_CURSOR_NO : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_NO"
		end

	frozen SDL_SYSTEM_CURSOR_HAND : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_SYSTEM_CURSOR_HAND"
		end

	frozen SDL_GL_RED_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_RED_SIZE"
		end

	frozen SDL_GL_GREEN_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_GREEN_SIZE"
		end

	frozen SDL_GL_BLUE_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_BLUE_SIZE"
		end

	frozen SDL_GL_ALPHA_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_ALPHA_SIZE"
		end

	frozen SDL_GL_BUFFER_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_BUFFER_SIZE"
		end

	frozen SDL_GL_DOUBLEBUFFER : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_DOUBLEBUFFER"
		end

	frozen SDL_GL_DEPTH_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_DEPTH_SIZE"
		end

	frozen SDL_GL_STENCIL_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_STENCIL_SIZE"
		end

	frozen SDL_GL_ACCUM_RED_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_ACCUM_RED_SIZE"
		end

	frozen SDL_GL_ACCUM_GREEN_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_ACCUM_GREEN_SIZE"
		end

	frozen SDL_GL_ACCUM_BLUE_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_ACCUM_BLUE_SIZE"
		end

	frozen SDL_GL_ACCUM_ALPHA_SIZE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_ACCUM_ALPHA_SIZE"
		end

	frozen SDL_GL_STEREO : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_STEREO"
		end

	frozen SDL_GL_MULTISAMPLEBUFFERS : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_MULTISAMPLEBUFFERS"
		end

	frozen SDL_GL_MULTISAMPLESAMPLES : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_MULTISAMPLESAMPLES"
		end

	frozen SDL_GL_ACCELERATED_VISUAL : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_ACCELERATED_VISUAL"
		end

	frozen SDL_GL_CONTEXT_MAJOR_VERSION : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_MAJOR_VERSION"
		end

	frozen SDL_GL_CONTEXT_MINOR_VERSION : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_MINOR_VERSION"
		end

	frozen SDL_GL_CONTEXT_FLAGS : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_FLAGS"
		end

	frozen SDL_GL_CONTEXT_PROFILE_MASK : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_PROFILE_MASK"
		end

	frozen SDL_GL_SHARE_WITH_CURRENT_CONTEXT : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_SHARE_WITH_CURRENT_CONTEXT"
		end

	frozen SDL_GL_FRAMEBUFFER_SRGB_CAPABLE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_FRAMEBUFFER_SRGB_CAPABLE"
		end

--	frozen SDL_GL_CONTEXT_RELEASE_BEHAVIOR : INTEGER
--		external
--			"C [macro <SDL.h>] : int"
--		alias
--			"SDL_GL_CONTEXT_RELEASE_BEHAVIOR"
--		end

	frozen SDL_GL_CONTEXT_DEBUG_FLAG : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_DEBUG_FLAG"
		end

	frozen SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG"
		end

	frozen SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG"
		end

	frozen SDL_GL_CONTEXT_RESET_ISOLATION_FLAG : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_RESET_ISOLATION_FLAG"
		end

	frozen SDL_GL_CONTEXT_PROFILE_CORE : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_PROFILE_CORE"
		end

	frozen SDL_GL_CONTEXT_PROFILE_COMPATIBILITY : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_PROFILE_COMPATIBILITY"
		end

	frozen SDL_GL_CONTEXT_PROFILE_ES : INTEGER
		external
			"C [macro <SDL.h>] : int"
		alias
			"SDL_GL_CONTEXT_PROFILE_ES"
		end

	frozen SDL_PIXELTYPE_INDEX1 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_INDEX1"
		end

	frozen SDL_PIXELTYPE_INDEX4 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_INDEX4"
		end

	frozen SDL_PIXELTYPE_INDEX8 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_INDEX8"
		end

	frozen SDL_PIXELTYPE_PACKED8 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_PACKED8"
		end

	frozen SDL_PIXELTYPE_PACKED16 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_PACKED16"
		end

	frozen SDL_PIXELTYPE_PACKED32 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_PACKED32"
		end

	frozen SDL_PIXELTYPE_ARRAYU8 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_ARRAYU8"
		end

	frozen SDL_PIXELTYPE_ARRAYU16 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_ARRAYU16"
		end

	frozen SDL_PIXELTYPE_ARRAYU32 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_ARRAYU32"
		end

	frozen SDL_PIXELTYPE_ARRAYF16 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_ARRAYF16"
		end

	frozen SDL_PIXELTYPE_ARRAYF32 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_ARRAYF32"
		end

	frozen SDL_PIXELTYPE_UNKNOWN : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PIXELTYPE_UNKNOWN"
		end

	frozen SDL_BITMAPORDER_NONE : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_BITMAPORDER_NONE"
		end

	frozen SDL_BITMAPORDER_4321 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_BITMAPORDER_4321"
		end

	frozen SDL_BITMAPORDER_1234 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_BITMAPORDER_1234"
		end

	frozen SDL_PACKEDORDER_NONE : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDORDER_NONE"
		end

	frozen SDL_PACKEDORDER_XRGB : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDORDER_XRGB"
		end

	frozen SDL_PACKEDORDER_RGBX : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDORDER_RGBX"
		end

	frozen SDL_PACKEDORDER_ARGB : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDORDER_ARGB"
		end

	frozen SDL_PACKEDORDER_RGBA : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDORDER_RGBA"
		end

	frozen SDL_PACKEDORDER_XBGR : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDORDER_XBGR"
		end

	frozen SDL_PACKEDORDER_BGRX : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDORDER_BGRX"
		end

	frozen SDL_PACKEDORDER_ABGR : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDORDER_ABGR"
		end

	frozen SDL_PACKEDORDER_BGRA : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDORDER_BGRA"
		end

	frozen SDL_ARRAYORDER_NONE : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_ARRAYORDER_NONE"
		end

	frozen SDL_ARRAYORDER_RGB : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_ARRAYORDER_RGB"
		end

	frozen SDL_ARRAYORDER_RGBA : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_ARRAYORDER_RGBA"
		end

	frozen SDL_ARRAYORDER_ARGB : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_ARRAYORDER_ARGB"
		end

	frozen SDL_ARRAYORDER_BGR : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_ARRAYORDER_BGR"
		end

	frozen SDL_ARRAYORDER_BGRA : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_ARRAYORDER_BGRA"
		end

	frozen SDL_ARRAYORDER_ABGR : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_ARRAYORDER_ABGR"
		end

	frozen SDL_PACKEDLAYOUT_NONE : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDLAYOUT_NONE"
		end

	frozen SDL_PACKEDLAYOUT_332 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDLAYOUT_332"
		end

	frozen SDL_PACKEDLAYOUT_4444 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDLAYOUT_4444"
		end

	frozen SDL_PACKEDLAYOUT_1555 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDLAYOUT_1555"
		end


	frozen SDL_PACKEDLAYOUT_5551 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDLAYOUT_5551"
		end


	frozen SDL_PACKEDLAYOUT_565 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDLAYOUT_565"
		end


	frozen SDL_PACKEDLAYOUT_8888 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDLAYOUT_8888"
		end


	frozen SDL_PACKEDLAYOUT_2101010 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDLAYOUT_2101010"
		end


	frozen SDL_PACKEDLAYOUT_1010102 : NATURAL_32
		external
			"C [macro <SDL.h>] : Uint32"
		alias
			"SDL_PACKEDLAYOUT_1010102"
		end


	frozen SDL_POWERSTATE_UNKNOWN : NATURAL
		external
			"C [macro <SDL.h>] : SDL_PowerState"
		alias
			"SDL_POWERSTATE_UNKNOWN"
		end


	frozen SDL_POWERSTATE_ON_BATTERY : NATURAL
		external
			"C [macro <SDL.h>] : SDL_PowerState"
		alias
			"SDL_POWERSTATE_ON_BATTERY"
		end


	frozen SDL_POWERSTATE_NO_BATTERY : NATURAL
		external
			"C [macro <SDL.h>] : SDL_PowerState"
		alias
			"SDL_POWERSTATE_NO_BATTERY"
		end


	frozen SDL_POWERSTATE_CHARGING : NATURAL
		external
			"C [macro <SDL.h>] : SDL_PowerState"
		alias
			"SDL_POWERSTATE_CHARGING"
		end


	frozen SDL_POWERSTATE_CHARGED : NATURAL
		external
			"C [macro <SDL.h>] : SDL_PowerState"
		alias
			"SDL_POWERSTATE_CHARGED"
		end

end
