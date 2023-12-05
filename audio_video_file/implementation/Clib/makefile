linux-x86: objet-linux-x86/av_more.o
objet-linux-x86/av_more.o: src/av_more.c
	cd "$(EIF_GAME_LIB)/cpf/implementation/Clib"; \
		make linux-x86
	mkdir -p objet-linux-x86
	gcc -c -Iinclude -I"$(EIF_GAME_LIB)/cpf/implementation/Clib/include" -o objet-linux-x86/av_more.o src/av_more.c

linux-x86-64: objet-linux-x86-64/av_more.o
objet-linux-x86-64/av_more.o: src/av_more.c
	cd "$(EIF_GAME_LIB)/cpf/implementation/Clib"; \
		make linux-x86-64
	mkdir -p objet-linux-x86-64
	gcc -c -Iinclude -I"$(EIF_GAME_LIB)/cpf/implementation/Clib/include" -o objet-linux-x86-64/av_more.o src/av_more.c

windows: objet-windows/av_more.o
objet-windows/av_more.o: src/av_more.c
	cd "$(EIF_GAME_LIB)\cpf\implementation\Clib"; \
		make windows
	-mkdir objet-windows
	gcc -c -I".\include" -I"$(EIF_GAME_LIB)/cpf/implementation/Clib/include" -o objet-windows/av_more.o src/av_more.c

clean:
	rm -rf ./objet-*

