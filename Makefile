.PHONY: run
run: main
	./main
	python3 main.py

main: main.c 1.so 2.so 3.so 4.so 5.so 6.so 7.so 8.so
	gcc $^ -Wl,-rpath=. -o $@

1.so: lib1.c
	gcc $^ -shared -o $@

2.so: lib2.cpp
	g++ $^ -shared -o $@

3.so: lib3.nim
	nim c -d:release --noMain --app:lib -o:$@ $^

4.so: lib4.zig
	zig build-lib $^ -dynamic -femit-bin=$@ -fsoname=$@

5.so: lib5.rs
	rustc $^ --crate-type=cdylib -o $@

6.so: lib6.asm
	nasm $^ -felf64
	ld -shared lib6.o -o $@

7.so: lib7.s
	gcc $^ -shared -o $@

8.so: lib8.asm
	fasm $^
	ld -shared lib8.o -o $@

.PHONY: clean
clean:
	rm -f *.o *.so main
	rm -rf zig-cache
