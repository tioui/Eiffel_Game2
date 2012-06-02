note
	description: "External of the SDL library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SDL_EXTERNAL

feature -- Function SDL.h

	frozen SDL_Init(flags:NATURAL_32):INTEGER
		external
			"C (Uint32) : int | %"SDL.h%""
		alias
			"SDL_Init"
		end

	frozen SDL_Quit()
		-- Warning: This is the function SDL_Quit() and not the constant SDL_QUIT.
		-- To use the constant SDL_QUIT, use the SDL_QUIT_CONST feature
		external
			"C | %"SDL.h%""
		alias
			"SDL_Quit"
		end

	frozen SDL_InitSubSystem(flags:NATURAL_32):INTEGER
		external
			"C (Uint32) : int | %"SDL.h%""
		alias
			"SDL_InitSubSystem"
		end

	frozen SDL_QuitSubSystem(flags:NATURAL_32)
		external
			"C (Uint32) | %"SDL.h%""
		alias
			"SDL_QuitSubSystem"
		end

	frozen SDL_WasInit(flags:NATURAL_32):NATURAL_32
		external
			"C (Uint32) : Uint32 | %"SDL.h%""
		alias
			"SDL_WasInit"
		end

	frozen SDL_ShowCursor(toggle:INTEGER):INTEGER
		external
			"C (int) : int | %"SDL.h%""
		alias
			"SDL_ShowCursor"
		end

	frozen SDL_SetVideoMode(width,height,depth:INTEGER;flags:NATURAL_32):POINTER
		external
			"C (int,int,int,Uint32) : SDL_Surface * | %"SDL.h%""
		alias
			"SDL_SetVideoMode"
		end

	frozen SDL_LoadBMP(filename:POINTER):POINTER
		external
		"C inline use <SDL.h>"
		alias
			"(EIF_POINTER) SDL_LoadBMP((const char*) $filename)"
		end

	frozen SDL_BlitSurface(source,source_rect,dest,dest_rect:POINTER):INTEGER
		external
			"C (SDL_Surface *, SDL_Rect *, SDL_Surface *, SDL_Rect *) : int | %"SDL.h%""
		alias
			"SDL_BlitSurface"
		end

	frozen SDL_Flip(surface:POINTER):INTEGER
		external
			"C (SDL_Surface*) : int | %"SDL.h%""
		alias
			"SDL_Flip"
		end

	frozen SDL_GetVideoSurface:POINTER
		external
			"C : SDL_Surface * | %"SDL.h%""
		alias
			"SDL_GetVideoSurface"
		end

	frozen SDL_CreateRGBSurface(flags:NATURAL_32;width,height,bits_per_pixel:INTEGER;rmask,gmask,bmask,amask:NATURAL_32):POINTER
		external
			"C (Uint32, int, int, int, Uint32, Uint32, Uint32, Uint32) : SDL_Surface * | %"SDL.h%""
		alias
			"SDL_CreateRGBSurface"
		end


	frozen SDL_LockSurface(surface:POINTER):INTEGER
		external
			"C (SDL_Surface*) : int | %"SDL.h%""
		alias
			"SDL_LockSurface"
		end

	frozen SDL_UnlockSurface(surface:POINTER)
		external
			"C (SDL_Surface*) | %"SDL.h%""
		alias
			"SDL_UnlockSurface"
		end

	frozen SDL_FreeSurface(surface:POINTER)
		external
			"C (SDL_Surface*) | %"SDL.h%""
		alias
			"SDL_FreeSurface"
		end

	frozen SDL_Delay(milisecond:NATURAL_32)
		external
			"C (Uint32) | %"SDL.h%""
		alias
			"SDL_Delay"
		end

	frozen SDL_GetTicks:NATURAL_32
		external
			"C : Uint32 | %"SDL.h%""
		alias
			"SDL_GetTicks"
		end

	frozen SDL_ConvertSurface(source, format:POINTER; flags: NATURAL_32): POINTER
		external
			"C (SDL_Surface *,SDL_PixelFormat *,Uint32) : SDL_Surface * | %"SDL.h%""
		alias
			"SDL_ConvertSurface"
		end

	frozen SDL_DisplayFormat(surface:POINTER): POINTER
		external
			"C (SDL_Surface *) : SDL_Surface * | %"SDL.h%""
		alias
			"SDL_DisplayFormat"
		end

	frozen SDL_DisplayFormatAlpha(surface:POINTER): POINTER
		external
			"C (SDL_Surface *) : SDL_Surface * | %"SDL.h%""
		alias
			"SDL_DisplayFormatAlpha"
		end

	frozen SDL_SetClipRect(surface,rect:POINTER)
		external
			"C (SDL_Surface *, SDL_Rect *) | %"SDL.h%""
		alias
			"SDL_SetClipRect"
		end

	frozen SDL_MapRGB(format:POINTER;r,g,b:NATURAL_8):NATURAL_32
		external
			"C (SDL_PixelFormat *, Uint8, Uint8, Uint8) : Uint32 | %"SDL.h%""
		alias
			"SDL_MapRGB"
		end

	frozen SDL_GetRGB(pixel:NATURAL_32;fmt,r,g,b:POINTER)
		external
			"C (Uint32 , SDL_PixelFormat *, Uint8 *, Uint8 *, Uint8 *) | %"SDL.h%""
		alias
			"SDL_GetRGB"
		end

	frozen SDL_MapRGBA(format:POINTER;r,g,b,a:NATURAL_8):NATURAL_32
		external
			"C (SDL_PixelFormat *, Uint8, Uint8, Uint8, Uint8) : Uint32 | %"SDL.h%""
		alias
			"SDL_MapRGBA"
		end

	frozen SDL_GetRGBA(pixel:NATURAL_32;fmt,r,g,b,a:POINTER)
		external
			"C (Uint32 , SDL_PixelFormat *, Uint8 *, Uint8 *, Uint8 *, Uint8 *) | %"SDL.h%""
		alias
			"SDL_GetRGBA"
		end

	frozen SDL_ListModes(pixel_format:POINTER;flags:NATURAL_32):POINTER
		external
			"C (SDL_PixelFormat *, Uint32):SDL_Rect** | %"SDL.h%""
		alias
			"SDL_ListModes"
		end

	frozen c_get_ListModes_Rect(rectlist:POINTER;index:INTEGER):POINTER
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_Rect**)$rectlist)[(int)$index]"
		end

	frozen SDL_PollEvent(event:POINTER):INTEGER
		external
			"C (SDL_Event *):int | %"SDL.h%""
		alias
			"SDL_PollEvent"
		end

	frozen SDL_WaitEvent(event:POINTER):INTEGER
		external
			"C (SDL_Event *):int | %"SDL.h%""
		alias
			"SDL_WaitEvent"
		end

	frozen SDL_NumJoysticks:INTEGER
		external
			"C :int | %"SDL.h%""
		alias
			"SDL_NumJoysticks"
		end

	frozen SDL_JoystickName(index:INTEGER):POINTER
		external
			"C (int):const char * | %"SDL.h%""
		alias
			"SDL_JoystickName"
		end

	frozen SDL_JoystickOpen(index:INTEGER):POINTER
		external
			"C (int):SDL_Joystick * | %"SDL.h%""
		alias
			"SDL_JoystickOpen"
		end

	frozen SDL_JoystickOpened(index:INTEGER):INTEGER
		external
			"C (int):int | %"SDL.h%""
		alias
			"SDL_JoystickOpened"
		end

	frozen SDL_JoystickClose(joystick:POINTER)
		external
			"C (SDL_Joystick *) | %"SDL.h%""
		alias
			"SDL_JoystickClose"
		end

	frozen SDL_JoystickEventState(state:INTEGER):INTEGER
		external
			"C (int):int | %"SDL.h%""
		alias
			"SDL_JoystickEventState"
		end

	frozen SDL_JoystickIndex(joystick:POINTER):INTEGER
		external
			"C (SDL_Joystick *):int | %"SDL.h%""
		alias
			"SDL_JoystickIndex"
		end

	frozen SDL_JoystickNumAxes(joystick:POINTER):INTEGER
		external
			"C (SDL_Joystick *):int | %"SDL.h%""
		alias
			"SDL_JoystickNumAxes"
		end

	frozen SDL_JoystickNumBalls(joystick:POINTER):INTEGER
		external
			"C (SDL_Joystick *):int | %"SDL.h%""
		alias
			"SDL_JoystickNumBalls"
		end

	frozen SDL_JoystickNumHats(joystick:POINTER):INTEGER
		external
			"C (SDL_Joystick *):int | %"SDL.h%""
		alias
			"SDL_JoystickNumHats"
		end

	frozen SDL_JoystickNumButtons(joystick:POINTER):INTEGER
		external
			"C (SDL_Joystick *):int | %"SDL.h%""
		alias
			"SDL_JoystickNumButtons"
		end

	frozen SDL_JoystickGetAxis(joystick:POINTER;axis:INTEGER):INTEGER_16
		external
			"C (SDL_Joystick *,int):Sint16 | %"SDL.h%""
		alias
			"SDL_JoystickGetAxis"
		end

	frozen SDL_JoystickGetButton(joystick:POINTER;button:INTEGER):NATURAL_8
		external
			"C (SDL_Joystick *,int):Uint8 | %"SDL.h%""
		alias
			"SDL_JoystickGetButton"
		end

	frozen SDL_JoystickGetHat(joystick:POINTER;hat:INTEGER):NATURAL_8
		external
			"C (SDL_Joystick *,int):Uint8 | %"SDL.h%""
		alias
			"SDL_JoystickGetHat"
		end

	frozen SDL_JoystickGetBall(joystick:POINTER;ball:INTEGER;x,y:POINTER):INTEGER
		external
			"C (SDL_Joystick *,int,int *,int *):int | %"SDL.h%""
		alias
			"SDL_JoystickGetBall"
		end

	frozen SDL_JoystickUpdate
		external
			"C | %"SDL.h%""
		alias
			"SDL_JoystickUpdate"
		end

	frozen SDL_SetAlpha(surface:POINTER;flags:NATURAL_32;alpha:NATURAL_8):INTEGER
		external
			"C (SDL_Surface *, Uint32, Uint8):int | %"SDL.h%""
		alias
			"SDL_SetAlpha"
		end

	frozen SDL_FillRect(surface,rect:POINTER;color:NATURAL_32):INTEGER
		external
			"C (SDL_Surface *, SDL_Rect*, Uint32):int | %"SDL.h%""
		alias
			"SDL_FillRect"
		end


	frozen SDL_SetColorKey(surface:POINTER;flag,key:NATURAL_32):INTEGER
		external
			"C (SDL_Surface *,Uint32,Uint32):int | %"SDL.h%""
		alias
			"SDL_SetColorKey"
		end

	frozen SDL_WM_SetIcon(surface,mask:POINTER)
		external
			"C (SDL_Surface *,Uint8 *) | %"SDL.h%""
		alias
			"SDL_WM_SetIcon"
		end

	frozen SDL_WM_SetCaption(title,icon_caption:POINTER)
		external
			"C (const char *,const char *) | %"SDL.h%""
		alias
			"SDL_WM_SetCaption"
		end


