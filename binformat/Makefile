CC = gcc
LD = ld
SRC = $(shell find -name '*.S')
OBJ= ${SRC:.S=.o}
BIN = ${SRC:.S=}

all: $(OBJ) $(BIN)

%: %.o
	$(LD) -e 0 --oformat binary -o $@ $^

%.com: %.com.S
	$(CC) -Os -m32 -march=i386 -nostdlib -ffreestanding -Wl,--script=com.ld -o $@ $^
	#$(LD) -m elf_i386 -e 100 --oformat binary -o $@ $@.o

clean:
	$(RM) $(OBJ)

distclean: clean
	$(RM) $(BIN)

.PHONY: all clean
