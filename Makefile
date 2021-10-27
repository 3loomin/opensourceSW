

bin/myapp: obj/myapp.o obj/func1.o
	gcc -o $@ $^

obj/myapp.o: src/myapp.c
	gcc -o $@ -c $< -I./include

obj/func1.o: src/func1.c
	gcc -o $@ -c $< -I./include

clean:
	rm -f bin/myapp obj/*.o