feature -- Function SDL_rotozoom.h

	frozen rotateSurface90Degrees_rotozoom(surface:POINTER;nb_clockwise:INTEGER):POINTER
		external
			"C (SDL_Surface *,int) : SDL_Surface * | %"SDL_rotozoom.h%""
		alias
			"rotateSurface90Degrees"
		end

	frozen rotozoomSurfaceXY(surface:POINTER;angle,zoomX,zoomY:REAL_64;smooth:BOOLEAN):POINTER
		external
			"C (SDL_Surface *,double,double,double,int) : SDL_Surface * | %"SDL_rotozoom.h%""
		alias
			"rotozoomSurfaceXY"
		end

feature -- Manual C function (implemented in SDLmore.c)

	frozen rotateSurface90Degrees(surface:POINTER;nb_clockwise:INTEGER):POINTER
		external
			"C (SDL_Surface *,int) : SDL_Surface * | %"SDL_more.h%""
		alias
			"rotateSurface90Degrees_all"
		end

	frozen getPixel(surface:POINTER;x,y:INTEGER):NATURAL_32
		external
			"C (SDL_Surface *,int,int) : Uint32 | %"SDL_more.h%""
		alias
			"getpixel"
		end

	frozen putPixel(surface:POINTER;x,y:INTEGER;pixel:NATURAL_32)
		external
			"C (SDL_Surface *,int,int,Uint32) | %"SDL_more.h%""
		alias
			"putpixel"
		end

feature -- Fonction SDL_image

	frozen IMG_Load(filename:POINTER):POINTER
		external
			"C (char *):SDL_Surface * | %"SDL_image.h%""
		alias
			"IMG_Load"
		end

feature -- Fonction SDL_ttf

	frozen TTF_Init:INTEGER
		external
			"C :int | <SDL_ttf.h>"
		alias
			"TTF_Init"
		end

	frozen TTF_WasInit:INTEGER
		external
			"C :int | <SDL_ttf.h>"
		alias
			"TTF_WasInit"
		end

	frozen TTF_Quit
		external
			"C | <SDL_ttf.h>"
		alias
			"TTF_Quit"
		end


	frozen TTF_OpenFont(filename:POINTER;taille:INTEGER):POINTER
		external
			"C (const char *,int):TTF_Font *| <SDL_ttf.h>"
		alias
			"TTF_OpenFont"
		end

	frozen TTF_OpenFontIndex(filename:POINTER;taille:INTEGER;index:INTEGER_32):POINTER
		external
			"C (const char *,int,long):TTF_Font *| <SDL_ttf.h>"
		alias
			"TTF_OpenFontIndex"
		end

	frozen TTF_CloseFont(font:POINTER)
		external
			"C (TTF_Font *)| <SDL_ttf.h>"
		alias
			"TTF_CloseFont"
		end

	frozen TTF_RenderText_Solid(font:POINTER;text:POINTER;color:POINTER):POINTER
		external
			"C inline use  <SDL_ttf.h>"
		alias
			"TTF_RenderText_Solid((TTF_Font *)$font,(char *)$text,*((SDL_Color *)$color))"
		end

	frozen TTF_RenderText_Shaded(font:POINTER;text:POINTER;color,bgcolor:POINTER):POINTER
		external
			"C inline use  <SDL_ttf.h>"
		alias
			"TTF_RenderText_Shaded((TTF_Font *)$font,(char *)$text,*((SDL_Color *)$color),*((SDL_Color *)$bgcolor))"
		end

	frozen TTF_RenderText_Blended(font:POINTER;text:POINTER;color:POINTER):POINTER
		external
			"C inline use  <SDL_ttf.h>"
		alias
			"TTF_RenderText_Blended((TTF_Font *)$font,(char *)$text,*((SDL_Color *)$color))"
		end

	frozen TTF_SetFontStyle(font:POINTER;flag:INTEGER)
		external
			"C (TTF_Font *,int) | <SDL_ttf.h>"
		alias
			"TTF_SetFontStyle"
		end

	frozen TTF_GetFontStyle(font:POINTER):INTEGER
		external
			"C (TTF_Font *) : int | <SDL_ttf.h>"
		alias
			"TTF_GetFontStyle"
		end

