《程序員的自我修養》
=======

這裡放的是書上的範例程式，有些改寫了幾行，可以在 Ubuntu 64-bit 上編譯執行。

基本上 make clean all 範例就編好了。

7.7.5 的程式因為 64bit calling convention 不同的關係，沒辦法簡單地從 32bit porting 到 64bit。


目錄
=======
* hello.c	2.1節, p.38
* SimpleSection.c	3.3節, p.61
* SpecialSymbol.c	3.5.2節, p.86
* ManualNameMangling.cc	3.5.4節, p.90
* weakref.c	3.5.5節, p.93
* a.c	第4章, p.98
* b.c	第4章, p.98
* TinyHelloWorld.c	4.6.2節, p.125
* TinyHelloWorld.lds	4.6.3節, p.127
* target.c	4.7節, p.132
* SectionMapping.c	6.4.1節, p.162
* maxheap.c	6.4.3節, p.168
* minibash.c	6.5節, p.173
* Program1.c	7.2節, p.184
* Program2.c	7.2節, p.184
* Lib.h	7.2節, p.185
* Lib.c	7.2節, p.185
* pic.c	7.3.3節, p.191
* 7-5-5.c	7.5.5節, p.212
* 7-6-2-a1.c	7.6.2節, p.215
* 7-6-2-a2.c	7.6.2節, p.216
* 7-6-2-b1.c	7.6.2節, p.216
* 7-6-2-b2.c	7.6.2節, p.216
* 7-6-2-main.c	7.6.2節, p.216
* RunSoSimple.c	7.7.4節, p.225

一些指令
=======

objdump
======

* objdump -h file.o	(p.62)
* objdump -s -d file.o (p.64)
* objdump -x -s -d file.o (p.65)
* objcopy -I binary -o elf32-i386 -B i386 image.jpg file.o (p.68)
* objdump -ht file.o (p.68)
* objdump -r file.o (p.106)
* objdump -t libc.a (p.119)
* objdump -R libc.a (p.195)
* size file.o (p.63)

readelf
======
* readelf -h file.o (p.69)
* readelf -S file.o (p.75)
* readelf -s file.o (p.84)
* readelf -l file.o (p.163)
* readelf -sD lib.so (p.207)
* readelf -r lib.so (p.208)

ld / ar
======
* ld a.o b.o -e main -o ab (p.101)
* ld -T link.script (p.124)
* ld -static -e main -o file file.o (p.126)
* ar -t libc.a (p.119)

Visual Studio
======
* cl /c /Za file.c (p.135)
* dumpbin /ALL file.obj (p.136)
* dumpbin file.obj /SUMMARY (p.137)
