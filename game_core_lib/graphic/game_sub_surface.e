note
	description: "A GAME_SURFACE that is a portion of another GAME_SURFACE."
	author: "Louis Marchand"
	date: "May 24, 2012"
	revision: "1.0.0.0"

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

	make_from_surface(a_other:GAME_SURFACE;a_start_x,a_start_y,a_width,a_height:INTEGER)
			-- Initialization for `Current'.
			-- Create a new surface from a portion of another surface (the memory SDL surface is not duplicate).
		require
			Make_From_Surface_Other_Not_Void: a_other /= Void
			Make_From_Surface_Start_X_Valid: a_start_x < a_other.width
			Make_From_Surface_Start_Y_Valid: a_start_y < a_other.height
			Make_From_Surface_Start_Width_Valid: a_width <= a_other.width-a_start_x
			Make_From_Surface_Start_Height_Valid: a_height <= a_other.height-a_start_y
		do
			make_from_imp(a_other.surface_imp,a_start_x+a_other.start_x,a_start_y+a_other.start_y,a_width,a_height)
		end

	make_from_imp(a_surface_imp:GAME_SDL_SURFACE_IMP;a_start_x,a_start_y,a_width,a_height:INTEGER)
			-- Initialization for `Current'.
			-- Create a new surface from a portion of a surface implementation (the memory SDL surface is not duplicate).
		require
			Make_From_Imp_Surface_Imp_Not_Void: a_surface_imp /= Void
			Make_From_Imp_Start_X_Valid: a_start_x < {GAME_SDL_EXTERNAL}.get_surface_struct_w(a_surface_imp.surface_pointer)
			Make_From_Imp_Start_Y_Valid: a_start_y < {GAME_SDL_EXTERNAL}.get_surface_struct_h(a_surface_imp.surface_pointer)
			Make_From_Imp_Start_Width_Valid: a_width <= {GAME_SDL_EXTERNAL}.get_surface_struct_w(a_surface_imp.surface_pointer)-a_start_x
			Make_From_Imp_Start_Height_Valid: a_height <= {GAME_SDL_EXTERNAL}.get_surface_struct_h(a_surface_imp.surface_pointer)-a_start_y
		do
			surface_imp:=a_surface_imp
			start_x:=a_start_x
			start_y:=a_start_y
			set_width(a_width)
			set_height(a_height)
			set_is_alpha_accelerated(false)
			disable_alpha
			disable_transparent
		end

end