feature -- Structure SDL_Surface SDL.h

	frozen c_surface_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_Surface), 1)"
		end

	frozen c_surface_struct_free(surface:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_Surface *)$surface)"
		end

	frozen get_surface_struct_flags (surface:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_Surface):EIF_NATURAL_32"
		alias
			"flags"
		end

	frozen get_surface_struct_format (surface:POINTER):POINTER
		external
			"C [struct <SDL.h>] (SDL_Surface):EIF_POINTER"
		alias
			"format"
		end

	frozen get_surface_struct_w (surface:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_Surface):EIF_INTEGER"
		alias
			"w"
		end

	frozen get_surface_struct_h (surface:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_Surface):EIF_INTEGER"
		alias
			"h"
		end

	frozen get_surface_struct_pitch (surface:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_Surface):EIF_NATURAL_16"
		alias
			"pitch"
		end

	frozen get_surface_struct_pixels (surface:POINTER):POINTER
		external
			"C [struct <SDL.h>] (SDL_Surface):EIF_POINTER"
		alias
			"pixels"
		end

	frozen get_surface_rect_struct_clip_rect (surface:POINTER):POINTER
		external
			"C inline use <SDL.h>"
		alias
			"(SDL_Rect *)&(((SDL_Surface *)$surface)->clip_rect)"
		end

	frozen get_surface_struct_refcount (surface:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_Surface):EIF_INTEGER"
		alias
			"refcount"
		end

feature -- Structure SDL_Rect SDL.h

	frozen c_rect_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_Rect), 1)"
		end

	frozen c_rect_struct_free(rect:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_Rect *)$rect)"
		end

	frozen set_rect_struct_x (rect: POINTER; the_value: INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_Rect, Sint16)"
		alias
			"x"
		end

	frozen get_rect_struct_x (rect:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_Rect):EIF_INTEGER_16"
		alias
			"x"
		end

	frozen set_rect_struct_y (rect: POINTER; the_value: INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_Rect, Sint16)"
		alias
			"y"
		end

	frozen get_rect_struct_y (rect:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_Rect):EIF_INTEGER_16"
		alias
			"y"
		end

	frozen set_rect_struct_w (rect: POINTER; the_value: NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_Rect, Uint16)"
		alias
			"w"
		end

	frozen get_rect_struct_w (rect:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_Rect):EIF_NATURAL_16"
		alias
			"w"
		end

	frozen set_rect_struct_h (rect: POINTER; the_value: NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_Rect, Uint16)"
		alias
			"h"
		end

	frozen get_rect_struct_h (rect:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_Rect):EIF_NATURAL_16"
		alias
			"h"
		end

