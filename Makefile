run: main
	./main

main: a.so b.so c.so d.so e.so
	gcc main.c -o main -L . -l :a.so -l :b.so -l :c.so -l :d.so -l :e.so -Wl,-rpath=.

a.so:
	gcc -shared a.c -o a.so

b.so:
	g++ -shared b.cpp -o b.so

c.so:
	nim c -d:release --noMain --app:lib -o:c.so c.nim

d.so:
	zig build-lib -femit-bin=d.so -fsoname=d.so -dynamic d.zig

e.so:
	rustc --crate-type=cdylib e.rs -o e.so

clean:
	rm -f *.so main
	rm -rf zig-cache
