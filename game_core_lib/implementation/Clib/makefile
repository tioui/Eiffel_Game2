linux-x86: objet-linux-x86/core_more.o
objet-linux-x86/core_more.o: src/core_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make linux-x86
	mkdir -p objet-linux-x86
	gcc -c -I/usr/include/SDL -Iinclude -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-linux-x86/core_more.o src/core_more.c

linux-x86-64: objet-linux-x86-64/core_more.o
objet-linux-x86-64/core_more.o: src/core_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make linux-x86-64
	mkdir -p objet-linux-x86-64
	gcc -c -fPIC -I/usr/include/SDL -Iinclude -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-linux-x86-64/core_more.o src/core_more.c

linux-caanoo: objet-linux-caanoo/core_more.o
objet-linux-caanoo/core_more.o: src/core_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make linux-caanoo
	mkdir -p objet-linux-caanoo
	/opt/gcc-4.2.4-glibc-2.7-eabi/bin/arm-gph-linux-gnueabi-gcc -c -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -I$(EIF_GAME_LIB)/C_lib_caanoo/include -I/opt/gcc-4.2.4-glibc-2.7-eabi/arm-gph-linux-gnueabi/sys-root/usr/include/SDL -Iinclude/ -o objet-linux-caanoo/core_more.o src/core_more.c

linux-wiz: objet-linux-wiz/core_more.o
objet-linux-wiz/core_more.o: src/core_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make linux-wiz
	mkdir -p objet-linux-wiz
	/opt/arm-openwiz-linux-gnu/bin/arm-openwiz-linux-gnu-gcc -c -Iinclude/ -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -I$(EIF_GAME_LIB)/C_lib_wiz/include/SDL -I$(EIF_GAME_LIB)/C_lib_wiz/include/ -o objet-linux-wiz/core_more.o src/core_more.c

windows: objet-windows/core_more.o
objet-windows/core_more.o: src/core_more.c
	cd "$(EIF_GAME_LIB)\cpf_lib\implementation\Clib"; \
		gmake windows
	-mkdir objet-windows
	gcc -c -I"$(EIF_GAME_LIB)\C_lib_win\SDL\include\SDL" -I"$(EIF_GAME_LIB)\cpf_lib\implementation\Clib\include" -I".\include" -o objet-windows/core_more.o src/core_more.c

macosx-x86-64-SDL: objet-macosx-x86-64-SDL/core_more.o
objet-macosx-x86-64-SDL/core_more.o: src/core_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make macosx-x86-64-SDL
	mkdir -p objet-macosx-x86-64-SDL
	gcc -c -I/opt/local/include/SDL/ -Iinclude/ -I/opt/local/include -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-macosx-x86-64-SDL/core_more.o src/core_more.c

macosx-x86-64: objet-macosx-x86-64/core_more.o
objet-macosx-x86-64/core_more.o: src/core_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make macosx-x86-64
	mkdir -p objet-macosx-x86-64
	gcc -c -I/opt/local/include/SDL/ -Iinclude/ -I/opt/local/include -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-macosx-x86-64/core_more.o src/core_more.c

clean:
	rm -rf objet-*

