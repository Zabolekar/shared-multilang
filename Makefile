run: main
	./main

main: a.so b.so c.so
	gcc main.c -o main -L . -l :a.so -l :b.so -l :c.so -Wl,-rpath=.

a.so:
	gcc -shared a.c -o a.so

b.so:
	g++ -shared b.cpp -o b.so

c.so:
	nim c -d:release --noMain --app:lib -o:c.so c.nim

clean:
	rm -f *.so main
