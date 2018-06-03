note
	description: "External of the SDL2_ttf library."
	author: "Louis Marchand"
	date: "Thu, 02 Apr 2015 03:35:38 +0000"
	revision: "2.0"

class
	GAME_TEXT_EXTERNAL

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

	frozen TTF_OpenFontIndex(filename:POINTER;taille:INTEGER;index:INTEGER_32):POINTER
		external
			"C (const char *,int,long):TTF_Font *| <SDL_ttf.h>"
		alias
			"TTF_OpenFontIndex"
		end

	frozen TTF_OpenFontIndexRW(rwop: POINTER; free_struct: INTEGER;taille:INTEGER;index:INTEGER_32):POINTER
		external
			"C (SDL_RWops *, int, int, long):TTF_Font *| <SDL_ttf.h>"
		alias
			"TTF_OpenFontIndexRW"
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

	frozen TTF_RenderUTF8_Solid(font:POINTER;text:POINTER;color:POINTER):POINTER
		external
			"C inline use  <SDL_ttf.h>"
		alias
			"TTF_RenderUTF8_Solid((TTF_Font *)$font,(char *)$text,*((SDL_Color *)$color))"
		end

	frozen TTF_RenderText_Shaded(font:POINTER;text:POINTER;color,bgcolor:POINTER):POINTER
		external
			"C inline use  <SDL_ttf.h>"
		alias
			"TTF_RenderText_Shaded((TTF_Font *)$font,(char *)$text,*((SDL_Color *)$color),*((SDL_Color *)$bgcolor))"
		end

	frozen TTF_RenderUTF8_Shaded(font:POINTER;text:POINTER;color,bgcolor:POINTER):POINTER
		external
			"C inline use  <SDL_ttf.h>"
		alias
			"TTF_RenderUTF8_Shaded((TTF_Font *)$font,(char *)$text,*((SDL_Color *)$color),*((SDL_Color *)$bgcolor))"
		end

	frozen TTF_RenderText_Blended(font:POINTER;text:POINTER;color:POINTER):POINTER
		external
			"C inline use  <SDL_ttf.h>"
		alias
			"TTF_RenderText_Blended((TTF_Font *)$font,(char *)$text,*((SDL_Color *)$color))"
		end

	frozen TTF_RenderUTF8_Blended(font:POINTER;text:POINTER;color:POINTER):POINTER
		external
			"C inline use  <SDL_ttf.h>"
		alias
			"TTF_RenderUTF8_Blended((TTF_Font *)$font,(char *)$text,*((SDL_Color *)$color))"
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

	frozen TTF_SetFontOutline(font:POINTER; outline:INTEGER)
		external
			"C (TTF_Font *, int) | <SDL_ttf.h>"
		alias
			"TTF_SetFontOutline"
		end

	frozen TTF_GetFontOutline(font:POINTER):INTEGER
		external
			"C (TTF_Font *) : int | <SDL_ttf.h>"
		alias
			"TTF_GetFontOutline"
		end

	frozen TTF_SetFontHinting (font:POINTER; hinting:INTEGER)
		external
			"C (TTF_Font *, int) | <SDL_ttf.h>"
		alias
			"TTF_SetFontHinting "
		end

	frozen TTF_GetFontHinting (font:POINTER):INTEGER
		external
			"C (TTF_Font *) : int | <SDL_ttf.h>"
		alias
			"TTF_GetFontHinting "
		end

	frozen TTF_SetFontKerning (font:POINTER; allowed:INTEGER)
		external
			"C (TTF_Font *, int) | <SDL_ttf.h>"
		alias
			"TTF_SetFontKerning "
		end

	frozen TTF_GetFontKerning (font:POINTER):INTEGER
		external
			"C (TTF_Font *) : int | <SDL_ttf.h>"
		alias
			"TTF_GetFontKerning "
		end

	frozen TTF_FontHeight (font:POINTER):INTEGER
		external
			"C (TTF_Font *) : int | <SDL_ttf.h>"
		alias
			"TTF_FontHeight "
		end

	frozen TTF_FontAscent (font:POINTER):INTEGER
		external
			"C (TTF_Font *) : int | <SDL_ttf.h>"
		alias
			"TTF_FontAscent "
		end

	frozen TTF_FontDescent (font:POINTER):INTEGER
		external
			"C (TTF_Font *) : int | <SDL_ttf.h>"
		alias
			"TTF_FontDescent "
		end

	frozen TTF_FontLineSkip (font:POINTER):INTEGER
		external
			"C (TTF_Font *) : int | <SDL_ttf.h>"
		alias
			"TTF_FontLineSkip "
		end

	frozen TTF_FontFaceIsFixedWidth (font:POINTER):INTEGER
		external
			"C (const TTF_Font *) : int | <SDL_ttf.h>"
		alias
			"TTF_FontFaceIsFixedWidth "
		end

	frozen TTF_FontFaceFamilyName (font:POINTER):POINTER
		external
			"C (const TTF_Font *) : char * | <SDL_ttf.h>"
		alias
			"TTF_FontFaceFamilyName "
		end

	frozen TTF_FontFaceStyleName (font:POINTER):POINTER
		external
			"C (const TTF_Font *) : char * | <SDL_ttf.h>"
		alias
			"TTF_FontFaceStyleName "
		end

	frozen TTF_GlyphIsProvided (font:POINTER; ch: NATURAL_16):INTEGER
		external
			"C (const TTF_Font *, Uint16) : int | <SDL_ttf.h>"
		alias
			"TTF_GlyphIsProvided "
		end

	frozen TTF_GlyphMetrics (font:POINTER; ch: NATURAL_16; minx, maxx, miny, maxy, advance:POINTER):INTEGER
		external
			"C (TTF_Font *, Uint16, int *, int *, int *, int *, int *) : int | <SDL_ttf.h>"
		alias
			"TTF_GlyphMetrics "
		end

	frozen TTF_SizeText (font, text, w, h:POINTER):INTEGER
		external
			"C (TTF_Font *, const char *, int *, int *) : int | <SDL_ttf.h>"
		alias
			"TTF_SizeText "
		end

	frozen TTF_SizeUTF8 (font, text, w, h:POINTER):INTEGER
		external
			"C (TTF_Font *, const char *, int *, int *) : int | <SDL_ttf.h>"
		alias
			"TTF_SizeUTF8 "
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

	frozen TTF_STYLE_BOLD:INTEGER
		external
			"C inline use <SDL_ttf.h>"
		alias
			"TTF_STYLE_BOLD"
		end

	frozen TTF_STYLE_ITALIC:INTEGER
		external
			"C inline use <SDL_ttf.h>"
		alias
			"TTF_STYLE_ITALIC"
		end

	frozen TTF_STYLE_STRIKETHROUGH:INTEGER
		external
			"C inline use <SDL_ttf.h>"
		alias
			"TTF_STYLE_STRIKETHROUGH"
		end

	frozen TTF_HINTING_NORMAL:INTEGER
		external
			"C inline use <SDL_ttf.h>"
		alias
			"TTF_HINTING_NORMAL"
		end

	frozen TTF_HINTING_LIGHT:INTEGER
		external
			"C inline use <SDL_ttf.h>"
		alias
			"TTF_HINTING_LIGHT"
		end

	frozen TTF_HINTING_MONO:INTEGER
		external
			"C inline use <SDL_ttf.h>"
		alias
			"TTF_HINTING_MONO"
		end

	frozen TTF_HINTING_NONE:INTEGER
		external
			"C inline use <SDL_ttf.h>"
		alias
			"TTF_HINTING_NONE"
		end

end
