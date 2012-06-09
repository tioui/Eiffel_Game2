note
	description: "A GAME_SURFACE that is a portion of another GAME_SURFACE."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "0.1"

class
	GAME_SUB_SURFACE

inherit
	GAME_SURFACE
	rename make_from_surface as make_same_surface end

create
	make_from_surface,
	make_from_imp,
	make_same_surface

feature {NONE} -- Initialization

	make_from_surface(the_surface:GAME_SURFACE;the_start_x,the_start_y,the_width,the_height:INTEGER)
			-- Initialization for `Current'.
			-- Create a new surface from a portion of another surface (the memory SDL surface is not duplicate).
		require
			Make_From_Surface_Surface_Not_Void: the_surface /= Void
			Make_From_Surface_Start_X_Valid: the_start_x < the_surface.width
			Make_From_Surface_Start_Y_Valid: the_start_y < the_surface.height
			Make_From_Surface_Start_Width_Valid: the_width <= the_surface.width-the_start_x
			Make_From_Surface_Start_Height_Valid: the_height <= the_surface.height-the_start_y
		do
			make_from_imp(the_surface.surface_imp,the_start_x+the_surface.start_x,the_start_y+the_surface.start_y,the_width,the_height)
		end

	make_from_imp(the_surface_imp:GAME_SDL_SURFACE_IMP;the_start_x,the_start_y,the_width,the_height:INTEGER)
			-- Initialization for `Current'.
			-- Create a new surface from a portion of a surface implementation (the memory SDL surface is not duplicate).
		require
			Make_From_Imp_Surface_Not_Void: the_surface_imp /= Void
			Make_From_Imp_Start_X_Valid: the_start_x < {GAME_SDL_EXTERNAL}.get_surface_struct_w(the_surface_imp.surface_pointer)
			Make_From_Imp_Start_Y_Valid: the_start_y < {GAME_SDL_EXTERNAL}.get_surface_struct_h(the_surface_imp.surface_pointer)
			Make_From_Imp_Start_Width_Valid: the_width <= {GAME_SDL_EXTERNAL}.get_surface_struct_w(the_surface_imp.surface_pointer)-the_start_x
			Make_From_Imp_Start_Height_Valid: the_height <= {GAME_SDL_EXTERNAL}.get_surface_struct_h(the_surface_imp.surface_pointer)-the_start_y
		do
			surface_imp:=the_surface_imp
			start_x:=the_start_x
			start_y:=the_start_y
			set_width(the_width)
			set_height(the_height)
			set_is_alpha_accelerated(false)
			disable_alpha
			disable_transparent
		end

end
