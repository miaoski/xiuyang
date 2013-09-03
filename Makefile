PROGS = ab a.o b.o ManualNameMangling SimpleSection.o SpecialSymbol \
		target TinyHelloWorld SectionMapping.elf maxheap minibash \
		Program1 Program2 Lib.so pic.so 7-5-5  \
		7-6-2-a1.so 7-6-2-a2.so 7-6-2-b1.so 7-6-2-b2.so 7-6-2-main \
		RunSoSimple

CC = gcc
CXX = g++

all:	$(PROGS)

clean:
	rm -f $(PROGS)

ab:	a.o b.o
	$(LD) a.o b.o -e main -o ab

ManualNameMangling: ManualNameMangling.cc
	$(CXX) ManualNameMangling.cc -o ManualNameMangling

SpecialSymbol: SpecialSymbol.c
	$(CC) $< -o $@

target: target.c
	$(CC) -o $@ $< -lbfd

TinyHelloWorld: TinyHelloWorld.c TinyHelloWorld.lds
	$(CC) -c -fno-builtin TinyHelloWorld.c
	$(LD) -static -T TinyHelloWorld.lds -o $@ TinyHelloWorld.o 

SectionMapping.elf: SectionMapping.c
	$(CC) -static $< -o $@

Lib.so:	Lib.c Lib.h
	$(CC) -fPIC -shared -o $@ $<

pic.so:	pic.c
	$(CC) -fPIC -shared -o $@ $<

Program1:	Program1.c Lib.so
	$(CC) -o $@ $< ./Lib.so

Program2:	Program2.c Lib.so
	$(CC) -o $@ $< ./Lib.so

7-6-2-a1.so:	7-6-2-a1.c
	$(CC) -fPIC -shared $< -o $@

7-6-2-a2.so:	7-6-2-a2.c
	$(CC) -fPIC -shared $< -o $@

7-6-2-b1.so:	7-6-2-b1.c 7-6-2-a1.so
	$(CC) -fPIC -shared $< 7-6-2-a1.so -o $@

7-6-2-b2.so:	7-6-2-b2.c 7-6-2-a2.so
	$(CC) -fPIC -shared $< 7-6-2-a2.so -o $@

7-6-2-main:	7-6-2-main.c 7-6-2-b1.so 7-6-2-b2.so
	$(CC) $< 7-6-2-b1.so 7-6-2-b2.so -o $@ -Xlinker -rpath ./

RunSoSimple: RunSoSimple.c
	$(CC) -o $@ $< -ldl