feature -- Structure SDL_PixelFormat SDL.h

	frozen c_pixel_format_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_PixelFormat), 1)"
		end

	frozen c_pixel_format_struct_free(pixel_format:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_PixelFormat *)$pixel_format)"
		end

	frozen set_pixel_format_struct_palette (pixel_format: POINTER; palette:POINTER)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, SDL_Palette *)"
		alias
			"palette"
		end

	frozen get_pixel_format_struct_palette (pixel_format:POINTER):POINTER
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_POINTER"
		alias
			"palette"
		end

	frozen set_pixel_format_struct_BitsPerPixel (pixel_format: POINTER; bits_per_pixel: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"BitsPerPixel"
		end

	frozen get_pixel_format_struct_BitsPerPixel (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"BitsPerPixel"
		end

	frozen set_pixel_format_struct_BytesPerPixel (pixel_format: POINTER; bytes_per_pixel: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"BytesPerPixel"
		end

	frozen get_pixel_format_struct_BytesPerPixel (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"BytesPerPixel"
		end

	frozen set_pixel_format_struct_Rloss (pixel_format: POINTER; rloss: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"Rloss"
		end

	frozen get_pixel_format_struct_Rloss (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"Rloss"
		end

	frozen set_pixel_format_struct_Gloss (pixel_format: POINTER; gloss: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"Gloss"
		end

	frozen get_pixel_format_struct_Gloss (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"Gloss"
		end

	frozen set_pixel_format_struct_Bloss (pixel_format: POINTER; bloss: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"Bloss"
		end

	frozen get_pixel_format_struct_Bloss (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"Bloss"
		end

	frozen set_pixel_format_struct_Aloss (pixel_format: POINTER; aloss: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"Aloss"
		end

	frozen get_pixel_format_struct_Aloss (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"Aloss"
		end

	frozen set_pixel_format_struct_Rshift (pixel_format: POINTER; rshift: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"Rshift"
		end

	frozen get_pixel_format_struct_Rshift (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"Rshift"
		end

	frozen set_pixel_format_struct_Gshift (pixel_format: POINTER; gshift: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"Gshift"
		end

	frozen get_pixel_format_struct_Gshift (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"Gshift"
		end

	frozen set_pixel_format_struct_Bshift (pixel_format: POINTER; bshift: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"Bshift"
		end

	frozen get_pixel_format_struct_Bshift (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"Bshift"
		end

	frozen set_pixel_format_struct_Ashift (pixel_format: POINTER; ashift: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"Ashift"
		end

	frozen get_pixel_format_struct_Ashift (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"Ashift"
		end

	frozen set_pixel_format_struct_Rmask (pixel_format: POINTER; rmask: NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint32)"
		alias
			"Rmask"
		end

	frozen get_pixel_format_struct_Rmask (pixel_format:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_32"
		alias
			"Rmask"
		end

	frozen set_pixel_format_struct_Gmask (pixel_format: POINTER; gmask: NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint32)"
		alias
			"Gmask"
		end

	frozen get_pixel_format_struct_Gmask (pixel_format:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_32"
		alias
			"Gmask"
		end

	frozen set_pixel_format_struct_Bmask (pixel_format: POINTER; bmask: NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint32)"
		alias
			"Bmask"
		end

	frozen get_pixel_format_struct_Bmask (pixel_format:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_32"
		alias
			"Bmask"
		end

	frozen set_pixel_format_struct_Amask (pixel_format: POINTER; amask: NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint32)"
		alias
			"Amask"
		end

	frozen get_pixel_format_struct_Amask (pixel_format:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_32"
		alias
			"Amask"
		end

	frozen set_pixel_format_struct_colorkey (pixel_format: POINTER; colorkey: NATURAL_32)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint32)"
		alias
			"colorkey"
		end

	frozen get_pixel_format_struct_colorkey (pixel_format:POINTER):NATURAL_32
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_32"
		alias
			"colorkey"
		end

	frozen set_pixel_format_struct_alpha (pixel_format: POINTER; alpha: NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_PixelFormat, Uint8)"
		alias
			"alpha"
		end

	frozen get_pixel_format_struct_alpha (pixel_format:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_PixelFormat):EIF_NATURAL_8"
		alias
			"alpha"
		end

feature -- Structure SDL_Palette SDL.h

	frozen c_palette_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_Palette), 1)"
		end

	frozen c_palette_struct_free(palette:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_Palette *)$palette)"
		end

	frozen set_palette_struct_ncolors (palette: POINTER; nb_color:INTEGER)
		external
			"C [struct <SDL.h>] (SDL_Palette, int)"
		alias
			"ncolors"
		end

	frozen get_palette_struct_ncolors (palette:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_Palette):EIF_INTEGER"
		alias
			"ncolors"
		end

	frozen set_palette_struct_colors (palette: POINTER; colors:POINTER)
		external
			"C [struct <SDL.h>] (SDL_Palette, SDL_Color *)"
		alias
			"colors"
		end

	frozen get_palette_struct_colors (palette:POINTER):POINTER
		external
			"C [struct <SDL.h>] (SDL_Palette):EIF_POINTER"
		alias
			"colors"
		end

	frozen get_palette_struct_color_from_index(palette:POINTER;i:INTEGER):POINTER
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Palette *)$palette)->colors[(int)$i])"
		end

feature -- Structure SDL_Color SDL.h

	frozen c_color_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_Color), 1)"
		end

	frozen c_color_struct_free(color:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_Color *)$color)"
		end

	frozen set_color_struct_r (color: POINTER; r:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_Color, Uint8)"
		alias
			"r"
		end

	frozen get_color_struct_r (color:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_Color):EIF_NATURAL_8"
		alias
			"r"
		end

	frozen set_color_struct_g (color: POINTER; g:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_Color, Uint8)"
		alias
			"g"
		end

	frozen get_color_struct_g (color:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_Color):EIF_NATURAL_8"
		alias
			"g"
		end

	frozen set_color_struct_b (color: POINTER; b:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_Color, Uint8)"
		alias
			"b"
		end

	frozen get_color_struct_b (color:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_Color):EIF_NATURAL_8"
		alias
			"b"
		end

	frozen set_color_struct_unused (color: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_Color, Uint8)"
		alias
			"unused"
		end

	frozen get_color_struct_unused (color:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_Color):EIF_NATURAL_8"
		alias
			"unused"
		end

feature -- Structure SDL_Event SDL.h

	frozen c_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_Event), 1)"
		end

	frozen c_event_struct_free(event:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_Event *)$event)"
		end

	frozen set_event_struct_type (event: POINTER; type:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_Event, Uint8)"
		alias
			"type"
		end

	frozen get_event_struct_type(event:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_Event):Uint8"
		alias
			"type"
		end

	frozen get_event_struct_active_pointer (event:POINTER):POINTER
		-- Activation Event
		-- Return a pointer to SDL_ActiveEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->active)"
		end

	frozen get_event_struct_key_pointer (event:POINTER):POINTER
		-- Keyboard event
		-- Return a pointer to SDL_KeyboardEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->key)"
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

	frozen get_event_struct_resize_pointer (event:POINTER):POINTER
		-- Application window resize event
		-- Return a pointer to SDL_ResizeEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->resize)"
		end

	frozen get_event_struct_expose_pointer (event:POINTER):POINTER
		-- Application window expose event
		-- Return a pointer to SDL_ExposeEvent
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_Event *)$event)->expose)"
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

feature -- Structure SDL_ActiveEvent SDL.h

	frozen c_active_event_struct_allocate: POINTER
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_ActiveEvent), 1)"
		end

	frozen c_active_event_struct_free(event:POINTER)
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_ActiveEvent *)$event)"
		end

	frozen set_active_event_struct_type (event: POINTER; type:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_ActiveEvent, Uint8)"
		alias
			"type"
		end

	frozen get_active_event_struct_type(event:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_ActiveEvent):Uint8"
		alias
			"type"
		end

	frozen set_active_event_struct_gain (event: POINTER; type:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_ActiveEvent, Uint8)"
		alias
			"gain"
		end

	frozen get_active_event_struct_gain(event:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_ActiveEvent):Uint8"
		alias
			"gain"
		end

	frozen set_active_event_struct_state (event: POINTER; type:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_ActiveEvent, Uint8)"
		alias
			"state"
		end

	frozen get_active_event_struct_state(event:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_ActiveEvent):Uint8"
		alias
			"state"
		end

feature -- Structure SDL_KeyboardEvent SDL.h

	frozen c_keyboard_event_struct_allocate: POINTER
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_KeyboardEvent), 1)"
		end

	frozen c_keyboard_event_struct_free(event:POINTER)
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_KeyboardEvent *)$event)"
		end

	frozen set_keyboard_event_struct_type (event: POINTER; type:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent, Uint8)"
		alias
			"type"
		end

	frozen get_keyboard_event_struct_type(event:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_KeyboardEvent):Uint8"
		alias
			"type"
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

	frozen get_keyboard_event_struct_keysym_pointer (event:POINTER):POINTER
		-- Contains key press information
		-- Return a pointer to SDL_keysym
		external
			"C inline use <SDL.h>"
		alias
			"&(((SDL_KeyboardEvent *)$event)->keysym)"
		end

feature -- Structure SDL_keysym SDL.h

	frozen c_key_sym_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_keysym), 1)"
		end

	frozen c_key_sym_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_keysym *)$ptr)"
		end

	frozen set_key_sym_struct_scancode (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_keysym, Uint8)"
		alias
			"scancode"
		end

	frozen get_key_sym_struct_scancode(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_keysym):Uint8"
		alias
			"scancode"
		end

	frozen set_key_sym_struct_sym (ptr: POINTER; value:INTEGER)
		external
			"C [struct <SDL.h>] (SDL_keysym, int)"
		alias
			"sym"
		end

	frozen get_key_sym_struct_sym(ptr:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_keysym):int"
		alias
			"sym"
		end

	frozen set_key_sym_struct_mod (ptr: POINTER; value:INTEGER)
		external
			"C [struct <SDL.h>] (SDL_keysym, int)"
		alias
			"mod"
		end

	frozen get_key_sym_struct_mod(ptr:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_keysym):int"
		alias
			"mod"
		end

	frozen set_kkey_sym_struct_unicode (ptr: POINTER; value:NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_keysym, Uint16)"
		alias
			"unicode"
		end

	frozen get_key_sym_struct_unicode(ptr:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_keysym):Uint16"
		alias
			"unicode"
		end

