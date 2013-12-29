linux-x86: objet-linux-x86/core_more.o
objet-linux-x86/core_more.o: src/core_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make linux-x86
	mkdir -p objet-linux-x86
	gcc -c `sdl2-config --cflags` -Iinclude -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-linux-x86/core_more.o src/core_more.c

linux-x86-64: objet-linux-x86-64/core_more.o
objet-linux-x86-64/core_more.o: src/core_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make linux-x86-64
	mkdir -p objet-linux-x86-64
	gcc -c `sdl2-config --cflags` -fPIC -Iinclude -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-linux-x86-64/core_more.o src/core_more.c

windows: objet-windows/core_more.o
objet-windows/core_more.o: src/core_more.c
	cd /d "$(EIFFEL_LIBRARY)\contrib\library\game\cpf_lib\implementation\Clib" && \
		gmake windows
	-mkdir objet-windows
	gcc -c -I"$(EIFFEL_LIBRARY)\contrib\library\game\C_lib_win\SDL\include" -I"$(EIFFEL_LIBRARY)\contrib\library\game\cpf_lib\implementation\Clib\include" -I".\include" -o objet-windows/core_more.o src/core_more.c

macosx-x86-64-SDL: objet-macosx-x86-64-SDL/core_more.o
objet-macosx-x86-64-SDL/core_more.o: src/core_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make macosx-x86-64-SDL
	mkdir -p objet-macosx-x86-64-SDL
	gcc -c -Iinclude/ -I/opt/local/include -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-macosx-x86-64-SDL/core_more.o src/core_more.c

macosx-x86-64: objet-macosx-x86-64/core_more.o
objet-macosx-x86-64/core_more.o: src/core_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make macosx-x86-64
	mkdir -p objet-macosx-x86-64
	gcc -c -Iinclude/ -I/opt/local/include -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-macosx-x86-64/core_more.o src/core_more.c

clean:
	rm -rf objet-*

