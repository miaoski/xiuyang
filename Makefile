PROGS = ab a.o b.o ManualNameMangling SimpleSection.o SpecialSymbol \
		target TinyHelloWorld SectionMapping.elf maxheap minibash \
		Program1 Program2 Lib.so pic.so 7-5-5

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
