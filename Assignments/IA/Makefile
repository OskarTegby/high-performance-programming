CC = gcc
CFLAGS=-Wall -Werror -g -O3 -march=native -ffast-math
LDFLAGS=-L/opt/X11/lib -lX11 -lm
EXECUTABLE = gameoflife
INCLUDES=-I/opt/X11/include
OBJECTS = gameoflife.o graphics/graphics.o
RM = /bin/rm -f

gameoflife: gameoflife graphics/graphics.o
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(OBJECTS) $(LDFLAGS)

graphics.o: graphics/graphics.h graphics/graphics.c
	$(CC) $(CFLAGS) $(INCLUDES) -c graphics/graphics.c

gameoflife.o: gameoflife.c
	$(CC) $(CFLAGS) -c gameoflife.c

clean:
	$(RM) $(EXECUTABLE) $(OBJECTS)