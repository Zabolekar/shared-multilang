run: main
	./main

main: a.so b.so
	gcc main.c -o main -L . -l :a.so -l :b.so -Wl,-rpath=.

a.so:
	gcc -shared a.c -o a.so

b.so:
	g++ -shared b.cpp -o b.so

clean:
	rm -f *.so main
