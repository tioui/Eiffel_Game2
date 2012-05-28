linux-x86: objet-linux-x86/SDL_more.o include/SDL_more.h
objet-linux-x86/SDL_more.o: src/SDL_more.c
	gcc -c -I/usr/include/SDL -Iinclude -o objet-linux-x86/SDL_more.o src/SDL_more.c

linux-x86-64: objet-linux-x86-64/SDL_more.o include/SDL_more.h
objet-linux-x86-64/SDL_more.o: src/SDL_more.c
	gcc -c -I/usr/include/SDL -Iinclude -o objet-linux-x86-64/SDL_more.o src/SDL_more.c

linux-caanoo: objet-linux-caanoo/SDL_more.o include/SDL_more.h
objet-linux-caanoo/SDL_more.o: src/SDL_more.c
	/opt/gcc-4.2.4-glibc-2.7-eabi/bin/arm-gph-linux-gnueabi-gcc -c -I/opt/gcc-4.2.4-glibc-2.7-eabi/arm-gph-linux-gnueabi/sys-root/usr/include/SDL -Iinclude/ -o objet-linux-caanoo/SDL_more.o src/SDL_more.c

linux-wiz: objet-linux-wiz/SDL_more.o include/SDL_more.h
objet-linux-wiz/SDL_more.o: src/SDL_more.c
	/opt/arm-openwiz-linux-gnu/bin/arm-openwiz-linux-gnu-gcc -c -Iinclude/ -I/opt/arm-openwiz-linux-gnu/include/SDL -o objet-linux-wiz/SDL_more.o src/SDL_more.c

windows: objet-windows/SDL_more.o include/SDL_more.h
objet-windows/SDL_more.o: src/SDL_more.c
	gcc -c -I$(EIF_GAME_LIB)\C_lib_win\SDL\include\SDL -I$(EIF_GAME_LIB)\C_lib_win\SDL_gfx\include -I.\include -o objet-windows/SDL_more.o src/SDL_more.c

macosx-x86-64-SDL: objet-macosx-x86-64-SDL/SDL_more.o include/SDL_more.h
objet-macosx-x86-64-SDL/SDL_more.o: src/SDL_more.c
	gcc -c -I/opt/local/include/SDL/ -Iinclude/ -o objet-macosx-x86-64-SDL/SDL_more.o src/SDL_more.c

clean:
	rm -f objet-*/SDL_more.o

