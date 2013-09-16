《程序員的自我修養》
====================

這裡放的是書上的範例程式，有些改寫了幾行，可以在 Ubuntu 64-bit 上編譯執行。

基本上 make clean all 範例就編好了。

7.7.5 的程式因為 64bit calling convention 不同的關係，沒辦法簡單地從 32bit porting 到 64bit。


目錄
----
| 檔名 | 章節 | 頁數 |
|------|------|-----:|
| hello.c | 2.1 | p.38 |
| SimpleSection.c | 3.3 | p.61 |
| SpecialSymbol.c | 3.5.2 | p.86 |
| ManualNameMangling.cc | 3.5.4 | p.90 |
| weakref.c | 3.5.5 | p.93 |
| a.c | 4 | p.98 |
| b.c | 4 | p.98 |
| TinyHelloWorld.c | 4.6.2 | p.125 |
| TinyHelloWorld.lds | 4.6.3 | p.127 |
| target.c | 4.7 | p.132 |
| SectionMapping.c | 6.4.1 | p.162 |
| maxheap.c | 6.4.3 | p.168 |
| minibash.c | 6.5 | p.173 |
| Program1.c | 7.2 | p.184 |
| Program2.c | 7.2 | p.184 |
| Lib.h | 7.2 | p.185 |
| Lib.c | 7.2 | p.185 |
| pic.c | 7.3.3 | p.191 |
| 7-5-5.c | 7.5.5 | p.212 |
| 7-6-2-a1.c | 7.6.2 | p.215 |
| 7-6-2-a2.c | 7.6.2 | p.216 |
| 7-6-2-b1.c | 7.6.2 | p.216 |
| 7-6-2-b2.c | 7.6.2 | p.216 |
| 7-6-2-main.c | 7.6.2 | p.216 |
| RunSoSimple.c | 7.7.4 | p.225 |
| 8-2-3-symver.c | 8.2.3 | p.239 |

一些指令
--------

objdump
-------

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
-------
* readelf -h file.o (p.69)
* readelf -S file.o (p.75)
* readelf -s file.o (p.84)
* readelf -l file.o (p.163)
* readelf -sD lib.so (p.207)
* readelf -r lib.so (p.208)

ld / ar
-------
* ld a.o b.o -e main -o ab (p.101)
* ld -T link.script (p.124)
* ld -static -e main -o file file.o (p.126)
* ar -t libc.a (p.119)

Visual Studio
-------------
* cl /c /Za file.c (p.135)
* dumpbin /ALL file.obj (p.136)
* dumpbin file.obj /SUMMARY (p.137)
