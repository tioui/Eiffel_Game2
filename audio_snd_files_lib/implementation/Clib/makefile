linux-x86: objet-linux-x86/audio_more.o
objet-linux-x86/audio_more.o: src/audio_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make linux-x86
	mkdir -p objet-linux-x86
	gcc -c -Iinclude -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-linux-x86/audio_more.o src/audio_more.c

linux-x86-64: objet-linux-x86-64/audio_more.o
objet-linux-x86-64/audio_more.o: src/audio_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make linux-x86-64
	mkdir -p objet-linux-x86-64
	gcc -c -Iinclude -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-linux-x86-64/audio_more.o src/audio_more.c

linux-caanoo: objet-linux-caanoo/audio_more.o
objet-linux-caanoo/audio_more.o: src/audio_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make linux-caanoo
	mkdir -p objet-linux-caanoo
	/opt/gcc-4.2.4-glibc-2.7-eabi/bin/arm-gph-linux-gnueabi-gcc -c -I$(EIF_GAME_LIB)/C_lib_caanoo/include -Iinclude/ -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-linux-caanoo/audio_more.o src/audio_more.c

linux-wiz: objet-linux-wiz/audio_more.o
objet-linux-wiz/audio_more.o: src/audio_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make linux-wiz
	mkdir -p objet-linux-wiz
	/opt/arm-openwiz-linux-gnu/bin/arm-openwiz-linux-gnu-gcc -c -Iinclude/ -I$(EIF_GAME_LIB)/C_lib_wiz/include/ -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-linux-wiz/audio_more.o src/audio_more.c

windows: objet-windows/audio_more.o
objet-windows/audio_more.o: src/audio_more.c
	cd "$(EIF_GAME_LIB)\cpf_lib\implementation\Clib"; \
		make windows
	-mkdir objet-windows
	gcc -c -I".\include" -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -I"$(EIF_GAME_LIB)/C_lib_win\libsndfile\include" -o objet-windows/audio_more.o src/audio_more.c

macosx-x86-64-SDL: objet-macosx-x86-64-SDL/audio_more.o
objet-macosx-x86-64-SDL/audio_more.o: src/audio_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make macosx-x86-64-SDL
	mkdir -p objet-macosx-x86-64-SDL
	gcc -c -Iinclude/ -I/opt/local/include -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-macosx-x86-64-SDL/audio_more.o src/audio_more.c


macosx-x86-64: objet-macosx-x86-64/audio_more.o
objet-macosx-x86-64/audio_more.o: src/audio_more.c
	cd "$(EIF_GAME_LIB)/cpf_lib/implementation/Clib"; \
		make macosx-x86-64
	mkdir -p objet-macosx-x86-64
	gcc -c -Iinclude/ -I/opt/local/include -I"$(EIF_GAME_LIB)/cpf_lib/implementation/Clib/include" -o objet-macosx-x86-64/audio_more.o src/audio_more.c

clean:
	rm -rf ./objet-*

