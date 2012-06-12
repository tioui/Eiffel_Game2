linux-x86: objet-linux-x86/game_more.o include/game_more.h
objet-linux-x86/game_more.o: src/game_more.c
	mkdir -p objet-linux-x86
	gcc -c -I/usr/include/SDL -Iinclude -o objet-linux-x86/game_more.o src/game_more.c

linux-x86-64: objet-linux-x86-64/game_more.o include/game_more.h
objet-linux-x86-64/game_more.o: src/game_more.c
	mkdir -p objet-linux-x86-64
	gcc -c -I/usr/include/SDL -Iinclude -o objet-linux-x86-64/game_more.o src/game_more.c

linux-caanoo: objet-linux-caanoo/game_more.o include/game_more.h
objet-linux-caanoo/game_more.o: src/game_more.c
	mkdir -p objet-linux-caanoo
	/opt/gcc-4.2.4-glibc-2.7-eabi/bin/arm-gph-linux-gnueabi-gcc -c -I/opt/gcc-4.2.4-glibc-2.7-eabi/arm-gph-linux-gnueabi/sys-root/usr/include/SDL -Iinclude/ -o objet-linux-caanoo/game_more.o src/game_more.c

linux-wiz: objet-linux-wiz/game_more.o include/game_more.h
objet-linux-wiz/game_more.o: src/game_more.c
	mkdir -p objet-linux-wiz
	/opt/arm-openwiz-linux-gnu/bin/arm-openwiz-linux-gnu-gcc -c -Iinclude/ -I-I$(EIF_GAME_LIB)/C_lib_wiz/include/SDL -o objet-linux-wiz/game_more.o src/game_more.c

windows: objet-windows/game_more.o include/game_more.h
objet-windows/game_more.o: src/game_more.c
	mkdir -p objet-windows
	gcc -c -I$(EIF_GAME_LIB)\C_lib_win\SDL\include\SDL -I$(EIF_GAME_LIB)\C_lib_win\SDL_gfx\include -I.\include -o objet-windows/game_more.o src/game_more.c

macosx-x86-64-SDL: objet-macosx-x86-64-SDL/game_more.o include/game_more.h
objet-macosx-x86-64-SDL/game_more.o: src/game_more.c
	mkdir -p objet-macosx-x86-64-SDL
	gcc -c -I/opt/local/include/SDL/ -Iinclude/ -o objet-macosx-x86-64-SDL/game_more.o src/game_more.c

clean:
	rm -f objet-*/game_more.o

