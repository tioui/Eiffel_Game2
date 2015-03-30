note
	description: "External of the SDL2_gfx library."
	author: "Louis Marchand"
	date: "Sun, 29 Mar 2015 01:00:07 +0000"
	revision: "2.0"

class
	GAME_EFFECTS_EXTERNAL

feature -- Function SDL2_rotozoom.h

	frozen rotozoomSurfaceXY(surface:POINTER;angle,zoomX,zoomY:REAL_64;smooth:BOOLEAN):POINTER
		external
			"C (SDL_Surface *,double,double,double,int) : SDL_Surface * | <SDL2_rotozoom.h>"
		alias
			"rotozoomSurfaceXY"
		end

end
