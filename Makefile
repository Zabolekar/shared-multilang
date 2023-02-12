run: main
	./main

main: 1.so 2.so 3.so 4.so 5.so 6.so
	gcc main.c -o main -L . -l:1.so -l:2.so -l:3.so -l:4.so -l:5.so -l:6.so -Wl,-rpath=.

1.so:
	gcc -shared lib1.c -o 1.so

2.so:
	g++ -shared lib2.cpp -o 2.so

3.so:
	nim c -d:release --noMain --app:lib -o:3.so lib3.nim

4.so:
	zig build-lib -femit-bin=4.so -fsoname=4.so -dynamic lib4.zig

5.so:
	rustc --crate-type=cdylib lib5.rs -o 5.so

6.so:
	nasm -felf64 lib6.asm
	ld -shared lib6.o -o 6.so

clean:
	rm -f *.o *.so main
	rm -rf zig-cache