feature -- Structure SDL_MouseMotionEvent SDL.h

	frozen c_mouse_motion_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_MouseMotionEvent), 1)"
		end

	frozen c_mouse_motion_event_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_MouseMotionEvent *)$ptr)"
		end

	frozen set_mouse_motion_event_struct_type (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Uint8)"
		alias
			"type"
		end

	frozen get_mouse_motion_event_struct_type(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint8"
		alias
			"type"
		end

	frozen set_mouse_motion_event_struct_state (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Uint8)"
		alias
			"state"
		end

	frozen get_mouse_motion_event_struct_state(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint8"
		alias
			"state"
		end

	frozen set_mouse_motion_event_struct_x (ptr: POINTER; value:NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Uint16)"
		alias
			"x"
		end

	frozen get_mouse_motion_event_struct_x(ptr:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint16"
		alias
			"x"
		end

	frozen set_mouse_motion_event_struct_y (ptr: POINTER; value:NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Uint16)"
		alias
			"y"
		end

	frozen get_mouse_motion_event_struct_y(ptr:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint16"
		alias
			"y"
		end

	frozen set_mouse_motion_event_struct_xrel (ptr: POINTER; value:INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Sint16)"
		alias
			"xrel"
		end

	frozen get_mouse_motion_event_struct_xrel(ptr:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Sint16"
		alias
			"xrel"
		end

	frozen set_mouse_motion_event_struct_yrel (ptr: POINTER; value:INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent, Sint16)"
		alias
			"yrel"
		end

	frozen get_mouse_motion_event_struct_yrel(ptr:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Sint16"
		alias
			"yrel"
		end


feature -- Structure SDL_MouseButtonEvent SDL.h

	frozen c_mouse_button_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_MouseButtonEvent), 1)"
		end

	frozen c_mouse_button_event_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_MouseButtonEvent *)$ptr)"
		end

	frozen set_mouse_button_event_struct_type (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint8)"
		alias
			"type"
		end

	frozen get_mouse_button_event_struct_type(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint8"
		alias
			"type"
		end

	frozen set_mouse_button_event_struct_which (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint8)"
		alias
			"which"
		end

	frozen get_mouse_button_event_struct_which(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint8"
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

	frozen set_mouse_button_event_struct_x (ptr: POINTER; value:NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint16)"
		alias
			"x"
		end

	frozen get_mouse_button_event_struct_x(ptr:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint16"
		alias
			"x"
		end

	frozen set_mouse_button_event_struct_y (ptr: POINTER; value:NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent, Uint16)"
		alias
			"y"
		end

	frozen get_mouse_button_event_struct_y(ptr:POINTER):NATURAL_16
		external
			"C [struct <SDL.h>] (SDL_MouseButtonEvent):Uint16"
		alias
			"y"
		end

feature -- Structure SDL_JoyAxisEvent SDL.h

	frozen c_joy_axis_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_JoyAxisEvent), 1)"
		end

	frozen c_joy_axis_event_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_JoyAxisEvent *)$ptr)"
		end

	frozen set_joy_axis_event_struct_type (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent, Uint8)"
		alias
			"type"
		end

	frozen get_joy_axis_event_struct_type(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent):Uint8"
		alias
			"type"
		end

	frozen set_joy_axis_event_struct_which (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent, Uint8)"
		alias
			"which"
		end

	frozen get_joy_axis_event_struct_which(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyAxisEvent):Uint8"
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

	frozen c_joy_ball_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_JoyBallEvent), 1)"
		end

	frozen c_joy_ball_event_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_JoyBallEvent *)$ptr)"
		end

	frozen set_joy_ball_event_struct_type (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent, Uint8)"
		alias
			"type"
		end

	frozen get_joy_ball_event_struct_type(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent):Uint8"
		alias
			"type"
		end

	frozen set_joy_ball_event_struct_which (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent, Uint8)"
		alias
			"which"
		end

	frozen get_joy_ball_event_struct_which(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyBallEvent):Uint8"
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

	frozen c_joy_hat_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_JoyHatEvent), 1)"
		end

	frozen c_joy_hat_event_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_JoyHatEvent *)$ptr)"
		end

	frozen set_joy_hat_event_struct_type (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent, Uint8)"
		alias
			"type"
		end

	frozen get_joy_hat_event_struct_type(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent):Uint8"
		alias
			"type"
		end

	frozen set_joy_hat_event_struct_which (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent, Uint8)"
		alias
			"which"
		end

	frozen get_joy_hat_event_struct_which(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyHatEvent):Uint8"
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

	frozen c_joy_button_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_JoyButtonEvent), 1)"
		end

	frozen c_joy_button_event_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_JoyButtonEvent *)$ptr)"
		end

	frozen set_joy_button_event_struct_type (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent, Uint8)"
		alias
			"type"
		end

	frozen get_joy_button_event_struct_type(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent):Uint8"
		alias
			"type"
		end

	frozen set_joy_button_event_struct_which (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent, Uint8)"
		alias
			"which"
		end

	frozen get_joy_button_event_struct_which(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_JoyButtonEvent):Uint8"
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

feature -- Structure SDL_ResizeEvent SDL.h

	frozen c_resize_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_ResizeEvent), 1)"
		end

	frozen c_resize_event_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_ResizeEvent *)$ptr)"
		end

	frozen set_resize_event_struct_type (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_ResizeEvent, Uint8)"
		alias
			"type"
		end

	frozen get_resize_event_struct_type(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_ResizeEvent):Uint8"
		alias
			"type"
		end

	frozen set_resize_event_struct_w (ptr: POINTER; value:INTEGER)
		external
			"C [struct <SDL.h>] (SDL_ResizeEvent, int)"
		alias
			"w"
		end

	frozen get_resize_event_struct_w(ptr:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_ResizeEvent):int"
		alias
			"w"
		end

	frozen set_resize_event_struct_h (ptr: POINTER; value:INTEGER)
		external
			"C [struct <SDL.h>] (SDL_ResizeEvent, int)"
		alias
			"h"
		end

	frozen get_resize_event_struct_h(ptr:POINTER):INTEGER
		external
			"C [struct <SDL.h>] (SDL_ResizeEvent):int"
		alias
			"h"
		end

feature -- Structure SDL_ExposeEvent SDL.h

	frozen c_expose_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_ExposeEvent), 1)"
		end

	frozen c_expose_event_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_ExposeEvent *)$ptr)"
		end

	frozen set_expose_event_struct_type (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_ExposeEvent, Uint8)"
		alias
			"type"
		end

	frozen get_expose_event_struct_type(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_ExposeEvent):Uint8"
		alias
			"type"
		end

feature -- Structure SDL_QuitEvent SDL.h

	frozen c_quit_event_struct_allocate: POINTER is
		external
			"C inline use <SDL.h>"
		alias
			"calloc (sizeof(SDL_QuitEvent), 1)"
		end

	frozen c_quit_event_struct_free(ptr:POINTER) is
		external
			"C inline use <SDL.h>"
		alias
			"free((SDL_QuitEvent *)$ptr)"
		end

	frozen set_quit_event_struct_type (ptr: POINTER; value:NATURAL_8)
		external
			"C [struct <SDL.h>] (SDL_QuitEvent, Uint8)"
		alias
			"type"
		end

	frozen get_quit_event_struct_type(ptr:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_QuitEvent):Uint8"
		alias
			"type"
		end

