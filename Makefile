CC=gcc
CFLAGS=-Wall -Werror -std=gnu99
OBJS=main.o chunk.o memory.o value.o vm.o compiler.o debug.o scanner.o

run: build
	./clox

build: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o clox

main.o: main.c
	$(CC) -g $(CFLAGS) -c main.c

chunk.o: chunk.c
	$(CC) -g $(CFLAGS) -c chunk.c

memory.o: memory.c
	$(CC) -g $(CFLAGS) -c memory.c

value.o: value.c
	$(CC) -g $(CFLAGS) -c value.c

vm.o: vm.c
	$(CC) -g $(CFLAGS) -c vm.c

compiler.o: vm.c
	$(CC) -g $(CFLAGS) -c compiler.c

debug.o: debug.c
	$(CC) -g $(CFLAGS) -c debug.c

scanner.o: scanner.c
	$(CC) -g $(CFLAGS) -c scanner.c
