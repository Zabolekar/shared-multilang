run: main
	./main

main: a.so
	gcc main.c -o main -L . -l :a.so -Wl,-rpath=.

a.so:
	gcc -shared a.c -o a.so

clean:
	rm -f *.so main