feature -- Constants SDL.h

	frozen SDL_INIT_TIMER:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_INIT_TIMER"
		end

	frozen SDL_INIT_AUDIO:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_INIT_AUDIO"
		end

	frozen SDL_INIT_VIDEO:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_INIT_VIDEO"
		end

	frozen SDL_INIT_CDROM:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_INIT_CDROM"
		end

	frozen SDL_INIT_JOYSTICK:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_INIT_JOYSTICK"
		end

	frozen SDL_INIT_EVERYTHING:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_INIT_EVERYTHING"
		end

	frozen SDL_INIT_NOPARACHUTE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_INIT_NOPARACHUTE"
		end

	frozen SDL_INIT_EVENTTHREAD:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_INIT_EVENTTHREAD"
		end


	frozen SDL_ENABLE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDL_ENABLE"
		end

	frozen SDL_DISABLE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDL_DISABLE"
		end

	frozen SDL_QUERY:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDL_QUERY"
		end

	frozen SDL_IGNORE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDL_IGNORE"
		end


	frozen SDL_SWSURFACE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_SWSURFACE"
		end

	frozen SDL_HWSURFACE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_HWSURFACE"
		end

	frozen SDL_ASYNCBLIT:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_ASYNCBLIT"
		end

	frozen SDL_HWACCEL:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_HWACCEL"
		end

	frozen SDL_ANYFORMAT:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_ANYFORMAT"
		end

	frozen SDL_HWPALETTE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_HWPALETTE"
		end

	frozen SDL_DOUBLEBUF:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_DOUBLEBUF"
		end

	frozen SDL_FULLSCREEN:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_FULLSCREEN"
		end

	frozen SDL_OPENGL:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_OPENGL"
		end

	frozen SDL_OPENGLBLIT:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_OPENGLBLIT"
		end

	frozen SDL_RESIZABLE:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_RESIZABLE"
		end

	frozen SDL_RLEACCEL:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_RLEACCEL"
		end

	frozen SDL_SRCALPHA:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_SRCALPHA"
		end

	frozen SDL_SRCCOLORKEY:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_SRCCOLORKEY"
		end

	frozen SDL_PREALLOC:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_PREALLOC"
		end

	frozen SDL_NOFRAME:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_32) SDL_NOFRAME"
		end

	frozen SDLK_BACKSPACE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_BACKSPACE"
		end

	frozen SDLK_TAB:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_TAB"
		end

	frozen SDLK_CLEAR:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_CLEAR"
		end

	frozen SDLK_RETURN:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_RETURN"
		end

	frozen SDLK_PAUSE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_PAUSE"
		end

	frozen SDLK_ESCAPE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_ESCAPE"
		end

	frozen SDLK_SPACE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_SPACE"
		end

	frozen SDLK_EXCLAIM:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_EXCLAIM"
		end

	frozen SDLK_QUOTEDBL:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_QUOTEDBL"
		end

	frozen SDLK_HASH:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_HASH"
		end

	frozen SDLK_DOLLAR:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_DOLLAR"
		end

	frozen SDLK_AMPERSAND:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_AMPERSAND"
		end

	frozen SDLK_QUOTE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_QUOTE"
		end

	frozen SDLK_LEFTPAREN:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_LEFTPAREN"
		end

	frozen SDLK_RIGHTPAREN:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_RIGHTPAREN"
		end

	frozen SDLK_ASTERISK:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_ASTERISK"
		end

	frozen SDLK_PLUS:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_PLUS"
		end

	frozen SDLK_COMMA:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_COMMA"
		end

	frozen SDLK_MINUS:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_MINUS"
		end

	frozen SDLK_PERIOD:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_PERIOD"
		end

	frozen SDLK_SLASH:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_SLASH"
		end

	frozen SDLK_0:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_0"
		end

	frozen SDLK_1:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_1"
		end

	frozen SDLK_2:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_2"
		end

	frozen SDLK_3:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_3"
		end

	frozen SDLK_4:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_4"
		end

	frozen SDLK_5:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_5"
		end

	frozen SDLK_6:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_6"
		end

	frozen SDLK_7:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_7"
		end

	frozen SDLK_8:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_8"
		end

	frozen SDLK_9:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_9"
		end

	frozen SDLK_COLON:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_COLON"
		end

	frozen SDLK_SEMICOLON:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_SEMICOLON"
		end

	frozen SDLK_LESS:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_LESS"
		end

	frozen SDLK_EQUALS:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_EQUALS"
		end

	frozen SDLK_GREATER:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_GREATER"
		end

	frozen SDLK_QUESTION:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_QUESTION"
		end

	frozen SDLK_AT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_AT"
		end

	frozen SDLK_LEFTBRACKET:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_LEFTBRACKET"
		end

	frozen SDLK_BACKSLASH:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_BACKSLASH"
		end

	frozen SDLK_RIGHTBRACKET:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_RIGHTBRACKET"
		end

	frozen SDLK_CARET:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_CARET"
		end

	frozen SDLK_UNDERSCORE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_UNDERSCORE"
		end

	frozen SDLK_BACKQUOTE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_BACKQUOTE"
		end

	frozen SDLK_a:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_a"
		end

	frozen SDLK_b:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_b"
		end

	frozen SDLK_c:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_c"
		end

	frozen SDLK_d:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_d"
		end

	frozen SDLK_e:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_e"
		end

	frozen SDLK_f:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_f"
		end

	frozen SDLK_g:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_g"
		end

	frozen SDLK_h:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_h"
		end

	frozen SDLK_i:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_i"
		end

	frozen SDLK_j:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_j"
		end

	frozen SDLK_k:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_k"
		end

	frozen SDLK_l:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_l"
		end

	frozen SDLK_m:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_m"
		end

	frozen SDLK_n:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_n"
		end

	frozen SDLK_o:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_o"
		end

	frozen SDLK_p:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_p"
		end

	frozen SDLK_q:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_q"
		end

	frozen SDLK_r:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_r"
		end

	frozen SDLK_s:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_s"
		end

	frozen SDLK_t:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_t"
		end

	frozen SDLK_u:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_u"
		end

	frozen SDLK_v:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_v"
		end

	frozen SDLK_w:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_w"
		end

	frozen SDLK_x:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_x"
		end

	frozen SDLK_y:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_y"
		end

	frozen SDLK_z:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_z"
		end

	frozen SDLK_DELETE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_DELETE"
		end

	 frozen SDLK_WORLD_0:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_0"
          end



 frozen SDLK_WORLD_1:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_1"
          end



 frozen SDLK_WORLD_2:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_2"
          end



 frozen SDLK_WORLD_3:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_3"
          end



 frozen SDLK_WORLD_4:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_4"
          end



 frozen SDLK_WORLD_5:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_5"
          end



 frozen SDLK_WORLD_6:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_6"
          end



 frozen SDLK_WORLD_7:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_7"
          end



 frozen SDLK_WORLD_8:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_8"
          end



 frozen SDLK_WORLD_9:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_9"
          end



 frozen SDLK_WORLD_10:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_10"
          end



 frozen SDLK_WORLD_11:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_11"
          end



 frozen SDLK_WORLD_12:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_12"
          end



 frozen SDLK_WORLD_13:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_13"
          end



 frozen SDLK_WORLD_14:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_14"
          end



 frozen SDLK_WORLD_15:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_15"
          end



 frozen SDLK_WORLD_16:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_16"
          end



 frozen SDLK_WORLD_17:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_17"
          end



 frozen SDLK_WORLD_18:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_18"
          end



 frozen SDLK_WORLD_19:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_19"
          end



 frozen SDLK_WORLD_20:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_20"
          end



 frozen SDLK_WORLD_21:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_21"
          end



 frozen SDLK_WORLD_22:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_22"
          end



 frozen SDLK_WORLD_23:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_23"
          end



 frozen SDLK_WORLD_24:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_24"
          end



 frozen SDLK_WORLD_25:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_25"
          end



 frozen SDLK_WORLD_26:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_26"
          end



 frozen SDLK_WORLD_27:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_27"
          end



 frozen SDLK_WORLD_28:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_28"
          end



 frozen SDLK_WORLD_29:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_29"
          end



 frozen SDLK_WORLD_30:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_30"
          end



 frozen SDLK_WORLD_31:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_31"
          end



 frozen SDLK_WORLD_32:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_32"
          end



 frozen SDLK_WORLD_33:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_33"
          end



 frozen SDLK_WORLD_34:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_34"
          end



 frozen SDLK_WORLD_35:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_35"
          end



 frozen SDLK_WORLD_36:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_36"
          end



 frozen SDLK_WORLD_37:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_37"
          end



 frozen SDLK_WORLD_38:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_38"
          end



 frozen SDLK_WORLD_39:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_39"
          end



 frozen SDLK_WORLD_40:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_40"
          end



 frozen SDLK_WORLD_41:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_41"
          end



 frozen SDLK_WORLD_42:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_42"
          end



 frozen SDLK_WORLD_43:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_43"
          end



 frozen SDLK_WORLD_44:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_44"
          end



 frozen SDLK_WORLD_45:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_45"
          end



 frozen SDLK_WORLD_46:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_46"
          end



 frozen SDLK_WORLD_47:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_47"
          end



 frozen SDLK_WORLD_48:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_48"
          end



 frozen SDLK_WORLD_49:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_49"
          end



 frozen SDLK_WORLD_50:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_50"
          end



 frozen SDLK_WORLD_51:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_51"
          end



 frozen SDLK_WORLD_52:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_52"
          end



 frozen SDLK_WORLD_53:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_53"
          end



 frozen SDLK_WORLD_54:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_54"
          end



 frozen SDLK_WORLD_55:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_55"
          end



 frozen SDLK_WORLD_56:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_56"
          end



 frozen SDLK_WORLD_57:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_57"
          end



 frozen SDLK_WORLD_58:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_58"
          end



 frozen SDLK_WORLD_59:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_59"
          end



 frozen SDLK_WORLD_60:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_60"
          end



 frozen SDLK_WORLD_61:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_61"
          end



 frozen SDLK_WORLD_62:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_62"
          end



 frozen SDLK_WORLD_63:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_63"
          end



 frozen SDLK_WORLD_64:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_64"
          end



 frozen SDLK_WORLD_65:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_65"
          end



 frozen SDLK_WORLD_66:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_66"
          end



 frozen SDLK_WORLD_67:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_67"
          end



 frozen SDLK_WORLD_68:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_68"
          end



 frozen SDLK_WORLD_69:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_69"
          end



 frozen SDLK_WORLD_70:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_70"
          end



 frozen SDLK_WORLD_71:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_71"
          end



 frozen SDLK_WORLD_72:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_72"
          end



 frozen SDLK_WORLD_73:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_73"
          end



 frozen SDLK_WORLD_74:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_74"
          end



 frozen SDLK_WORLD_75:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_75"
          end



 frozen SDLK_WORLD_76:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_76"
          end



 frozen SDLK_WORLD_77:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_77"
          end



 frozen SDLK_WORLD_78:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_78"
          end



 frozen SDLK_WORLD_79:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_79"
          end



 frozen SDLK_WORLD_80:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_80"
          end



 frozen SDLK_WORLD_81:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_81"
          end



 frozen SDLK_WORLD_82:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_82"
          end



 frozen SDLK_WORLD_83:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_83"
          end



 frozen SDLK_WORLD_84:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_84"
          end



 frozen SDLK_WORLD_85:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_85"
          end



 frozen SDLK_WORLD_86:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_86"
          end



 frozen SDLK_WORLD_87:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_87"
          end



 frozen SDLK_WORLD_88:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_88"
          end



 frozen SDLK_WORLD_89:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_89"
          end



 frozen SDLK_WORLD_90:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_90"
          end



 frozen SDLK_WORLD_91:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_91"
          end



 frozen SDLK_WORLD_92:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_92"
          end



 frozen SDLK_WORLD_93:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_93"
          end



 frozen SDLK_WORLD_94:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_94"
          end



 frozen SDLK_WORLD_95:INTEGER
          external
                      "C inline use <SDL.h>"
                alias
                 "return (EIF_INTEGER) SDLK_WORLD_95"
          end

	frozen SDLK_KP0:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP0"
		end

	frozen SDLK_KP1:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP1"
		end

	frozen SDLK_KP2:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP2"
		end

	frozen SDLK_KP3:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP3"
		end

	frozen SDLK_KP4:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP4"
		end

	frozen SDLK_KP5:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP5"
		end

	frozen SDLK_KP6:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP6"
		end

	frozen SDLK_KP7:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP7"
		end

	frozen SDLK_KP8:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP8"
		end

	frozen SDLK_KP9:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP9"
		end

	frozen SDLK_KP_PERIOD:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP_PERIOD"
		end

	frozen SDLK_KP_DIVIDE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP_DIVIDE"
		end

	frozen SDLK_KP_MULTIPLY:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP_MULTIPLY"
		end

	frozen SDLK_KP_MINUS:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP_MINUS"
		end

	frozen SDLK_KP_PLUS:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP_PLUS"
		end

	frozen SDLK_KP_ENTER:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP_ENTER"
		end

	frozen SDLK_KP_EQUALS:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_KP_EQUALS"
		end

	frozen SDLK_UP:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_UP"
		end

	frozen SDLK_DOWN:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_DOWN"
		end

	frozen SDLK_RIGHT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_RIGHT"
		end

	frozen SDLK_LEFT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_LEFT"
		end

	frozen SDLK_INSERT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_INSERT"
		end

	frozen SDLK_HOME:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_HOME"
		end

	frozen SDLK_END:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_END"
		end

	frozen SDLK_PAGEUP:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_PAGEUP"
		end

	frozen SDLK_PAGEDOWN:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_PAGEDOWN"
		end

	frozen SDLK_F1:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F1"
		end

	frozen SDLK_F2:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F2"
		end

	frozen SDLK_F3:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F3"
		end

	frozen SDLK_F4:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F4"
		end

	frozen SDLK_F5:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F5"
		end

	frozen SDLK_F6:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F6"
		end

	frozen SDLK_F7:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F7"
		end

	frozen SDLK_F8:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F8"
		end

	frozen SDLK_F9:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F9"
		end

	frozen SDLK_F10:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F10"
		end

	frozen SDLK_F11:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F11"
		end

	frozen SDLK_F12:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F12"
		end

	frozen SDLK_F13:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F13"
		end

	frozen SDLK_F14:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F14"
		end

	frozen SDLK_F15:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_F15"
		end

	frozen SDLK_NUMLOCK:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_NUMLOCK"
		end

	frozen SDLK_CAPSLOCK:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_CAPSLOCK"
		end

	frozen SDLK_SCROLLOCK:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_SCROLLOCK"
		end

	frozen SDLK_RSHIFT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_RSHIFT"
		end

	frozen SDLK_LSHIFT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_LSHIFT"
		end

	frozen SDLK_RCTRL:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_RCTRL"
		end

	frozen SDLK_LCTRL:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_LCTRL"
		end

	frozen SDLK_RALT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_RALT"
		end

	frozen SDLK_LALT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_LALT"
		end

	frozen SDLK_RMETA:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_RMETA"
		end

	frozen SDLK_LMETA:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_LMETA"
		end

	frozen SDLK_LSUPER:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_LSUPER"
		end

	frozen SDLK_RSUPER:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_RSUPER"
		end

	frozen SDLK_MODE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_MODE"
		end

	frozen SDLK_COMPOSE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_COMPOSE"
		end

	frozen SDLK_HELP:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_HELP"
		end

	frozen SDLK_PRINT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_PRINT"
		end

	frozen SDLK_SYSREQ:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_SYSREQ"
		end

	frozen SDLK_BREAK:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_BREAK"
		end

	frozen SDLK_MENU:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_MENU"
		end

	frozen SDLK_POWER:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_POWER"
		end

	frozen SDLK_EURO:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_EURO"
		end

	frozen SDLK_UNDO:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) SDLK_UNDO"
		end

	frozen KMOD_NONE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_NONE"
		end

	frozen KMOD_LSHIFT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_LSHIFT"
		end

	frozen KMOD_RSHIFT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_RSHIFT"
		end

	frozen KMOD_LCTRL:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_LCTRL"
		end

	frozen KMOD_RCTRL:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_RCTRL"
		end

	frozen KMOD_LALT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_LALT"
		end

	frozen KMOD_RALT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_RALT"
		end

	frozen KMOD_LMETA:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_LMETA"
		end

	frozen KMOD_RMETA:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_RMETA"
		end

	frozen KMOD_NUM:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_NUM"
		end

	frozen KMOD_CAPS:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_CAPS"
		end

	frozen KMOD_MODE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_MODE"
		end

	frozen KMOD_CTRL:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_CTRL"
		end

	frozen KMOD_SHIFT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_SHIFT"
		end

	frozen KMOD_ALT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_ALT"
		end

	frozen KMOD_META:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_INTEGER) KMOD_META"
		end

	frozen SDL_KEYDOWN:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_KEYDOWN"
		end

	frozen SDL_KEYUP:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_KEYUP"
		end

	frozen SDL_PRESSED:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_PRESSED"
		end

	frozen SDL_RELEASED:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_RELEASED"
		end

	frozen SDL_ACTIVEEVENT:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_ACTIVEEVENT"
		end

	frozen SDL_APPMOUSEFOCUS:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_APPMOUSEFOCUS"
		end

	frozen SDL_APPINPUTFOCUS:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_APPINPUTFOCUS"
		end

	frozen SDL_APPACTIVE:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_APPACTIVE"
		end

	frozen SDL_MOUSEMOTION:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_MOUSEMOTION"
		end

	frozen SDL_MOUSEBUTTONDOWN:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_MOUSEBUTTONDOWN"
		end

	frozen SDL_MOUSEBUTTONUP:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_MOUSEBUTTONUP"
		end

	frozen SDL_BUTTON_LEFT:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_BUTTON_LEFT"
		end

	frozen SDL_BUTTON_MIDDLE:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_BUTTON_MIDDLE"
		end

	frozen SDL_BUTTON_RIGHT:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_BUTTON_RIGHT"
		end

	frozen SDL_BUTTON_WHEELUP:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_BUTTON_WHEELUP"
		end

	frozen SDL_BUTTON_WHEELDOWN:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_BUTTON_WHEELDOWN"
		end

	frozen SDL_JOYAXISMOTION:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_JOYAXISMOTION"
		end

	frozen SDL_JOYBALLMOTION:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_JOYBALLMOTION"
		end

	frozen SDL_JOYHATMOTION:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_JOYHATMOTION"
		end

	frozen SDL_HAT_CENTERED:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_HAT_CENTERED"
		end

	frozen SDL_HAT_UP:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_HAT_UP"
		end

	frozen SDL_HAT_RIGHT:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_HAT_RIGHT"
		end

	frozen SDL_HAT_DOWN:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_HAT_DOWN"
		end

	frozen SDL_HAT_LEFT:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_HAT_LEFT"
		end

	frozen SDL_HAT_RIGHTUP:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_HAT_RIGHTUP"
		end

	frozen SDL_HAT_RIGHTDOWN:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_HAT_RIGHTDOWN"
		end

	frozen SDL_HAT_LEFTUP:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_HAT_LEFTUP"
		end

	frozen SDL_HAT_LEFTDOWN:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_HAT_LEFTDOWN"
		end

	frozen SDL_JOYBUTTONDOWN:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_JOYBUTTONDOWN"
		end

	frozen SDL_JOYBUTTONUP:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_JOYBUTTONUP"
		end

	frozen SDL_VIDEORESIZE:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_VIDEORESIZE"
		end

	frozen SDL_VIDEOEXPOSE:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_VIDEOEXPOSE"
		end

	frozen SDL_QUIT_CONST:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_QUIT"
		end

	frozen SDL_BUTTON_X1:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_BUTTON_X1"
		end

	frozen SDL_BUTTON_X2:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"return (EIF_NATURAL_8) SDL_BUTTON_X2"
		end


