BIN = test

all: $(BIN).o $(BIN)

%: %.o
	$(LD) -e 0 --oformat binary -o $@ $^

clean:
	$(RM) $(BIN).o

distclean: clean
	$(RM) $(BIN)

.PHONY: all clean
