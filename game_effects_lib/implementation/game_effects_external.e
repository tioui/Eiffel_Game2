note
	description: "External of the SDL_gfx library."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_EFFECTS_EXTERNAL

feature -- Function SDL_rotozoom.h

	frozen rotozoomSurfaceXY(surface:POINTER;angle,zoomX,zoomY:REAL_64;smooth:BOOLEAN):POINTER
		external
			"C (SDL_Surface *,double,double,double,int) : SDL_Surface * | %"SDL_rotozoom.h%""
		alias
			"rotozoomSurfaceXY"
		end

end
