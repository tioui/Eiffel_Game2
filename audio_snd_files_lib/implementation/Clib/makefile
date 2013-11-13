linux-x86: objet-linux-x86/sndfile_more.o
objet-linux-x86/sndfile_more.o: src/sndfile_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make linux-x86
	mkdir -p objet-linux-x86
	gcc -c -Iinclude -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-linux-x86/sndfile_more.o src/sndfile_more.c

linux-x86-64: objet-linux-x86-64/sndfile_more.o
objet-linux-x86-64/sndfile_more.o: src/sndfile_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make linux-x86-64
	mkdir -p objet-linux-x86-64
	gcc -c -fPIC -Iinclude -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-linux-x86-64/sndfile_more.o src/sndfile_more.c

linux-caanoo: objet-linux-caanoo/sndfile_more.o
objet-linux-caanoo/sndfile_more.o: src/sndfile_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make linux-caanoo
	mkdir -p objet-linux-caanoo
	/opt/gcc-4.2.4-glibc-2.7-eabi/bin/arm-gph-linux-gnueabi-gcc -c -I$(EIFFEL_LIBRARY)/contrib/library/game/C_lib_caanoo/include -Iinclude/ -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-linux-caanoo/sndfile_more.o src/sndfile_more.c

linux-wiz: objet-linux-wiz/sndfile_more.o
objet-linux-wiz/sndfile_more.o: src/sndfile_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make linux-wiz
	mkdir -p objet-linux-wiz
	/opt/arm-openwiz-linux-gnu/bin/arm-openwiz-linux-gnu-gcc -c -Iinclude/ -I$(EIFFEL_LIBRARY)/contrib/library/game/C_lib_wiz/include/ -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-linux-wiz/sndfile_more.o src/sndfile_more.c

windows: objet-windows/sndfile_more.o
objet-windows/sndfile_more.o: src/sndfile_more.c
	cd /d "$(EIFFEL_LIBRARY)\contrib\library\game\cpf_lib\implementation\Clib" && \
		gmake windows
	-mkdir objet-windows
	gcc -c -I".\include" -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -I"$(EIFFEL_LIBRARY)/contrib/library/game/C_lib_win\libsndfile\include" -o objet-windows/sndfile_more.o src/sndfile_more.c

macosx-x86-64-SDL: objet-macosx-x86-64-SDL/sndfile_more.o
objet-macosx-x86-64-SDL/sndfile_more.o: src/sndfile_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make macosx-x86-64-SDL
	mkdir -p objet-macosx-x86-64-SDL
	gcc -c -Iinclude/ -I/opt/local/include -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-macosx-x86-64-SDL/sndfile_more.o src/sndfile_more.c


macosx-x86-64: objet-macosx-x86-64/sndfile_more.o
objet-macosx-x86-64/sndfile_more.o: src/sndfile_more.c
	cd "$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib"; \
		make macosx-x86-64
	mkdir -p objet-macosx-x86-64
	gcc -c -Iinclude/ -I/opt/local/include -I"$(EIFFEL_LIBRARY)/contrib/library/game/cpf_lib/implementation/Clib/include" -o objet-macosx-x86-64/sndfile_more.o src/sndfile_more.c

clean:
	rm -rf ./objet-*

