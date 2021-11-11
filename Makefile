CC=gcc
CFLAGS=-I.
DEPS = external.h
OBJ = basic_c.o external.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hello: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
