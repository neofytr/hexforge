CC = g++
CFLAGS = -Wall -std=c++20
MFLAGS = -fmodules-ts

main: src/main.cpp bin/cmd.o
	$(CC) $(CFLAGS) $(MFLAGS) src/main.cpp bin/cmd.o -o bin/main

bin/cmd.o: src/cmd.cpp
	$(CC) $(CFLAGS) -c $(MFLAGS) src/cmd.cpp -o bin/cmd.o

lib:
	$(CC) $(CFLAGS) $(MFLAGS) -x c++-system-header iostream

clean:
	rm -rf  bin/*.o bin/main gcm.cache
