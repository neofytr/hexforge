CC = g++
CFLAGS = -Wall -std=c++20
MFLAGS = -fmodules-ts

main: src/main.cpp
	make lib
	$(CC) $(CFLAGS) $(MFLAGS) src/main.cpp -o bin/main

lib:
	$(CC) $(CFLAGS) $(MFLAGS) -x c++-system-header iostream

clean:
	rm -rf  bin/*.o bin/main gcm.cache