feature -- Macro SDL.h

	frozen SDL_MUSTLOCK(surface:POINTER):INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDL_MUSTLOCK_ALT((SDL_Surface *)$surface)"
		end

	frozen SDL_BUTTON(x:NATURAL_8):NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BUTTON((Uint8)$x)"
		end

	frozen SDL_BUTTON_LMASK:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BUTTON_LMASK"
		end

	frozen SDL_BUTTON_RMASK:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BUTTON_RMASK"
		end

	frozen SDL_BUTTON_MMASK:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BUTTON_MMASK"
		end

	frozen SDL_BUTTON_X1MASK:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BUTTON_X1MASK"
		end

	frozen SDL_BUTTON_X2MASK:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_BUTTON_X2MASK"
		end

	frozen SDL_ALPHA_OPAQUE:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_ALPHA_OPAQUE"
		end

	frozen SDL_ALPHA_TRANSPARENT:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_ALPHA_TRANSPARENT"
		end


feature -- Constants SDL_endian.h

	frozen SDL_BYTEORDER:INTEGER
		external
			"C inline use <SDL_endian.h>"
		alias
			"return (EIF_INTEGER) SDL_BYTEORDER"
		end

	frozen SDL_LIL_ENDIAN:INTEGER
		external
			"C inline use <SDL_endian.h>"
		alias
			"return (EIF_INTEGER) SDL_LIL_ENDIAN"
		end

	frozen SDL_BIG_ENDIAN:INTEGER
		external
			"C inline use <SDL_endian.h>"
		alias
			"return (EIF_INTEGER) SDL_BIG_ENDIAN"
		end

feature -- Constante SDL_ttf

	frozen TTF_STYLE_UNDERLINE:INTEGER
		external
			"C inline use <SDL_ttf.h>"
		alias
			"TTF_STYLE_UNDERLINE"
		end

	frozen TTF_STYLE_NORMAL:INTEGER
		external
			"C inline use <SDL_ttf.h>"
		alias
			"TTF_STYLE_NORMAL"
		end


end
