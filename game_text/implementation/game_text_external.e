note
	description: "External of the SDL_ttf library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

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

	frozen TTF_GetError:POINTER
		external
			"C :char * | <SDL_ttf.h>"
		alias
			"TTF_GetError"
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
