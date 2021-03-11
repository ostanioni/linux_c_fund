# $@ - содержит имя текущей цели
# $^ - содержит список зависимостей в текущей связке

CC=gcc
CCFLAGS=-Wall
CLEAN=rm -f
PROGRAM_NAME=printup
OBJECT_FILES=*.o
SOURCE_FILES=print_up.c main.c

$(PROGRAM_NAME): $(OBJECT_FILES)
	$(CC) -o $@ $^
$(OBJECT_FILES): $(SOURCE_FILES)
	$(CC) $(CCFLAGS) -O $@ $^

print_up.o: print_up.c
	$(CC) -c $^

main.o: main.c
	$(CC) -c $^

clean:
	$(CLEAN) *.o $(PROGRAM_NAME)