linux-x86: objet-linux-x86/cpf_more.o
objet-linux-x86/cpf_more.o: src/cpf_more.c
	mkdir -p objet-linux-x86
	gcc -c -Iinclude -o objet-linux-x86/cpf_more.o src/cpf_more.c

linux-x86-64: objet-linux-x86-64/cpf_more.o
objet-linux-x86-64/cpf_more.o: src/cpf_more.c
	mkdir -p objet-linux-x86-64
	gcc -c -Iinclude -o objet-linux-x86-64/cpf_more.o src/cpf_more.c

linux-caanoo: objet-linux-caanoo/cpf_more.o
objet-linux-caanoo/cpf_more.o: src/cpf_more.c
	mkdir -p objet-linux-caanoo
	/opt/gcc-4.2.4-glibc-2.7-eabi/bin/arm-gph-linux-gnueabi-gcc -c -Iinclude/ -o objet-linux-caanoo/cpf_more.o src/cpf_more.c

linux-wiz: objet-linux-wiz/cpf_more.o
objet-linux-wiz/cpf_more.o: src/cpf_more.c
	mkdir -p objet-linux-wiz
	/opt/arm-openwiz-linux-gnu/bin/arm-openwiz-linux-gnu-gcc -c -Iinclude/ -o objet-linux-wiz/cpf_more.o src/cpf_more.c

windows: objet-windows/cpf_more.o
objet-windows/cpf_more.o: src/cpf_more.c
	-mkdir objet-windows
	gcc -c -I".\include" -o objet-windows/cpf_more.o src/cpf_more.c

macosx-x86-64: objet-macosx-x86-64/cpf_more.o
objet-macosx-x86-64/cpf_more.o: src/cpf_more.c
	mkdir -p objet-macosx-x86-64
	gcc -c -Iinclude/ -I/opt/local/include -o objet-macosx-x86-64/cpf_more.o src/cpf_more.c

macosx-x86-64-SDL: objet-macosx-x86-64-SDL/cpf_more.o
objet-macosx-x86-64-SDL/cpf_more.o: src/cpf_more.c
	mkdir -p objet-macosx-x86-64-SDL
	gcc -c -Iinclude/ -I/opt/local/include -o objet-macosx-x86-64-SDL/cpf_more.o src/cpf_more.c

clean:
	rm -rf objet-*

